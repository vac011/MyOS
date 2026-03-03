; MyOS一级引导程序

BaseOfBoot       equ  0       ; 一级引导程序加载地址基址(实际地址乘以16)
OffsetOfBoot     equ  0x7c00  ; boot将被BIOS加载到07c00
BaseOfTemp       equ  0       ; 临时缓冲区段基址, 用于存储读取到的根目录、FAT表
OffsetOfTempRoot equ  0x7e00  ; 临时缓冲区根目录偏移地址
OffsetOfTempFAT  equ  0x8000  ; 临时缓冲区FAT表偏移地址
BaseOfLoader     equ  0x1000  ; loader加载地址基址(实际地址乘以16)
OffsetOfLoader   equ  0       ; loader加载地址偏移

FAT1SecStart equ 1            ; FAT表1起始扇区号(LBA, Logical Block Address，逻辑块地址格式, 从0开始, 而中断int 13h只能接受CHS格式, 从1开始)
FAT1SecNum equ 9              ; FAT表1扇区数
RootDirSecStart equ 19        ; 根目录起始扇区号, 前面有1+9+9=19块
RootDirSecNum equ 14          ; 根目录扇区数
RootDirEntSize equ 32         ; 根目录项大小
DataClusSecStart equ 33       ; 数据区起始簇扇区号, 前面有1+9+9+14=33块

org 0x7c00

    ; FAT12格式
    jmp short Start
    nop
    BS_OEMName db "MyOSboot" ; OEM标识, 生产厂商标识, 8字节补齐
    BPB_BytesPerSec dw 512 ; 每个扇区(sector)大小, 固定为512B
    BPB_SecPerClus db 1 ; 每簇(cluster)扇区数, 由于扇区容量较小会导致软盘读取次数过于频繁, 因此FAT文件系统中以簇而不是扇区为存储单位, 必须为2的幂次方
    BPB_RsvdSecCnt dw 1 ; 保留扇区数, 起始于第一个扇区，此值不能为0, 这里数量为1则FAT表从第二个扇区开始
    BPB_NumFATs db 2 ; FAT表数，通常为2, FAT表2是FAT表1的备份表, 二者完全相同
    BPB_RootEntCnt dw 224 ; 根目录可容纳的目录项数，对于FAT12而言，该数乘32必须是每扇区大小512的偶数倍, 共14个扇区
    BPB_TotSec16 dw 2880 ; 扇区总数，软盘容量为1.44MB, 1.44MB/512B=2880。总扇区依次包括保留扇区、FAT表扇区、根目录扇区和数据区扇区
    BPB_Media db 0xf0 ; 介质描述符, 对于不可移动的存储介质而言, 标准值是0xF8; 对于可移动的存储介质, 常用值为0xF0
    BPB_FATSz16 dw 9 ; 每个FAT表占用的扇区数
    BPB_SecPerTrk dw 18 ; 每磁道扇区数
    BPB_NumHeads dw 2 ; 磁头数
    BPB_HiddSec dd 0 ; 隐藏扇区数, 用于引导扇区的前面
    BPB_TotSec32 dd 0 ; 如果BPB_TotSec16为0, 则使用这个字段记录扇区总数
    BS_DrvNum db 0 ; int 13h的驱动器号
    BS_Reserved1 db 0 ; 保留
    BS_BootSig db 0x29 ; 扩展引导标记, 0x29表示FAT12
    BS_VolID dd 0 ; 卷序列号
    BS_VolLab db "MyOSBOOT   " ; 指定卷标, 它就是Windows或Linux系统中显示的磁盘名, 11字节补齐
    BS_FilSysType db "FAT12   " ; 文件系统类型, 这个类型值只是一个字符串而已，操作系统并不使用该字段来鉴别FAT类文件系统的类型, 8字节补齐

Start:
    ; 保存 BIOS 传入的启动驱动器号
    mov [BS_DrvNum], dl  
    ; 段寄存器不能直接赋值，需要通过通用寄存器间接赋值
    mov ax, 0
    mov ds, ax
    mov ss, ax
    mov sp, 0x7c00

    ; 清屏
    mov ax, 0x0600
    mov bx, 0x0700
    mov cx, 0
    mov dx, 0x0184f
    int 0x10

    ; 利用BIOS中断显示字符串(实际也可以通过直接操控显存地址如0xb0000)
    mov si, 0           ; 信息类型
    mov bp, BootMsg     ; 字符串地址
    mov ax, BaseOfBoot  ; 段地址
    mov es, ax
    call Func_ShowMsg   ; 调用显示信息函数

    ; 搜索loader.bin文件
    mov dx, 0               ; 记录已搜索的根目录扇区数
LoadRootDirSec:
    ; 第一层循环, 读取根目录扇区
    cmp dx, RootDirSecNum   ; 与总根目录扇区数比较
    je FileNotFound         ; 如果已搜索完所有根目录扇区说明不存在
    mov ax, BaseOfTemp
    mov es, ax              ; 传递缓冲区段地址
    mov bx, OffsetOfTempRoot; 传递缓冲区根目录的偏移地址
    mov ax, RootDirSecStart ; 传递读取扇区号
    add ax, dx              ; 计算当前根目录扇区号
    inc dx                  ; 已搜索的根目录扇区数加1
    call Func_ReadOneSec    ; 调用读取扇区函数
    mov bx, 0               ; 记录已读取的目录项数大小(B)
SearchRootDirSec:
    ; 第二层循环, 在根目录扇区中搜索目录项
    cmp bx, [BPB_BytesPerSec]; 如果已读取的目录项数大小(B)等于扇区大小(512B)则说明该扇区已读取完毕
    je LoadRootDirSec        ; 则继续读取下一个扇区, 否则继续在当前扇区中搜索文件名
    mov si, LoaderName       ; 待比较文件名偏移地址
    mov di, OffsetOfTempRoot ; 待比较根目录开始地址
    add di, bx               ; 计算当前根目录项偏移地址
    dec di                   ; 避免下面的CmpFileName中inc di第一次多加一个1
    add bx, RootDirEntSize   ; 每次增加目录项大小32字节
    mov cx, 0                ; 记录已比较的文件名字节数
    cld                      ; clear direction flag, 清除方向标志(DF)将其设置为0, DF决定了字符串操作指令(如MOVS, CMPS, SCAS, LODS, 和STOS)在处理内存时的方向。
CmpFileName:
    ; 第三层循环, 按字节比较文件名
    cmp cx, 11               ; 文件名长度为11
    je FileFound             ; 如果全部11个字节比较完毕则说明找到文件
    inc cx
    inc di
    lodsb                    ; 从[ds:si]指向的内存单元读取待搜索文件名的一个字节到al, si自动增加(需要设置DF=0)
    cmp al, byte [es:di]     ; 与根目录项中的文件名字段比较
    je CmpFileName           ; 如果相等则继续比较下一个字节
    jmp SearchRootDirSec     ; 否则继续比较下一个根目录项

FileNotFound:
    mov si, 1
    mov bp, FileNotFoundMsg
    mov ax, BaseOfBoot
    mov es, ax
    call Func_ShowMsg

FileFound:
    and di, 0xffe0           ; 获取文件目录项的起始地址
    add di, 0x1a             ; 加上文件起始簇号字段的偏移地址
    mov ax, BaseOfTemp
    mov es, ax
    mov si, [es:di]          ; 获取文件的起始簇号(2B)
    mov bx, OffsetOfTempFAT  ; 传递缓冲区FAT表的偏移地址
    mov ax, FAT1SecStart     ; 传递FAT表1起始扇区号
    mov cx, 0                ; 记录已读取的FAT扇区数
LoadFAT:
    ; 读取全部FAT表进内存
    call Func_ReadOneSec     ; 调用读取扇区函数
    inc ax                   ; 计算下一个FAT扇区号
    inc cx                   ; 已读取的FAT扇区数加1
    add bx, [BPB_BytesPerSec]; 缓冲区偏移地址加上扇区大小(512B)
    cmp cx, FAT1SecNum       ; 与总FAT扇区数比较
    jne LoadFAT              ; 如果未读取完所有FAT扇区则继续读取
    mov bx, OffsetOfLoader   ; 传递Loader加载地址偏移地址
LoadFile:
    ; 根据簇号加载文件
    and si, 0xfff            ; 只取低12位, 即簇号(1.5B)
    cmp si, 0xff8            ; 如果簇号大于等于0xff8则是当前最后一个簇
    jae Loader               ; 则跳转到Loader
    mov ax, BaseOfLoader
    mov es, ax               ; 传递Loader加载地址段地址
    mov ax, DataClusSecStart ; 数据区起始扇区号
    sub ax, 2                ; 减去前两个FAT保留项, 即实际数据区起始簇是从第3个簇(2号)开始          
    add ax, si               ; 传递实际扇区号
    call Func_ReadOneSec
    add bx, [BPB_BytesPerSec]; 缓冲区偏移地址加上扇区大小(512B)
    ; 获取下一个簇号值
    mov ax, si               
    and si, 1                ; 保存簇号的奇偶性
    shr ax, 1                ; 除以2后剩下的就是表项偏移
    mov cx, 3                ; 乘以3字节/2簇
    mul cx                   ; 默认操作数是ax
    mov di, OffsetOfTempFAT  ; 获取FAT表起始地址
    add di, ax               ; 计算表项偏移地址
    add di, si               ; 计算奇偶偏移地址
    mov ax, BaseOfTemp
    mov es, ax               ; FAT表段基址
    mov dx, word [es:di]     ; 读FAT表项值(2B)
    shl si, 2                ; 根据奇偶性确定加下来要取高12位还是低12位
    mov cx, si               ; shr的第二个操作数必须是立即数或CL寄存器
    shr dx, cl               ; 右移4/0位, 即取高/低12位
    mov si, dx               ; 更新簇号值
    jmp LoadFile             ; 继续加载文件的下一个簇

Loader:
    ; 跳转到Loader
    jmp BaseOfLoader:OffsetOfLoader     ; 这里会把BaseOfLoader赋值给CS, OffsetOfLoader赋值给IP             

; 读磁盘扇区(1个)函数
; es传递缓冲区段地址
; bx传递缓冲区偏移地址
; ax传递读取扇区号(LBA)
Func_ReadOneSec:
    ; LBA格式转换为CHS格式
    push cx
    push dx
    push si
    mov cl, byte [BPB_SecPerTrk] ; 每磁道扇区数
    div cl                  ; div指令的被除数是默认的, 不能指定; 当除数是8位时, 被除数是ax, 商在al, 余数在ah
    inc ah                  ; 转换为CHS格式, 扇区号从1而不是0开始
    mov cl, ah              ; cl存放扇区号
    mov dh, al              ; dh存放磁头号
    and dh, 1               ; 转换为CHS格式, 磁头号为0或1
    shr al, 1               ; 转换为CHS格式, 商除以2结果为柱面号
    mov ch, al              ; ch存放柱面号
    mov si, 0               ; 记录重试次数
Retry:
    ; 读取磁盘/失败重读
    mov ax, 0               ; 重置驱动器
    mov dl, [BS_DrvNum]     ; dl存放驱动器号
    int 0x13                ; 0x13中断0x00功能号为复位磁盘
    mov ah, 0x02            ; ah存放功能号, 0x02为读磁盘
    mov al, 1               ; al存放读取扇区数
    int 0x13                ; 调用BIOS中断13h读取磁盘, 返回值放在FLAGS寄存器的CF位
    jnc Return              ; 如果CF=0则读取成功, 否则重试
    add si, 1               ; 重试次数加1
    cmp si, 3               ; 最多尝试3次
    jne Retry               ; 重试
    mov si, 1               ; 否则显示错误信息
    mov bp, ReadSecErrorMsg
    mov ax, BaseOfBoot
    mov es, ax
    call Func_ShowMsg
Return:
    pop si
    pop dx
    pop cx
    ret
    
; 显示信息函数
; si传递信息类型(0x00:显示并返回, 0x01:错误)
; es传递错误信息段地址
; bp传递错误信息偏移地址
Func_ShowMsg:
    push ax
    push bx
    push cx
    push dx
    mov cx, 0               ; 字符串长度
Count:
    ; 循环计算字符串长度
    mov bx, bp
    add bx, cx
    inc cx
    mov al, [es:bx]
    cmp al, 0
    jne Count
    mov ax, 0x1301          ; 显示字符串
    mov dh, [Row]           ; 行号
    mov dl, 0               ; 列号
    mov bl, dh
    add bl, 2               ; 每次隔两行
    mov [Row], bl           ; 更新行号
    cmp si, 0
    jne HALT
Fin:
    mov bx, 0x000f          ; 页号为0，颜色为15
    int 0x10
    pop dx
    pop cx
    pop bx
    pop ax
    ret
HALT:
    mov bx, 0x008c           ; 红色闪烁效果
    int 0x10
    hlt
    jmp HALT

Msg:
    Row       db 0
    BootMsg:  db "Hello, MyOS!", 0
    ReadSecErrorMsg: db "Read Disk Error!", 0
    LoaderName: db "LOADER  BIN", 0
    FileNotFoundMsg: db "File Not Found!", 0
    times 510-($-$$) db 0
    db 0x55, 0xaa        ; 魔法数