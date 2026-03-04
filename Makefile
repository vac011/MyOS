#########################
# 在linux下使用(如已在Windows中配置dd等命令，也可在Windows中使用)
# 命令所需程序: nasm, qemu, vncviewer, bochs按需安装
#########################

# Windows命令
# ASM = nasm.exe
# QEMU = qemu-system-x86_64.exe
# ADDR = 127.0.0.1:5900
# BOCHS = bochs.exe
# DBG	= bochsdbg.exe
# BXIMAGE = echo "c" | bximage.exe -func=create -fd="1.44M" -q
# DD = 
# MOUNT = 
# CP = 
# SYNC = 
# UMOUNT = 
# CLEAN = del /f /q

# Linux命令
ASM = nasm
QEMU = qemu-system-x86_64
VNC = vncviewer
ADDR = 127.0.0.1:5900
BOCHS = bochs
BOCHSRC = ./bochs/bochsrc
BXIMAGE = echo "c" | bximage -func=create -fd="1.44M" -q
DD = dd
MOUNT = sudo mount
CP = sudo cp
SYNC = sync
UMOUNT = sudo umount
CLEAN = rm -f

# 文件生成规则
# $<表示第一个依赖文件，$@表示目标文件

B = bootloader
K = kernel
U = user
IMG = myos.img

OBJS = $K/main.o \
	   $K/printf.o \
	   $K/console.o \
	   $K/task.o \
	   $K/trap.o \
	   $K/intr.o \
	   $K/memory.o \
	   $K/slub.o \
	   $K/string.o
	
$B/%.bin: $B/%.asm
	$(ASM) $< -o $@

# .S 代表 需要预处理（区别于 .s）
$K/entry.o: $K/entry.S
	gcc -m64 -c $< -o $@

$K/trapentry.o: $K/trapentry.S
	gcc -m64 -c $< -o $@

$K/intrentry.o: $K/intrentry.S
	gcc -m64 -c $< -o $@

# 使用%模式规则依次匹配单个文件而不是*通配符展开一次性匹配所有文件，但普通规则的优先级高于一般规则
$K/%.o: $K/%.c
	gcc -mcmodel=large -ffreestanding -fno-builtin -fno-stack-protector -m64 -c $< -o $@

$K/kernel: $K/entry.o $K/trapentry.o $K/intrentry.o $(OBJS)
	ld -b elf64-x86-64 -o $K/kernel $K/entry.o $K/trapentry.o $K/intrentry.o $(OBJS) -T $K/kernel.ld
	objdump -D $K/kernel > $K/kernel.asm

$K/kernel.bin: $K/kernel
	objcopy -I elf64-x86-64 -S -R ".eh_frame" -R ".comment" -O binary $K/kernel $K/kernel.bin

# create floppy image
$(IMG): $B/boot.bin $B/loader.bin $K/kernel.bin
	$(DD) if=/dev/zero of=$@ bs=512 count=2880
	$(DD) if=$< of=$@ conv=notrunc
	$(MOUNT) $@ /media/ -t vfat -o loop
	$(CP) $B/loader.bin /media/
	$(CP) $K/kernel.bin /media/
	$(SYNC)
	$(UMOUNT) /media/


# 命令规则
# 使用make+命令规则即可执行命令

# run in qemu
# &表示后台运行, \表示换行(多命令时仍属于整体，否则多个命令属于不同执行逻辑), &&表示逻辑与(当前命令执行成功后执行下一个命令), ;表示分隔命令(无论前一个命令是否成功，都执行下一个命令)
qemu: $(IMG)
	$(QEMU) -drive file=$(IMG),format=raw,if=floppy

# run in bochs
# -前缀表示忽略命令的退出状态
bochs: $(IMG)
	-$(BOCHS) -q -f $(BOCHSRC) || true

# debug in bochs
dbg: $(IMG)
	-$(DBG) -q -f $(BOCHSRC) || true

# clean up files
clean:
	$(CLEAN) $(IMG)
	$(CLEAN) $B/*.bin
	$(CLEAN) $K/*.bin $K/*.o $K/kernel $K/head.s
