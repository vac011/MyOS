# 操作系统实现（三）：二级引导程序loader

## 本节背景

一级引导程序将处理器控制权交出后，便由二级引导程序完成主要的引导任务，包括硬件信息检测、处理器模式转换、页表配置等，并最终实现控制权向内核程序的转移。

## 本节目的

- 编写二级引导程序loader.asm
- 将二级引导程序装载到虚拟软盘镜像中
- 编写Makefile文件

## 实现

由于自本节起，每节的任务量及代码量陡增，故不再依次贴上对应模块的代码，只有关键部分放相应代码，完整代码在[github](https://github.com/vac011/MyOS)上查看。

首先照例定义本部分需要用到的常量，并规定起始地址**0x10000**。

此地址与boot的起始地址**0x7c00**的规定不同，boot的起始地址是早期Intel的系统开发者规定并延续至今，在BIOS中写死的；而loader的起始地址是我们在boot中自己设置的，是在物理内存中**较为随便地**找出一块合适的空闲区域放置（具体物理内存空间分配见文章末尾）。

接着寄存器设置、清屏及显示加载信息等操作。

在完成了上述准备工作后，便是二级引导程序的第一个重点——**加载内核程序**。

### 实模式 -> 保护模式 -> Big Real Mode

为了后续能够加载内核到**1MB以上**的内存，我们需要先**打开A20地址线**（关于A20地址线的补充知识见文末）。这里我们采用通过访问**A20快速门**来开启A20功能，即将`0x92端口`的**第1位**置位：

```asm
    ; 打开A20地址线, 使用20根以上的地址总线, 以便能访问1MB以上的内存
    ; 这里使用快速门启用A20, 还可以使用8042键盘控制器(端口0x64、0x60)或int 0x15中断的功能号0x2401启用
    in al, 0x92       ; 读取系统控制端口
    or al, 0x02       ; 设置A20地址线
    out 0x92, al      ; 写入系统控制端口
```

当A20功能开启后，紧接着使用`cli`指令关闭外部中断，再通过`lgdt`指令加载保护模式**段信息**（关于GDT的补充知识见文末），并置位`CR0`寄存器的第0位来**开启保护模式**。当进入保护模式后，为`FS`段寄存器**加载新的数据段值**，并自动**更新其缓冲区**。一旦完成数据加载就**从保护模式中退出**，并**重新开启外部中断**。

整个动作一气呵成，**实现了保护模式的开启和关闭**。看似多此一举的代码，其目的只是为了让**FS段寄存器**可以在实模式下寻址能力**超过1 MB**，也就是进入传说中的**Big Real Mode**（关于处理器模式的补充知识见文末）：

```asm
    ; 关闭中断
    cli               ; 禁止CPU级别的中断

    ; 加载GDT表
    db 0x66           ; 使用0x66前缀强制在16位实模式下使用32位操作数
    lgdt [GDTPtr]     ; GDTR(48位)寄存器需要一个32位的地址, 因此这里需要使用32操作数作为参数传递

    ; 设置CR0(control register)寄存器使能保护模式(而不是进入, 进入需要设置cs段寄存器)
    mov eax, cr0      ; 此时仍在实模式下, 使用的只是eax和cr0的低16位
    or eax, 1         ; 设置PE位(Protection Enable, 第0位)为1
    mov cr0, eax      ; 开启保护模式

    ; 设置段寄存器
    mov ax, SelectorData32
    mov fs, ax
    
    ; 关闭保护模式(进入big real mode)
    mov eax, cr0
    and al, 0xfe
    mov cr0, eax

    ; 打开中断
    sti
```

### 寻找内核文件

搜索kernel.bin的操作与在boot中搜索loader.bin相同，同样使用三层循环。

### 未找到内核文件

如果未在文件系统目录中找到内核文件名，则显示错误信息并停止运行。

### 加载并转移内核文件

如果搜索到内核程序文件kernel.bin，则将磁盘中的kernel.bin文件读取至内存中。

本系统将**内核程序起始地址**放置于物理地址**0x100000**（**1 MB**）处，因为1 MB以下的物理地址并不全是可用内存地址空间（见文末物理内存分布）。随着内核体积的不断增长，未来的内核程序很可能会超过1 MB，因此让内核程序跳过这些分布复杂的内存空间，从平坦的1 MB地址开始行进，是一个非常不错的选择。

但由于**BIOS**是运行在**实模式**下的，只能访问1MB以下的物理内存，因此我们在使用BIOS的`INT 0x13`号中断**从**磁盘读取**内核文件时，只能先将其加载到1MB以下的某个**临时缓冲区**（这里我们选用**0x7e00**处），之后再将其**复制转移**到**1MB**处：

```bash
FileFound:
    and di, 0xffe0
    add di, 0x1a
    mov ax, BaseOfTemp
    mov es, ax
    mov si, [es:di]          ; 获取文件的起始簇号(2B)
    ; 无需再次加载FAT表, 使用之前的即可
    mov edi, OffsetOfKernel  ; cpy函数目的内存偏移起始地址
LoadFile:
    ; 根据簇号加载文件到临时内存缓冲区0x7e00处
    and si, 0xfff
    cmp si, 0xff8
    jae Loaded
    mov ax, BaseOfTemp
    mov es, ax
    mov bx, OffsetOfTemp
    mov ax, DataClusSecStart
    sub ax, 2
    add ax, si
    call Func_ReadOneSec
    ; 转移内核到1MB处
    mov ecx, BPB_BytesPerSec ; 传递copy内存大小
    mov ax, BaseOfTemp
    mov es, ax               ; 传递源内存段基址
    push esi
    mov esi, OffsetOfTemp    ; 传递源内存偏移地址
    mov ax, BaseOfKernel
    mov fs, ax               ; 传递目的内存段基址
    call Func_CpyMem         ; 在函数里自动更新目的内存偏移地址edi
    pop esi
    push edi 
    ; 获取下一个簇号值
    mov ax, si               
    and si, 1                
    shr ax, 1                
    mov cx, 3                
    mul cx                  
    mov di, OffsetOfTempFAT  
    add di, ax               
    add di, si               
    mov ax, BaseOfTemp
    mov es, ax               
    mov dx, word [es:di]     
    shl si, 2                
    mov cx, si               
    shr dx, cl               
    mov si, dx 
    pop edi              
    jmp LoadFile
```

当Loader引导程序完成内核的加载工作后，软盘驱动器将不再使用，通过向**I/O端口0x3f2**写入控制命令**关闭软驱马达**：

```asm
Loaded:
    ; 关闭软盘马达
    mov dx, 0x3f2        ; out指令的目的操作数可以是立即数或dx, 但立即数取值范围只能是8位(0x00~0xff)
    mov al, 0            ; al对应8位I/O端口
    out dx, al
```

在使用`out`汇编指令操作I/O端口时，需要特别注意**8位端口**与**16位端口**的使用区别：`out`指令的**源操作数**根据端口位宽可以选用`al/ax/eax`寄存器；**目的操作数**可以是**立即数**或`dx`寄存器，其中**立即数**的取值范围只能是**8位宽（0xff）**，而`dx`寄存器允许的取值范围是**16位宽（0xffff）**。

### 获取内存信息

使用BIOS的`INT 0x15`号中断来**获取物理地址空间信息**，并将其**保存**在刚刚加载内核使用的**临时转存缓冲区**(0x7E00)处，操作系统会在**初始化内存管理单元**时**解析**该结构体数组（包括可用物理内存地址空间、设备寄存器地址空间、内存空洞等）：

```asm
    ; 获取内存信息
    mov ebx, 0
    mov ax, BaseOfTemp
    mov es, ax
    mov di, OffsetOfTemp
GetMemStruct:
    ; 多次调用int 0x15的0xe820号中断遍历内存信息
    mov eax, 0xe820      ; eax会被返回值覆盖, 返回"SMAP"字符串
    mov ecx, 20
    mov edx, 0x534d4150
    int 0x15
    jc GetMemStructFail
    add di, 20
    cmp ebx, 0
    jne GetMemStruct
    jmp GetSVGA
GetMemStructFail:
    mov si, 1
    mov ax, BaseOfLoader
    mov es, ax
    mov bp, GetMemStructFailMsg
    call Func_ShowMsg
```

### 设置显示模式

本来这里打算直接设置为**图形模式**(关于显示模式的补充知识见文末)的，但考虑到**内核开发前期**几乎不会用到图形显示，而且还会徒增复杂度与工作量，遂决定还是先设置为**文本模式**，待完成了中断、内存管理和进程管理等工作后，如果还要继续进行**用户图形程序的开发**（即**GUI**）工作，再反过来重新改为图形模式也不迟，只是后期可能会麻烦一些。

这里直接调用BIOS的`INT 0x10`中断将显示模式设置为**单色文本模式**（**VGA 80x25**）：

```asm
; 设置单色文本模式
SetMonoTextMode:
    mov ax, 0x03
    int 0x10
```

**文本模式显示效果**（需要完成kernel main部分的编写）：

![文本模式显示效果](./images/文本模式显示效果.png)

**如果**，注意这里说的是**如果**，确实想要使用**图形模式**的话，则需要通过**VBE**（VESA BIOS Extensions）**BIOS中断拓展**来获取**可用的SVGA模式信息**并设置为合适的模式：

```bash
;设置图形模式
GetSVGA:
    ; 使用VBE(VESA BIOS EXTENSION)获取SVGA模式信息
    mov ax, BaseOfTemp
    mov es, ax      ; 缓冲区基地址
    mov di, OffsetOfTempFAT ; 缓冲区偏移地址, 作为存放VBEInfoBlock信息块结构的起始地址
    mov ax, 0x4f00  ; 所有VBE功能统一将ah寄存器赋值为0x4f来区别标准VGA BIOS功能, 并使用al寄存器来指定VBE的功能号, 而bl寄存器则用于指明追加或扩展的子功能。
    int 0x10
    cmp ax, 0x004f  ; 对于VBE的功能, 如果支持则al返回0x4f表示支持该功能, ah返回0x00表示成功, 否则AH寄存器将记录失败类型
    jz GetSVGAMode
GetSVGAFail:
    mov si, 1
    mov ax, BaseOfLoader
    mov es, ax
    mov bp, GetSVGAInfoFailMsg
    call Func_ShowMsg

GetSVGAMode:
    ; 解析模式列表
    mov ax, BaseOfTemp
    mov es, ax
    mov si, OffsetOfTempFAT
    add si, 0xe            ; vbeInfoBlock结构体中的VideoModePtr字段偏移, 保存着videomodelist的指针
    mov esi, dword [es:si] ; 获取videomodelist的指针VideoModePtr
    mov di, OffsetOfTempFAT
    add di, 0x200          ; ModeInfoBlock结构起始偏移地址
Get:
    ; 遍历模式列表并获取模式详细信息
    mov cx, word [es:esi]  ; VideoModePtr指向VidieoModeList(word数组), 每个word是一个当前VBE芯片能够支持的模式号
    cmp cx, 0xffff         ; 0xffff表示videomodelist结束
    jz SetSVGAMode         ; 遍历完成, 去设置SVGA模式
    mov ax, 0x4f01         ; 通过VBE的01h号功能遍历所有VBE模式号, 以获取每个模式号的ModeInfoBlock结构。
    int 0x10
    cmp ax, 0x004f         ; al=0x4f表示支持该功能, ah=0x00表示成功
    jnz GetSVGAModeFail
    add esi, 2             ; 指针后移, 指向下一个模式号
    add di, 0x100          ; 每个ModeInfoBlock结构体大小为256字节
    jmp Get
GetSVGAModeFail:
    mov si, 1
    mov ax, BaseOfLoader
    mov es, ax
    mov bp, GetSVGAModeFailMsg
    call Func_ShowMsg

SetSVGAMode:
    ; 选择合适的SVGA模式并设置
    mov ax, 0x4f02
    mov bx, 0x4180    ; 1440x900, 32bit每像素位宽
    int 0x10
    cmp ax, 0x004f
    jz InitGDT_IDT
SetSVGAModeFail:
    mov si, 1
    mov ax, BaseOfLoader
    mov es, ax
    mov bp, SetSVGAModeFailMsg
    call Func_ShowMsg
```

这里贴一下**图形模式**的**显示效果**（需要完成kernel main部分的编写）：

![图形模式显示效果](./images/图形模式显示效果.png)

### 进入保护模式

当我们使用**BIOS中断**完成对**硬件信息**的检测后，就没有必要继续停留在实模式（或者说“大实模式”）下了，是时候进一步迈入保护模式了，保护模式不仅限制了程序的**执行权限**，还引入了**分页机制**。而对于我们的系统来说，保护模式也只是一个跳板，用于后续继续跳到我们最终需要的64位的长模式。

为了进入保护模式，处理器需要依次完成以下工作：

- **启用A20**：关于A20我们前面在进入“Big Real Mode”时已经开启过了。A20 地址线控制 CPU 是否能访问 1MB 以上的内存。实模式默认禁用 A20 地址线（向上溢出到 0x000000），必须手动启用。
- **关闭中断**：在进入保护模式前，必须先关闭中断，以防止 CPU 在转换过程中响应实模式的中断，导致不可预知的行为。并在真正初始化具体的中断处理程序后重新打开中断。
- **加载GDT**：由于保护模式使用段描述符而非实模式的段寄存器，因此需要定义 GDT 数据结构并需要使用 `lgdt`指令将其加载到 CPU 的`GDTR`寄存器。
- **加载IDT**：进入保护模式后，CPU 不能再使用实模式的**中断向量表**（IVT，位于0x00000-0x003ff）。如果不加载新的IDT，CPU 可能会遇到异常。不过，如果内核最初不使用中断，可以暂时加载一个“空 IDT”以避免异常。
- **启用分页机制**：保护模式本身只提供但**不要求开启**分页，如果确实需要高地址映射，需要将`CR0`控制寄存器中用于控制分页机制的`PG`（Paging Enable）标志位（bit 31）置1。在开启分页机制（置位PG标志位）前，必须在内存中**至少**存在一个**页目录**（PD）和**页表**（PT）（分别占一个物理页4KB），并将页目录的物理地址加载到`CR3`控制寄存器（或称`PDBR`寄存器）。
启用分页时，需**同时设置**`CR0`的`PE`位（保护模式使能）。
- **使能保护模式**：要开启保护模式，需要将`CR0`寄存器的`PE`（Protection Enable）位（bit 0）设置为 1。
- **跳转到32位代码**：进入保护模式后，实模式的分段机制不再适用，必须手动使用`jmp`指令跳转到 GDT 定义的 32 位代码段，`jmp`指令会自动更新`cs`代码段寄存器。
- **重新加载段寄存器**：对于其他段寄存器（`DS、ES、SS、FS、GS`），进入保护模式后，需要重新加载以使用 32 位数据段。

这里我们暂时不开启分页机制，并使用一个临时的GDT及一个空的IDT：

```asm
ChangeMode:
    ; 关闭中断
    cli  
    ; 加载GDT(强制使用32位操作数)              
    db 0x66
    lgdt [GDTPtr]
    ; 加载IDT(因为已经屏蔽了中断, 所以这里也可以选择暂时不加载IDT)        
    db 0x66
    lidt [IDTPtr]        
    ; 使能保护模式
    mov eax, cr0
    or eax, 1
    mov cr0, eax
    ; 这里要使用一个jmp指令来自动设置更新代码段寄存器cs以及流水线
    ; 实际上在jmp完成cs代码段的设置, 其缓冲区段描述符逻辑得到更新, 加载执行保护模式的代码后才是真正进入保护模式
    jmp dword SelectorCode32:ProtectedMode    ; 使用dword前缀也可以强制在16位段中使用32位操作数
    
[SECTION .32]
[BITS 32]
ProtectedMode:
    ; 更新数据段寄存器
    mov ax, SelectorData32
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov ss, ax
    mov esp, 0x7e00      ; 栈从0x7e00向下, 因为此时0x7c00~0x7e00已经不使用了, 而0x7e00~0x8000存放着临时物理内存信息, 0x8000之后存放着VBE信息
```

```asm
[SECTION gdt]
GDT0:                     
    dq 0         ; GDT的第一项必须为0
DESC_CODE32:     ; 代码段描述符，定义为0x0000ffff, 0x00cf9a00
    dw 0xffff    ; 段界限低16位0xffff
    dw 0x0000    ; 段基址低16位
    db 0x00      ; 段基址中8位
    db 10011010b ; 代码段，存在，特权级0，可执行  
    db 11001111b ; 粒度4KB，32位模式，段界限高4位0xf，共计限长0xFFFFF * 4KB = 0xFFFFFFFF = 4GB
    db 0x00      ; 段基址高8位          
DESC_DATA32:     ; 数据段描述符，定义为0x0000ffff, 0x00cf9200   
    dw 0xffff    ; 段界限低16位0xffff  
    dw 0x0000    ; 段基址低16位 
    db 0x00      ; 段基址中8位  
    db 10010010b ; 数据段，存在，特权级 0，不可执行  
    db 11001111b ; 粒度4KB，32位模式，段界限高4位0xf，共计限长0xFFFFF * 4KB = 0xFFFFFFFF = 4GB  
    db 0x00      ; 段基址高8位
GDTEnd:
GDTPtr:
    dw GDTEnd - GDT0 - 1 ; GDT长度
    dd GDT0              ; GDT基址

SelectorCode32 equ DESC_CODE32 - GDT0        ; 代码段选择子索引
SelectorData32 equ DESC_DATA32 - GDT0        ; 数据段选择子索引
```

```asm
; 临时空IDT
[SECTION idt]
IDT:
    times 0x50 dq 0           ; 256个8字节空描述符
IDT_END:
IDTPtr:
    dw IDT_END - IDT - 1
    dd IDT
```

### 进入IA-32e模式

我们最终的目的是进入64位的长模式，同进入保护模式类似，开启64位模式需要以下步骤：

- **检查CPU是否支持IA-32e模式**：首先，我们需要使用`cpuid`指令检查 CPU 是否支持IA-32e模式。
- **加载 64 位 GDT**：IA-32e模式的段结构与保护模式的段结构极其相似，不过此处的数据显得更为**简单**。因为IA-32e模式简化了保护模式的段结构，**删减掉冗余的段基地址和段限长**，使段直接覆盖**整个线性地址空间**，进而变成平坦地址空间。
- **启用物理地址扩展**：如果处理器支持64位模式，则先置位`CR4`控制寄存器的`PAE`（Physical Address Extension）标志位（bit 5），开启物理地址扩展功能，以将处理器支持的最大**物理地址**（**而不是虚拟地址**）从保护模式的**32位**(4GB)拓展到**36位**(64GB)（36 位物理地址是 Intel设计的限制，不是 PAE 技术本身的限制）。**PAE必须在设置LME和PG之前开启**。
- **配置页表**：IA-32e模式必须使用 **4 级分页**，即`PML4`（Page Map Level 4），并将页表根目录（顶层页表）**基地址**加载到`CR3`寄存器中。
由于我们loader的**主要目标**是**尽快**进入64位模式并加载内核，而配置页表只是进入64位模式的**必要要求**，因此，我们将只在loader进行**基本的页表初始化**，而到kernel的内核入口部分再**构建正式的页表**，提供完整的内存管理功能。如此的两次页表配置，固然有些**重复嫌疑**，但**模块化**的操作会使得复杂的工程变得稍许**灵活**且**易维护**（即loader只完成其必要的操作，各司其职），而这样重复的代价就显得可以接受了。
- **启用长模式**：设置 `IA32_EFER`（Extended Feature Enable Register）寄存器的`LME`（Long Mode Enable）标志位(bit 8)以使能64位模式，但**只有在CR0.PG=1（即分页使能后） 时才正式生效**。
而IA32_EFER寄存器位于`MSR`寄存器组内，为了操作IA32_EFER寄存器，必须借助特殊汇编指令`RDMSR/WRMSR`。
- **开启分页**：IA-32e模式**必须开启分页**，否则 CPU 会崩溃。但`LME`必须在`PG`（在`CR0`控制寄存器的第31位）之前设置，即在LME使能前分页必须是关闭状态（在向保护模式切换的过程中未开启分页机制，便是考虑到稍后的IA-32e模式切换过程必须关闭分页机制重新构造页表结构）。此后**PG 一旦开启**，**CPU 即切换到 64 位模式**。
- **跳转到 64 位代码**：到这里，我们已经完成了从保护模式到IA-32e模式的所有必要步骤。接下来就是使用一条`jmp指令`跳转到64 位代码并配置数据段寄存器。

```asm
    ; 检测CPU是否支持64位模式
    mov eax, 0x80000001  ; 获取扩展功能标志
    cpuid
    test edx, (1 << 29)  ; 检查返回值 EDX 位 29（Long Mode）
    jnz Supported
Not_Supported:
    ; 如果不支持64位模式, 显示错误信息；由于此时已经在保护模式下, 无法直接调用BIOS中断, 所以这里直接操作显存
    mov esi, NotSupportedMsg    ; ESI 指向字符串
    mov edi, 0xB8000            ; VGA 文本模式缓冲区起始地址
.loop:
    lodsb                 ; 取下一个字符 (AL = *ESI++)
    test  al, al          ; 检查是否是 NULL 结束符
    jz    .done           ; 如果是 NULL，结束
    mov   ah, 0x4C        ; 设置颜色 (红色)
    stosw                 ; 写入 VGA 显存 (*EDI++ = AX)
    jmp   .loop           ; 继续打印
.done:
    hlt                   ; 停机

Supported:
    ; 加载64位GDT
    lgdt [GdtPtr64]
    
    ; 使能PAE(Physical Address Extension, 物理地址扩展), 以支持4GB以上的物理内存
    mov eax, cr4
    or eax, 0x20    ; 设置PAE位(bit 5)
    mov cr4, eax

    ; 动态配置临时页目录项和页表项(放在0x90000处)，避免loader.bin文件过大，用于映射0x00000000~0x00A00000(10MB)的物理内存
    ; 0x90000 处是页目录
    mov dword [0x90000], 0x91007  ; PDE 指向 0x91000，RW + Present
    mov dword [0x90800], 0x91007  ; PDE 复制一份，映射相同区域

    ; 0x91000 处是页表
    mov dword [0x91000], 0x92007  ; 指向 0x92000 的页表

    ; 0x92000 处是页表项
    mov dword [0x92000], 0x000083  ; 4KB 页: 0x000000 (映射物理地址 0x000000)
    mov dword [0x92008], 0x200083  ; 4KB 页: 0x002000 (映射物理地址 0x200000)
    mov dword [0x92010], 0x400083  ; 4KB 页: 0x004000
    mov dword [0x92018], 0x600083  ; 4KB 页: 0x006000
    mov dword [0x92020], 0x800083  ; 4KB 页: 0x008000
    mov dword [0x92028], 0xa00083  ; 4KB 页: 0x00A000

    ; 加载cr3寄存器(将页目录(顶层页表)的首地址设置到CR3控制寄存器中), 构造页表结构(此时分页机制必须是关闭状态)
    mov eax, 0x90000
    mov cr3, eax

    ; 使能长模式(通过置位IA32_EFER寄存器(MSR寄存器组内)的LME(Long Mode Enable)标志位激活IA-32e模式)
    mov ecx, 0xc0000080  ; 传入要读取的IA32_EFER寄存器的地址
    rdmsr                ; 读取IA32_EFER寄存器的值, 返回值存放在edx:eax组成的64位寄存器中
    or eax, 0x100        ; 设置IA32_EFER寄存器的LME标志位(bit 8)
    wrmsr                ; 写入IA32_EFER寄存器(ecx传递目标寄存器地址, edx:eax传递写入值)

    ; 开启分页机制，真正进入IA-32e模式
    mov eax, cr0      
    bts eax, 31          ; bit test and set, 可以测试(返回给CF)并设置寄存器的某一位(从第0位开始)为1(设置为0使用btr, bit test and reset)
    mov cr0, eax         ; 设置PG位(第31位)为1, 使能分页机制, 此时处理器会自动置位IA32_ERER寄存器的LMA(Long Mode Active, 用以指示处理器当前是否处于IA-32e模式)标志位
```

### 跳转到kernel

至此，处理器已**成功切换到64位模式**，接下来我们只需要一条跳转指令，即可和引导程序挥手告别，**正式迈入内核开发**：

```asm
    ; 至此，处理器完成了进入IA-32e模式前所有的准备工作
    ; 但是处理器目前正在执行保护模式的程序，这种状态叫作兼容模式(Compatibility Mode), 即运行在IA-32e模式（64位模式）下的32位程序
    ; 若想真正运行在IA-32e模式，还需要使用一条跨段跳转/调用指令将CS段寄存器的值更新为IA-32e模式的代码段描述符

    ; 跳转到64位代码段, 正式进入长模式
    jmp SelectorCode64:OffsetOfKernel
```

## 成果

在完成loader.asm文件的编写后，我们就可以使用**nasm汇编器**将其汇编成二进制文件：

```bash
> nasm loader.asm -o loader.bin
```

由于此时我们的虚拟软盘镜像已经实现了**FAT12文件系统的初始化**，因此我就可以使用**复制**命令而不是**强制写入**命令将我们的loader.bin文件装载到虚拟软盘镜像bootloader.img中。这里我们先使用Linux自带的挂载指令`mount`将虚拟软盘镜像挂载到电脑文件系统的某个目录下，然后就可以使用`cp`命令将loader.bin文件**复制到刚刚挂载的文件目录下**即可完成loader文件的装载：

```bash
> sudo mount bootloader.img /media/ -t vfat -o loop
> sudo cp loader.bin /media/
> sync
> sudo umount
```

此时使用十六进制阅读器打开bootloader.img会发现，在地址**0x1400**处（即**FAT表起始扇区**）保存着**FAT12簇**信息：
![FAT12簇信息](./images/FAT12簇信息.png)
在地址**0x2600**处（即**根目录区起始扇区**）保存着**文件目录/文件名**信息：
![文件名信息](./images/文件名信息.png)
在地址**0x4400**处（即**数据区起始扇区**）保存着**文件内容**：
![文件内容](./images/文件内容.png)
继续使用上节的**bochs命令**运行该虚拟镜像模拟启动：

![运行效果](./images/运行效果_no_kernel.png)

由于我们还没有装载kernel文件，因此loader会在搜索kernel文件时提示错误信息`File Not Found！`，但第一行的信息已经从原本的`Hello，MyOS！`变成了`Loading…`，说明我们已经成功运行在了二级引导程序中。

为了更好的演示效果，我们先编写一个**临时的空kernel文件**，里面只有一条使处理器停止运行的`hlt`指令：

```asm
; kernel.asm
    hlt
```

将其按照loader.asm装载的方式，**先汇编**，**后复制**到bootloader.img虚拟软盘镜像中去。方便起见，从这里我们就开始使用**Makefile**文件来辅助编译过程。编写Makefile文件如下：

```Makefile
# Makefile
#########################
# 在linux下使用(如已在Windows中配置dd等命令，也可在Windows中使用)
# 命令所需程序: nasm, qemu, vncviewer, bochs按需安装
#########################

ASM = nasm
BOCHS = bochs
DBG = bochsdbg
BXIMAGE = echo "c" | bximage.exe -func=create -fd="1.44M" -q
DD = dd
MOUNT = sudo mount
CP = sudo cp
SYNC = sync
UMOUNT = sudo umount
CLEAN = rm -f

# 文件生成规则
# $<表示第一个依赖文件，$@表示目标文件

boot.bin: boot.asm
    $(ASM) $< -o $@

loader.bin: loader.asm
    $(ASM) $< -o $@

kernel.bin: kernel.asm
    $(ASM) $< -o $@

# create floppy image
bootloader.img: boot.bin loader.bin kernel.bin
    $(DD) if=/dev/zero of=$@ bs=512 count=2880
    $(DD) if=$< of=$@ conv=notrunc
    $(MOUNT) $@ /media/ -t vfat -o loop
    $(CP) loader.bin /media/
    $(CP) kernel.bin /media/
    $(SYNC)
    $(UMOUNT) /media/


# 命令规则
# 使用make+命令规则即可执行命令

# run in bochs
# -前缀表示忽略命令的退出状态
bochs: bootloader.img
    -$(BOCHS) -q -f bochsrc.bxrc || true

# debug in bochs
dbg: bootloader.img
    -$(DBG) -q -f bochsrc.bxrc || true

# clean up files
clean:
    $(CLEAN) *.img *.bin
```

使用`make bochs`命令运行Makefile文件，模拟结果如下：
![运行效果](./images/运行效果_kernel.png)

可以看到，之前的显示信息已经消失，这是因为我们在loader中**重置了显示模式**，目前虽然仍处于**VGA 80x25的单色文本模式**，但与之前的窗口不同，这是我们自己设置的。

关闭**bochs模拟窗口**，在bochs的**终端信息**中会发现：
![bochs终端信息](./images/bochs终端信息.png)

表明我们成功进入64位的长模式！

完结撒花！！！

## 总结

- **完成二级引导程序loader的编写**
- **完成处理器模式切换（实模式 - > 保护模式 - > 长模式**）
- **成功将loader装载到虚拟软盘镜像，完成全部引导程序的编写**

## 补充

### 物理内存分布

| 物理地址 | 用途 |
| :---------------------: | ---------------------- |
| 0x100000 - 1MB以上内存 | 内核及用户程序（自定义） |
| 0xf0000 - 0xfffff | 系统BIOS |
| 0xe0000-0xeffff | 扩展BIOS |
| 0xc8000-0xdffff | 保留 |
| 0xc0000-0xc7fff | 显卡BIOS |
| 0xb8000-0xbffff | 彩色文本模式显存 |
| 0xb0000-0xb7fff | 单色文本模式显存 |
| 0xa0000-0xaffff | VGA显存 |
| 0x07e00-0x9ffff | 保留 |
| 0x07c00-0x07dff | 引导扇区 |
| 0x00500-0x07bff | 保留 |
| 0x00400-0x004ff | BDA(BIOS数据区) |
| 0x00000-0x003ff | IVT(中断向量表) |

### 编址方式

- **虚拟地址（Virtual Address）**是抽象地址的统称, **逻辑地址**和**线性地址**都是虚拟地址的一种
  - **逻辑地址**的形式是**段地址:偏移地址**，逻辑地址最终都会被转换为线性地址, 再转换为物理地址。
  - **线性地址**是逻辑地址经过**段机制转换**后的地址空间中的一个平坦地址（Flat Address），是逻辑地址到物理地址的中间层，是**分页机制**的输入。如果不启用分页，那么线性地址就是物理地址。
  - 狭义的**虚拟地址**是操作系统使用的概念（操作系统为每个进程提供的**独立的地址空间**），但**线性地址**是CPU使用的概念（CPU在段机制后、分页前看到的地址）。在启用分页后，这两个概念基本等价。
- **物理地址（Physical Address）**是真实存在于硬件设备上的, 在处理器开启分页机制的情况下，线性地址需要经过**页表映射**才能转换成物理地址；否则线性地址将**直接映射**为物理地址。

### 显示模式

- **文本模式**（Text Mode）
  - VGA 80x25（默认）
  - VGA 80x50
- **图形模式**（Garphic Mode）
  - VGA（Video Graphics Array）是 IBM 设计的标准（1987 年），只支持低分辨率。
  - VESA（Video Electronics Standards Association）是一个行业组织，制定了显示标准。
  - SVGA（Super VGA）是 VGA 的扩展（1989 年），但早期不同厂商实现不同。
  - VBE（VESA BIOS Extensions）是 VESA 提出的 BIOS 扩展（1991 年），让软件能统一访问 SVGA 功能。

### CPU模式

#### real mode(16位)

- **实模式**作为Intel处理器家族诞生的第一种运行模式已经存在了很多年。现在它仅用于**引导启动操作系统**和**更新硬件设备的ROM固件**，为了兼顾处理器的**向下兼容性**，它将一直存在于处理器的体系结构中。
- 在Intel官方白皮书中，英文术语**Real Mode**或**Read-Address Mode**均指实模式。实模式的特点是采用独特的**段寻址**方式进行地址访问，处理器在此模式可直接访问物理地址。在实模式下，通用寄存器的位宽只有**16位**，这使得实模式的寻址能力极其有限，就算借助段寻址方式，通常情况下实模式也只能寻址**1 MB**的物理地址空间。
- 实模式采用**逻辑地址编址**（见文末补充知识）方式，通过段基地址加段内偏移地址的形式进行地址寻址，其书写格式为**Segment：Offset**。其中的段基地址值Segment保存在段寄存器中，段内偏移地址值Offset可以保存在寄存器内或使用立即数代替。
- 实模式下**逻辑地址**的段基址通过左移4位并于段内偏移相加组成**线性地址**, 这种逻辑地址编址方式将原本只有16位寻址能力的处理器扩展至20位，通过特殊手段(big real mode)可将实模式的寻址能力扩展至4GB。

#### big real mode(16位)

- 在实模式下, 可以轻松**操纵BIOS**等, 但却只能访问1M的内存；而在保护模式下, 可以访问4G的内存, 但使用BIOS中断却比较麻烦。
- 在开启A20地址线后, 处理器可以使用20根以上的地址总线, 段:偏移计算后的结果不必再回环, 可以访问1MB以上的内存(即使未进入保护模式)。
- 为了减少地址转换时间与编码的复杂性，处理器为保护模式下的`CS、SS、DS、ES、FS`以及`GS`段寄存器各自加入了**缓存区域**，这些段寄存器的缓存区域记录着**段描述符**的**基地址**、**限长**和**属性信息**。当**段选择子**被处理器加载到**段寄存器**的**可见区域**(实际的16位寄存器)后，处理器会自动将段描述符（包括基地址、长度和属性信息）载入到段寄存器的**不可见区域**(对应的段寄存器缓冲区), 处理器通过这些**缓存信息**，可直接进行地址转换，进而免去了重复读取内存中的段描述符的时间开销。
- 如果想在实模式下**访问1M以上的空间**（打开A20只是使得高位地址线可用），则需要**修改段寄存器中的段界限**，但是在实模式下又无法做出修改，所以必须先**跳到保护模式**下修改此值(给段寄存器赋值)，然后再**跳回实模式**。这时**段寄存器缓冲区**就存在一个**远大于0xffff的段界限**，即可访问相应大小的内存空间。此时处于的状态即称为**big real mode**。

#### protected mode(32位)

- **保护模式**目前仅作为**实模式**到**长模式**的过渡模式存在，它是Intel处理器家族中的第二种运行模式。保护模式的特点是采用**分段机制**和**分页机制**进行地址访问，处理器在此模式下可访问**4 GB**的**线性地址空间**。
- 对于实模式的段机制而言，它仅仅规定了逻辑地址与线性地址间的转换方式，却没有**限制访问目标段的权限**，这使得应用程序可以肆无忌惮地对系统核心进行操作。但在保护模式下，若想对系统核心进行操作必须拥有足够的访问权限才行，这就是**保护**的意义：操作系统可在处理器级防止程序有意或无意地破坏其他程序和数据。
- 虽然保护模式支持分段和分页两种管理机制，但是处理器必须先经过**分段管理机制**将**逻辑地址**转换成**线性地址**后，才能使用**分页管理机制**进一步把**线性地址**转换成**物理地址**（注意，分页管理机制是**可选项**，而分段管理机制是**必选项**）。
- 在保护模式下, **段:偏移**不再解释为**段基址*16+偏移地址**, 而是先通过段寄存器中的**段描述符索引**找到相应的**段描述符**, 再通过段描述符中的**基址**与偏移地址一起计算出线性地址

#### long mode(64位)

- **长模式**也被称为**IA-32e**模式，它是Intel处理器家族中的第三种运行模式。长模式在保护模式的基础上进行了扩展，它支持**64位**的**线性地址空间**，最大可寻址至**16 EB**（即2^64字节）。
- 在保护模式的段级保护措施中，从段结构组织的复杂性，到段间权限检测的繁琐性，再到执行时的效率上，都显得**臃肿**，而且还降低了程序的**执行效率**和编程的灵活性。当**页管理单元**出现后，**段机制**显得更加多余。随着硬件速度不断提升和对大容量内存的不断渴望，IA-32e模式便应运而生。 IA-32e模式不仅**简化段级保护措施**的复杂性，**升级内存寻址能力**，同时还**扩展页管理单元**的组织结构和**页面大小**，推出**新的系统调用方式**和**高级可编程中断控制器**(APIC)。

### A20地址线

我们上节在末尾的寄存器部分提到，**段寄存器**出现的原因在于**8086**中CPU的**数据总线**(即ALU算数逻辑单元)宽度为**16位**, 但**地址总线**宽度为**20位**, 为了能够访问**1MB**的内存空间, 采用了**段地址x16+偏移地址**的方式, 通过段寄存器存储段地址, 通过偏移地址存储偏移地址。

而**A20地址线**是Intel **80286**处理器中引入的, 用于解决**8086/8088**处理器在**实模式**下只能寻址**1MB**内存的问题。开启A20地址线前, 处理器最多只能使用20根地址总线, 即**段:偏移**计算后的结果只能使用**最多20位,** 即**1MB**内存; 而开启A20地址线后, 处理器可以使用**20根以上**的地址总线, 段:偏移计算后的结果不必再回环, 可以访问**1MB以上**的内存(即使未进入保护模式)。

当时的**8042键盘控制器**上恰好有空闲的端口引脚（输出端口P2，引脚P21），从而使用此引脚作为功能控制开关，即A20功能。如果A20引脚为低电平（数值0），那么地址总线只有低20位有效，其他位均为0。

在机器上电时，默认情况下A20地址线是被**禁用**的，所以操作系统必须采用适当的方法开启它。由于硬件平台的兼容设备种类繁杂，进而出现多种开启A20功能的方法：

- **键盘控制器**：开启A20功能的常用方法是操作键盘控制器，但由于键盘控制器是**低速设备**，因此功能开启速度相对较慢。
- **A20快速门**（Fast Gate A20）：使用**I/O端口0x92**来处理A20信号线。对于不含键盘控制器的操作系统，就只能使用0x92端口来控制，但是该端口有可能被其他设备使用。
- **BIOS中断**：使用BIOS中断服务程序**INT 15h**的主功能号**AX=0x2401**可开启A20地址线，功能号AX=0x2400可禁用A20地址线，功能号AX=0x2403可查询A20地址线的当前状态。
- 还有一种方法是，通过**读0xee端口**来开启A20信号线，而写该端口则会禁止A20信号线。

### GDT

- **GDT**(Global (segment) Descriptor Table)全局描述符表, 整个系统只有一张, 用于存储段描述符, 一个段描述符占8字节(即一个GDT表项占**64位**), 包括段基址、段界限(长度)、段属性等信息。GDT 至少包含三个描述符：
  - 空描述符（NULL Descriptor）：GDT 的第一个描述符必须是空的。
  - 代码段描述符（Code Segment Descriptor）：指向 一个32 位代码段。
  - 数据段描述符（Data Segment Descriptor）：指向 一个32 位数据段。
- 由于段寄存器为16位, 但低3位为指示信息, 只有**高13位**作为段描述符索引，因此最多只能有2^13=8192个段, 8192*8B=64KB, 因此GDT表的大小为**64KB**, 存储在内存中的某个位置, 由开发人员自行设置, 并由CPU的GDTR特殊寄存器指向。
- **GDTR**(Global Descriptor Table Register)全局描述符表寄存器, 用于存储GDT表的基址和界限, **48位**, 高32位为GDT表的基址, 低16位为GDT表的限长
- **LDT**(Local Descriptor Table)局部描述符表, 每个进程可以私有一个LDT, 用于记录本任务中涉及的各个代码段、数据段和堆栈段以及本任务的使用的门描述符。LDTR(Local Descriptor Table Register)局部描述符表寄存器, 16位, 高13位为LDT表的索引, 低3位为指示信息。
- 在32位模式下，GDT表项的**段基址为32位**，**段界限为20位**，由于20位只能指定1MB大小的段，若想指定最大4GB的段，需要在段的属性里设一个标志位（**第55位，粒度**），这个标志位是1的时候，limit的单位不解释成字节（byte），而解释成页（page，4KB）。最后**段属性占据12位**，段属性又称为“段的访问权属性”，在程序中用变量名access_right或ar来表示。其中12位**段属性中的高4位放在limit_high字节的高4位里**。ar的高4位被称为“扩展访问权”，因为这高4位的访问属性在80286的时代还不存在，到386以后才可以使用。这4位是由“GD00”构成的，其中G是指刚才所说的段粒度，D是指段的模式，1是指32位模式，0是指16位模式。ar的低8位从80286时代就已经有了，这里简单地介绍一下。
  - 00000000（0x00）：未使用的记录表（descriptor table）。
  - 10010010（0x92）：系统专用，可读写的段。不可执行。
  - 10011010（0x9a）：系统专用，可执行的段。可读不可写。
  - 11110010 （0xf2）：应用程序用，可读写的段。不可执行。
  - 11111010 （0xfa）：应用程序用，可执行的段。可读不可写。
- 而在64位模式下，IA-32e简化了保护模式的段结构，**删减掉冗余的段基地址和段限长**（设为0），使段直接覆盖**整个线性地址空间**，进而变成平坦地址空间。

## IDT

- **IDT**(Interrupt Descriptor Table)中断描述符表, 用于存储中断描述符, 在32位保护模式下，一个中断描述符占8字节(即一个IDT表项占**64位**)，而在64位长模式下拓展为16字节（**128位**），包括中断处理程序的段选择子、中断处理程序的偏移地址、中断门属性等信息：
  - 偏移（Offset）：32 位中断处理函数地址
  - 选择子（Selector）：指向 GDT 中的代码段
  - 属性（Type & Attr）：定义中断门、陷阱门等
- 最多设置**256个中断号**, 对应256个中断处理函数
- **IDTR**(Interrupt Descriptor Table Register)中断描述符表寄存器, 用于存储IDT表的基址和界限, 48位, 高32位为IDT表的基址, 低16位为IDT表的限长。
