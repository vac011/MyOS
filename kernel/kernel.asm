
kernel/kernel:     file format elf64-x86-64


Disassembly of section .text:

ffff800000100000 <_start>:
ffff800000100000:	66 b8 10 00          	mov    $0x10,%ax
ffff800000100004:	8e d8                	mov    %eax,%ds
ffff800000100006:	8e c0                	mov    %eax,%es
ffff800000100008:	8e e0                	mov    %eax,%fs
ffff80000010000a:	8e d0                	mov    %eax,%ss
ffff80000010000c:	bc 00 7e 00 00       	mov    $0x7e00,%esp
ffff800000100011:	0f 01 15 d0 96 00 00 	lgdt   0x96d0(%rip)        # ffff8000001096e8 <GDT6464_LIMIT>
ffff800000100018:	0f 01 1d d3 a6 00 00 	lidt   0xa6d3(%rip)        # ffff80000010a6f2 <IDT64_END>
ffff80000010001f:	66 b8 10 00          	mov    $0x10,%ax
ffff800000100023:	8e d8                	mov    %eax,%ds
ffff800000100025:	8e c0                	mov    %eax,%es
ffff800000100027:	8e e0                	mov    %eax,%fs
ffff800000100029:	8e e8                	mov    %eax,%gs
ffff80000010002b:	8e d0                	mov    %eax,%ss
ffff80000010002d:	48 c7 c4 00 7e 00 00 	mov    $0x7e00,%rsp
ffff800000100034:	48 c7 c0 00 10 10 00 	mov    $0x101000,%rax
ffff80000010003b:	0f 22 d8             	mov    %rax,%cr3
ffff80000010003e:	48 8b 05 05 00 00 00 	mov    0x5(%rip),%rax        # ffff80000010004a <switch_seg>
ffff800000100045:	6a 08                	push   $0x8
ffff800000100047:	50                   	push   %rax
ffff800000100048:	48 cb                	lretq

ffff80000010004a <switch_seg>:
ffff80000010004a:	52                   	push   %rdx
ffff80000010004b:	00 10                	add    %dl,(%rax)
ffff80000010004d:	00 00                	add    %al,(%rax)
ffff80000010004f:	80 ff ff             	cmp    $0xff,%bh

ffff800000100052 <entry64>:
ffff800000100052:	48 c7 c0 10 00 00 00 	mov    $0x10,%rax
ffff800000100059:	8e d8                	mov    %eax,%ds
ffff80000010005b:	8e c0                	mov    %eax,%es
ffff80000010005d:	8e e8                	mov    %eax,%gs
ffff80000010005f:	8e d0                	mov    %eax,%ss
ffff800000100061:	48 bc 00 7e 00 00 00 	movabs $0xffff800000007e00,%rsp
ffff800000100068:	80 ff ff 
ffff80000010006b:	48 8b 05 05 00 00 00 	mov    0x5(%rip),%rax        # ffff800000100077 <go_to_kernel>
ffff800000100072:	6a 08                	push   $0x8
ffff800000100074:	50                   	push   %rax
ffff800000100075:	48 cb                	lretq

ffff800000100077 <go_to_kernel>:
ffff800000100077:	75 42                	jne    ffff8000001000bb <go_to_kernel+0x44>
ffff800000100079:	10 00                	adc    %al,(%rax)
ffff80000010007b:	00 80 ff ff 00 00    	add    %al,0xffff(%rax)
	...

ffff800000101000 <__PML4E>:
ffff800000101000:	07                   	(bad)
ffff800000101001:	20 10                	and    %dl,(%rax)
	...
ffff8000001017ff:	00 07                	add    %al,(%rdi)
ffff800000101801:	20 10                	and    %dl,(%rax)
	...

ffff800000102000 <__PDPTE>:
ffff800000102000:	03 30                	add    (%rax),%esi
ffff800000102002:	10 00                	adc    %al,(%rax)
	...

ffff800000103000 <__PDE>:
ffff800000103000:	83 00 00             	addl   $0x0,(%rax)
ffff800000103003:	00 00                	add    %al,(%rax)
ffff800000103005:	00 00                	add    %al,(%rax)
ffff800000103007:	00 83 00 20 00 00    	add    %al,0x2000(%rbx)
ffff80000010300d:	00 00                	add    %al,(%rax)
ffff80000010300f:	00 83 00 40 00 00    	add    %al,0x4000(%rbx)
ffff800000103015:	00 00                	add    %al,(%rax)
ffff800000103017:	00 83 00 60 00 00    	add    %al,0x6000(%rbx)
ffff80000010301d:	00 00                	add    %al,(%rax)
ffff80000010301f:	00 83 00 80 00 00    	add    %al,0x8000(%rbx)
ffff800000103025:	00 00                	add    %al,(%rax)
ffff800000103027:	00 83 00 00 e0 00    	add    %al,0xe00000(%rbx)
ffff80000010302d:	00 00                	add    %al,(%rax)
ffff80000010302f:	00 83 00 20 e0 00    	add    %al,0xe02000(%rbx)
ffff800000103035:	00 00                	add    %al,(%rax)
ffff800000103037:	00 83 00 40 e0 00    	add    %al,0xe04000(%rbx)
ffff80000010303d:	00 00                	add    %al,(%rax)
ffff80000010303f:	00 83 00 60 e0 00    	add    %al,0xe06000(%rbx)
ffff800000103045:	00 00                	add    %al,(%rax)
ffff800000103047:	00 83 00 80 e0 00    	add    %al,0xe08000(%rbx)
ffff80000010304d:	00 00                	add    %al,(%rax)
ffff80000010304f:	00 83 00 a0 e0 00    	add    %al,0xe0a000(%rbx)
ffff800000103055:	00 00                	add    %al,(%rax)
ffff800000103057:	00 83 00 c0 e0 00    	add    %al,0xe0c000(%rbx)
ffff80000010305d:	00 00                	add    %al,(%rax)
ffff80000010305f:	00 83 00 e0 e0 00    	add    %al,0xe0e000(%rbx)
	...

ffff800000104000 <enter_exception>:
ffff800000104000:	50                   	push   %rax
ffff800000104001:	51                   	push   %rcx
ffff800000104002:	52                   	push   %rdx
ffff800000104003:	53                   	push   %rbx
ffff800000104004:	55                   	push   %rbp
ffff800000104005:	56                   	push   %rsi
ffff800000104006:	57                   	push   %rdi
ffff800000104007:	41 50                	push   %r8
ffff800000104009:	41 51                	push   %r9
ffff80000010400b:	41 52                	push   %r10
ffff80000010400d:	41 53                	push   %r11
ffff80000010400f:	41 54                	push   %r12
ffff800000104011:	41 55                	push   %r13
ffff800000104013:	41 56                	push   %r14
ffff800000104015:	41 57                	push   %r15
ffff800000104017:	8c d8                	mov    %ds,%eax
ffff800000104019:	50                   	push   %rax
ffff80000010401a:	8c c0                	mov    %es,%eax
ffff80000010401c:	50                   	push   %rax
ffff80000010401d:	48 31 c0             	xor    %rax,%rax
ffff800000104020:	fc                   	cld
ffff800000104021:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
ffff800000104028:	00 
ffff800000104029:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
ffff800000104030:	00 
ffff800000104031:	48 c7 c7 10 00 00 00 	mov    $0x10,%rdi
ffff800000104038:	8e df                	mov    %edi,%ds
ffff80000010403a:	8e c7                	mov    %edi,%es
ffff80000010403c:	48 89 e7             	mov    %rsp,%rdi
ffff80000010403f:	ff d2                	call   *%rdx
ffff800000104041:	eb 00                	jmp    ffff800000104043 <ret_from_exception>

ffff800000104043 <ret_from_exception>:
ffff800000104043:	58                   	pop    %rax
ffff800000104044:	8e c0                	mov    %eax,%es
ffff800000104046:	58                   	pop    %rax
ffff800000104047:	8e d8                	mov    %eax,%ds
ffff800000104049:	41 5f                	pop    %r15
ffff80000010404b:	41 5e                	pop    %r14
ffff80000010404d:	41 5d                	pop    %r13
ffff80000010404f:	41 5c                	pop    %r12
ffff800000104051:	41 5b                	pop    %r11
ffff800000104053:	41 5a                	pop    %r10
ffff800000104055:	41 59                	pop    %r9
ffff800000104057:	41 58                	pop    %r8
ffff800000104059:	5f                   	pop    %rdi
ffff80000010405a:	5e                   	pop    %rsi
ffff80000010405b:	5d                   	pop    %rbp
ffff80000010405c:	5b                   	pop    %rbx
ffff80000010405d:	5a                   	pop    %rdx
ffff80000010405e:	59                   	pop    %rcx
ffff80000010405f:	58                   	pop    %rax
ffff800000104060:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104064:	48 cf                	iretq

ffff800000104066 <divide_error>:
ffff800000104066:	6a 00                	push   $0x0
ffff800000104068:	50                   	push   %rax
ffff800000104069:	48 8d 05 78 1e 00 00 	lea    0x1e78(%rip),%rax        # ffff800000105ee8 <do_divide_error>
ffff800000104070:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104074:	eb 8a                	jmp    ffff800000104000 <enter_exception>

ffff800000104076 <debug>:
ffff800000104076:	6a 00                	push   $0x0
ffff800000104078:	50                   	push   %rax
ffff800000104079:	48 8d 05 e6 1e 00 00 	lea    0x1ee6(%rip),%rax        # ffff800000105f66 <do_debug>
ffff800000104080:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104084:	e9 77 ff ff ff       	jmp    ffff800000104000 <enter_exception>

ffff800000104089 <nmi>:
ffff800000104089:	6a 00                	push   $0x0
ffff80000010408b:	50                   	push   %rax
ffff80000010408c:	48 8d 05 51 1f 00 00 	lea    0x1f51(%rip),%rax        # ffff800000105fe4 <do_nmi>
ffff800000104093:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104097:	e9 64 ff ff ff       	jmp    ffff800000104000 <enter_exception>

ffff80000010409c <int3>:
ffff80000010409c:	6a 00                	push   $0x0
ffff80000010409e:	50                   	push   %rax
ffff80000010409f:	48 8d 05 bc 1f 00 00 	lea    0x1fbc(%rip),%rax        # ffff800000106062 <do_int3>
ffff8000001040a6:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001040aa:	e9 51 ff ff ff       	jmp    ffff800000104000 <enter_exception>

ffff8000001040af <overflow>:
ffff8000001040af:	6a 00                	push   $0x0
ffff8000001040b1:	50                   	push   %rax
ffff8000001040b2:	48 8d 05 27 20 00 00 	lea    0x2027(%rip),%rax        # ffff8000001060e0 <do_overflow>
ffff8000001040b9:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001040bd:	e9 3e ff ff ff       	jmp    ffff800000104000 <enter_exception>

ffff8000001040c2 <bounds>:
ffff8000001040c2:	6a 00                	push   $0x0
ffff8000001040c4:	50                   	push   %rax
ffff8000001040c5:	48 8d 05 92 20 00 00 	lea    0x2092(%rip),%rax        # ffff80000010615e <do_bounds>
ffff8000001040cc:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001040d0:	e9 2b ff ff ff       	jmp    ffff800000104000 <enter_exception>

ffff8000001040d5 <undefined_opcode>:
ffff8000001040d5:	6a 00                	push   $0x0
ffff8000001040d7:	50                   	push   %rax
ffff8000001040d8:	48 8d 05 fd 20 00 00 	lea    0x20fd(%rip),%rax        # ffff8000001061dc <do_undefined_opcode>
ffff8000001040df:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001040e3:	e9 18 ff ff ff       	jmp    ffff800000104000 <enter_exception>

ffff8000001040e8 <dev_not_available>:
ffff8000001040e8:	6a 00                	push   $0x0
ffff8000001040ea:	50                   	push   %rax
ffff8000001040eb:	48 8d 05 68 21 00 00 	lea    0x2168(%rip),%rax        # ffff80000010625a <do_dev_not_available>
ffff8000001040f2:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001040f6:	e9 05 ff ff ff       	jmp    ffff800000104000 <enter_exception>

ffff8000001040fb <double_fault>:
ffff8000001040fb:	50                   	push   %rax
ffff8000001040fc:	48 8d 05 d5 21 00 00 	lea    0x21d5(%rip),%rax        # ffff8000001062d8 <do_double_fault>
ffff800000104103:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104107:	e9 f4 fe ff ff       	jmp    ffff800000104000 <enter_exception>

ffff80000010410c <coprocessor_segment_overrun>:
ffff80000010410c:	6a 00                	push   $0x0
ffff80000010410e:	50                   	push   %rax
ffff80000010410f:	48 8d 05 40 22 00 00 	lea    0x2240(%rip),%rax        # ffff800000106356 <do_coprocessor_segment_overrun>
ffff800000104116:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010411a:	e9 e1 fe ff ff       	jmp    ffff800000104000 <enter_exception>

ffff80000010411f <invalid_TSS>:
ffff80000010411f:	50                   	push   %rax
ffff800000104120:	48 8d 05 ad 22 00 00 	lea    0x22ad(%rip),%rax        # ffff8000001063d4 <do_invalid_TSS>
ffff800000104127:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010412b:	e9 d0 fe ff ff       	jmp    ffff800000104000 <enter_exception>

ffff800000104130 <segment_not_present>:
ffff800000104130:	50                   	push   %rax
ffff800000104131:	48 8d 05 4b 24 00 00 	lea    0x244b(%rip),%rax        # ffff800000106583 <do_segment_not_present>
ffff800000104138:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010413c:	e9 bf fe ff ff       	jmp    ffff800000104000 <enter_exception>

ffff800000104141 <stack_segment_fault>:
ffff800000104141:	50                   	push   %rax
ffff800000104142:	48 8d 05 e9 25 00 00 	lea    0x25e9(%rip),%rax        # ffff800000106732 <do_stack_segment_fault>
ffff800000104149:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010414d:	e9 ae fe ff ff       	jmp    ffff800000104000 <enter_exception>

ffff800000104152 <general_protection>:
ffff800000104152:	50                   	push   %rax
ffff800000104153:	48 8d 05 87 27 00 00 	lea    0x2787(%rip),%rax        # ffff8000001068e1 <do_general_protection>
ffff80000010415a:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010415e:	e9 9d fe ff ff       	jmp    ffff800000104000 <enter_exception>

ffff800000104163 <page_fault>:
ffff800000104163:	50                   	push   %rax
ffff800000104164:	48 8d 05 25 29 00 00 	lea    0x2925(%rip),%rax        # ffff800000106a90 <do_page_fault>
ffff80000010416b:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010416f:	e9 8c fe ff ff       	jmp    ffff800000104000 <enter_exception>

ffff800000104174 <x87_FPU_error>:
ffff800000104174:	6a 00                	push   $0x0
ffff800000104176:	50                   	push   %rax
ffff800000104177:	48 8d 05 4f 2b 00 00 	lea    0x2b4f(%rip),%rax        # ffff800000106ccd <do_x87_FPU_error>
ffff80000010417e:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104182:	e9 79 fe ff ff       	jmp    ffff800000104000 <enter_exception>

ffff800000104187 <alignment_check>:
ffff800000104187:	50                   	push   %rax
ffff800000104188:	48 8d 05 bc 2b 00 00 	lea    0x2bbc(%rip),%rax        # ffff800000106d4b <do_alignment_check>
ffff80000010418f:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104193:	e9 68 fe ff ff       	jmp    ffff800000104000 <enter_exception>

ffff800000104198 <machine_check>:
ffff800000104198:	6a 00                	push   $0x0
ffff80000010419a:	50                   	push   %rax
ffff80000010419b:	48 8d 05 27 2c 00 00 	lea    0x2c27(%rip),%rax        # ffff800000106dc9 <do_machine_check>
ffff8000001041a2:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001041a6:	e9 55 fe ff ff       	jmp    ffff800000104000 <enter_exception>

ffff8000001041ab <SIMD_exception>:
ffff8000001041ab:	6a 00                	push   $0x0
ffff8000001041ad:	50                   	push   %rax
ffff8000001041ae:	48 8d 05 92 2c 00 00 	lea    0x2c92(%rip),%rax        # ffff800000106e47 <do_SIMD_exception>
ffff8000001041b5:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001041b9:	e9 42 fe ff ff       	jmp    ffff800000104000 <enter_exception>

ffff8000001041be <virtualization_exception>:
ffff8000001041be:	6a 00                	push   $0x0
ffff8000001041c0:	50                   	push   %rax
ffff8000001041c1:	48 8d 05 fd 2c 00 00 	lea    0x2cfd(%rip),%rax        # ffff800000106ec5 <do_virtualization_exception>
ffff8000001041c8:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001041cc:	e9 2f fe ff ff       	jmp    ffff800000104000 <enter_exception>

ffff8000001041d1 <save_all>:
ffff8000001041d1:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001041d5:	51                   	push   %rcx
ffff8000001041d6:	52                   	push   %rdx
ffff8000001041d7:	53                   	push   %rbx
ffff8000001041d8:	55                   	push   %rbp
ffff8000001041d9:	56                   	push   %rsi
ffff8000001041da:	57                   	push   %rdi
ffff8000001041db:	41 50                	push   %r8
ffff8000001041dd:	41 51                	push   %r9
ffff8000001041df:	41 52                	push   %r10
ffff8000001041e1:	41 53                	push   %r11
ffff8000001041e3:	41 54                	push   %r12
ffff8000001041e5:	41 55                	push   %r13
ffff8000001041e7:	41 56                	push   %r14
ffff8000001041e9:	41 57                	push   %r15
ffff8000001041eb:	8c d9                	mov    %ds,%ecx
ffff8000001041ed:	51                   	push   %rcx
ffff8000001041ee:	8c c1                	mov    %es,%ecx
ffff8000001041f0:	51                   	push   %rcx
ffff8000001041f1:	ff e0                	jmp    *%rax

ffff8000001041f3 <ret_from_intr>:
ffff8000001041f3:	58                   	pop    %rax
ffff8000001041f4:	8e c0                	mov    %eax,%es
ffff8000001041f6:	58                   	pop    %rax
ffff8000001041f7:	8e d8                	mov    %eax,%ds
ffff8000001041f9:	41 5f                	pop    %r15
ffff8000001041fb:	41 5e                	pop    %r14
ffff8000001041fd:	41 5d                	pop    %r13
ffff8000001041ff:	41 5c                	pop    %r12
ffff800000104201:	41 5b                	pop    %r11
ffff800000104203:	41 5a                	pop    %r10
ffff800000104205:	41 59                	pop    %r9
ffff800000104207:	41 58                	pop    %r8
ffff800000104209:	5f                   	pop    %rdi
ffff80000010420a:	5e                   	pop    %rsi
ffff80000010420b:	5d                   	pop    %rbp
ffff80000010420c:	5b                   	pop    %rbx
ffff80000010420d:	5a                   	pop    %rdx
ffff80000010420e:	59                   	pop    %rcx
ffff80000010420f:	58                   	pop    %rax
ffff800000104210:	48 cf                	iretq

ffff800000104212 <irq0x20>:
ffff800000104212:	e8 ba ff ff ff       	call   ffff8000001041d1 <save_all>
ffff800000104217:	fc                   	cld
ffff800000104218:	48 89 e7             	mov    %rsp,%rdi
ffff80000010421b:	48 c7 c6 20 00 00 00 	mov    $0x20,%rsi
ffff800000104222:	48 8d 15 6a 2f 00 00 	lea    0x2f6a(%rip),%rdx        # ffff800000107193 <do_irq0x20>
ffff800000104229:	48 8d 0d c3 ff ff ff 	lea    -0x3d(%rip),%rcx        # ffff8000001041f3 <ret_from_intr>
ffff800000104230:	51                   	push   %rcx
ffff800000104231:	ff e2                	jmp    *%rdx

ffff800000104233 <irq0x21>:
ffff800000104233:	e8 99 ff ff ff       	call   ffff8000001041d1 <save_all>
ffff800000104238:	fc                   	cld
ffff800000104239:	48 89 e7             	mov    %rsp,%rdi
ffff80000010423c:	48 c7 c6 21 00 00 00 	mov    $0x21,%rsi
ffff800000104243:	48 8d 15 b0 2f 00 00 	lea    0x2fb0(%rip),%rdx        # ffff8000001071fa <do_irq0x21>
ffff80000010424a:	48 8d 0d a2 ff ff ff 	lea    -0x5e(%rip),%rcx        # ffff8000001041f3 <ret_from_intr>
ffff800000104251:	51                   	push   %rcx
ffff800000104252:	ff e2                	jmp    *%rdx

ffff800000104254 <irq0x2c>:
ffff800000104254:	e8 78 ff ff ff       	call   ffff8000001041d1 <save_all>
ffff800000104259:	fc                   	cld
ffff80000010425a:	48 89 e7             	mov    %rsp,%rdi
ffff80000010425d:	48 c7 c6 22 00 00 00 	mov    $0x22,%rsi
ffff800000104264:	48 8d 15 25 30 00 00 	lea    0x3025(%rip),%rdx        # ffff800000107290 <do_irq0x2c>
ffff80000010426b:	48 8d 0d 81 ff ff ff 	lea    -0x7f(%rip),%rcx        # ffff8000001041f3 <ret_from_intr>
ffff800000104272:	51                   	push   %rcx
ffff800000104273:	ff e2                	jmp    *%rdx

ffff800000104275 <main>:
ffff800000104275:	f3 0f 1e fa          	endbr64
ffff800000104279:	55                   	push   %rbp
ffff80000010427a:	48 89 e5             	mov    %rsp,%rbp
ffff80000010427d:	41 57                	push   %r15
ffff80000010427f:	53                   	push   %rbx
ffff800000104280:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104280 <main+0xb>
ffff800000104287:	49 bb d0 65 00 00 00 	movabs $0x65d0,%r11
ffff80000010428e:	00 00 00 
ffff800000104291:	4c 01 db             	add    %r11,%rbx
ffff800000104294:	be 08 00 00 00       	mov    $0x8,%esi
ffff800000104299:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff8000001042a0:	80 ff ff 
ffff8000001042a3:	48 89 c7             	mov    %rax,%rdi
ffff8000001042a6:	49 89 df             	mov    %rbx,%r15
ffff8000001042a9:	48 b8 62 ab ff ff ff 	movabs $0xffffffffffffab62,%rax
ffff8000001042b0:	ff ff ff 
ffff8000001042b3:	48 01 d8             	add    %rbx,%rax
ffff8000001042b6:	ff d0                	call   *%rax
ffff8000001042b8:	49 89 df             	mov    %rbx,%r15
ffff8000001042bb:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001042c0:	48 ba 92 ae ff ff ff 	movabs $0xffffffffffffae92,%rdx
ffff8000001042c7:	ff ff ff 
ffff8000001042ca:	48 01 da             	add    %rbx,%rdx
ffff8000001042cd:	ff d2                	call   *%rdx
ffff8000001042cf:	49 89 df             	mov    %rbx,%r15
ffff8000001042d2:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001042d7:	48 ba 62 c7 ff ff ff 	movabs $0xffffffffffffc762,%rdx
ffff8000001042de:	ff ff ff 
ffff8000001042e1:	48 01 da             	add    %rbx,%rdx
ffff8000001042e4:	ff d2                	call   *%rdx
ffff8000001042e6:	49 89 df             	mov    %rbx,%r15
ffff8000001042e9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001042ee:	48 ba c1 ca ff ff ff 	movabs $0xffffffffffffcac1,%rdx
ffff8000001042f5:	ff ff ff 
ffff8000001042f8:	48 01 da             	add    %rbx,%rdx
ffff8000001042fb:	ff d2                	call   *%rdx
ffff8000001042fd:	49 89 df             	mov    %rbx,%r15
ffff800000104300:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104305:	48 ba 6e a9 ff ff ff 	movabs $0xffffffffffffa96e,%rdx
ffff80000010430c:	ff ff ff 
ffff80000010430f:	48 01 da             	add    %rbx,%rdx
ffff800000104312:	ff d2                	call   *%rdx
ffff800000104314:	90                   	nop
ffff800000104315:	eb fd                	jmp    ffff800000104314 <main+0x9f>

ffff800000104317 <itoa>:
ffff800000104317:	f3 0f 1e fa          	endbr64
ffff80000010431b:	55                   	push   %rbp
ffff80000010431c:	48 89 e5             	mov    %rsp,%rbp
ffff80000010431f:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff80000010431f <itoa+0x8>
ffff800000104326:	49 bb 31 65 00 00 00 	movabs $0x6531,%r11
ffff80000010432d:	00 00 00 
ffff800000104330:	4c 01 d8             	add    %r11,%rax
ffff800000104333:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff800000104337:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff80000010433b:	89 55 9c             	mov    %edx,-0x64(%rbp)
ffff80000010433e:	48 b8 30 31 32 33 34 	movabs $0x3736353433323130,%rax
ffff800000104345:	35 36 37 
ffff800000104348:	48 ba 38 39 41 42 43 	movabs $0x4645444342413938,%rdx
ffff80000010434f:	44 45 46 
ffff800000104352:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff800000104356:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff80000010435a:	c6 45 e0 00          	movb   $0x0,-0x20(%rbp)
ffff80000010435e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104365:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff80000010436c:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
ffff800000104371:	79 0d                	jns    ffff800000104380 <itoa+0x69>
ffff800000104373:	83 7d 9c 0a          	cmpl   $0xa,-0x64(%rbp)
ffff800000104377:	75 07                	jne    ffff800000104380 <itoa+0x69>
ffff800000104379:	b8 01 00 00 00       	mov    $0x1,%eax
ffff80000010437e:	eb 05                	jmp    ffff800000104385 <itoa+0x6e>
ffff800000104380:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104385:	89 45 f4             	mov    %eax,-0xc(%rbp)
ffff800000104388:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
ffff80000010438c:	74 04                	je     ffff800000104392 <itoa+0x7b>
ffff80000010438e:	48 f7 5d a8          	negq   -0x58(%rbp)
ffff800000104392:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104396:	ba 00 00 00 00       	mov    $0x0,%edx
ffff80000010439b:	8b 4d 9c             	mov    -0x64(%rbp),%ecx
ffff80000010439e:	48 f7 f1             	div    %rcx
ffff8000001043a1:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
ffff8000001043a5:	89 55 f0             	mov    %edx,-0x10(%rbp)
ffff8000001043a8:	8b 4d f0             	mov    -0x10(%rbp),%ecx
ffff8000001043ab:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001043ae:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001043b1:	89 55 fc             	mov    %edx,-0x4(%rbp)
ffff8000001043b4:	48 63 d1             	movslq %ecx,%rdx
ffff8000001043b7:	0f b6 54 15 d0       	movzbl -0x30(%rbp,%rdx,1),%edx
ffff8000001043bc:	48 98                	cltq
ffff8000001043be:	88 54 05 b0          	mov    %dl,-0x50(%rbp,%rax,1)
ffff8000001043c2:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
ffff8000001043c7:	75 c9                	jne    ffff800000104392 <itoa+0x7b>
ffff8000001043c9:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
ffff8000001043cd:	74 35                	je     ffff800000104404 <itoa+0xed>
ffff8000001043cf:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001043d2:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001043d5:	89 55 fc             	mov    %edx,-0x4(%rbp)
ffff8000001043d8:	48 98                	cltq
ffff8000001043da:	c6 44 05 b0 2d       	movb   $0x2d,-0x50(%rbp,%rax,1)
ffff8000001043df:	eb 23                	jmp    ffff800000104404 <itoa+0xed>
ffff8000001043e1:	83 6d fc 01          	subl   $0x1,-0x4(%rbp)
ffff8000001043e5:	8b 45 f8             	mov    -0x8(%rbp),%eax
ffff8000001043e8:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001043eb:	89 55 f8             	mov    %edx,-0x8(%rbp)
ffff8000001043ee:	48 63 d0             	movslq %eax,%rdx
ffff8000001043f1:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001043f5:	48 01 c2             	add    %rax,%rdx
ffff8000001043f8:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001043fb:	48 98                	cltq
ffff8000001043fd:	0f b6 44 05 b0       	movzbl -0x50(%rbp,%rax,1),%eax
ffff800000104402:	88 02                	mov    %al,(%rdx)
ffff800000104404:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
ffff800000104408:	7f d7                	jg     ffff8000001043e1 <itoa+0xca>
ffff80000010440a:	8b 45 f8             	mov    -0x8(%rbp),%eax
ffff80000010440d:	48 63 d0             	movslq %eax,%rdx
ffff800000104410:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104414:	48 01 d0             	add    %rdx,%rax
ffff800000104417:	c6 00 00             	movb   $0x0,(%rax)
ffff80000010441a:	90                   	nop
ffff80000010441b:	5d                   	pop    %rbp
ffff80000010441c:	c3                   	ret

ffff80000010441d <vsnprintf>:
ffff80000010441d:	f3 0f 1e fa          	endbr64
ffff800000104421:	55                   	push   %rbp
ffff800000104422:	48 89 e5             	mov    %rsp,%rbp
ffff800000104425:	53                   	push   %rbx
ffff800000104426:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
ffff80000010442d:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff80000010442d <vsnprintf+0x10>
ffff800000104434:	49 bb 23 64 00 00 00 	movabs $0x6423,%r11
ffff80000010443b:	00 00 00 
ffff80000010443e:	4c 01 db             	add    %r11,%rbx
ffff800000104441:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
ffff800000104445:	48 89 75 80          	mov    %rsi,-0x80(%rbp)
ffff800000104449:	48 89 95 78 ff ff ff 	mov    %rdx,-0x88(%rbp)
ffff800000104450:	48 89 8d 70 ff ff ff 	mov    %rcx,-0x90(%rbp)
ffff800000104457:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010445e:	00 
ffff80000010445f:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000104466:	00 
ffff800000104467:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
ffff80000010446e:	e9 d1 04 00 00       	jmp    ffff800000104944 <vsnprintf+0x527>
ffff800000104473:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff80000010447a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010447e:	48 01 d0             	add    %rdx,%rax
ffff800000104481:	0f b6 00             	movzbl (%rax),%eax
ffff800000104484:	3c 25                	cmp    $0x25,%al
ffff800000104486:	0f 85 8c 04 00 00    	jne    ffff800000104918 <vsnprintf+0x4fb>
ffff80000010448c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104490:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104494:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff80000010449b:	48 01 d0             	add    %rdx,%rax
ffff80000010449e:	0f b6 00             	movzbl (%rax),%eax
ffff8000001044a1:	84 c0                	test   %al,%al
ffff8000001044a3:	0f 84 6f 04 00 00    	je     ffff800000104918 <vsnprintf+0x4fb>
ffff8000001044a9:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
ffff8000001044ae:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
ffff8000001044b5:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001044bc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001044c0:	48 01 d0             	add    %rdx,%rax
ffff8000001044c3:	0f b6 00             	movzbl (%rax),%eax
ffff8000001044c6:	3c 6c                	cmp    $0x6c,%al
ffff8000001044c8:	75 0c                	jne    ffff8000001044d6 <vsnprintf+0xb9>
ffff8000001044ca:	c7 45 dc 01 00 00 00 	movl   $0x1,-0x24(%rbp)
ffff8000001044d1:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
ffff8000001044d6:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001044dd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001044e1:	48 01 d0             	add    %rdx,%rax
ffff8000001044e4:	0f b6 00             	movzbl (%rax),%eax
ffff8000001044e7:	0f be c0             	movsbl %al,%eax
ffff8000001044ea:	83 f8 78             	cmp    $0x78,%eax
ffff8000001044ed:	0f 84 9a 02 00 00    	je     ffff80000010478d <vsnprintf+0x370>
ffff8000001044f3:	83 f8 78             	cmp    $0x78,%eax
ffff8000001044f6:	0f 8f d4 03 00 00    	jg     ffff8000001048d0 <vsnprintf+0x4b3>
ffff8000001044fc:	83 f8 73             	cmp    $0x73,%eax
ffff8000001044ff:	0f 84 97 00 00 00    	je     ffff80000010459c <vsnprintf+0x17f>
ffff800000104505:	83 f8 73             	cmp    $0x73,%eax
ffff800000104508:	0f 8f c2 03 00 00    	jg     ffff8000001048d0 <vsnprintf+0x4b3>
ffff80000010450e:	83 f8 63             	cmp    $0x63,%eax
ffff800000104511:	74 0e                	je     ffff800000104521 <vsnprintf+0x104>
ffff800000104513:	83 f8 64             	cmp    $0x64,%eax
ffff800000104516:	0f 84 27 01 00 00    	je     ffff800000104643 <vsnprintf+0x226>
ffff80000010451c:	e9 af 03 00 00       	jmp    ffff8000001048d0 <vsnprintf+0x4b3>
ffff800000104521:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
ffff800000104528:	8b 00                	mov    (%rax),%eax
ffff80000010452a:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010452d:	77 30                	ja     ffff80000010455f <vsnprintf+0x142>
ffff80000010452f:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
ffff800000104536:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010453a:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
ffff800000104541:	8b 00                	mov    (%rax),%eax
ffff800000104543:	89 c0                	mov    %eax,%eax
ffff800000104545:	48 01 d0             	add    %rdx,%rax
ffff800000104548:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
ffff80000010454f:	8b 12                	mov    (%rdx),%edx
ffff800000104551:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000104554:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
ffff80000010455b:	89 0a                	mov    %ecx,(%rdx)
ffff80000010455d:	eb 1a                	jmp    ffff800000104579 <vsnprintf+0x15c>
ffff80000010455f:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
ffff800000104566:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010456a:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010456e:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
ffff800000104575:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000104579:	8b 00                	mov    (%rax),%eax
ffff80000010457b:	88 45 bf             	mov    %al,-0x41(%rbp)
ffff80000010457e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000104582:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104586:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff80000010458a:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
ffff80000010458e:	48 01 c2             	add    %rax,%rdx
ffff800000104591:	0f b6 45 bf          	movzbl -0x41(%rbp),%eax
ffff800000104595:	88 02                	mov    %al,(%rdx)
ffff800000104597:	e9 7a 03 00 00       	jmp    ffff800000104916 <vsnprintf+0x4f9>
ffff80000010459c:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
ffff8000001045a3:	8b 00                	mov    (%rax),%eax
ffff8000001045a5:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001045a8:	77 30                	ja     ffff8000001045da <vsnprintf+0x1bd>
ffff8000001045aa:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
ffff8000001045b1:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001045b5:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
ffff8000001045bc:	8b 00                	mov    (%rax),%eax
ffff8000001045be:	89 c0                	mov    %eax,%eax
ffff8000001045c0:	48 01 d0             	add    %rdx,%rax
ffff8000001045c3:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
ffff8000001045ca:	8b 12                	mov    (%rdx),%edx
ffff8000001045cc:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001045cf:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
ffff8000001045d6:	89 0a                	mov    %ecx,(%rdx)
ffff8000001045d8:	eb 1a                	jmp    ffff8000001045f4 <vsnprintf+0x1d7>
ffff8000001045da:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
ffff8000001045e1:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001045e5:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001045e9:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
ffff8000001045f0:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001045f4:	48 8b 00             	mov    (%rax),%rax
ffff8000001045f7:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff8000001045fb:	eb 24                	jmp    ffff800000104621 <vsnprintf+0x204>
ffff8000001045fd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000104601:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104605:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
ffff800000104609:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff80000010460d:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
ffff800000104611:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
ffff800000104615:	48 8b 4d 88          	mov    -0x78(%rbp),%rcx
ffff800000104619:	48 01 ca             	add    %rcx,%rdx
ffff80000010461c:	0f b6 00             	movzbl (%rax),%eax
ffff80000010461f:	88 02                	mov    %al,(%rdx)
ffff800000104621:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000104625:	0f b6 00             	movzbl (%rax),%eax
ffff800000104628:	84 c0                	test   %al,%al
ffff80000010462a:	0f 84 df 02 00 00    	je     ffff80000010490f <vsnprintf+0x4f2>
ffff800000104630:	48 8b 45 80          	mov    -0x80(%rbp),%rax
ffff800000104634:	48 83 e8 01          	sub    $0x1,%rax
ffff800000104638:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
ffff80000010463c:	72 bf                	jb     ffff8000001045fd <vsnprintf+0x1e0>
ffff80000010463e:	e9 cc 02 00 00       	jmp    ffff80000010490f <vsnprintf+0x4f2>
ffff800000104643:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
ffff800000104647:	74 7c                	je     ffff8000001046c5 <vsnprintf+0x2a8>
ffff800000104649:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
ffff800000104650:	8b 00                	mov    (%rax),%eax
ffff800000104652:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104655:	77 30                	ja     ffff800000104687 <vsnprintf+0x26a>
ffff800000104657:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
ffff80000010465e:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000104662:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
ffff800000104669:	8b 00                	mov    (%rax),%eax
ffff80000010466b:	89 c0                	mov    %eax,%eax
ffff80000010466d:	48 01 d0             	add    %rdx,%rax
ffff800000104670:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
ffff800000104677:	8b 12                	mov    (%rdx),%edx
ffff800000104679:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010467c:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
ffff800000104683:	89 0a                	mov    %ecx,(%rdx)
ffff800000104685:	eb 1a                	jmp    ffff8000001046a1 <vsnprintf+0x284>
ffff800000104687:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
ffff80000010468e:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000104692:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104696:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
ffff80000010469d:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001046a1:	48 8b 00             	mov    (%rax),%rax
ffff8000001046a4:	48 8d 4d 90          	lea    -0x70(%rbp),%rcx
ffff8000001046a8:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff8000001046ad:	48 89 ce             	mov    %rcx,%rsi
ffff8000001046b0:	48 89 c7             	mov    %rax,%rdi
ffff8000001046b3:	48 b8 c7 9a ff ff ff 	movabs $0xffffffffffff9ac7,%rax
ffff8000001046ba:	ff ff ff 
ffff8000001046bd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001046c1:	ff d0                	call   *%rax
ffff8000001046c3:	eb 7b                	jmp    ffff800000104740 <vsnprintf+0x323>
ffff8000001046c5:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
ffff8000001046cc:	8b 00                	mov    (%rax),%eax
ffff8000001046ce:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001046d1:	77 30                	ja     ffff800000104703 <vsnprintf+0x2e6>
ffff8000001046d3:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
ffff8000001046da:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001046de:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
ffff8000001046e5:	8b 00                	mov    (%rax),%eax
ffff8000001046e7:	89 c0                	mov    %eax,%eax
ffff8000001046e9:	48 01 d0             	add    %rdx,%rax
ffff8000001046ec:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
ffff8000001046f3:	8b 12                	mov    (%rdx),%edx
ffff8000001046f5:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001046f8:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
ffff8000001046ff:	89 0a                	mov    %ecx,(%rdx)
ffff800000104701:	eb 1a                	jmp    ffff80000010471d <vsnprintf+0x300>
ffff800000104703:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
ffff80000010470a:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010470e:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104712:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
ffff800000104719:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010471d:	8b 00                	mov    (%rax),%eax
ffff80000010471f:	48 98                	cltq
ffff800000104721:	48 8d 4d 90          	lea    -0x70(%rbp),%rcx
ffff800000104725:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff80000010472a:	48 89 ce             	mov    %rcx,%rsi
ffff80000010472d:	48 89 c7             	mov    %rax,%rdi
ffff800000104730:	48 b8 c7 9a ff ff ff 	movabs $0xffffffffffff9ac7,%rax
ffff800000104737:	ff ff ff 
ffff80000010473a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010473e:	ff d0                	call   *%rax
ffff800000104740:	48 8d 45 90          	lea    -0x70(%rbp),%rax
ffff800000104744:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
ffff800000104748:	eb 21                	jmp    ffff80000010476b <vsnprintf+0x34e>
ffff80000010474a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010474e:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104752:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000104756:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
ffff80000010475a:	48 01 c2             	add    %rax,%rdx
ffff80000010475d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000104761:	0f b6 00             	movzbl (%rax),%eax
ffff800000104764:	88 02                	mov    %al,(%rdx)
ffff800000104766:	48 83 45 c8 01       	addq   $0x1,-0x38(%rbp)
ffff80000010476b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010476f:	0f b6 00             	movzbl (%rax),%eax
ffff800000104772:	84 c0                	test   %al,%al
ffff800000104774:	0f 84 98 01 00 00    	je     ffff800000104912 <vsnprintf+0x4f5>
ffff80000010477a:	48 8b 45 80          	mov    -0x80(%rbp),%rax
ffff80000010477e:	48 83 e8 01          	sub    $0x1,%rax
ffff800000104782:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
ffff800000104786:	72 c2                	jb     ffff80000010474a <vsnprintf+0x32d>
ffff800000104788:	e9 85 01 00 00       	jmp    ffff800000104912 <vsnprintf+0x4f5>
ffff80000010478d:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
ffff800000104791:	74 7c                	je     ffff80000010480f <vsnprintf+0x3f2>
ffff800000104793:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
ffff80000010479a:	8b 00                	mov    (%rax),%eax
ffff80000010479c:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010479f:	77 30                	ja     ffff8000001047d1 <vsnprintf+0x3b4>
ffff8000001047a1:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
ffff8000001047a8:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001047ac:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
ffff8000001047b3:	8b 00                	mov    (%rax),%eax
ffff8000001047b5:	89 c0                	mov    %eax,%eax
ffff8000001047b7:	48 01 d0             	add    %rdx,%rax
ffff8000001047ba:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
ffff8000001047c1:	8b 12                	mov    (%rdx),%edx
ffff8000001047c3:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001047c6:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
ffff8000001047cd:	89 0a                	mov    %ecx,(%rdx)
ffff8000001047cf:	eb 1a                	jmp    ffff8000001047eb <vsnprintf+0x3ce>
ffff8000001047d1:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
ffff8000001047d8:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001047dc:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001047e0:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
ffff8000001047e7:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001047eb:	48 8b 00             	mov    (%rax),%rax
ffff8000001047ee:	48 8d 4d 90          	lea    -0x70(%rbp),%rcx
ffff8000001047f2:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001047f7:	48 89 ce             	mov    %rcx,%rsi
ffff8000001047fa:	48 89 c7             	mov    %rax,%rdi
ffff8000001047fd:	48 b8 c7 9a ff ff ff 	movabs $0xffffffffffff9ac7,%rax
ffff800000104804:	ff ff ff 
ffff800000104807:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010480b:	ff d0                	call   *%rax
ffff80000010480d:	eb 7b                	jmp    ffff80000010488a <vsnprintf+0x46d>
ffff80000010480f:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
ffff800000104816:	8b 00                	mov    (%rax),%eax
ffff800000104818:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010481b:	77 30                	ja     ffff80000010484d <vsnprintf+0x430>
ffff80000010481d:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
ffff800000104824:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000104828:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
ffff80000010482f:	8b 00                	mov    (%rax),%eax
ffff800000104831:	89 c0                	mov    %eax,%eax
ffff800000104833:	48 01 d0             	add    %rdx,%rax
ffff800000104836:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
ffff80000010483d:	8b 12                	mov    (%rdx),%edx
ffff80000010483f:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000104842:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
ffff800000104849:	89 0a                	mov    %ecx,(%rdx)
ffff80000010484b:	eb 1a                	jmp    ffff800000104867 <vsnprintf+0x44a>
ffff80000010484d:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
ffff800000104854:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000104858:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010485c:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
ffff800000104863:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000104867:	8b 00                	mov    (%rax),%eax
ffff800000104869:	48 98                	cltq
ffff80000010486b:	48 8d 4d 90          	lea    -0x70(%rbp),%rcx
ffff80000010486f:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000104874:	48 89 ce             	mov    %rcx,%rsi
ffff800000104877:	48 89 c7             	mov    %rax,%rdi
ffff80000010487a:	48 b8 c7 9a ff ff ff 	movabs $0xffffffffffff9ac7,%rax
ffff800000104881:	ff ff ff 
ffff800000104884:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104888:	ff d0                	call   *%rax
ffff80000010488a:	48 8d 45 90          	lea    -0x70(%rbp),%rax
ffff80000010488e:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
ffff800000104892:	eb 21                	jmp    ffff8000001048b5 <vsnprintf+0x498>
ffff800000104894:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000104898:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010489c:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff8000001048a0:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
ffff8000001048a4:	48 01 c2             	add    %rax,%rdx
ffff8000001048a7:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff8000001048ab:	0f b6 00             	movzbl (%rax),%eax
ffff8000001048ae:	88 02                	mov    %al,(%rdx)
ffff8000001048b0:	48 83 45 c0 01       	addq   $0x1,-0x40(%rbp)
ffff8000001048b5:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff8000001048b9:	0f b6 00             	movzbl (%rax),%eax
ffff8000001048bc:	84 c0                	test   %al,%al
ffff8000001048be:	74 55                	je     ffff800000104915 <vsnprintf+0x4f8>
ffff8000001048c0:	48 8b 45 80          	mov    -0x80(%rbp),%rax
ffff8000001048c4:	48 83 e8 01          	sub    $0x1,%rax
ffff8000001048c8:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
ffff8000001048cc:	72 c6                	jb     ffff800000104894 <vsnprintf+0x477>
ffff8000001048ce:	eb 45                	jmp    ffff800000104915 <vsnprintf+0x4f8>
ffff8000001048d0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001048d4:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001048d8:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff8000001048dc:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
ffff8000001048e0:	48 01 d0             	add    %rdx,%rax
ffff8000001048e3:	c6 00 25             	movb   $0x25,(%rax)
ffff8000001048e6:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001048ed:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001048f1:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff8000001048f5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001048f9:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001048fd:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000104901:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
ffff800000104905:	48 01 c2             	add    %rax,%rdx
ffff800000104908:	0f b6 01             	movzbl (%rcx),%eax
ffff80000010490b:	88 02                	mov    %al,(%rdx)
ffff80000010490d:	eb 07                	jmp    ffff800000104916 <vsnprintf+0x4f9>
ffff80000010490f:	90                   	nop
ffff800000104910:	eb 2d                	jmp    ffff80000010493f <vsnprintf+0x522>
ffff800000104912:	90                   	nop
ffff800000104913:	eb 2a                	jmp    ffff80000010493f <vsnprintf+0x522>
ffff800000104915:	90                   	nop
ffff800000104916:	eb 27                	jmp    ffff80000010493f <vsnprintf+0x522>
ffff800000104918:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff80000010491f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104923:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff800000104927:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010492b:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010492f:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000104933:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
ffff800000104937:	48 01 c2             	add    %rax,%rdx
ffff80000010493a:	0f b6 01             	movzbl (%rcx),%eax
ffff80000010493d:	88 02                	mov    %al,(%rdx)
ffff80000010493f:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
ffff800000104944:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff80000010494b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010494f:	48 01 d0             	add    %rdx,%rax
ffff800000104952:	0f b6 00             	movzbl (%rax),%eax
ffff800000104955:	84 c0                	test   %al,%al
ffff800000104957:	74 12                	je     ffff80000010496b <vsnprintf+0x54e>
ffff800000104959:	48 8b 45 80          	mov    -0x80(%rbp),%rax
ffff80000010495d:	48 83 e8 01          	sub    $0x1,%rax
ffff800000104961:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
ffff800000104965:	0f 82 08 fb ff ff    	jb     ffff800000104473 <vsnprintf+0x56>
ffff80000010496b:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
ffff80000010496f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000104973:	48 01 d0             	add    %rdx,%rax
ffff800000104976:	c6 00 00             	movb   $0x0,(%rax)
ffff800000104979:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010497d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104981:	c9                   	leave
ffff800000104982:	c3                   	ret

ffff800000104983 <printf>:
ffff800000104983:	f3 0f 1e fa          	endbr64
ffff800000104987:	55                   	push   %rbp
ffff800000104988:	48 89 e5             	mov    %rsp,%rbp
ffff80000010498b:	41 57                	push   %r15
ffff80000010498d:	53                   	push   %rbx
ffff80000010498e:	48 81 ec f0 01 00 00 	sub    $0x1f0,%rsp
ffff800000104995:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104995 <printf+0x12>
ffff80000010499c:	49 bb bb 5e 00 00 00 	movabs $0x5ebb,%r11
ffff8000001049a3:	00 00 00 
ffff8000001049a6:	4c 01 db             	add    %r11,%rbx
ffff8000001049a9:	48 89 bd 08 fe ff ff 	mov    %rdi,-0x1f8(%rbp)
ffff8000001049b0:	48 89 b5 48 ff ff ff 	mov    %rsi,-0xb8(%rbp)
ffff8000001049b7:	48 89 95 50 ff ff ff 	mov    %rdx,-0xb0(%rbp)
ffff8000001049be:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
ffff8000001049c5:	4c 89 85 60 ff ff ff 	mov    %r8,-0xa0(%rbp)
ffff8000001049cc:	4c 89 8d 68 ff ff ff 	mov    %r9,-0x98(%rbp)
ffff8000001049d3:	84 c0                	test   %al,%al
ffff8000001049d5:	74 23                	je     ffff8000001049fa <printf+0x77>
ffff8000001049d7:	0f 29 85 70 ff ff ff 	movaps %xmm0,-0x90(%rbp)
ffff8000001049de:	0f 29 4d 80          	movaps %xmm1,-0x80(%rbp)
ffff8000001049e2:	0f 29 55 90          	movaps %xmm2,-0x70(%rbp)
ffff8000001049e6:	0f 29 5d a0          	movaps %xmm3,-0x60(%rbp)
ffff8000001049ea:	0f 29 65 b0          	movaps %xmm4,-0x50(%rbp)
ffff8000001049ee:	0f 29 6d c0          	movaps %xmm5,-0x40(%rbp)
ffff8000001049f2:	0f 29 75 d0          	movaps %xmm6,-0x30(%rbp)
ffff8000001049f6:	0f 29 7d e0          	movaps %xmm7,-0x20(%rbp)
ffff8000001049fa:	c7 85 18 fe ff ff 08 	movl   $0x8,-0x1e8(%rbp)
ffff800000104a01:	00 00 00 
ffff800000104a04:	c7 85 1c fe ff ff 30 	movl   $0x30,-0x1e4(%rbp)
ffff800000104a0b:	00 00 00 
ffff800000104a0e:	48 8d 45 10          	lea    0x10(%rbp),%rax
ffff800000104a12:	48 89 85 20 fe ff ff 	mov    %rax,-0x1e0(%rbp)
ffff800000104a19:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
ffff800000104a20:	48 89 85 28 fe ff ff 	mov    %rax,-0x1d8(%rbp)
ffff800000104a27:	48 8d 8d 18 fe ff ff 	lea    -0x1e8(%rbp),%rcx
ffff800000104a2e:	48 8b 95 08 fe ff ff 	mov    -0x1f8(%rbp),%rdx
ffff800000104a35:	48 8d 85 30 fe ff ff 	lea    -0x1d0(%rbp),%rax
ffff800000104a3c:	be 00 01 00 00       	mov    $0x100,%esi
ffff800000104a41:	48 89 c7             	mov    %rax,%rdi
ffff800000104a44:	48 b8 cd 9b ff ff ff 	movabs $0xffffffffffff9bcd,%rax
ffff800000104a4b:	ff ff ff 
ffff800000104a4e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104a52:	ff d0                	call   *%rax
ffff800000104a54:	48 8d 85 30 fe ff ff 	lea    -0x1d0(%rbp),%rax
ffff800000104a5b:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
ffff800000104a62:	eb 29                	jmp    ffff800000104a8d <printf+0x10a>
ffff800000104a64:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
ffff800000104a6b:	0f b6 00             	movzbl (%rax),%eax
ffff800000104a6e:	0f be c0             	movsbl %al,%eax
ffff800000104a71:	89 c7                	mov    %eax,%edi
ffff800000104a73:	49 89 df             	mov    %rbx,%r15
ffff800000104a76:	48 b8 e9 a2 ff ff ff 	movabs $0xffffffffffffa2e9,%rax
ffff800000104a7d:	ff ff ff 
ffff800000104a80:	48 01 d8             	add    %rbx,%rax
ffff800000104a83:	ff d0                	call   *%rax
ffff800000104a85:	48 83 85 38 ff ff ff 	addq   $0x1,-0xc8(%rbp)
ffff800000104a8c:	01 
ffff800000104a8d:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
ffff800000104a94:	0f b6 00             	movzbl (%rax),%eax
ffff800000104a97:	84 c0                	test   %al,%al
ffff800000104a99:	75 c9                	jne    ffff800000104a64 <printf+0xe1>
ffff800000104a9b:	90                   	nop
ffff800000104a9c:	90                   	nop
ffff800000104a9d:	48 81 c4 f0 01 00 00 	add    $0x1f0,%rsp
ffff800000104aa4:	5b                   	pop    %rbx
ffff800000104aa5:	41 5f                	pop    %r15
ffff800000104aa7:	5d                   	pop    %rbp
ffff800000104aa8:	c3                   	ret

ffff800000104aa9 <panic>:
ffff800000104aa9:	f3 0f 1e fa          	endbr64
ffff800000104aad:	55                   	push   %rbp
ffff800000104aae:	48 89 e5             	mov    %rsp,%rbp
ffff800000104ab1:	53                   	push   %rbx
ffff800000104ab2:	48 83 ec 18          	sub    $0x18,%rsp
ffff800000104ab6:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104ab6 <panic+0xd>
ffff800000104abd:	49 bb 9a 5d 00 00 00 	movabs $0x5d9a,%r11
ffff800000104ac4:	00 00 00 
ffff800000104ac7:	4c 01 db             	add    %r11,%rbx
ffff800000104aca:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104ace:	48 b8 20 e6 ff ff ff 	movabs $0xffffffffffffe620,%rax
ffff800000104ad5:	ff ff ff 
ffff800000104ad8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104adc:	48 89 c7             	mov    %rax,%rdi
ffff800000104adf:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104ae4:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff800000104aeb:	ff ff ff 
ffff800000104aee:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff800000104af2:	ff d2                	call   *%rdx
ffff800000104af4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104af8:	48 89 c7             	mov    %rax,%rdi
ffff800000104afb:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104b00:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff800000104b07:	ff ff ff 
ffff800000104b0a:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff800000104b0e:	ff d2                	call   *%rdx
ffff800000104b10:	48 b8 28 e6 ff ff ff 	movabs $0xffffffffffffe628,%rax
ffff800000104b17:	ff ff ff 
ffff800000104b1a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104b1e:	48 89 c7             	mov    %rax,%rdi
ffff800000104b21:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104b26:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff800000104b2d:	ff ff ff 
ffff800000104b30:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff800000104b34:	ff d2                	call   *%rdx
ffff800000104b36:	90                   	nop
ffff800000104b37:	eb fd                	jmp    ffff800000104b36 <panic+0x8d>

ffff800000104b39 <putchar>:
ffff800000104b39:	f3 0f 1e fa          	endbr64
ffff800000104b3d:	55                   	push   %rbp
ffff800000104b3e:	48 89 e5             	mov    %rsp,%rbp
ffff800000104b41:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104b41 <putchar+0x8>
ffff800000104b48:	49 bb 0f 5d 00 00 00 	movabs $0x5d0f,%r11
ffff800000104b4f:	00 00 00 
ffff800000104b52:	4c 01 d8             	add    %r11,%rax
ffff800000104b55:	89 fa                	mov    %edi,%edx
ffff800000104b57:	88 55 ec             	mov    %dl,-0x14(%rbp)
ffff800000104b5a:	48 bf 00 80 0b 00 00 	movabs $0xffff8000000b8000,%rdi
ffff800000104b61:	80 ff ff 
ffff800000104b64:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
ffff800000104b68:	80 7d ec 0a          	cmpb   $0xa,-0x14(%rbp)
ffff800000104b6c:	75 60                	jne    ffff800000104bce <putchar+0x95>
ffff800000104b6e:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104b75:	00 00 00 
ffff800000104b78:	8b 34 10             	mov    (%rax,%rdx,1),%esi
ffff800000104b7b:	48 63 d6             	movslq %esi,%rdx
ffff800000104b7e:	48 69 d2 67 66 66 66 	imul   $0x66666667,%rdx,%rdx
ffff800000104b85:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000104b89:	89 d1                	mov    %edx,%ecx
ffff800000104b8b:	c1 f9 05             	sar    $0x5,%ecx
ffff800000104b8e:	89 f2                	mov    %esi,%edx
ffff800000104b90:	c1 fa 1f             	sar    $0x1f,%edx
ffff800000104b93:	29 d1                	sub    %edx,%ecx
ffff800000104b95:	89 ca                	mov    %ecx,%edx
ffff800000104b97:	c1 e2 02             	shl    $0x2,%edx
ffff800000104b9a:	01 ca                	add    %ecx,%edx
ffff800000104b9c:	c1 e2 04             	shl    $0x4,%edx
ffff800000104b9f:	29 d6                	sub    %edx,%esi
ffff800000104ba1:	89 f1                	mov    %esi,%ecx
ffff800000104ba3:	ba 50 00 00 00       	mov    $0x50,%edx
ffff800000104ba8:	89 d6                	mov    %edx,%esi
ffff800000104baa:	29 ce                	sub    %ecx,%esi
ffff800000104bac:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104bb3:	00 00 00 
ffff800000104bb6:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104bb9:	8d 0c 16             	lea    (%rsi,%rdx,1),%ecx
ffff800000104bbc:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104bc3:	00 00 00 
ffff800000104bc6:	89 0c 10             	mov    %ecx,(%rax,%rdx,1)
ffff800000104bc9:	e9 92 00 00 00       	jmp    ffff800000104c60 <putchar+0x127>
ffff800000104bce:	80 7d ec 09          	cmpb   $0x9,-0x14(%rbp)
ffff800000104bd2:	75 43                	jne    ffff800000104c17 <putchar+0xde>
ffff800000104bd4:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104bdb:	00 00 00 
ffff800000104bde:	8b 0c 10             	mov    (%rax,%rdx,1),%ecx
ffff800000104be1:	89 ca                	mov    %ecx,%edx
ffff800000104be3:	c1 fa 1f             	sar    $0x1f,%edx
ffff800000104be6:	c1 ea 1d             	shr    $0x1d,%edx
ffff800000104be9:	01 d1                	add    %edx,%ecx
ffff800000104beb:	83 e1 07             	and    $0x7,%ecx
ffff800000104bee:	29 d1                	sub    %edx,%ecx
ffff800000104bf0:	89 ca                	mov    %ecx,%edx
ffff800000104bf2:	b9 08 00 00 00       	mov    $0x8,%ecx
ffff800000104bf7:	29 d1                	sub    %edx,%ecx
ffff800000104bf9:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104c00:	00 00 00 
ffff800000104c03:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104c06:	01 d1                	add    %edx,%ecx
ffff800000104c08:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104c0f:	00 00 00 
ffff800000104c12:	89 0c 10             	mov    %ecx,(%rax,%rdx,1)
ffff800000104c15:	eb 49                	jmp    ffff800000104c60 <putchar+0x127>
ffff800000104c17:	66 0f be 55 ec       	movsbw -0x14(%rbp),%dx
ffff800000104c1c:	89 d6                	mov    %edx,%esi
ffff800000104c1e:	66 81 ce 00 07       	or     $0x700,%si
ffff800000104c23:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104c2a:	00 00 00 
ffff800000104c2d:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104c30:	48 63 d2             	movslq %edx,%rdx
ffff800000104c33:	48 8d 0c 12          	lea    (%rdx,%rdx,1),%rcx
ffff800000104c37:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff800000104c3b:	48 01 ca             	add    %rcx,%rdx
ffff800000104c3e:	89 f1                	mov    %esi,%ecx
ffff800000104c40:	66 89 0a             	mov    %cx,(%rdx)
ffff800000104c43:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104c4a:	00 00 00 
ffff800000104c4d:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104c50:	8d 4a 01             	lea    0x1(%rdx),%ecx
ffff800000104c53:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104c5a:	00 00 00 
ffff800000104c5d:	89 0c 10             	mov    %ecx,(%rax,%rdx,1)
ffff800000104c60:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104c67:	00 00 00 
ffff800000104c6a:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104c6d:	81 fa cf 07 00 00    	cmp    $0x7cf,%edx
ffff800000104c73:	0f 8e 8b 00 00 00    	jle    ffff800000104d04 <putchar+0x1cb>
ffff800000104c79:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104c80:	eb 30                	jmp    ffff800000104cb2 <putchar+0x179>
ffff800000104c82:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104c85:	48 63 d2             	movslq %edx,%rdx
ffff800000104c88:	48 83 c2 50          	add    $0x50,%rdx
ffff800000104c8c:	48 8d 0c 12          	lea    (%rdx,%rdx,1),%rcx
ffff800000104c90:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff800000104c94:	48 01 ca             	add    %rcx,%rdx
ffff800000104c97:	8b 4d fc             	mov    -0x4(%rbp),%ecx
ffff800000104c9a:	48 63 c9             	movslq %ecx,%rcx
ffff800000104c9d:	48 8d 34 09          	lea    (%rcx,%rcx,1),%rsi
ffff800000104ca1:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
ffff800000104ca5:	48 01 f1             	add    %rsi,%rcx
ffff800000104ca8:	0f b7 12             	movzwl (%rdx),%edx
ffff800000104cab:	66 89 11             	mov    %dx,(%rcx)
ffff800000104cae:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff800000104cb2:	81 7d fc 7f 07 00 00 	cmpl   $0x77f,-0x4(%rbp)
ffff800000104cb9:	7e c7                	jle    ffff800000104c82 <putchar+0x149>
ffff800000104cbb:	c7 45 f8 80 07 00 00 	movl   $0x780,-0x8(%rbp)
ffff800000104cc2:	eb 1a                	jmp    ffff800000104cde <putchar+0x1a5>
ffff800000104cc4:	8b 55 f8             	mov    -0x8(%rbp),%edx
ffff800000104cc7:	48 63 d2             	movslq %edx,%rdx
ffff800000104cca:	48 8d 0c 12          	lea    (%rdx,%rdx,1),%rcx
ffff800000104cce:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff800000104cd2:	48 01 ca             	add    %rcx,%rdx
ffff800000104cd5:	66 c7 02 20 07       	movw   $0x720,(%rdx)
ffff800000104cda:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
ffff800000104cde:	81 7d f8 cf 07 00 00 	cmpl   $0x7cf,-0x8(%rbp)
ffff800000104ce5:	7e dd                	jle    ffff800000104cc4 <putchar+0x18b>
ffff800000104ce7:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104cee:	00 00 00 
ffff800000104cf1:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104cf4:	8d 4a b0             	lea    -0x50(%rdx),%ecx
ffff800000104cf7:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104cfe:	00 00 00 
ffff800000104d01:	89 0c 10             	mov    %ecx,(%rax,%rdx,1)
ffff800000104d04:	90                   	nop
ffff800000104d05:	5d                   	pop    %rbp
ffff800000104d06:	c3                   	ret

ffff800000104d07 <idle>:
ffff800000104d07:	f3 0f 1e fa          	endbr64
ffff800000104d0b:	55                   	push   %rbp
ffff800000104d0c:	48 89 e5             	mov    %rsp,%rbp
ffff800000104d0f:	41 57                	push   %r15
ffff800000104d11:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104d15:	48 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%rdx        # ffff800000104d15 <idle+0xe>
ffff800000104d1c:	49 bb 3b 5b 00 00 00 	movabs $0x5b3b,%r11
ffff800000104d23:	00 00 00 
ffff800000104d26:	4c 01 da             	add    %r11,%rdx
ffff800000104d29:	48 b8 30 e6 ff ff ff 	movabs $0xffffffffffffe630,%rax
ffff800000104d30:	ff ff ff 
ffff800000104d33:	48 8d 04 02          	lea    (%rdx,%rax,1),%rax
ffff800000104d37:	48 89 c7             	mov    %rax,%rdi
ffff800000104d3a:	49 89 d7             	mov    %rdx,%r15
ffff800000104d3d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104d42:	48 b9 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rcx
ffff800000104d49:	ff ff ff 
ffff800000104d4c:	48 01 d1             	add    %rdx,%rcx
ffff800000104d4f:	ff d1                	call   *%rcx
ffff800000104d51:	f4                   	hlt
ffff800000104d52:	eb fd                	jmp    ffff800000104d51 <idle+0x4a>

ffff800000104d54 <init>:
ffff800000104d54:	f3 0f 1e fa          	endbr64
ffff800000104d58:	55                   	push   %rbp
ffff800000104d59:	48 89 e5             	mov    %rsp,%rbp
ffff800000104d5c:	41 57                	push   %r15
ffff800000104d5e:	48 81 ec d8 00 00 00 	sub    $0xd8,%rsp
ffff800000104d65:	48 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%rdx        # ffff800000104d65 <init+0x11>
ffff800000104d6c:	49 bb eb 5a 00 00 00 	movabs $0x5aeb,%r11
ffff800000104d73:	00 00 00 
ffff800000104d76:	4c 01 da             	add    %r11,%rdx
ffff800000104d79:	48 89 bd 28 ff ff ff 	mov    %rdi,-0xd8(%rbp)
ffff800000104d80:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
ffff800000104d87:	48 89 c6             	mov    %rax,%rsi
ffff800000104d8a:	48 b8 48 e6 ff ff ff 	movabs $0xffffffffffffe648,%rax
ffff800000104d91:	ff ff ff 
ffff800000104d94:	48 8d 04 02          	lea    (%rdx,%rax,1),%rax
ffff800000104d98:	48 89 c7             	mov    %rax,%rdi
ffff800000104d9b:	49 89 d7             	mov    %rdx,%r15
ffff800000104d9e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104da3:	48 b9 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rcx
ffff800000104daa:	ff ff ff 
ffff800000104dad:	48 01 d1             	add    %rdx,%rcx
ffff800000104db0:	ff d1                	call   *%rcx
ffff800000104db2:	b8 01 00 00 00       	mov    $0x1,%eax
ffff800000104db7:	4c 8b 7d f8          	mov    -0x8(%rbp),%r15
ffff800000104dbb:	c9                   	leave
ffff800000104dbc:	c3                   	ret

ffff800000104dbd <do_exit>:
ffff800000104dbd:	f3 0f 1e fa          	endbr64
ffff800000104dc1:	55                   	push   %rbp
ffff800000104dc2:	48 89 e5             	mov    %rsp,%rbp
ffff800000104dc5:	41 57                	push   %r15
ffff800000104dc7:	48 83 ec 18          	sub    $0x18,%rsp
ffff800000104dcb:	48 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%rdx        # ffff800000104dcb <do_exit+0xe>
ffff800000104dd2:	49 bb 85 5a 00 00 00 	movabs $0x5a85,%r11
ffff800000104dd9:	00 00 00 
ffff800000104ddc:	4c 01 da             	add    %r11,%rdx
ffff800000104ddf:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104de3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104de7:	48 89 c6             	mov    %rax,%rsi
ffff800000104dea:	48 b8 70 e6 ff ff ff 	movabs $0xffffffffffffe670,%rax
ffff800000104df1:	ff ff ff 
ffff800000104df4:	48 8d 04 02          	lea    (%rdx,%rax,1),%rax
ffff800000104df8:	48 89 c7             	mov    %rax,%rdi
ffff800000104dfb:	49 89 d7             	mov    %rdx,%r15
ffff800000104dfe:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104e03:	48 b9 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rcx
ffff800000104e0a:	ff ff ff 
ffff800000104e0d:	48 01 d1             	add    %rdx,%rcx
ffff800000104e10:	ff d1                	call   *%rcx
ffff800000104e12:	90                   	nop
ffff800000104e13:	eb fd                	jmp    ffff800000104e12 <do_exit+0x55>

ffff800000104e15 <do_fork>:
ffff800000104e15:	f3 0f 1e fa          	endbr64
ffff800000104e19:	55                   	push   %rbp
ffff800000104e1a:	48 89 e5             	mov    %rsp,%rbp
ffff800000104e1d:	41 57                	push   %r15
ffff800000104e1f:	53                   	push   %rbx
ffff800000104e20:	48 83 ec 40          	sub    $0x40,%rsp
ffff800000104e24:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104e24 <do_fork+0xf>
ffff800000104e2b:	49 bb 2c 5a 00 00 00 	movabs $0x5a2c,%r11
ffff800000104e32:	00 00 00 
ffff800000104e35:	4c 01 db             	add    %r11,%rbx
ffff800000104e38:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
ffff800000104e3c:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
ffff800000104e40:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
ffff800000104e44:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
ffff800000104e48:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000104e4f:	00 
ffff800000104e50:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000104e57:	00 
ffff800000104e58:	49 89 df             	mov    %rbx,%r15
ffff800000104e5b:	48 b8 f8 cd ff ff ff 	movabs $0xffffffffffffcdf8,%rax
ffff800000104e62:	ff ff ff 
ffff800000104e65:	48 01 d8             	add    %rbx,%rax
ffff800000104e68:	ff d0                	call   *%rax
ffff800000104e6a:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff800000104e6e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000104e72:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000104e76:	48 b8 98 00 00 00 00 	movabs $0x98,%rax
ffff800000104e7d:	00 00 00 
ffff800000104e80:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104e84:	48 8b 10             	mov    (%rax),%rdx
ffff800000104e87:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104e8b:	48 89 10             	mov    %rdx,(%rax)
ffff800000104e8e:	48 b8 98 00 00 00 00 	movabs $0x98,%rax
ffff800000104e95:	00 00 00 
ffff800000104e98:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104e9c:	48 8b 00             	mov    (%rax),%rax
ffff800000104e9f:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff800000104ea3:	48 89 50 08          	mov    %rdx,0x8(%rax)
ffff800000104ea7:	48 b8 98 00 00 00 00 	movabs $0x98,%rax
ffff800000104eae:	00 00 00 
ffff800000104eb1:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104eb5:	48 89 c2             	mov    %rax,%rdx
ffff800000104eb8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104ebc:	48 89 50 08          	mov    %rdx,0x8(%rax)
ffff800000104ec0:	48 b8 98 00 00 00 00 	movabs $0x98,%rax
ffff800000104ec7:	00 00 00 
ffff800000104eca:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104ece:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff800000104ed2:	48 89 10             	mov    %rdx,(%rax)
ffff800000104ed5:	48 b8 a0 00 00 00 00 	movabs $0xa0,%rax
ffff800000104edc:	00 00 00 
ffff800000104edf:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104ee2:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104ee5:	48 b9 a0 00 00 00 00 	movabs $0xa0,%rcx
ffff800000104eec:	00 00 00 
ffff800000104eef:	89 14 0b             	mov    %edx,(%rbx,%rcx,1)
ffff800000104ef2:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff800000104ef6:	89 42 10             	mov    %eax,0x10(%rdx)
ffff800000104ef9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104efd:	c7 40 14 04 00 00 00 	movl   $0x4,0x14(%rax)
ffff800000104f04:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000104f08:	48 8d 90 00 10 00 00 	lea    0x1000(%rax),%rdx
ffff800000104f0f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104f13:	48 89 50 28          	mov    %rdx,0x28(%rax)
ffff800000104f17:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104f1b:	48 83 c0 40          	add    $0x40,%rax
ffff800000104f1f:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000104f23:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104f27:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000104f2b:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff800000104f2f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104f33:	48 05 48 0f 00 00    	add    $0xf48,%rax
ffff800000104f39:	48 89 c1             	mov    %rax,%rcx
ffff800000104f3c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000104f40:	ba b8 00 00 00       	mov    $0xb8,%edx
ffff800000104f45:	48 89 c6             	mov    %rax,%rsi
ffff800000104f48:	48 89 cf             	mov    %rcx,%rdi
ffff800000104f4b:	49 89 df             	mov    %rbx,%r15
ffff800000104f4e:	48 b8 73 db ff ff ff 	movabs $0xffffffffffffdb73,%rax
ffff800000104f55:	ff ff ff 
ffff800000104f58:	48 01 d8             	add    %rbx,%rax
ffff800000104f5b:	ff d0                	call   *%rax
ffff800000104f5d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000104f61:	48 8b 90 90 00 00 00 	mov    0x90(%rax),%rdx
ffff800000104f68:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000104f6c:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000104f70:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104f74:	48 8d 90 48 0f 00 00 	lea    0xf48(%rax),%rdx
ffff800000104f7b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000104f7f:	48 89 50 08          	mov    %rdx,0x8(%rax)
ffff800000104f83:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104f87:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%rax)
ffff800000104f8e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104f93:	48 83 c4 40          	add    $0x40,%rsp
ffff800000104f97:	5b                   	pop    %rbx
ffff800000104f98:	41 5f                	pop    %r15
ffff800000104f9a:	5d                   	pop    %rbp
ffff800000104f9b:	c3                   	ret

ffff800000104f9c <kernel_thread_func>:
ffff800000104f9c:	41 5f                	pop    %r15
ffff800000104f9e:	41 5e                	pop    %r14
ffff800000104fa0:	41 5d                	pop    %r13
ffff800000104fa2:	41 5c                	pop    %r12
ffff800000104fa4:	41 5b                	pop    %r11
ffff800000104fa6:	41 5a                	pop    %r10
ffff800000104fa8:	41 59                	pop    %r9
ffff800000104faa:	41 58                	pop    %r8
ffff800000104fac:	5b                   	pop    %rbx
ffff800000104fad:	59                   	pop    %rcx
ffff800000104fae:	5a                   	pop    %rdx
ffff800000104faf:	5e                   	pop    %rsi
ffff800000104fb0:	5f                   	pop    %rdi
ffff800000104fb1:	5d                   	pop    %rbp
ffff800000104fb2:	58                   	pop    %rax
ffff800000104fb3:	8e d8                	mov    %eax,%ds
ffff800000104fb5:	58                   	pop    %rax
ffff800000104fb6:	8e c0                	mov    %eax,%es
ffff800000104fb8:	58                   	pop    %rax
ffff800000104fb9:	48 83 c4 38          	add    $0x38,%rsp
ffff800000104fbd:	48 89 d7             	mov    %rdx,%rdi
ffff800000104fc0:	ff d3                	call   *%rbx
ffff800000104fc2:	48 89 c7             	mov    %rax,%rdi
ffff800000104fc5:	e8 f3 fd ff ff       	call   ffff800000104dbd <do_exit>

ffff800000104fca <create_task>:
ffff800000104fca:	f3 0f 1e fa          	endbr64
ffff800000104fce:	55                   	push   %rbp
ffff800000104fcf:	48 89 e5             	mov    %rsp,%rbp
ffff800000104fd2:	41 57                	push   %r15
ffff800000104fd4:	53                   	push   %rbx
ffff800000104fd5:	48 81 ec e0 00 00 00 	sub    $0xe0,%rsp
ffff800000104fdc:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104fdc <create_task+0x12>
ffff800000104fe3:	49 bb 74 58 00 00 00 	movabs $0x5874,%r11
ffff800000104fea:	00 00 00 
ffff800000104fed:	4c 01 db             	add    %r11,%rbx
ffff800000104ff0:	48 89 bd 28 ff ff ff 	mov    %rdi,-0xd8(%rbp)
ffff800000104ff7:	48 89 b5 20 ff ff ff 	mov    %rsi,-0xe0(%rbp)
ffff800000104ffe:	48 89 95 18 ff ff ff 	mov    %rdx,-0xe8(%rbp)
ffff800000105005:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
ffff80000010500c:	ba b8 00 00 00       	mov    $0xb8,%edx
ffff800000105011:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105016:	48 89 c7             	mov    %rax,%rdi
ffff800000105019:	49 89 df             	mov    %rbx,%r15
ffff80000010501c:	48 b8 b9 d9 ff ff ff 	movabs $0xffffffffffffd9b9,%rax
ffff800000105023:	ff ff ff 
ffff800000105026:	48 01 d8             	add    %rbx,%rax
ffff800000105029:	ff d0                	call   *%rax
ffff80000010502b:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
ffff800000105032:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
ffff800000105039:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
ffff800000105040:	48 89 45 80          	mov    %rax,-0x80(%rbp)
ffff800000105044:	48 c7 45 c8 08 00 00 	movq   $0x8,-0x38(%rbp)
ffff80000010504b:	00 
ffff80000010504c:	48 c7 45 a0 10 00 00 	movq   $0x10,-0x60(%rbp)
ffff800000105053:	00 
ffff800000105054:	48 b8 d8 ff ff ff ff 	movabs $0xffffffffffffffd8,%rax
ffff80000010505b:	ff ff ff 
ffff80000010505e:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105062:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
ffff800000105066:	48 c7 45 e0 00 02 00 	movq   $0x200,-0x20(%rbp)
ffff80000010506d:	00 
ffff80000010506e:	48 8b b5 18 ff ff ff 	mov    -0xe8(%rbp),%rsi
ffff800000105075:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
ffff80000010507c:	b9 00 00 00 00       	mov    $0x0,%ecx
ffff800000105081:	ba 00 00 00 00       	mov    $0x0,%edx
ffff800000105086:	48 89 c7             	mov    %rax,%rdi
ffff800000105089:	48 b8 c5 a5 ff ff ff 	movabs $0xffffffffffffa5c5,%rax
ffff800000105090:	ff ff ff 
ffff800000105093:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105097:	ff d0                	call   *%rax
ffff800000105099:	48 81 c4 e0 00 00 00 	add    $0xe0,%rsp
ffff8000001050a0:	5b                   	pop    %rbx
ffff8000001050a1:	41 5f                	pop    %r15
ffff8000001050a3:	5d                   	pop    %rbp
ffff8000001050a4:	c3                   	ret

ffff8000001050a5 <fork>:
ffff8000001050a5:	f3 0f 1e fa          	endbr64
ffff8000001050a9:	55                   	push   %rbp
ffff8000001050aa:	48 89 e5             	mov    %rsp,%rbp
ffff8000001050ad:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001050ad <fork+0x8>
ffff8000001050b4:	49 bb a3 57 00 00 00 	movabs $0x57a3,%r11
ffff8000001050bb:	00 00 00 
ffff8000001050be:	4c 01 d8             	add    %r11,%rax
ffff8000001050c1:	90                   	nop
ffff8000001050c2:	5d                   	pop    %rbp
ffff8000001050c3:	c3                   	ret

ffff8000001050c4 <schedule>:
ffff8000001050c4:	f3 0f 1e fa          	endbr64
ffff8000001050c8:	55                   	push   %rbp
ffff8000001050c9:	48 89 e5             	mov    %rsp,%rbp
ffff8000001050cc:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001050cc <schedule+0x8>
ffff8000001050d3:	49 bb 84 57 00 00 00 	movabs $0x5784,%r11
ffff8000001050da:	00 00 00 
ffff8000001050dd:	4c 01 d8             	add    %r11,%rax
ffff8000001050e0:	90                   	nop
ffff8000001050e1:	5d                   	pop    %rbp
ffff8000001050e2:	c3                   	ret

ffff8000001050e3 <__switch_to>:
ffff8000001050e3:	f3 0f 1e fa          	endbr64
ffff8000001050e7:	55                   	push   %rbp
ffff8000001050e8:	48 89 e5             	mov    %rsp,%rbp
ffff8000001050eb:	41 57                	push   %r15
ffff8000001050ed:	53                   	push   %rbx
ffff8000001050ee:	48 83 ec 10          	sub    $0x10,%rsp
ffff8000001050f2:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001050f2 <__switch_to+0xf>
ffff8000001050f9:	49 bb 5e 57 00 00 00 	movabs $0x575e,%r11
ffff800000105100:	00 00 00 
ffff800000105103:	4c 01 db             	add    %r11,%rbx
ffff800000105106:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff80000010510a:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
ffff80000010510e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105112:	48 8b 50 18          	mov    0x18(%rax),%rdx
ffff800000105116:	8c e0                	mov    %fs,%eax
ffff800000105118:	48 89 42 18          	mov    %rax,0x18(%rdx)
ffff80000010511c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105120:	48 8b 50 18          	mov    0x18(%rax),%rdx
ffff800000105124:	8c e8                	mov    %gs,%eax
ffff800000105126:	48 89 42 20          	mov    %rax,0x20(%rdx)
ffff80000010512a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010512e:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff800000105132:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff800000105136:	8e e0                	mov    %eax,%fs
ffff800000105138:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010513c:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff800000105140:	48 8b 40 20          	mov    0x20(%rax),%rax
ffff800000105144:	8e e8                	mov    %eax,%gs
ffff800000105146:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010514a:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff80000010514e:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105152:	48 89 c6             	mov    %rax,%rsi
ffff800000105155:	48 b8 8f e6 ff ff ff 	movabs $0xffffffffffffe68f,%rax
ffff80000010515c:	ff ff ff 
ffff80000010515f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105163:	48 89 c7             	mov    %rax,%rdi
ffff800000105166:	49 89 df             	mov    %rbx,%r15
ffff800000105169:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010516e:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff800000105175:	ff ff ff 
ffff800000105178:	48 01 da             	add    %rbx,%rdx
ffff80000010517b:	ff d2                	call   *%rdx
ffff80000010517d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000105181:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff800000105185:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105189:	48 89 c6             	mov    %rax,%rsi
ffff80000010518c:	48 b8 a6 e6 ff ff ff 	movabs $0xffffffffffffe6a6,%rax
ffff800000105193:	ff ff ff 
ffff800000105196:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010519a:	48 89 c7             	mov    %rax,%rdi
ffff80000010519d:	49 89 df             	mov    %rbx,%r15
ffff8000001051a0:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001051a5:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff8000001051ac:	ff ff ff 
ffff8000001051af:	48 01 da             	add    %rbx,%rdx
ffff8000001051b2:	ff d2                	call   *%rdx
ffff8000001051b4:	90                   	nop
ffff8000001051b5:	48 83 c4 10          	add    $0x10,%rsp
ffff8000001051b9:	5b                   	pop    %rbx
ffff8000001051ba:	41 5f                	pop    %r15
ffff8000001051bc:	5d                   	pop    %rbp
ffff8000001051bd:	c3                   	ret

ffff8000001051be <taskinit>:
ffff8000001051be:	f3 0f 1e fa          	endbr64
ffff8000001051c2:	55                   	push   %rbp
ffff8000001051c3:	48 89 e5             	mov    %rsp,%rbp
ffff8000001051c6:	41 57                	push   %r15
ffff8000001051c8:	53                   	push   %rbx
ffff8000001051c9:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
ffff8000001051d0:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001051d0 <taskinit+0x12>
ffff8000001051d7:	49 bb 80 56 00 00 00 	movabs $0x5680,%r11
ffff8000001051de:	00 00 00 
ffff8000001051e1:	4c 01 db             	add    %r11,%rbx
ffff8000001051e4:	49 89 df             	mov    %rbx,%r15
ffff8000001051e7:	48 b8 f8 cd ff ff ff 	movabs $0xffffffffffffcdf8,%rax
ffff8000001051ee:	ff ff ff 
ffff8000001051f1:	48 01 d8             	add    %rbx,%rax
ffff8000001051f4:	ff d0                	call   *%rax
ffff8000001051f6:	48 ba 98 00 00 00 00 	movabs $0x98,%rdx
ffff8000001051fd:	00 00 00 
ffff800000105200:	48 89 04 13          	mov    %rax,(%rbx,%rdx,1)
ffff800000105204:	48 b8 98 00 00 00 00 	movabs $0x98,%rax
ffff80000010520b:	00 00 00 
ffff80000010520e:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105212:	48 05 00 10 00 00    	add    $0x1000,%rax
ffff800000105218:	48 89 c2             	mov    %rax,%rdx
ffff80000010521b:	48 b8 50 00 00 00 00 	movabs $0x50,%rax
ffff800000105222:	00 00 00 
ffff800000105225:	66 0f ef c0          	pxor   %xmm0,%xmm0
ffff800000105229:	0f 29 04 03          	movaps %xmm0,(%rbx,%rax,1)
ffff80000010522d:	0f 29 44 03 10       	movaps %xmm0,0x10(%rbx,%rax,1)
ffff800000105232:	0f 29 44 03 20       	movaps %xmm0,0x20(%rbx,%rax,1)
ffff800000105237:	0f 29 44 03 30       	movaps %xmm0,0x30(%rbx,%rax,1)
ffff80000010523c:	66 0f d6 44 03 40    	movq   %xmm0,0x40(%rbx,%rax,1)
ffff800000105242:	48 b8 50 00 00 00 00 	movabs $0x50,%rax
ffff800000105249:	00 00 00 
ffff80000010524c:	48 89 54 03 08       	mov    %rdx,0x8(%rbx,%rax,1)
ffff800000105251:	48 b8 50 00 00 00 00 	movabs $0x50,%rax
ffff800000105258:	00 00 00 
ffff80000010525b:	48 c7 44 03 18 10 00 	movq   $0x10,0x18(%rbx,%rax,1)
ffff800000105262:	00 00 
ffff800000105264:	48 b8 50 00 00 00 00 	movabs $0x50,%rax
ffff80000010526b:	00 00 00 
ffff80000010526e:	48 c7 44 03 20 10 00 	movq   $0x10,0x20(%rbx,%rax,1)
ffff800000105275:	00 00 
ffff800000105277:	48 b8 98 00 00 00 00 	movabs $0x98,%rax
ffff80000010527e:	00 00 00 
ffff800000105281:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105285:	48 ba 98 00 00 00 00 	movabs $0x98,%rdx
ffff80000010528c:	00 00 00 
ffff80000010528f:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105293:	48 89 d7             	mov    %rdx,%rdi
ffff800000105296:	48 ba 98 00 00 00 00 	movabs $0x98,%rdx
ffff80000010529d:	00 00 00 
ffff8000001052a0:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001052a4:	48 89 d6             	mov    %rdx,%rsi
ffff8000001052a7:	48 ba 98 00 00 00 00 	movabs $0x98,%rdx
ffff8000001052ae:	00 00 00 
ffff8000001052b1:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001052b5:	48 81 c2 00 10 00 00 	add    $0x1000,%rdx
ffff8000001052bc:	48 89 d1             	mov    %rdx,%rcx
ffff8000001052bf:	66 0f ef c0          	pxor   %xmm0,%xmm0
ffff8000001052c3:	0f 11 00             	movups %xmm0,(%rax)
ffff8000001052c6:	0f 11 40 10          	movups %xmm0,0x10(%rax)
ffff8000001052ca:	0f 11 40 20          	movups %xmm0,0x20(%rax)
ffff8000001052ce:	0f 11 40 30          	movups %xmm0,0x30(%rax)
ffff8000001052d2:	48 89 38             	mov    %rdi,(%rax)
ffff8000001052d5:	48 89 70 08          	mov    %rsi,0x8(%rax)
ffff8000001052d9:	c7 40 14 04 00 00 00 	movl   $0x4,0x14(%rax)
ffff8000001052e0:	48 ba 50 00 00 00 00 	movabs $0x50,%rdx
ffff8000001052e7:	00 00 00 
ffff8000001052ea:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff8000001052ee:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff8000001052f2:	48 89 48 28          	mov    %rcx,0x28(%rax)
ffff8000001052f6:	ba 07 00 00 00       	mov    $0x7,%edx
ffff8000001052fb:	be 0a 00 00 00       	mov    $0xa,%esi
ffff800000105300:	48 b8 04 a5 ff ff ff 	movabs $0xffffffffffffa504,%rax
ffff800000105307:	ff ff ff 
ffff80000010530a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010530e:	48 89 c7             	mov    %rax,%rdi
ffff800000105311:	48 b8 7a a7 ff ff ff 	movabs $0xffffffffffffa77a,%rax
ffff800000105318:	ff ff ff 
ffff80000010531b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010531f:	ff d0                	call   *%rax
ffff800000105321:	48 b8 98 00 00 00 00 	movabs $0x98,%rax
ffff800000105328:	00 00 00 
ffff80000010532b:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010532f:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%rax)
ffff800000105336:	48 b8 98 00 00 00 00 	movabs $0x98,%rax
ffff80000010533d:	00 00 00 
ffff800000105340:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105344:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105348:	48 b8 98 00 00 00 00 	movabs $0x98,%rax
ffff80000010534f:	00 00 00 
ffff800000105352:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105356:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010535a:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff80000010535e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105362:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff800000105366:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff80000010536a:	4c 8b 42 18          	mov    0x18(%rdx),%r8
ffff80000010536e:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105372:	48 8b 52 18          	mov    0x18(%rdx),%rdx
ffff800000105376:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
ffff80000010537a:	48 8b 49 18          	mov    0x18(%rcx),%rcx
ffff80000010537e:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
ffff800000105382:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
ffff800000105386:	55                   	push   %rbp
ffff800000105387:	50                   	push   %rax
ffff800000105388:	48 89 60 08          	mov    %rsp,0x8(%rax)
ffff80000010538c:	48 8b 62 08          	mov    0x8(%rdx),%rsp
ffff800000105390:	48 8d 05 0c 00 00 00 	lea    0xc(%rip),%rax        # ffff8000001053a3 <taskinit+0x1e5>
ffff800000105397:	49 89 40 10          	mov    %rax,0x10(%r8)
ffff80000010539b:	ff 71 10             	push   0x10(%rcx)
ffff80000010539e:	e9 40 fd ff ff       	jmp    ffff8000001050e3 <__switch_to>
ffff8000001053a3:	58                   	pop    %rax
ffff8000001053a4:	5d                   	pop    %rbp
ffff8000001053a5:	90                   	nop
ffff8000001053a6:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
ffff8000001053ad:	5b                   	pop    %rbx
ffff8000001053ae:	41 5f                	pop    %r15
ffff8000001053b0:	5d                   	pop    %rbp
ffff8000001053b1:	c3                   	ret

ffff8000001053b2 <tssinit>:
ffff8000001053b2:	f3 0f 1e fa          	endbr64
ffff8000001053b6:	55                   	push   %rbp
ffff8000001053b7:	48 89 e5             	mov    %rsp,%rbp
ffff8000001053ba:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001053ba <tssinit+0x8>
ffff8000001053c1:	49 bb 96 54 00 00 00 	movabs $0x5496,%r11
ffff8000001053c8:	00 00 00 
ffff8000001053cb:	4c 01 d8             	add    %r11,%rax
ffff8000001053ce:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff8000001053d2:	89 f2                	mov    %esi,%edx
ffff8000001053d4:	66 89 55 e4          	mov    %dx,-0x1c(%rbp)
ffff8000001053d8:	48 ba 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rdx
ffff8000001053df:	ff ff ff 
ffff8000001053e2:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff8000001053e6:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff8000001053ea:	48 89 4a 04          	mov    %rcx,0x4(%rdx)
ffff8000001053ee:	48 ba 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rdx
ffff8000001053f5:	ff ff ff 
ffff8000001053f8:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff8000001053fc:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000105400:	48 89 4a 0c          	mov    %rcx,0xc(%rdx)
ffff800000105404:	48 ba 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rdx
ffff80000010540b:	ff ff ff 
ffff80000010540e:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105412:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000105416:	48 89 4a 14          	mov    %rcx,0x14(%rdx)
ffff80000010541a:	48 ba 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rdx
ffff800000105421:	ff ff ff 
ffff800000105424:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105428:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff80000010542c:	48 89 4a 24          	mov    %rcx,0x24(%rdx)
ffff800000105430:	48 ba 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rdx
ffff800000105437:	ff ff ff 
ffff80000010543a:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff80000010543e:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000105442:	48 89 4a 2c          	mov    %rcx,0x2c(%rdx)
ffff800000105446:	48 ba 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rdx
ffff80000010544d:	ff ff ff 
ffff800000105450:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105454:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000105458:	48 89 4a 34          	mov    %rcx,0x34(%rdx)
ffff80000010545c:	48 ba 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rdx
ffff800000105463:	ff ff ff 
ffff800000105466:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff80000010546a:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff80000010546e:	48 89 4a 3c          	mov    %rcx,0x3c(%rdx)
ffff800000105472:	48 ba 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rdx
ffff800000105479:	ff ff ff 
ffff80000010547c:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105480:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000105484:	48 89 4a 44          	mov    %rcx,0x44(%rdx)
ffff800000105488:	48 ba 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rdx
ffff80000010548f:	ff ff ff 
ffff800000105492:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105496:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff80000010549a:	48 89 4a 4c          	mov    %rcx,0x4c(%rdx)
ffff80000010549e:	48 ba 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rdx
ffff8000001054a5:	ff ff ff 
ffff8000001054a8:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff8000001054ac:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff8000001054b0:	48 89 4a 54          	mov    %rcx,0x54(%rdx)
ffff8000001054b4:	0f b7 55 e4          	movzwl -0x1c(%rbp),%edx
ffff8000001054b8:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff8000001054bf:	ff ff ff 
ffff8000001054c2:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff8000001054c6:	48 63 f2             	movslq %edx,%rsi
ffff8000001054c9:	66 c7 04 f1 67 00    	movw   $0x67,(%rcx,%rsi,8)
ffff8000001054cf:	48 b9 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rcx
ffff8000001054d6:	ff ff ff 
ffff8000001054d9:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff8000001054dd:	89 cf                	mov    %ecx,%edi
ffff8000001054df:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff8000001054e6:	ff ff ff 
ffff8000001054e9:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff8000001054ed:	48 63 f2             	movslq %edx,%rsi
ffff8000001054f0:	66 89 7c f1 02       	mov    %di,0x2(%rcx,%rsi,8)
ffff8000001054f5:	48 b9 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rcx
ffff8000001054fc:	ff ff ff 
ffff8000001054ff:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000105503:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105507:	89 cf                	mov    %ecx,%edi
ffff800000105509:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff800000105510:	ff ff ff 
ffff800000105513:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000105517:	48 63 f2             	movslq %edx,%rsi
ffff80000010551a:	40 88 7c f1 04       	mov    %dil,0x4(%rcx,%rsi,8)
ffff80000010551f:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff800000105526:	ff ff ff 
ffff800000105529:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff80000010552d:	48 63 f2             	movslq %edx,%rsi
ffff800000105530:	0f b6 7c f1 05       	movzbl 0x5(%rcx,%rsi,8),%edi
ffff800000105535:	83 e7 f0             	and    $0xfffffff0,%edi
ffff800000105538:	83 cf 09             	or     $0x9,%edi
ffff80000010553b:	40 88 7c f1 05       	mov    %dil,0x5(%rcx,%rsi,8)
ffff800000105540:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff800000105547:	ff ff ff 
ffff80000010554a:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff80000010554e:	48 63 f2             	movslq %edx,%rsi
ffff800000105551:	0f b6 7c f1 05       	movzbl 0x5(%rcx,%rsi,8),%edi
ffff800000105556:	83 e7 ef             	and    $0xffffffef,%edi
ffff800000105559:	40 88 7c f1 05       	mov    %dil,0x5(%rcx,%rsi,8)
ffff80000010555e:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff800000105565:	ff ff ff 
ffff800000105568:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff80000010556c:	48 63 f2             	movslq %edx,%rsi
ffff80000010556f:	0f b6 7c f1 05       	movzbl 0x5(%rcx,%rsi,8),%edi
ffff800000105574:	83 e7 9f             	and    $0xffffff9f,%edi
ffff800000105577:	40 88 7c f1 05       	mov    %dil,0x5(%rcx,%rsi,8)
ffff80000010557c:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff800000105583:	ff ff ff 
ffff800000105586:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff80000010558a:	48 63 f2             	movslq %edx,%rsi
ffff80000010558d:	0f b6 7c f1 05       	movzbl 0x5(%rcx,%rsi,8),%edi
ffff800000105592:	83 cf 80             	or     $0xffffff80,%edi
ffff800000105595:	40 88 7c f1 05       	mov    %dil,0x5(%rcx,%rsi,8)
ffff80000010559a:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff8000001055a1:	ff ff ff 
ffff8000001055a4:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff8000001055a8:	48 63 f2             	movslq %edx,%rsi
ffff8000001055ab:	0f b6 7c f1 06       	movzbl 0x6(%rcx,%rsi,8),%edi
ffff8000001055b0:	83 e7 f0             	and    $0xfffffff0,%edi
ffff8000001055b3:	40 88 7c f1 06       	mov    %dil,0x6(%rcx,%rsi,8)
ffff8000001055b8:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff8000001055bf:	ff ff ff 
ffff8000001055c2:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff8000001055c6:	48 63 f2             	movslq %edx,%rsi
ffff8000001055c9:	0f b6 7c f1 06       	movzbl 0x6(%rcx,%rsi,8),%edi
ffff8000001055ce:	83 e7 ef             	and    $0xffffffef,%edi
ffff8000001055d1:	40 88 7c f1 06       	mov    %dil,0x6(%rcx,%rsi,8)
ffff8000001055d6:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff8000001055dd:	ff ff ff 
ffff8000001055e0:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff8000001055e4:	48 63 f2             	movslq %edx,%rsi
ffff8000001055e7:	0f b6 7c f1 06       	movzbl 0x6(%rcx,%rsi,8),%edi
ffff8000001055ec:	83 e7 df             	and    $0xffffffdf,%edi
ffff8000001055ef:	40 88 7c f1 06       	mov    %dil,0x6(%rcx,%rsi,8)
ffff8000001055f4:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff8000001055fb:	ff ff ff 
ffff8000001055fe:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000105602:	48 63 f2             	movslq %edx,%rsi
ffff800000105605:	0f b6 7c f1 06       	movzbl 0x6(%rcx,%rsi,8),%edi
ffff80000010560a:	83 e7 bf             	and    $0xffffffbf,%edi
ffff80000010560d:	40 88 7c f1 06       	mov    %dil,0x6(%rcx,%rsi,8)
ffff800000105612:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff800000105619:	ff ff ff 
ffff80000010561c:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000105620:	48 63 f2             	movslq %edx,%rsi
ffff800000105623:	0f b6 7c f1 06       	movzbl 0x6(%rcx,%rsi,8),%edi
ffff800000105628:	83 e7 7f             	and    $0x7f,%edi
ffff80000010562b:	40 88 7c f1 06       	mov    %dil,0x6(%rcx,%rsi,8)
ffff800000105630:	48 b9 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rcx
ffff800000105637:	ff ff ff 
ffff80000010563a:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff80000010563e:	48 c1 e9 20          	shr    $0x20,%rcx
ffff800000105642:	89 ce                	mov    %ecx,%esi
ffff800000105644:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff80000010564b:	ff ff ff 
ffff80000010564e:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000105652:	48 63 d2             	movslq %edx,%rdx
ffff800000105655:	40 88 74 d1 07       	mov    %sil,0x7(%rcx,%rdx,8)
ffff80000010565a:	0f b7 55 e4          	movzwl -0x1c(%rbp),%edx
ffff80000010565e:	83 c2 01             	add    $0x1,%edx
ffff800000105661:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff800000105668:	ff ff ff 
ffff80000010566b:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff80000010566f:	48 63 f2             	movslq %edx,%rsi
ffff800000105672:	48 c7 04 f1 00 00 00 	movq   $0x0,(%rcx,%rsi,8)
ffff800000105679:	00 
ffff80000010567a:	48 b9 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rcx
ffff800000105681:	ff ff ff 
ffff800000105684:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000105688:	48 c1 e9 20          	shr    $0x20,%rcx
ffff80000010568c:	89 cf                	mov    %ecx,%edi
ffff80000010568e:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff800000105695:	ff ff ff 
ffff800000105698:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff80000010569c:	48 63 f2             	movslq %edx,%rsi
ffff80000010569f:	66 89 3c f1          	mov    %di,(%rcx,%rsi,8)
ffff8000001056a3:	48 b9 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rcx
ffff8000001056aa:	ff ff ff 
ffff8000001056ad:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff8000001056b1:	48 c1 e9 30          	shr    $0x30,%rcx
ffff8000001056b5:	89 ce                	mov    %ecx,%esi
ffff8000001056b7:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff8000001056be:	ff ff ff 
ffff8000001056c1:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
ffff8000001056c5:	48 63 d2             	movslq %edx,%rdx
ffff8000001056c8:	66 89 74 d0 02       	mov    %si,0x2(%rax,%rdx,8)
ffff8000001056cd:	0f b7 45 e4          	movzwl -0x1c(%rbp),%eax
ffff8000001056d1:	c1 e0 03             	shl    $0x3,%eax
ffff8000001056d4:	66 89 45 fe          	mov    %ax,-0x2(%rbp)
ffff8000001056d8:	0f b7 45 fe          	movzwl -0x2(%rbp),%eax
ffff8000001056dc:	0f 00 d8             	ltr    %eax
ffff8000001056df:	90                   	nop
ffff8000001056e0:	5d                   	pop    %rbp
ffff8000001056e1:	c3                   	ret

ffff8000001056e2 <trapinit>:
ffff8000001056e2:	f3 0f 1e fa          	endbr64
ffff8000001056e6:	55                   	push   %rbp
ffff8000001056e7:	48 89 e5             	mov    %rsp,%rbp
ffff8000001056ea:	53                   	push   %rbx
ffff8000001056eb:	48 83 ec 08          	sub    $0x8,%rsp
ffff8000001056ef:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001056ef <trapinit+0xd>
ffff8000001056f6:	49 bb 61 51 00 00 00 	movabs $0x5161,%r11
ffff8000001056fd:	00 00 00 
ffff800000105700:	4c 01 db             	add    %r11,%rbx
ffff800000105703:	48 b8 18 ff ff ff ff 	movabs $0xffffffffffffff18,%rax
ffff80000010570a:	ff ff ff 
ffff80000010570d:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105711:	48 89 c2             	mov    %rax,%rdx
ffff800000105714:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105719:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000105720:	ff ff ff 
ffff800000105723:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105727:	48 89 c7             	mov    %rax,%rdi
ffff80000010572a:	48 b8 10 b4 ff ff ff 	movabs $0xffffffffffffb410,%rax
ffff800000105731:	ff ff ff 
ffff800000105734:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105738:	ff d0                	call   *%rax
ffff80000010573a:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000105741:	ff ff ff 
ffff800000105744:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105748:	48 8d 40 10          	lea    0x10(%rax),%rax
ffff80000010574c:	48 ba 30 ff ff ff ff 	movabs $0xffffffffffffff30,%rdx
ffff800000105753:	ff ff ff 
ffff800000105756:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff80000010575a:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010575f:	48 89 c7             	mov    %rax,%rdi
ffff800000105762:	48 b8 10 b4 ff ff ff 	movabs $0xffffffffffffb410,%rax
ffff800000105769:	ff ff ff 
ffff80000010576c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105770:	ff d0                	call   *%rax
ffff800000105772:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000105779:	ff ff ff 
ffff80000010577c:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105780:	48 8d 40 20          	lea    0x20(%rax),%rax
ffff800000105784:	48 ba e8 ff ff ff ff 	movabs $0xffffffffffffffe8,%rdx
ffff80000010578b:	ff ff ff 
ffff80000010578e:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105792:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105797:	48 89 c7             	mov    %rax,%rdi
ffff80000010579a:	48 b8 3d b3 ff ff ff 	movabs $0xffffffffffffb33d,%rax
ffff8000001057a1:	ff ff ff 
ffff8000001057a4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001057a8:	ff d0                	call   *%rax
ffff8000001057aa:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff8000001057b1:	ff ff ff 
ffff8000001057b4:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001057b8:	48 8d 40 30          	lea    0x30(%rax),%rax
ffff8000001057bc:	48 ba f8 ff ff ff ff 	movabs $0xfffffffffffffff8,%rdx
ffff8000001057c3:	ff ff ff 
ffff8000001057c6:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001057ca:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001057cf:	48 89 c7             	mov    %rax,%rdi
ffff8000001057d2:	48 b8 e5 b4 ff ff ff 	movabs $0xffffffffffffb4e5,%rax
ffff8000001057d9:	ff ff ff 
ffff8000001057dc:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001057e0:	ff d0                	call   *%rax
ffff8000001057e2:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff8000001057e9:	ff ff ff 
ffff8000001057ec:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001057f0:	48 8d 40 40          	lea    0x40(%rax),%rax
ffff8000001057f4:	48 ba 28 ff ff ff ff 	movabs $0xffffffffffffff28,%rdx
ffff8000001057fb:	ff ff ff 
ffff8000001057fe:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105802:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105807:	48 89 c7             	mov    %rax,%rdi
ffff80000010580a:	48 b8 e5 b4 ff ff ff 	movabs $0xffffffffffffb4e5,%rax
ffff800000105811:	ff ff ff 
ffff800000105814:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105818:	ff d0                	call   *%rax
ffff80000010581a:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000105821:	ff ff ff 
ffff800000105824:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105828:	48 8d 40 50          	lea    0x50(%rax),%rax
ffff80000010582c:	48 ba 38 ff ff ff ff 	movabs $0xffffffffffffff38,%rdx
ffff800000105833:	ff ff ff 
ffff800000105836:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff80000010583a:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010583f:	48 89 c7             	mov    %rax,%rdi
ffff800000105842:	48 b8 e5 b4 ff ff ff 	movabs $0xffffffffffffb4e5,%rax
ffff800000105849:	ff ff ff 
ffff80000010584c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105850:	ff d0                	call   *%rax
ffff800000105852:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000105859:	ff ff ff 
ffff80000010585c:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105860:	48 8d 40 60          	lea    0x60(%rax),%rax
ffff800000105864:	48 ba 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rdx
ffff80000010586b:	ff ff ff 
ffff80000010586e:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105872:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105877:	48 89 c7             	mov    %rax,%rdi
ffff80000010587a:	48 b8 10 b4 ff ff ff 	movabs $0xffffffffffffb410,%rax
ffff800000105881:	ff ff ff 
ffff800000105884:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105888:	ff d0                	call   *%rax
ffff80000010588a:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000105891:	ff ff ff 
ffff800000105894:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105898:	48 8d 40 70          	lea    0x70(%rax),%rax
ffff80000010589c:	48 ba f0 ff ff ff ff 	movabs $0xfffffffffffffff0,%rdx
ffff8000001058a3:	ff ff ff 
ffff8000001058a6:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001058aa:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001058af:	48 89 c7             	mov    %rax,%rdi
ffff8000001058b2:	48 b8 10 b4 ff ff ff 	movabs $0xffffffffffffb410,%rax
ffff8000001058b9:	ff ff ff 
ffff8000001058bc:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001058c0:	ff d0                	call   *%rax
ffff8000001058c2:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff8000001058c9:	ff ff ff 
ffff8000001058cc:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001058d0:	48 8d 80 80 00 00 00 	lea    0x80(%rax),%rax
ffff8000001058d7:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff8000001058de:	ff ff ff 
ffff8000001058e1:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001058e5:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001058ea:	48 89 c7             	mov    %rax,%rdi
ffff8000001058ed:	48 b8 10 b4 ff ff ff 	movabs $0xffffffffffffb410,%rax
ffff8000001058f4:	ff ff ff 
ffff8000001058f7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001058fb:	ff d0                	call   *%rax
ffff8000001058fd:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000105904:	ff ff ff 
ffff800000105907:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010590b:	48 8d 80 90 00 00 00 	lea    0x90(%rax),%rax
ffff800000105912:	48 ba b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rdx
ffff800000105919:	ff ff ff 
ffff80000010591c:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105920:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105925:	48 89 c7             	mov    %rax,%rdi
ffff800000105928:	48 b8 10 b4 ff ff ff 	movabs $0xffffffffffffb410,%rax
ffff80000010592f:	ff ff ff 
ffff800000105932:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105936:	ff d0                	call   *%rax
ffff800000105938:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff80000010593f:	ff ff ff 
ffff800000105942:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105946:	48 8d 80 a0 00 00 00 	lea    0xa0(%rax),%rax
ffff80000010594d:	48 ba 40 ff ff ff ff 	movabs $0xffffffffffffff40,%rdx
ffff800000105954:	ff ff ff 
ffff800000105957:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff80000010595b:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105960:	48 89 c7             	mov    %rax,%rdi
ffff800000105963:	48 b8 10 b4 ff ff ff 	movabs $0xffffffffffffb410,%rax
ffff80000010596a:	ff ff ff 
ffff80000010596d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105971:	ff d0                	call   *%rax
ffff800000105973:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff80000010597a:	ff ff ff 
ffff80000010597d:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105981:	48 8d 80 b0 00 00 00 	lea    0xb0(%rax),%rax
ffff800000105988:	48 ba 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rdx
ffff80000010598f:	ff ff ff 
ffff800000105992:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105996:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010599b:	48 89 c7             	mov    %rax,%rdi
ffff80000010599e:	48 b8 10 b4 ff ff ff 	movabs $0xffffffffffffb410,%rax
ffff8000001059a5:	ff ff ff 
ffff8000001059a8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001059ac:	ff d0                	call   *%rax
ffff8000001059ae:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff8000001059b5:	ff ff ff 
ffff8000001059b8:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001059bc:	48 8d 80 c0 00 00 00 	lea    0xc0(%rax),%rax
ffff8000001059c3:	48 ba 58 ff ff ff ff 	movabs $0xffffffffffffff58,%rdx
ffff8000001059ca:	ff ff ff 
ffff8000001059cd:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001059d1:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001059d6:	48 89 c7             	mov    %rax,%rdi
ffff8000001059d9:	48 b8 10 b4 ff ff ff 	movabs $0xffffffffffffb410,%rax
ffff8000001059e0:	ff ff ff 
ffff8000001059e3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001059e7:	ff d0                	call   *%rax
ffff8000001059e9:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff8000001059f0:	ff ff ff 
ffff8000001059f3:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001059f7:	48 8d 80 d0 00 00 00 	lea    0xd0(%rax),%rax
ffff8000001059fe:	48 ba 20 ff ff ff ff 	movabs $0xffffffffffffff20,%rdx
ffff800000105a05:	ff ff ff 
ffff800000105a08:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105a0c:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105a11:	48 89 c7             	mov    %rax,%rdi
ffff800000105a14:	48 b8 10 b4 ff ff ff 	movabs $0xffffffffffffb410,%rax
ffff800000105a1b:	ff ff ff 
ffff800000105a1e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105a22:	ff d0                	call   *%rax
ffff800000105a24:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000105a2b:	ff ff ff 
ffff800000105a2e:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105a32:	48 8d 80 e0 00 00 00 	lea    0xe0(%rax),%rax
ffff800000105a39:	48 ba b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rdx
ffff800000105a40:	ff ff ff 
ffff800000105a43:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105a47:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105a4c:	48 89 c7             	mov    %rax,%rdi
ffff800000105a4f:	48 b8 10 b4 ff ff ff 	movabs $0xffffffffffffb410,%rax
ffff800000105a56:	ff ff ff 
ffff800000105a59:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105a5d:	ff d0                	call   *%rax
ffff800000105a5f:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000105a66:	ff ff ff 
ffff800000105a69:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105a6d:	48 8d 80 00 01 00 00 	lea    0x100(%rax),%rax
ffff800000105a74:	48 ba 80 ff ff ff ff 	movabs $0xffffffffffffff80,%rdx
ffff800000105a7b:	ff ff ff 
ffff800000105a7e:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105a82:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105a87:	48 89 c7             	mov    %rax,%rdi
ffff800000105a8a:	48 b8 10 b4 ff ff ff 	movabs $0xffffffffffffb410,%rax
ffff800000105a91:	ff ff ff 
ffff800000105a94:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105a98:	ff d0                	call   *%rax
ffff800000105a9a:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000105aa1:	ff ff ff 
ffff800000105aa4:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105aa8:	48 8d 80 10 01 00 00 	lea    0x110(%rax),%rax
ffff800000105aaf:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105ab6:	ff ff ff 
ffff800000105ab9:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105abd:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105ac2:	48 89 c7             	mov    %rax,%rdi
ffff800000105ac5:	48 b8 10 b4 ff ff ff 	movabs $0xffffffffffffb410,%rax
ffff800000105acc:	ff ff ff 
ffff800000105acf:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105ad3:	ff d0                	call   *%rax
ffff800000105ad5:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000105adc:	ff ff ff 
ffff800000105adf:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105ae3:	48 8d 80 20 01 00 00 	lea    0x120(%rax),%rax
ffff800000105aea:	48 ba c8 ff ff ff ff 	movabs $0xffffffffffffffc8,%rdx
ffff800000105af1:	ff ff ff 
ffff800000105af4:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105af8:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105afd:	48 89 c7             	mov    %rax,%rdi
ffff800000105b00:	48 b8 10 b4 ff ff ff 	movabs $0xffffffffffffb410,%rax
ffff800000105b07:	ff ff ff 
ffff800000105b0a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105b0e:	ff d0                	call   *%rax
ffff800000105b10:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000105b17:	ff ff ff 
ffff800000105b1a:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105b1e:	48 8d 80 30 01 00 00 	lea    0x130(%rax),%rax
ffff800000105b25:	48 ba e0 ff ff ff ff 	movabs $0xffffffffffffffe0,%rdx
ffff800000105b2c:	ff ff ff 
ffff800000105b2f:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105b33:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105b38:	48 89 c7             	mov    %rax,%rdi
ffff800000105b3b:	48 b8 10 b4 ff ff ff 	movabs $0xffffffffffffb410,%rax
ffff800000105b42:	ff ff ff 
ffff800000105b45:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105b49:	ff d0                	call   *%rax
ffff800000105b4b:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000105b52:	ff ff ff 
ffff800000105b55:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105b59:	48 8d 80 40 01 00 00 	lea    0x140(%rax),%rax
ffff800000105b60:	48 ba a8 ff ff ff ff 	movabs $0xffffffffffffffa8,%rdx
ffff800000105b67:	ff ff ff 
ffff800000105b6a:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105b6e:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105b73:	48 89 c7             	mov    %rax,%rdi
ffff800000105b76:	48 b8 10 b4 ff ff ff 	movabs $0xffffffffffffb410,%rax
ffff800000105b7d:	ff ff ff 
ffff800000105b80:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105b84:	ff d0                	call   *%rax
ffff800000105b86:	90                   	nop
ffff800000105b87:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000105b8b:	c9                   	leave
ffff800000105b8c:	c3                   	ret

ffff800000105b8d <set_intr_gate>:
ffff800000105b8d:	f3 0f 1e fa          	endbr64
ffff800000105b91:	55                   	push   %rbp
ffff800000105b92:	48 89 e5             	mov    %rsp,%rbp
ffff800000105b95:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105b95 <set_intr_gate+0x8>
ffff800000105b9c:	49 bb bb 4c 00 00 00 	movabs $0x4cbb,%r11
ffff800000105ba3:	00 00 00 
ffff800000105ba6:	4c 01 d8             	add    %r11,%rax
ffff800000105ba9:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000105bad:	89 75 f4             	mov    %esi,-0xc(%rbp)
ffff800000105bb0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105bb4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105bb8:	89 c2                	mov    %eax,%edx
ffff800000105bba:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105bbe:	66 89 10             	mov    %dx,(%rax)
ffff800000105bc1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105bc5:	66 c7 40 02 08 00    	movw   $0x8,0x2(%rax)
ffff800000105bcb:	8b 45 f4             	mov    -0xc(%rbp),%eax
ffff800000105bce:	83 e0 07             	and    $0x7,%eax
ffff800000105bd1:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000105bd5:	83 e0 07             	and    $0x7,%eax
ffff800000105bd8:	89 c1                	mov    %eax,%ecx
ffff800000105bda:	0f b6 42 04          	movzbl 0x4(%rdx),%eax
ffff800000105bde:	83 e0 f8             	and    $0xfffffff8,%eax
ffff800000105be1:	09 c8                	or     %ecx,%eax
ffff800000105be3:	88 42 04             	mov    %al,0x4(%rdx)
ffff800000105be6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105bea:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff800000105bee:	83 e2 07             	and    $0x7,%edx
ffff800000105bf1:	88 50 04             	mov    %dl,0x4(%rax)
ffff800000105bf4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105bf8:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105bfc:	83 e2 f0             	and    $0xfffffff0,%edx
ffff800000105bff:	83 ca 0e             	or     $0xe,%edx
ffff800000105c02:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105c05:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105c09:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105c0d:	83 e2 ef             	and    $0xffffffef,%edx
ffff800000105c10:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105c13:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105c17:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105c1b:	83 e2 9f             	and    $0xffffff9f,%edx
ffff800000105c1e:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105c21:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105c25:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105c29:	83 ca 80             	or     $0xffffff80,%edx
ffff800000105c2c:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105c2f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105c33:	48 c1 e8 10          	shr    $0x10,%rax
ffff800000105c37:	89 c2                	mov    %eax,%edx
ffff800000105c39:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105c3d:	66 89 50 06          	mov    %dx,0x6(%rax)
ffff800000105c41:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105c45:	48 c1 e8 20          	shr    $0x20,%rax
ffff800000105c49:	89 c2                	mov    %eax,%edx
ffff800000105c4b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105c4f:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000105c52:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105c56:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
ffff800000105c5d:	90                   	nop
ffff800000105c5e:	5d                   	pop    %rbp
ffff800000105c5f:	c3                   	ret

ffff800000105c60 <set_trap_gate>:
ffff800000105c60:	f3 0f 1e fa          	endbr64
ffff800000105c64:	55                   	push   %rbp
ffff800000105c65:	48 89 e5             	mov    %rsp,%rbp
ffff800000105c68:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105c68 <set_trap_gate+0x8>
ffff800000105c6f:	49 bb e8 4b 00 00 00 	movabs $0x4be8,%r11
ffff800000105c76:	00 00 00 
ffff800000105c79:	4c 01 d8             	add    %r11,%rax
ffff800000105c7c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000105c80:	89 f0                	mov    %esi,%eax
ffff800000105c82:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105c86:	88 45 f4             	mov    %al,-0xc(%rbp)
ffff800000105c89:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105c8d:	89 c2                	mov    %eax,%edx
ffff800000105c8f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105c93:	66 89 10             	mov    %dx,(%rax)
ffff800000105c96:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105c9a:	66 c7 40 02 08 00    	movw   $0x8,0x2(%rax)
ffff800000105ca0:	0f b6 45 f4          	movzbl -0xc(%rbp),%eax
ffff800000105ca4:	83 e0 07             	and    $0x7,%eax
ffff800000105ca7:	89 c2                	mov    %eax,%edx
ffff800000105ca9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105cad:	89 d1                	mov    %edx,%ecx
ffff800000105caf:	83 e1 07             	and    $0x7,%ecx
ffff800000105cb2:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff800000105cb6:	83 e2 f8             	and    $0xfffffff8,%edx
ffff800000105cb9:	09 ca                	or     %ecx,%edx
ffff800000105cbb:	88 50 04             	mov    %dl,0x4(%rax)
ffff800000105cbe:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105cc2:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff800000105cc6:	83 e2 07             	and    $0x7,%edx
ffff800000105cc9:	88 50 04             	mov    %dl,0x4(%rax)
ffff800000105ccc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105cd0:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105cd4:	83 ca 0f             	or     $0xf,%edx
ffff800000105cd7:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105cda:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105cde:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105ce2:	83 e2 ef             	and    $0xffffffef,%edx
ffff800000105ce5:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105ce8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105cec:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105cf0:	83 e2 9f             	and    $0xffffff9f,%edx
ffff800000105cf3:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105cf6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105cfa:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105cfe:	83 ca 80             	or     $0xffffff80,%edx
ffff800000105d01:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105d04:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105d08:	48 c1 e8 10          	shr    $0x10,%rax
ffff800000105d0c:	89 c2                	mov    %eax,%edx
ffff800000105d0e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105d12:	66 89 50 06          	mov    %dx,0x6(%rax)
ffff800000105d16:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105d1a:	48 c1 e8 20          	shr    $0x20,%rax
ffff800000105d1e:	89 c2                	mov    %eax,%edx
ffff800000105d20:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105d24:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000105d27:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105d2b:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
ffff800000105d32:	90                   	nop
ffff800000105d33:	5d                   	pop    %rbp
ffff800000105d34:	c3                   	ret

ffff800000105d35 <set_system_gate>:
ffff800000105d35:	f3 0f 1e fa          	endbr64
ffff800000105d39:	55                   	push   %rbp
ffff800000105d3a:	48 89 e5             	mov    %rsp,%rbp
ffff800000105d3d:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105d3d <set_system_gate+0x8>
ffff800000105d44:	49 bb 13 4b 00 00 00 	movabs $0x4b13,%r11
ffff800000105d4b:	00 00 00 
ffff800000105d4e:	4c 01 d8             	add    %r11,%rax
ffff800000105d51:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000105d55:	89 f0                	mov    %esi,%eax
ffff800000105d57:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105d5b:	88 45 f4             	mov    %al,-0xc(%rbp)
ffff800000105d5e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105d62:	89 c2                	mov    %eax,%edx
ffff800000105d64:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105d68:	66 89 10             	mov    %dx,(%rax)
ffff800000105d6b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105d6f:	66 c7 40 02 08 00    	movw   $0x8,0x2(%rax)
ffff800000105d75:	0f b6 45 f4          	movzbl -0xc(%rbp),%eax
ffff800000105d79:	83 e0 07             	and    $0x7,%eax
ffff800000105d7c:	89 c2                	mov    %eax,%edx
ffff800000105d7e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105d82:	89 d1                	mov    %edx,%ecx
ffff800000105d84:	83 e1 07             	and    $0x7,%ecx
ffff800000105d87:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff800000105d8b:	83 e2 f8             	and    $0xfffffff8,%edx
ffff800000105d8e:	09 ca                	or     %ecx,%edx
ffff800000105d90:	88 50 04             	mov    %dl,0x4(%rax)
ffff800000105d93:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105d97:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff800000105d9b:	83 e2 07             	and    $0x7,%edx
ffff800000105d9e:	88 50 04             	mov    %dl,0x4(%rax)
ffff800000105da1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105da5:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105da9:	83 ca 0f             	or     $0xf,%edx
ffff800000105dac:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105daf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105db3:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105db7:	83 e2 ef             	and    $0xffffffef,%edx
ffff800000105dba:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105dbd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105dc1:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105dc5:	83 e2 9f             	and    $0xffffff9f,%edx
ffff800000105dc8:	83 ca 40             	or     $0x40,%edx
ffff800000105dcb:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105dce:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105dd2:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105dd6:	83 ca 80             	or     $0xffffff80,%edx
ffff800000105dd9:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105ddc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105de0:	48 c1 e8 10          	shr    $0x10,%rax
ffff800000105de4:	89 c2                	mov    %eax,%edx
ffff800000105de6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105dea:	66 89 50 06          	mov    %dx,0x6(%rax)
ffff800000105dee:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105df2:	48 c1 e8 20          	shr    $0x20,%rax
ffff800000105df6:	89 c2                	mov    %eax,%edx
ffff800000105df8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105dfc:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000105dff:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105e03:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
ffff800000105e0a:	90                   	nop
ffff800000105e0b:	5d                   	pop    %rbp
ffff800000105e0c:	c3                   	ret

ffff800000105e0d <set_system_intr_gate>:
ffff800000105e0d:	f3 0f 1e fa          	endbr64
ffff800000105e11:	55                   	push   %rbp
ffff800000105e12:	48 89 e5             	mov    %rsp,%rbp
ffff800000105e15:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105e15 <set_system_intr_gate+0x8>
ffff800000105e1c:	49 bb 3b 4a 00 00 00 	movabs $0x4a3b,%r11
ffff800000105e23:	00 00 00 
ffff800000105e26:	4c 01 d8             	add    %r11,%rax
ffff800000105e29:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000105e2d:	89 f0                	mov    %esi,%eax
ffff800000105e2f:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105e33:	88 45 f4             	mov    %al,-0xc(%rbp)
ffff800000105e36:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105e3a:	89 c2                	mov    %eax,%edx
ffff800000105e3c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105e40:	66 89 10             	mov    %dx,(%rax)
ffff800000105e43:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105e47:	66 c7 40 02 08 00    	movw   $0x8,0x2(%rax)
ffff800000105e4d:	0f b6 45 f4          	movzbl -0xc(%rbp),%eax
ffff800000105e51:	83 e0 07             	and    $0x7,%eax
ffff800000105e54:	89 c2                	mov    %eax,%edx
ffff800000105e56:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105e5a:	89 d1                	mov    %edx,%ecx
ffff800000105e5c:	83 e1 07             	and    $0x7,%ecx
ffff800000105e5f:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff800000105e63:	83 e2 f8             	and    $0xfffffff8,%edx
ffff800000105e66:	09 ca                	or     %ecx,%edx
ffff800000105e68:	88 50 04             	mov    %dl,0x4(%rax)
ffff800000105e6b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105e6f:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff800000105e73:	83 e2 07             	and    $0x7,%edx
ffff800000105e76:	88 50 04             	mov    %dl,0x4(%rax)
ffff800000105e79:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105e7d:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105e81:	83 e2 f0             	and    $0xfffffff0,%edx
ffff800000105e84:	83 ca 0e             	or     $0xe,%edx
ffff800000105e87:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105e8a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105e8e:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105e92:	83 e2 ef             	and    $0xffffffef,%edx
ffff800000105e95:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105e98:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105e9c:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105ea0:	83 e2 9f             	and    $0xffffff9f,%edx
ffff800000105ea3:	83 ca 40             	or     $0x40,%edx
ffff800000105ea6:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105ea9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105ead:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105eb1:	83 ca 80             	or     $0xffffff80,%edx
ffff800000105eb4:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105eb7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105ebb:	48 c1 e8 10          	shr    $0x10,%rax
ffff800000105ebf:	89 c2                	mov    %eax,%edx
ffff800000105ec1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105ec5:	66 89 50 06          	mov    %dx,0x6(%rax)
ffff800000105ec9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105ecd:	48 c1 e8 20          	shr    $0x20,%rax
ffff800000105ed1:	89 c2                	mov    %eax,%edx
ffff800000105ed3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105ed7:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000105eda:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105ede:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
ffff800000105ee5:	90                   	nop
ffff800000105ee6:	5d                   	pop    %rbp
ffff800000105ee7:	c3                   	ret

ffff800000105ee8 <do_divide_error>:
ffff800000105ee8:	f3 0f 1e fa          	endbr64
ffff800000105eec:	55                   	push   %rbp
ffff800000105eed:	48 89 e5             	mov    %rsp,%rbp
ffff800000105ef0:	41 57                	push   %r15
ffff800000105ef2:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105ef6:	4c 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%r8        # ffff800000105ef6 <do_divide_error+0xe>
ffff800000105efd:	49 bb 5a 49 00 00 00 	movabs $0x495a,%r11
ffff800000105f04:	00 00 00 
ffff800000105f07:	4d 01 d8             	add    %r11,%r8
ffff800000105f0a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105f0e:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105f12:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105f19:	00 
ffff800000105f1a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105f1e:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105f24:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105f28:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105f2c:	48 8b 08             	mov    (%rax),%rcx
ffff800000105f2f:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105f33:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105f37:	48 89 c6             	mov    %rax,%rsi
ffff800000105f3a:	48 b8 c0 e6 ff ff ff 	movabs $0xffffffffffffe6c0,%rax
ffff800000105f41:	ff ff ff 
ffff800000105f44:	49 8d 04 00          	lea    (%r8,%rax,1),%rax
ffff800000105f48:	48 89 c7             	mov    %rax,%rdi
ffff800000105f4b:	4d 89 c7             	mov    %r8,%r15
ffff800000105f4e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105f53:	49 b9 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%r9
ffff800000105f5a:	ff ff ff 
ffff800000105f5d:	4d 01 c1             	add    %r8,%r9
ffff800000105f60:	41 ff d1             	call   *%r9
ffff800000105f63:	90                   	nop
ffff800000105f64:	eb fd                	jmp    ffff800000105f63 <do_divide_error+0x7b>

ffff800000105f66 <do_debug>:
ffff800000105f66:	f3 0f 1e fa          	endbr64
ffff800000105f6a:	55                   	push   %rbp
ffff800000105f6b:	48 89 e5             	mov    %rsp,%rbp
ffff800000105f6e:	41 57                	push   %r15
ffff800000105f70:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105f74:	4c 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%r8        # ffff800000105f74 <do_debug+0xe>
ffff800000105f7b:	49 bb dc 48 00 00 00 	movabs $0x48dc,%r11
ffff800000105f82:	00 00 00 
ffff800000105f85:	4d 01 d8             	add    %r11,%r8
ffff800000105f88:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105f8c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105f90:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105f97:	00 
ffff800000105f98:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105f9c:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105fa2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105fa6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105faa:	48 8b 08             	mov    (%rax),%rcx
ffff800000105fad:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105fb1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105fb5:	48 89 c6             	mov    %rax,%rsi
ffff800000105fb8:	48 b8 f8 e6 ff ff ff 	movabs $0xffffffffffffe6f8,%rax
ffff800000105fbf:	ff ff ff 
ffff800000105fc2:	49 8d 04 00          	lea    (%r8,%rax,1),%rax
ffff800000105fc6:	48 89 c7             	mov    %rax,%rdi
ffff800000105fc9:	4d 89 c7             	mov    %r8,%r15
ffff800000105fcc:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105fd1:	49 b9 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%r9
ffff800000105fd8:	ff ff ff 
ffff800000105fdb:	4d 01 c1             	add    %r8,%r9
ffff800000105fde:	41 ff d1             	call   *%r9
ffff800000105fe1:	90                   	nop
ffff800000105fe2:	eb fd                	jmp    ffff800000105fe1 <do_debug+0x7b>

ffff800000105fe4 <do_nmi>:
ffff800000105fe4:	f3 0f 1e fa          	endbr64
ffff800000105fe8:	55                   	push   %rbp
ffff800000105fe9:	48 89 e5             	mov    %rsp,%rbp
ffff800000105fec:	41 57                	push   %r15
ffff800000105fee:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105ff2:	4c 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%r8        # ffff800000105ff2 <do_nmi+0xe>
ffff800000105ff9:	49 bb 5e 48 00 00 00 	movabs $0x485e,%r11
ffff800000106000:	00 00 00 
ffff800000106003:	4d 01 d8             	add    %r11,%r8
ffff800000106006:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010600a:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010600e:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106015:	00 
ffff800000106016:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010601a:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106020:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106024:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106028:	48 8b 08             	mov    (%rax),%rcx
ffff80000010602b:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010602f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106033:	48 89 c6             	mov    %rax,%rsi
ffff800000106036:	48 b8 28 e7 ff ff ff 	movabs $0xffffffffffffe728,%rax
ffff80000010603d:	ff ff ff 
ffff800000106040:	49 8d 04 00          	lea    (%r8,%rax,1),%rax
ffff800000106044:	48 89 c7             	mov    %rax,%rdi
ffff800000106047:	4d 89 c7             	mov    %r8,%r15
ffff80000010604a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010604f:	49 b9 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%r9
ffff800000106056:	ff ff ff 
ffff800000106059:	4d 01 c1             	add    %r8,%r9
ffff80000010605c:	41 ff d1             	call   *%r9
ffff80000010605f:	90                   	nop
ffff800000106060:	eb fd                	jmp    ffff80000010605f <do_nmi+0x7b>

ffff800000106062 <do_int3>:
ffff800000106062:	f3 0f 1e fa          	endbr64
ffff800000106066:	55                   	push   %rbp
ffff800000106067:	48 89 e5             	mov    %rsp,%rbp
ffff80000010606a:	41 57                	push   %r15
ffff80000010606c:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106070:	4c 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%r8        # ffff800000106070 <do_int3+0xe>
ffff800000106077:	49 bb e0 47 00 00 00 	movabs $0x47e0,%r11
ffff80000010607e:	00 00 00 
ffff800000106081:	4d 01 d8             	add    %r11,%r8
ffff800000106084:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106088:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010608c:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106093:	00 
ffff800000106094:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106098:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010609e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001060a2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001060a6:	48 8b 08             	mov    (%rax),%rcx
ffff8000001060a9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001060ad:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001060b1:	48 89 c6             	mov    %rax,%rsi
ffff8000001060b4:	48 b8 58 e7 ff ff ff 	movabs $0xffffffffffffe758,%rax
ffff8000001060bb:	ff ff ff 
ffff8000001060be:	49 8d 04 00          	lea    (%r8,%rax,1),%rax
ffff8000001060c2:	48 89 c7             	mov    %rax,%rdi
ffff8000001060c5:	4d 89 c7             	mov    %r8,%r15
ffff8000001060c8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001060cd:	49 b9 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%r9
ffff8000001060d4:	ff ff ff 
ffff8000001060d7:	4d 01 c1             	add    %r8,%r9
ffff8000001060da:	41 ff d1             	call   *%r9
ffff8000001060dd:	90                   	nop
ffff8000001060de:	eb fd                	jmp    ffff8000001060dd <do_int3+0x7b>

ffff8000001060e0 <do_overflow>:
ffff8000001060e0:	f3 0f 1e fa          	endbr64
ffff8000001060e4:	55                   	push   %rbp
ffff8000001060e5:	48 89 e5             	mov    %rsp,%rbp
ffff8000001060e8:	41 57                	push   %r15
ffff8000001060ea:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001060ee:	4c 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%r8        # ffff8000001060ee <do_overflow+0xe>
ffff8000001060f5:	49 bb 62 47 00 00 00 	movabs $0x4762,%r11
ffff8000001060fc:	00 00 00 
ffff8000001060ff:	4d 01 d8             	add    %r11,%r8
ffff800000106102:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106106:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010610a:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106111:	00 
ffff800000106112:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106116:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010611c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106120:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106124:	48 8b 08             	mov    (%rax),%rcx
ffff800000106127:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010612b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010612f:	48 89 c6             	mov    %rax,%rsi
ffff800000106132:	48 b8 88 e7 ff ff ff 	movabs $0xffffffffffffe788,%rax
ffff800000106139:	ff ff ff 
ffff80000010613c:	49 8d 04 00          	lea    (%r8,%rax,1),%rax
ffff800000106140:	48 89 c7             	mov    %rax,%rdi
ffff800000106143:	4d 89 c7             	mov    %r8,%r15
ffff800000106146:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010614b:	49 b9 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%r9
ffff800000106152:	ff ff ff 
ffff800000106155:	4d 01 c1             	add    %r8,%r9
ffff800000106158:	41 ff d1             	call   *%r9
ffff80000010615b:	90                   	nop
ffff80000010615c:	eb fd                	jmp    ffff80000010615b <do_overflow+0x7b>

ffff80000010615e <do_bounds>:
ffff80000010615e:	f3 0f 1e fa          	endbr64
ffff800000106162:	55                   	push   %rbp
ffff800000106163:	48 89 e5             	mov    %rsp,%rbp
ffff800000106166:	41 57                	push   %r15
ffff800000106168:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010616c:	4c 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%r8        # ffff80000010616c <do_bounds+0xe>
ffff800000106173:	49 bb e4 46 00 00 00 	movabs $0x46e4,%r11
ffff80000010617a:	00 00 00 
ffff80000010617d:	4d 01 d8             	add    %r11,%r8
ffff800000106180:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106184:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106188:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010618f:	00 
ffff800000106190:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106194:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010619a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010619e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001061a2:	48 8b 08             	mov    (%rax),%rcx
ffff8000001061a5:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001061a9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001061ad:	48 89 c6             	mov    %rax,%rsi
ffff8000001061b0:	48 b8 b8 e7 ff ff ff 	movabs $0xffffffffffffe7b8,%rax
ffff8000001061b7:	ff ff ff 
ffff8000001061ba:	49 8d 04 00          	lea    (%r8,%rax,1),%rax
ffff8000001061be:	48 89 c7             	mov    %rax,%rdi
ffff8000001061c1:	4d 89 c7             	mov    %r8,%r15
ffff8000001061c4:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001061c9:	49 b9 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%r9
ffff8000001061d0:	ff ff ff 
ffff8000001061d3:	4d 01 c1             	add    %r8,%r9
ffff8000001061d6:	41 ff d1             	call   *%r9
ffff8000001061d9:	90                   	nop
ffff8000001061da:	eb fd                	jmp    ffff8000001061d9 <do_bounds+0x7b>

ffff8000001061dc <do_undefined_opcode>:
ffff8000001061dc:	f3 0f 1e fa          	endbr64
ffff8000001061e0:	55                   	push   %rbp
ffff8000001061e1:	48 89 e5             	mov    %rsp,%rbp
ffff8000001061e4:	41 57                	push   %r15
ffff8000001061e6:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001061ea:	4c 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%r8        # ffff8000001061ea <do_undefined_opcode+0xe>
ffff8000001061f1:	49 bb 66 46 00 00 00 	movabs $0x4666,%r11
ffff8000001061f8:	00 00 00 
ffff8000001061fb:	4d 01 d8             	add    %r11,%r8
ffff8000001061fe:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106202:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106206:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010620d:	00 
ffff80000010620e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106212:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106218:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010621c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106220:	48 8b 08             	mov    (%rax),%rcx
ffff800000106223:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106227:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010622b:	48 89 c6             	mov    %rax,%rsi
ffff80000010622e:	48 b8 e8 e7 ff ff ff 	movabs $0xffffffffffffe7e8,%rax
ffff800000106235:	ff ff ff 
ffff800000106238:	49 8d 04 00          	lea    (%r8,%rax,1),%rax
ffff80000010623c:	48 89 c7             	mov    %rax,%rdi
ffff80000010623f:	4d 89 c7             	mov    %r8,%r15
ffff800000106242:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106247:	49 b9 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%r9
ffff80000010624e:	ff ff ff 
ffff800000106251:	4d 01 c1             	add    %r8,%r9
ffff800000106254:	41 ff d1             	call   *%r9
ffff800000106257:	90                   	nop
ffff800000106258:	eb fd                	jmp    ffff800000106257 <do_undefined_opcode+0x7b>

ffff80000010625a <do_dev_not_available>:
ffff80000010625a:	f3 0f 1e fa          	endbr64
ffff80000010625e:	55                   	push   %rbp
ffff80000010625f:	48 89 e5             	mov    %rsp,%rbp
ffff800000106262:	41 57                	push   %r15
ffff800000106264:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106268:	4c 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%r8        # ffff800000106268 <do_dev_not_available+0xe>
ffff80000010626f:	49 bb e8 45 00 00 00 	movabs $0x45e8,%r11
ffff800000106276:	00 00 00 
ffff800000106279:	4d 01 d8             	add    %r11,%r8
ffff80000010627c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106280:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106284:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010628b:	00 
ffff80000010628c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106290:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106296:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010629a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010629e:	48 8b 08             	mov    (%rax),%rcx
ffff8000001062a1:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001062a5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001062a9:	48 89 c6             	mov    %rax,%rsi
ffff8000001062ac:	48 b8 20 e8 ff ff ff 	movabs $0xffffffffffffe820,%rax
ffff8000001062b3:	ff ff ff 
ffff8000001062b6:	49 8d 04 00          	lea    (%r8,%rax,1),%rax
ffff8000001062ba:	48 89 c7             	mov    %rax,%rdi
ffff8000001062bd:	4d 89 c7             	mov    %r8,%r15
ffff8000001062c0:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001062c5:	49 b9 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%r9
ffff8000001062cc:	ff ff ff 
ffff8000001062cf:	4d 01 c1             	add    %r8,%r9
ffff8000001062d2:	41 ff d1             	call   *%r9
ffff8000001062d5:	90                   	nop
ffff8000001062d6:	eb fd                	jmp    ffff8000001062d5 <do_dev_not_available+0x7b>

ffff8000001062d8 <do_double_fault>:
ffff8000001062d8:	f3 0f 1e fa          	endbr64
ffff8000001062dc:	55                   	push   %rbp
ffff8000001062dd:	48 89 e5             	mov    %rsp,%rbp
ffff8000001062e0:	41 57                	push   %r15
ffff8000001062e2:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001062e6:	4c 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%r8        # ffff8000001062e6 <do_double_fault+0xe>
ffff8000001062ed:	49 bb 6a 45 00 00 00 	movabs $0x456a,%r11
ffff8000001062f4:	00 00 00 
ffff8000001062f7:	4d 01 d8             	add    %r11,%r8
ffff8000001062fa:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001062fe:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106302:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106309:	00 
ffff80000010630a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010630e:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106314:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106318:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010631c:	48 8b 08             	mov    (%rax),%rcx
ffff80000010631f:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106323:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106327:	48 89 c6             	mov    %rax,%rsi
ffff80000010632a:	48 b8 58 e8 ff ff ff 	movabs $0xffffffffffffe858,%rax
ffff800000106331:	ff ff ff 
ffff800000106334:	49 8d 04 00          	lea    (%r8,%rax,1),%rax
ffff800000106338:	48 89 c7             	mov    %rax,%rdi
ffff80000010633b:	4d 89 c7             	mov    %r8,%r15
ffff80000010633e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106343:	49 b9 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%r9
ffff80000010634a:	ff ff ff 
ffff80000010634d:	4d 01 c1             	add    %r8,%r9
ffff800000106350:	41 ff d1             	call   *%r9
ffff800000106353:	90                   	nop
ffff800000106354:	eb fd                	jmp    ffff800000106353 <do_double_fault+0x7b>

ffff800000106356 <do_coprocessor_segment_overrun>:
ffff800000106356:	f3 0f 1e fa          	endbr64
ffff80000010635a:	55                   	push   %rbp
ffff80000010635b:	48 89 e5             	mov    %rsp,%rbp
ffff80000010635e:	41 57                	push   %r15
ffff800000106360:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106364:	4c 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%r8        # ffff800000106364 <do_coprocessor_segment_overrun+0xe>
ffff80000010636b:	49 bb ec 44 00 00 00 	movabs $0x44ec,%r11
ffff800000106372:	00 00 00 
ffff800000106375:	4d 01 d8             	add    %r11,%r8
ffff800000106378:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010637c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106380:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106387:	00 
ffff800000106388:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010638c:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106392:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106396:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010639a:	48 8b 08             	mov    (%rax),%rcx
ffff80000010639d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001063a1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001063a5:	48 89 c6             	mov    %rax,%rsi
ffff8000001063a8:	48 b8 90 e8 ff ff ff 	movabs $0xffffffffffffe890,%rax
ffff8000001063af:	ff ff ff 
ffff8000001063b2:	49 8d 04 00          	lea    (%r8,%rax,1),%rax
ffff8000001063b6:	48 89 c7             	mov    %rax,%rdi
ffff8000001063b9:	4d 89 c7             	mov    %r8,%r15
ffff8000001063bc:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001063c1:	49 b9 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%r9
ffff8000001063c8:	ff ff ff 
ffff8000001063cb:	4d 01 c1             	add    %r8,%r9
ffff8000001063ce:	41 ff d1             	call   *%r9
ffff8000001063d1:	90                   	nop
ffff8000001063d2:	eb fd                	jmp    ffff8000001063d1 <do_coprocessor_segment_overrun+0x7b>

ffff8000001063d4 <do_invalid_TSS>:
ffff8000001063d4:	f3 0f 1e fa          	endbr64
ffff8000001063d8:	55                   	push   %rbp
ffff8000001063d9:	48 89 e5             	mov    %rsp,%rbp
ffff8000001063dc:	41 57                	push   %r15
ffff8000001063de:	53                   	push   %rbx
ffff8000001063df:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001063e3:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001063e3 <do_invalid_TSS+0xf>
ffff8000001063ea:	49 bb 6d 44 00 00 00 	movabs $0x446d,%r11
ffff8000001063f1:	00 00 00 
ffff8000001063f4:	4c 01 db             	add    %r11,%rbx
ffff8000001063f7:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001063fb:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001063ff:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106406:	00 
ffff800000106407:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010640b:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106411:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106415:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106419:	48 8b 08             	mov    (%rax),%rcx
ffff80000010641c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106420:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106424:	48 89 c6             	mov    %rax,%rsi
ffff800000106427:	48 b8 d8 e8 ff ff ff 	movabs $0xffffffffffffe8d8,%rax
ffff80000010642e:	ff ff ff 
ffff800000106431:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106435:	48 89 c7             	mov    %rax,%rdi
ffff800000106438:	49 89 df             	mov    %rbx,%r15
ffff80000010643b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106440:	49 b8 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%r8
ffff800000106447:	ff ff ff 
ffff80000010644a:	49 01 d8             	add    %rbx,%r8
ffff80000010644d:	41 ff d0             	call   *%r8
ffff800000106450:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106454:	83 e0 01             	and    $0x1,%eax
ffff800000106457:	48 85 c0             	test   %rax,%rax
ffff80000010645a:	74 28                	je     ffff800000106484 <do_invalid_TSS+0xb0>
ffff80000010645c:	48 b8 10 e9 ff ff ff 	movabs $0xffffffffffffe910,%rax
ffff800000106463:	ff ff ff 
ffff800000106466:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010646a:	48 89 c7             	mov    %rax,%rdi
ffff80000010646d:	49 89 df             	mov    %rbx,%r15
ffff800000106470:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106475:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff80000010647c:	ff ff ff 
ffff80000010647f:	48 01 da             	add    %rbx,%rdx
ffff800000106482:	ff d2                	call   *%rdx
ffff800000106484:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106488:	83 e0 02             	and    $0x2,%eax
ffff80000010648b:	48 85 c0             	test   %rax,%rax
ffff80000010648e:	74 2a                	je     ffff8000001064ba <do_invalid_TSS+0xe6>
ffff800000106490:	48 b8 90 e9 ff ff ff 	movabs $0xffffffffffffe990,%rax
ffff800000106497:	ff ff ff 
ffff80000010649a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010649e:	48 89 c7             	mov    %rax,%rdi
ffff8000001064a1:	49 89 df             	mov    %rbx,%r15
ffff8000001064a4:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001064a9:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff8000001064b0:	ff ff ff 
ffff8000001064b3:	48 01 da             	add    %rbx,%rdx
ffff8000001064b6:	ff d2                	call   *%rdx
ffff8000001064b8:	eb 28                	jmp    ffff8000001064e2 <do_invalid_TSS+0x10e>
ffff8000001064ba:	48 b8 c0 e9 ff ff ff 	movabs $0xffffffffffffe9c0,%rax
ffff8000001064c1:	ff ff ff 
ffff8000001064c4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001064c8:	48 89 c7             	mov    %rax,%rdi
ffff8000001064cb:	49 89 df             	mov    %rbx,%r15
ffff8000001064ce:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001064d3:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff8000001064da:	ff ff ff 
ffff8000001064dd:	48 01 da             	add    %rbx,%rdx
ffff8000001064e0:	ff d2                	call   *%rdx
ffff8000001064e2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001064e6:	83 e0 02             	and    $0x2,%eax
ffff8000001064e9:	48 85 c0             	test   %rax,%rax
ffff8000001064ec:	75 5e                	jne    ffff80000010654c <do_invalid_TSS+0x178>
ffff8000001064ee:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001064f2:	83 e0 04             	and    $0x4,%eax
ffff8000001064f5:	48 85 c0             	test   %rax,%rax
ffff8000001064f8:	74 2a                	je     ffff800000106524 <do_invalid_TSS+0x150>
ffff8000001064fa:	48 b8 f8 e9 ff ff ff 	movabs $0xffffffffffffe9f8,%rax
ffff800000106501:	ff ff ff 
ffff800000106504:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106508:	48 89 c7             	mov    %rax,%rdi
ffff80000010650b:	49 89 df             	mov    %rbx,%r15
ffff80000010650e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106513:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff80000010651a:	ff ff ff 
ffff80000010651d:	48 01 da             	add    %rbx,%rdx
ffff800000106520:	ff d2                	call   *%rdx
ffff800000106522:	eb 28                	jmp    ffff80000010654c <do_invalid_TSS+0x178>
ffff800000106524:	48 b8 30 ea ff ff ff 	movabs $0xffffffffffffea30,%rax
ffff80000010652b:	ff ff ff 
ffff80000010652e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106532:	48 89 c7             	mov    %rax,%rdi
ffff800000106535:	49 89 df             	mov    %rbx,%r15
ffff800000106538:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010653d:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff800000106544:	ff ff ff 
ffff800000106547:	48 01 da             	add    %rbx,%rdx
ffff80000010654a:	ff d2                	call   *%rdx
ffff80000010654c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106550:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106555:	48 89 c6             	mov    %rax,%rsi
ffff800000106558:	48 b8 60 ea ff ff ff 	movabs $0xffffffffffffea60,%rax
ffff80000010655f:	ff ff ff 
ffff800000106562:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106566:	48 89 c7             	mov    %rax,%rdi
ffff800000106569:	49 89 df             	mov    %rbx,%r15
ffff80000010656c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106571:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff800000106578:	ff ff ff 
ffff80000010657b:	48 01 da             	add    %rbx,%rdx
ffff80000010657e:	ff d2                	call   *%rdx
ffff800000106580:	90                   	nop
ffff800000106581:	eb fd                	jmp    ffff800000106580 <do_invalid_TSS+0x1ac>

ffff800000106583 <do_segment_not_present>:
ffff800000106583:	f3 0f 1e fa          	endbr64
ffff800000106587:	55                   	push   %rbp
ffff800000106588:	48 89 e5             	mov    %rsp,%rbp
ffff80000010658b:	41 57                	push   %r15
ffff80000010658d:	53                   	push   %rbx
ffff80000010658e:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106592:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106592 <do_segment_not_present+0xf>
ffff800000106599:	49 bb be 42 00 00 00 	movabs $0x42be,%r11
ffff8000001065a0:	00 00 00 
ffff8000001065a3:	4c 01 db             	add    %r11,%rbx
ffff8000001065a6:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001065aa:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001065ae:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001065b5:	00 
ffff8000001065b6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001065ba:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001065c0:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001065c4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001065c8:	48 8b 08             	mov    (%rax),%rcx
ffff8000001065cb:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001065cf:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001065d3:	48 89 c6             	mov    %rax,%rsi
ffff8000001065d6:	48 b8 80 ea ff ff ff 	movabs $0xffffffffffffea80,%rax
ffff8000001065dd:	ff ff ff 
ffff8000001065e0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001065e4:	48 89 c7             	mov    %rax,%rdi
ffff8000001065e7:	49 89 df             	mov    %rbx,%r15
ffff8000001065ea:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001065ef:	49 b8 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%r8
ffff8000001065f6:	ff ff ff 
ffff8000001065f9:	49 01 d8             	add    %rbx,%r8
ffff8000001065fc:	41 ff d0             	call   *%r8
ffff8000001065ff:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106603:	83 e0 01             	and    $0x1,%eax
ffff800000106606:	48 85 c0             	test   %rax,%rax
ffff800000106609:	74 28                	je     ffff800000106633 <do_segment_not_present+0xb0>
ffff80000010660b:	48 b8 10 e9 ff ff ff 	movabs $0xffffffffffffe910,%rax
ffff800000106612:	ff ff ff 
ffff800000106615:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106619:	48 89 c7             	mov    %rax,%rdi
ffff80000010661c:	49 89 df             	mov    %rbx,%r15
ffff80000010661f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106624:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff80000010662b:	ff ff ff 
ffff80000010662e:	48 01 da             	add    %rbx,%rdx
ffff800000106631:	ff d2                	call   *%rdx
ffff800000106633:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106637:	83 e0 02             	and    $0x2,%eax
ffff80000010663a:	48 85 c0             	test   %rax,%rax
ffff80000010663d:	74 2a                	je     ffff800000106669 <do_segment_not_present+0xe6>
ffff80000010663f:	48 b8 90 e9 ff ff ff 	movabs $0xffffffffffffe990,%rax
ffff800000106646:	ff ff ff 
ffff800000106649:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010664d:	48 89 c7             	mov    %rax,%rdi
ffff800000106650:	49 89 df             	mov    %rbx,%r15
ffff800000106653:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106658:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff80000010665f:	ff ff ff 
ffff800000106662:	48 01 da             	add    %rbx,%rdx
ffff800000106665:	ff d2                	call   *%rdx
ffff800000106667:	eb 28                	jmp    ffff800000106691 <do_segment_not_present+0x10e>
ffff800000106669:	48 b8 c0 e9 ff ff ff 	movabs $0xffffffffffffe9c0,%rax
ffff800000106670:	ff ff ff 
ffff800000106673:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106677:	48 89 c7             	mov    %rax,%rdi
ffff80000010667a:	49 89 df             	mov    %rbx,%r15
ffff80000010667d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106682:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff800000106689:	ff ff ff 
ffff80000010668c:	48 01 da             	add    %rbx,%rdx
ffff80000010668f:	ff d2                	call   *%rdx
ffff800000106691:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106695:	83 e0 02             	and    $0x2,%eax
ffff800000106698:	48 85 c0             	test   %rax,%rax
ffff80000010669b:	75 5e                	jne    ffff8000001066fb <do_segment_not_present+0x178>
ffff80000010669d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001066a1:	83 e0 04             	and    $0x4,%eax
ffff8000001066a4:	48 85 c0             	test   %rax,%rax
ffff8000001066a7:	74 2a                	je     ffff8000001066d3 <do_segment_not_present+0x150>
ffff8000001066a9:	48 b8 f8 e9 ff ff ff 	movabs $0xffffffffffffe9f8,%rax
ffff8000001066b0:	ff ff ff 
ffff8000001066b3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001066b7:	48 89 c7             	mov    %rax,%rdi
ffff8000001066ba:	49 89 df             	mov    %rbx,%r15
ffff8000001066bd:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001066c2:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff8000001066c9:	ff ff ff 
ffff8000001066cc:	48 01 da             	add    %rbx,%rdx
ffff8000001066cf:	ff d2                	call   *%rdx
ffff8000001066d1:	eb 28                	jmp    ffff8000001066fb <do_segment_not_present+0x178>
ffff8000001066d3:	48 b8 30 ea ff ff ff 	movabs $0xffffffffffffea30,%rax
ffff8000001066da:	ff ff ff 
ffff8000001066dd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001066e1:	48 89 c7             	mov    %rax,%rdi
ffff8000001066e4:	49 89 df             	mov    %rbx,%r15
ffff8000001066e7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001066ec:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff8000001066f3:	ff ff ff 
ffff8000001066f6:	48 01 da             	add    %rbx,%rdx
ffff8000001066f9:	ff d2                	call   *%rdx
ffff8000001066fb:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001066ff:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106704:	48 89 c6             	mov    %rax,%rsi
ffff800000106707:	48 b8 60 ea ff ff ff 	movabs $0xffffffffffffea60,%rax
ffff80000010670e:	ff ff ff 
ffff800000106711:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106715:	48 89 c7             	mov    %rax,%rdi
ffff800000106718:	49 89 df             	mov    %rbx,%r15
ffff80000010671b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106720:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff800000106727:	ff ff ff 
ffff80000010672a:	48 01 da             	add    %rbx,%rdx
ffff80000010672d:	ff d2                	call   *%rdx
ffff80000010672f:	90                   	nop
ffff800000106730:	eb fd                	jmp    ffff80000010672f <do_segment_not_present+0x1ac>

ffff800000106732 <do_stack_segment_fault>:
ffff800000106732:	f3 0f 1e fa          	endbr64
ffff800000106736:	55                   	push   %rbp
ffff800000106737:	48 89 e5             	mov    %rsp,%rbp
ffff80000010673a:	41 57                	push   %r15
ffff80000010673c:	53                   	push   %rbx
ffff80000010673d:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106741:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106741 <do_stack_segment_fault+0xf>
ffff800000106748:	49 bb 0f 41 00 00 00 	movabs $0x410f,%r11
ffff80000010674f:	00 00 00 
ffff800000106752:	4c 01 db             	add    %r11,%rbx
ffff800000106755:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106759:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010675d:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106764:	00 
ffff800000106765:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106769:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010676f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106773:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106777:	48 8b 08             	mov    (%rax),%rcx
ffff80000010677a:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010677e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106782:	48 89 c6             	mov    %rax,%rsi
ffff800000106785:	48 b8 c0 ea ff ff ff 	movabs $0xffffffffffffeac0,%rax
ffff80000010678c:	ff ff ff 
ffff80000010678f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106793:	48 89 c7             	mov    %rax,%rdi
ffff800000106796:	49 89 df             	mov    %rbx,%r15
ffff800000106799:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010679e:	49 b8 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%r8
ffff8000001067a5:	ff ff ff 
ffff8000001067a8:	49 01 d8             	add    %rbx,%r8
ffff8000001067ab:	41 ff d0             	call   *%r8
ffff8000001067ae:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001067b2:	83 e0 01             	and    $0x1,%eax
ffff8000001067b5:	48 85 c0             	test   %rax,%rax
ffff8000001067b8:	74 28                	je     ffff8000001067e2 <do_stack_segment_fault+0xb0>
ffff8000001067ba:	48 b8 10 e9 ff ff ff 	movabs $0xffffffffffffe910,%rax
ffff8000001067c1:	ff ff ff 
ffff8000001067c4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001067c8:	48 89 c7             	mov    %rax,%rdi
ffff8000001067cb:	49 89 df             	mov    %rbx,%r15
ffff8000001067ce:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001067d3:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff8000001067da:	ff ff ff 
ffff8000001067dd:	48 01 da             	add    %rbx,%rdx
ffff8000001067e0:	ff d2                	call   *%rdx
ffff8000001067e2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001067e6:	83 e0 02             	and    $0x2,%eax
ffff8000001067e9:	48 85 c0             	test   %rax,%rax
ffff8000001067ec:	74 2a                	je     ffff800000106818 <do_stack_segment_fault+0xe6>
ffff8000001067ee:	48 b8 90 e9 ff ff ff 	movabs $0xffffffffffffe990,%rax
ffff8000001067f5:	ff ff ff 
ffff8000001067f8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001067fc:	48 89 c7             	mov    %rax,%rdi
ffff8000001067ff:	49 89 df             	mov    %rbx,%r15
ffff800000106802:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106807:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff80000010680e:	ff ff ff 
ffff800000106811:	48 01 da             	add    %rbx,%rdx
ffff800000106814:	ff d2                	call   *%rdx
ffff800000106816:	eb 28                	jmp    ffff800000106840 <do_stack_segment_fault+0x10e>
ffff800000106818:	48 b8 c0 e9 ff ff ff 	movabs $0xffffffffffffe9c0,%rax
ffff80000010681f:	ff ff ff 
ffff800000106822:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106826:	48 89 c7             	mov    %rax,%rdi
ffff800000106829:	49 89 df             	mov    %rbx,%r15
ffff80000010682c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106831:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff800000106838:	ff ff ff 
ffff80000010683b:	48 01 da             	add    %rbx,%rdx
ffff80000010683e:	ff d2                	call   *%rdx
ffff800000106840:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106844:	83 e0 02             	and    $0x2,%eax
ffff800000106847:	48 85 c0             	test   %rax,%rax
ffff80000010684a:	75 5e                	jne    ffff8000001068aa <do_stack_segment_fault+0x178>
ffff80000010684c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106850:	83 e0 04             	and    $0x4,%eax
ffff800000106853:	48 85 c0             	test   %rax,%rax
ffff800000106856:	74 2a                	je     ffff800000106882 <do_stack_segment_fault+0x150>
ffff800000106858:	48 b8 f8 e9 ff ff ff 	movabs $0xffffffffffffe9f8,%rax
ffff80000010685f:	ff ff ff 
ffff800000106862:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106866:	48 89 c7             	mov    %rax,%rdi
ffff800000106869:	49 89 df             	mov    %rbx,%r15
ffff80000010686c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106871:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff800000106878:	ff ff ff 
ffff80000010687b:	48 01 da             	add    %rbx,%rdx
ffff80000010687e:	ff d2                	call   *%rdx
ffff800000106880:	eb 28                	jmp    ffff8000001068aa <do_stack_segment_fault+0x178>
ffff800000106882:	48 b8 30 ea ff ff ff 	movabs $0xffffffffffffea30,%rax
ffff800000106889:	ff ff ff 
ffff80000010688c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106890:	48 89 c7             	mov    %rax,%rdi
ffff800000106893:	49 89 df             	mov    %rbx,%r15
ffff800000106896:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010689b:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff8000001068a2:	ff ff ff 
ffff8000001068a5:	48 01 da             	add    %rbx,%rdx
ffff8000001068a8:	ff d2                	call   *%rdx
ffff8000001068aa:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001068ae:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff8000001068b3:	48 89 c6             	mov    %rax,%rsi
ffff8000001068b6:	48 b8 60 ea ff ff ff 	movabs $0xffffffffffffea60,%rax
ffff8000001068bd:	ff ff ff 
ffff8000001068c0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001068c4:	48 89 c7             	mov    %rax,%rdi
ffff8000001068c7:	49 89 df             	mov    %rbx,%r15
ffff8000001068ca:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001068cf:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff8000001068d6:	ff ff ff 
ffff8000001068d9:	48 01 da             	add    %rbx,%rdx
ffff8000001068dc:	ff d2                	call   *%rdx
ffff8000001068de:	90                   	nop
ffff8000001068df:	eb fd                	jmp    ffff8000001068de <do_stack_segment_fault+0x1ac>

ffff8000001068e1 <do_general_protection>:
ffff8000001068e1:	f3 0f 1e fa          	endbr64
ffff8000001068e5:	55                   	push   %rbp
ffff8000001068e6:	48 89 e5             	mov    %rsp,%rbp
ffff8000001068e9:	41 57                	push   %r15
ffff8000001068eb:	53                   	push   %rbx
ffff8000001068ec:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001068f0:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001068f0 <do_general_protection+0xf>
ffff8000001068f7:	49 bb 60 3f 00 00 00 	movabs $0x3f60,%r11
ffff8000001068fe:	00 00 00 
ffff800000106901:	4c 01 db             	add    %r11,%rbx
ffff800000106904:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106908:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010690c:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106913:	00 
ffff800000106914:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106918:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010691e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106922:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106926:	48 8b 08             	mov    (%rax),%rcx
ffff800000106929:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010692d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106931:	48 89 c6             	mov    %rax,%rsi
ffff800000106934:	48 b8 00 eb ff ff ff 	movabs $0xffffffffffffeb00,%rax
ffff80000010693b:	ff ff ff 
ffff80000010693e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106942:	48 89 c7             	mov    %rax,%rdi
ffff800000106945:	49 89 df             	mov    %rbx,%r15
ffff800000106948:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010694d:	49 b8 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%r8
ffff800000106954:	ff ff ff 
ffff800000106957:	49 01 d8             	add    %rbx,%r8
ffff80000010695a:	41 ff d0             	call   *%r8
ffff80000010695d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106961:	83 e0 01             	and    $0x1,%eax
ffff800000106964:	48 85 c0             	test   %rax,%rax
ffff800000106967:	74 28                	je     ffff800000106991 <do_general_protection+0xb0>
ffff800000106969:	48 b8 10 e9 ff ff ff 	movabs $0xffffffffffffe910,%rax
ffff800000106970:	ff ff ff 
ffff800000106973:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106977:	48 89 c7             	mov    %rax,%rdi
ffff80000010697a:	49 89 df             	mov    %rbx,%r15
ffff80000010697d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106982:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff800000106989:	ff ff ff 
ffff80000010698c:	48 01 da             	add    %rbx,%rdx
ffff80000010698f:	ff d2                	call   *%rdx
ffff800000106991:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106995:	83 e0 02             	and    $0x2,%eax
ffff800000106998:	48 85 c0             	test   %rax,%rax
ffff80000010699b:	74 2a                	je     ffff8000001069c7 <do_general_protection+0xe6>
ffff80000010699d:	48 b8 90 e9 ff ff ff 	movabs $0xffffffffffffe990,%rax
ffff8000001069a4:	ff ff ff 
ffff8000001069a7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001069ab:	48 89 c7             	mov    %rax,%rdi
ffff8000001069ae:	49 89 df             	mov    %rbx,%r15
ffff8000001069b1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001069b6:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff8000001069bd:	ff ff ff 
ffff8000001069c0:	48 01 da             	add    %rbx,%rdx
ffff8000001069c3:	ff d2                	call   *%rdx
ffff8000001069c5:	eb 28                	jmp    ffff8000001069ef <do_general_protection+0x10e>
ffff8000001069c7:	48 b8 c0 e9 ff ff ff 	movabs $0xffffffffffffe9c0,%rax
ffff8000001069ce:	ff ff ff 
ffff8000001069d1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001069d5:	48 89 c7             	mov    %rax,%rdi
ffff8000001069d8:	49 89 df             	mov    %rbx,%r15
ffff8000001069db:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001069e0:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff8000001069e7:	ff ff ff 
ffff8000001069ea:	48 01 da             	add    %rbx,%rdx
ffff8000001069ed:	ff d2                	call   *%rdx
ffff8000001069ef:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001069f3:	83 e0 02             	and    $0x2,%eax
ffff8000001069f6:	48 85 c0             	test   %rax,%rax
ffff8000001069f9:	75 5e                	jne    ffff800000106a59 <do_general_protection+0x178>
ffff8000001069fb:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001069ff:	83 e0 04             	and    $0x4,%eax
ffff800000106a02:	48 85 c0             	test   %rax,%rax
ffff800000106a05:	74 2a                	je     ffff800000106a31 <do_general_protection+0x150>
ffff800000106a07:	48 b8 f8 e9 ff ff ff 	movabs $0xffffffffffffe9f8,%rax
ffff800000106a0e:	ff ff ff 
ffff800000106a11:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a15:	48 89 c7             	mov    %rax,%rdi
ffff800000106a18:	49 89 df             	mov    %rbx,%r15
ffff800000106a1b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a20:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff800000106a27:	ff ff ff 
ffff800000106a2a:	48 01 da             	add    %rbx,%rdx
ffff800000106a2d:	ff d2                	call   *%rdx
ffff800000106a2f:	eb 28                	jmp    ffff800000106a59 <do_general_protection+0x178>
ffff800000106a31:	48 b8 30 ea ff ff ff 	movabs $0xffffffffffffea30,%rax
ffff800000106a38:	ff ff ff 
ffff800000106a3b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a3f:	48 89 c7             	mov    %rax,%rdi
ffff800000106a42:	49 89 df             	mov    %rbx,%r15
ffff800000106a45:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a4a:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff800000106a51:	ff ff ff 
ffff800000106a54:	48 01 da             	add    %rbx,%rdx
ffff800000106a57:	ff d2                	call   *%rdx
ffff800000106a59:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106a5d:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106a62:	48 89 c6             	mov    %rax,%rsi
ffff800000106a65:	48 b8 60 ea ff ff ff 	movabs $0xffffffffffffea60,%rax
ffff800000106a6c:	ff ff ff 
ffff800000106a6f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a73:	48 89 c7             	mov    %rax,%rdi
ffff800000106a76:	49 89 df             	mov    %rbx,%r15
ffff800000106a79:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a7e:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff800000106a85:	ff ff ff 
ffff800000106a88:	48 01 da             	add    %rbx,%rdx
ffff800000106a8b:	ff d2                	call   *%rdx
ffff800000106a8d:	90                   	nop
ffff800000106a8e:	eb fd                	jmp    ffff800000106a8d <do_general_protection+0x1ac>

ffff800000106a90 <do_page_fault>:
ffff800000106a90:	f3 0f 1e fa          	endbr64
ffff800000106a94:	55                   	push   %rbp
ffff800000106a95:	48 89 e5             	mov    %rsp,%rbp
ffff800000106a98:	41 57                	push   %r15
ffff800000106a9a:	53                   	push   %rbx
ffff800000106a9b:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106a9f:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106a9f <do_page_fault+0xf>
ffff800000106aa6:	49 bb b1 3d 00 00 00 	movabs $0x3db1,%r11
ffff800000106aad:	00 00 00 
ffff800000106ab0:	4c 01 db             	add    %r11,%rbx
ffff800000106ab3:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106ab7:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106abb:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106ac2:	00 
ffff800000106ac3:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000106aca:	00 
ffff800000106acb:	0f 20 d0             	mov    %cr2,%rax
ffff800000106ace:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000106ad2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106ad6:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106adc:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106ae0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106ae4:	48 8b 08             	mov    (%rax),%rcx
ffff800000106ae7:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106aeb:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106aef:	48 89 c6             	mov    %rax,%rsi
ffff800000106af2:	48 b8 40 eb ff ff ff 	movabs $0xffffffffffffeb40,%rax
ffff800000106af9:	ff ff ff 
ffff800000106afc:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b00:	48 89 c7             	mov    %rax,%rdi
ffff800000106b03:	49 89 df             	mov    %rbx,%r15
ffff800000106b06:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b0b:	49 b8 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%r8
ffff800000106b12:	ff ff ff 
ffff800000106b15:	49 01 d8             	add    %rbx,%r8
ffff800000106b18:	41 ff d0             	call   *%r8
ffff800000106b1b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106b1f:	83 e0 01             	and    $0x1,%eax
ffff800000106b22:	48 85 c0             	test   %rax,%rax
ffff800000106b25:	75 28                	jne    ffff800000106b4f <do_page_fault+0xbf>
ffff800000106b27:	48 b8 72 eb ff ff ff 	movabs $0xffffffffffffeb72,%rax
ffff800000106b2e:	ff ff ff 
ffff800000106b31:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b35:	48 89 c7             	mov    %rax,%rdi
ffff800000106b38:	49 89 df             	mov    %rbx,%r15
ffff800000106b3b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b40:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff800000106b47:	ff ff ff 
ffff800000106b4a:	48 01 da             	add    %rbx,%rdx
ffff800000106b4d:	ff d2                	call   *%rdx
ffff800000106b4f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106b53:	83 e0 02             	and    $0x2,%eax
ffff800000106b56:	48 85 c0             	test   %rax,%rax
ffff800000106b59:	74 2a                	je     ffff800000106b85 <do_page_fault+0xf5>
ffff800000106b5b:	48 b8 85 eb ff ff ff 	movabs $0xffffffffffffeb85,%rax
ffff800000106b62:	ff ff ff 
ffff800000106b65:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b69:	48 89 c7             	mov    %rax,%rdi
ffff800000106b6c:	49 89 df             	mov    %rbx,%r15
ffff800000106b6f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b74:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff800000106b7b:	ff ff ff 
ffff800000106b7e:	48 01 da             	add    %rbx,%rdx
ffff800000106b81:	ff d2                	call   *%rdx
ffff800000106b83:	eb 28                	jmp    ffff800000106bad <do_page_fault+0x11d>
ffff800000106b85:	48 b8 99 eb ff ff ff 	movabs $0xffffffffffffeb99,%rax
ffff800000106b8c:	ff ff ff 
ffff800000106b8f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b93:	48 89 c7             	mov    %rax,%rdi
ffff800000106b96:	49 89 df             	mov    %rbx,%r15
ffff800000106b99:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b9e:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff800000106ba5:	ff ff ff 
ffff800000106ba8:	48 01 da             	add    %rbx,%rdx
ffff800000106bab:	ff d2                	call   *%rdx
ffff800000106bad:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106bb1:	83 e0 04             	and    $0x4,%eax
ffff800000106bb4:	48 85 c0             	test   %rax,%rax
ffff800000106bb7:	74 2a                	je     ffff800000106be3 <do_page_fault+0x153>
ffff800000106bb9:	48 b8 ac eb ff ff ff 	movabs $0xffffffffffffebac,%rax
ffff800000106bc0:	ff ff ff 
ffff800000106bc3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106bc7:	48 89 c7             	mov    %rax,%rdi
ffff800000106bca:	49 89 df             	mov    %rbx,%r15
ffff800000106bcd:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106bd2:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff800000106bd9:	ff ff ff 
ffff800000106bdc:	48 01 da             	add    %rbx,%rdx
ffff800000106bdf:	ff d2                	call   *%rdx
ffff800000106be1:	eb 28                	jmp    ffff800000106c0b <do_page_fault+0x17b>
ffff800000106be3:	48 b8 be eb ff ff ff 	movabs $0xffffffffffffebbe,%rax
ffff800000106bea:	ff ff ff 
ffff800000106bed:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106bf1:	48 89 c7             	mov    %rax,%rdi
ffff800000106bf4:	49 89 df             	mov    %rbx,%r15
ffff800000106bf7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106bfc:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff800000106c03:	ff ff ff 
ffff800000106c06:	48 01 da             	add    %rbx,%rdx
ffff800000106c09:	ff d2                	call   *%rdx
ffff800000106c0b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106c0f:	83 e0 08             	and    $0x8,%eax
ffff800000106c12:	48 85 c0             	test   %rax,%rax
ffff800000106c15:	74 28                	je     ffff800000106c3f <do_page_fault+0x1af>
ffff800000106c17:	48 b8 da eb ff ff ff 	movabs $0xffffffffffffebda,%rax
ffff800000106c1e:	ff ff ff 
ffff800000106c21:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c25:	48 89 c7             	mov    %rax,%rdi
ffff800000106c28:	49 89 df             	mov    %rbx,%r15
ffff800000106c2b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c30:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff800000106c37:	ff ff ff 
ffff800000106c3a:	48 01 da             	add    %rbx,%rdx
ffff800000106c3d:	ff d2                	call   *%rdx
ffff800000106c3f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106c43:	83 e0 10             	and    $0x10,%eax
ffff800000106c46:	48 85 c0             	test   %rax,%rax
ffff800000106c49:	74 28                	je     ffff800000106c73 <do_page_fault+0x1e3>
ffff800000106c4b:	48 b8 f8 eb ff ff ff 	movabs $0xffffffffffffebf8,%rax
ffff800000106c52:	ff ff ff 
ffff800000106c55:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c59:	48 89 c7             	mov    %rax,%rdi
ffff800000106c5c:	49 89 df             	mov    %rbx,%r15
ffff800000106c5f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c64:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff800000106c6b:	ff ff ff 
ffff800000106c6e:	48 01 da             	add    %rbx,%rdx
ffff800000106c71:	ff d2                	call   *%rdx
ffff800000106c73:	48 b8 17 ec ff ff ff 	movabs $0xffffffffffffec17,%rax
ffff800000106c7a:	ff ff ff 
ffff800000106c7d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c81:	48 89 c7             	mov    %rax,%rdi
ffff800000106c84:	49 89 df             	mov    %rbx,%r15
ffff800000106c87:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c8c:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff800000106c93:	ff ff ff 
ffff800000106c96:	48 01 da             	add    %rbx,%rdx
ffff800000106c99:	ff d2                	call   *%rdx
ffff800000106c9b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106c9f:	48 89 c6             	mov    %rax,%rsi
ffff800000106ca2:	48 b8 19 ec ff ff ff 	movabs $0xffffffffffffec19,%rax
ffff800000106ca9:	ff ff ff 
ffff800000106cac:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106cb0:	48 89 c7             	mov    %rax,%rdi
ffff800000106cb3:	49 89 df             	mov    %rbx,%r15
ffff800000106cb6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106cbb:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff800000106cc2:	ff ff ff 
ffff800000106cc5:	48 01 da             	add    %rbx,%rdx
ffff800000106cc8:	ff d2                	call   *%rdx
ffff800000106cca:	90                   	nop
ffff800000106ccb:	eb fd                	jmp    ffff800000106cca <do_page_fault+0x23a>

ffff800000106ccd <do_x87_FPU_error>:
ffff800000106ccd:	f3 0f 1e fa          	endbr64
ffff800000106cd1:	55                   	push   %rbp
ffff800000106cd2:	48 89 e5             	mov    %rsp,%rbp
ffff800000106cd5:	41 57                	push   %r15
ffff800000106cd7:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106cdb:	4c 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%r8        # ffff800000106cdb <do_x87_FPU_error+0xe>
ffff800000106ce2:	49 bb 75 3b 00 00 00 	movabs $0x3b75,%r11
ffff800000106ce9:	00 00 00 
ffff800000106cec:	4d 01 d8             	add    %r11,%r8
ffff800000106cef:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106cf3:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106cf7:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106cfe:	00 
ffff800000106cff:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106d03:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106d09:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106d0d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106d11:	48 8b 08             	mov    (%rax),%rcx
ffff800000106d14:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106d18:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106d1c:	48 89 c6             	mov    %rax,%rsi
ffff800000106d1f:	48 b8 28 ec ff ff ff 	movabs $0xffffffffffffec28,%rax
ffff800000106d26:	ff ff ff 
ffff800000106d29:	49 8d 04 00          	lea    (%r8,%rax,1),%rax
ffff800000106d2d:	48 89 c7             	mov    %rax,%rdi
ffff800000106d30:	4d 89 c7             	mov    %r8,%r15
ffff800000106d33:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106d38:	49 b9 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%r9
ffff800000106d3f:	ff ff ff 
ffff800000106d42:	4d 01 c1             	add    %r8,%r9
ffff800000106d45:	41 ff d1             	call   *%r9
ffff800000106d48:	90                   	nop
ffff800000106d49:	eb fd                	jmp    ffff800000106d48 <do_x87_FPU_error+0x7b>

ffff800000106d4b <do_alignment_check>:
ffff800000106d4b:	f3 0f 1e fa          	endbr64
ffff800000106d4f:	55                   	push   %rbp
ffff800000106d50:	48 89 e5             	mov    %rsp,%rbp
ffff800000106d53:	41 57                	push   %r15
ffff800000106d55:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106d59:	4c 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%r8        # ffff800000106d59 <do_alignment_check+0xe>
ffff800000106d60:	49 bb f7 3a 00 00 00 	movabs $0x3af7,%r11
ffff800000106d67:	00 00 00 
ffff800000106d6a:	4d 01 d8             	add    %r11,%r8
ffff800000106d6d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106d71:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106d75:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106d7c:	00 
ffff800000106d7d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106d81:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106d87:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106d8b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106d8f:	48 8b 08             	mov    (%rax),%rcx
ffff800000106d92:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106d96:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106d9a:	48 89 c6             	mov    %rax,%rsi
ffff800000106d9d:	48 b8 60 ec ff ff ff 	movabs $0xffffffffffffec60,%rax
ffff800000106da4:	ff ff ff 
ffff800000106da7:	49 8d 04 00          	lea    (%r8,%rax,1),%rax
ffff800000106dab:	48 89 c7             	mov    %rax,%rdi
ffff800000106dae:	4d 89 c7             	mov    %r8,%r15
ffff800000106db1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106db6:	49 b9 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%r9
ffff800000106dbd:	ff ff ff 
ffff800000106dc0:	4d 01 c1             	add    %r8,%r9
ffff800000106dc3:	41 ff d1             	call   *%r9
ffff800000106dc6:	90                   	nop
ffff800000106dc7:	eb fd                	jmp    ffff800000106dc6 <do_alignment_check+0x7b>

ffff800000106dc9 <do_machine_check>:
ffff800000106dc9:	f3 0f 1e fa          	endbr64
ffff800000106dcd:	55                   	push   %rbp
ffff800000106dce:	48 89 e5             	mov    %rsp,%rbp
ffff800000106dd1:	41 57                	push   %r15
ffff800000106dd3:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106dd7:	4c 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%r8        # ffff800000106dd7 <do_machine_check+0xe>
ffff800000106dde:	49 bb 79 3a 00 00 00 	movabs $0x3a79,%r11
ffff800000106de5:	00 00 00 
ffff800000106de8:	4d 01 d8             	add    %r11,%r8
ffff800000106deb:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106def:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106df3:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106dfa:	00 
ffff800000106dfb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106dff:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106e05:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106e09:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106e0d:	48 8b 08             	mov    (%rax),%rcx
ffff800000106e10:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106e14:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106e18:	48 89 c6             	mov    %rax,%rsi
ffff800000106e1b:	48 b8 98 ec ff ff ff 	movabs $0xffffffffffffec98,%rax
ffff800000106e22:	ff ff ff 
ffff800000106e25:	49 8d 04 00          	lea    (%r8,%rax,1),%rax
ffff800000106e29:	48 89 c7             	mov    %rax,%rdi
ffff800000106e2c:	4d 89 c7             	mov    %r8,%r15
ffff800000106e2f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106e34:	49 b9 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%r9
ffff800000106e3b:	ff ff ff 
ffff800000106e3e:	4d 01 c1             	add    %r8,%r9
ffff800000106e41:	41 ff d1             	call   *%r9
ffff800000106e44:	90                   	nop
ffff800000106e45:	eb fd                	jmp    ffff800000106e44 <do_machine_check+0x7b>

ffff800000106e47 <do_SIMD_exception>:
ffff800000106e47:	f3 0f 1e fa          	endbr64
ffff800000106e4b:	55                   	push   %rbp
ffff800000106e4c:	48 89 e5             	mov    %rsp,%rbp
ffff800000106e4f:	41 57                	push   %r15
ffff800000106e51:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106e55:	4c 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%r8        # ffff800000106e55 <do_SIMD_exception+0xe>
ffff800000106e5c:	49 bb fb 39 00 00 00 	movabs $0x39fb,%r11
ffff800000106e63:	00 00 00 
ffff800000106e66:	4d 01 d8             	add    %r11,%r8
ffff800000106e69:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106e6d:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106e71:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106e78:	00 
ffff800000106e79:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106e7d:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106e83:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106e87:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106e8b:	48 8b 08             	mov    (%rax),%rcx
ffff800000106e8e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106e92:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106e96:	48 89 c6             	mov    %rax,%rsi
ffff800000106e99:	48 b8 d0 ec ff ff ff 	movabs $0xffffffffffffecd0,%rax
ffff800000106ea0:	ff ff ff 
ffff800000106ea3:	49 8d 04 00          	lea    (%r8,%rax,1),%rax
ffff800000106ea7:	48 89 c7             	mov    %rax,%rdi
ffff800000106eaa:	4d 89 c7             	mov    %r8,%r15
ffff800000106ead:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106eb2:	49 b9 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%r9
ffff800000106eb9:	ff ff ff 
ffff800000106ebc:	4d 01 c1             	add    %r8,%r9
ffff800000106ebf:	41 ff d1             	call   *%r9
ffff800000106ec2:	90                   	nop
ffff800000106ec3:	eb fd                	jmp    ffff800000106ec2 <do_SIMD_exception+0x7b>

ffff800000106ec5 <do_virtualization_exception>:
ffff800000106ec5:	f3 0f 1e fa          	endbr64
ffff800000106ec9:	55                   	push   %rbp
ffff800000106eca:	48 89 e5             	mov    %rsp,%rbp
ffff800000106ecd:	41 57                	push   %r15
ffff800000106ecf:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106ed3:	4c 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%r8        # ffff800000106ed3 <do_virtualization_exception+0xe>
ffff800000106eda:	49 bb 7d 39 00 00 00 	movabs $0x397d,%r11
ffff800000106ee1:	00 00 00 
ffff800000106ee4:	4d 01 d8             	add    %r11,%r8
ffff800000106ee7:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106eeb:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106eef:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106ef6:	00 
ffff800000106ef7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106efb:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106f01:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106f05:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106f09:	48 8b 08             	mov    (%rax),%rcx
ffff800000106f0c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106f10:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106f14:	48 89 c6             	mov    %rax,%rsi
ffff800000106f17:	48 b8 08 ed ff ff ff 	movabs $0xffffffffffffed08,%rax
ffff800000106f1e:	ff ff ff 
ffff800000106f21:	49 8d 04 00          	lea    (%r8,%rax,1),%rax
ffff800000106f25:	48 89 c7             	mov    %rax,%rdi
ffff800000106f28:	4d 89 c7             	mov    %r8,%r15
ffff800000106f2b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106f30:	49 b9 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%r9
ffff800000106f37:	ff ff ff 
ffff800000106f3a:	4d 01 c1             	add    %r8,%r9
ffff800000106f3d:	41 ff d1             	call   *%r9
ffff800000106f40:	90                   	nop
ffff800000106f41:	eb fd                	jmp    ffff800000106f40 <do_virtualization_exception+0x7b>

ffff800000106f43 <io_in8>:
ffff800000106f43:	f3 0f 1e fa          	endbr64
ffff800000106f47:	55                   	push   %rbp
ffff800000106f48:	48 89 e5             	mov    %rsp,%rbp
ffff800000106f4b:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000106f4b <io_in8+0x8>
ffff800000106f52:	49 bb 05 39 00 00 00 	movabs $0x3905,%r11
ffff800000106f59:	00 00 00 
ffff800000106f5c:	4c 01 d8             	add    %r11,%rax
ffff800000106f5f:	89 f8                	mov    %edi,%eax
ffff800000106f61:	66 89 45 ec          	mov    %ax,-0x14(%rbp)
ffff800000106f65:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
ffff800000106f69:	0f b7 45 ec          	movzwl -0x14(%rbp),%eax
ffff800000106f6d:	89 c2                	mov    %eax,%edx
ffff800000106f6f:	ec                   	in     (%dx),%al
ffff800000106f70:	0f ae f0             	mfence
ffff800000106f73:	88 45 ff             	mov    %al,-0x1(%rbp)
ffff800000106f76:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
ffff800000106f7a:	5d                   	pop    %rbp
ffff800000106f7b:	c3                   	ret

ffff800000106f7c <io_out8>:
ffff800000106f7c:	f3 0f 1e fa          	endbr64
ffff800000106f80:	55                   	push   %rbp
ffff800000106f81:	48 89 e5             	mov    %rsp,%rbp
ffff800000106f84:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000106f84 <io_out8+0x8>
ffff800000106f8b:	49 bb cc 38 00 00 00 	movabs $0x38cc,%r11
ffff800000106f92:	00 00 00 
ffff800000106f95:	4c 01 d8             	add    %r11,%rax
ffff800000106f98:	89 fa                	mov    %edi,%edx
ffff800000106f9a:	89 f0                	mov    %esi,%eax
ffff800000106f9c:	66 89 55 fc          	mov    %dx,-0x4(%rbp)
ffff800000106fa0:	88 45 f8             	mov    %al,-0x8(%rbp)
ffff800000106fa3:	0f b6 45 f8          	movzbl -0x8(%rbp),%eax
ffff800000106fa7:	0f b7 55 fc          	movzwl -0x4(%rbp),%edx
ffff800000106fab:	ee                   	out    %al,(%dx)
ffff800000106fac:	0f ae f0             	mfence
ffff800000106faf:	90                   	nop
ffff800000106fb0:	5d                   	pop    %rbp
ffff800000106fb1:	c3                   	ret

ffff800000106fb2 <intrinit>:
ffff800000106fb2:	f3 0f 1e fa          	endbr64
ffff800000106fb6:	55                   	push   %rbp
ffff800000106fb7:	48 89 e5             	mov    %rsp,%rbp
ffff800000106fba:	41 57                	push   %r15
ffff800000106fbc:	53                   	push   %rbx
ffff800000106fbd:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106fbd <intrinit+0xb>
ffff800000106fc4:	49 bb 93 38 00 00 00 	movabs $0x3893,%r11
ffff800000106fcb:	00 00 00 
ffff800000106fce:	4c 01 db             	add    %r11,%rbx
ffff800000106fd1:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000106fd8:	ff ff ff 
ffff800000106fdb:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000106fdf:	48 8d 80 00 02 00 00 	lea    0x200(%rax),%rax
ffff800000106fe6:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000106fed:	ff ff ff 
ffff800000106ff0:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000106ff4:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000106ff9:	48 89 c7             	mov    %rax,%rdi
ffff800000106ffc:	49 89 df             	mov    %rbx,%r15
ffff800000106fff:	48 b8 3d b3 ff ff ff 	movabs $0xffffffffffffb33d,%rax
ffff800000107006:	ff ff ff 
ffff800000107009:	48 01 d8             	add    %rbx,%rax
ffff80000010700c:	ff d0                	call   *%rax
ffff80000010700e:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000107015:	ff ff ff 
ffff800000107018:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010701c:	48 8d 80 10 02 00 00 	lea    0x210(%rax),%rax
ffff800000107023:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff80000010702a:	ff ff ff 
ffff80000010702d:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000107031:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107036:	48 89 c7             	mov    %rax,%rdi
ffff800000107039:	49 89 df             	mov    %rbx,%r15
ffff80000010703c:	48 b8 3d b3 ff ff ff 	movabs $0xffffffffffffb33d,%rax
ffff800000107043:	ff ff ff 
ffff800000107046:	48 01 d8             	add    %rbx,%rax
ffff800000107049:	ff d0                	call   *%rax
ffff80000010704b:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000107052:	ff ff ff 
ffff800000107055:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107059:	48 8d 80 c0 02 00 00 	lea    0x2c0(%rax),%rax
ffff800000107060:	48 ba d0 ff ff ff ff 	movabs $0xffffffffffffffd0,%rdx
ffff800000107067:	ff ff ff 
ffff80000010706a:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff80000010706e:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107073:	48 89 c7             	mov    %rax,%rdi
ffff800000107076:	49 89 df             	mov    %rbx,%r15
ffff800000107079:	48 b8 3d b3 ff ff ff 	movabs $0xffffffffffffb33d,%rax
ffff800000107080:	ff ff ff 
ffff800000107083:	48 01 d8             	add    %rbx,%rax
ffff800000107086:	ff d0                	call   *%rax
ffff800000107088:	be 11 00 00 00       	mov    $0x11,%esi
ffff80000010708d:	bf 20 00 00 00       	mov    $0x20,%edi
ffff800000107092:	48 b8 2c c7 ff ff ff 	movabs $0xffffffffffffc72c,%rax
ffff800000107099:	ff ff ff 
ffff80000010709c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001070a0:	ff d0                	call   *%rax
ffff8000001070a2:	be 20 00 00 00       	mov    $0x20,%esi
ffff8000001070a7:	bf 21 00 00 00       	mov    $0x21,%edi
ffff8000001070ac:	48 b8 2c c7 ff ff ff 	movabs $0xffffffffffffc72c,%rax
ffff8000001070b3:	ff ff ff 
ffff8000001070b6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001070ba:	ff d0                	call   *%rax
ffff8000001070bc:	be 04 00 00 00       	mov    $0x4,%esi
ffff8000001070c1:	bf 21 00 00 00       	mov    $0x21,%edi
ffff8000001070c6:	48 b8 2c c7 ff ff ff 	movabs $0xffffffffffffc72c,%rax
ffff8000001070cd:	ff ff ff 
ffff8000001070d0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001070d4:	ff d0                	call   *%rax
ffff8000001070d6:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001070db:	bf 21 00 00 00       	mov    $0x21,%edi
ffff8000001070e0:	48 b8 2c c7 ff ff ff 	movabs $0xffffffffffffc72c,%rax
ffff8000001070e7:	ff ff ff 
ffff8000001070ea:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001070ee:	ff d0                	call   *%rax
ffff8000001070f0:	be 11 00 00 00       	mov    $0x11,%esi
ffff8000001070f5:	bf a0 00 00 00       	mov    $0xa0,%edi
ffff8000001070fa:	48 b8 2c c7 ff ff ff 	movabs $0xffffffffffffc72c,%rax
ffff800000107101:	ff ff ff 
ffff800000107104:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107108:	ff d0                	call   *%rax
ffff80000010710a:	be 28 00 00 00       	mov    $0x28,%esi
ffff80000010710f:	bf a1 00 00 00       	mov    $0xa1,%edi
ffff800000107114:	48 b8 2c c7 ff ff ff 	movabs $0xffffffffffffc72c,%rax
ffff80000010711b:	ff ff ff 
ffff80000010711e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107122:	ff d0                	call   *%rax
ffff800000107124:	be 02 00 00 00       	mov    $0x2,%esi
ffff800000107129:	bf a1 00 00 00       	mov    $0xa1,%edi
ffff80000010712e:	48 b8 2c c7 ff ff ff 	movabs $0xffffffffffffc72c,%rax
ffff800000107135:	ff ff ff 
ffff800000107138:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010713c:	ff d0                	call   *%rax
ffff80000010713e:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107143:	bf a1 00 00 00       	mov    $0xa1,%edi
ffff800000107148:	48 b8 2c c7 ff ff ff 	movabs $0xffffffffffffc72c,%rax
ffff80000010714f:	ff ff ff 
ffff800000107152:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107156:	ff d0                	call   *%rax
ffff800000107158:	be fd 00 00 00       	mov    $0xfd,%esi
ffff80000010715d:	bf 21 00 00 00       	mov    $0x21,%edi
ffff800000107162:	48 b8 2c c7 ff ff ff 	movabs $0xffffffffffffc72c,%rax
ffff800000107169:	ff ff ff 
ffff80000010716c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107170:	ff d0                	call   *%rax
ffff800000107172:	be ff 00 00 00       	mov    $0xff,%esi
ffff800000107177:	bf a1 00 00 00       	mov    $0xa1,%edi
ffff80000010717c:	48 b8 2c c7 ff ff ff 	movabs $0xffffffffffffc72c,%rax
ffff800000107183:	ff ff ff 
ffff800000107186:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010718a:	ff d0                	call   *%rax
ffff80000010718c:	fb                   	sti
ffff80000010718d:	90                   	nop
ffff80000010718e:	5b                   	pop    %rbx
ffff80000010718f:	41 5f                	pop    %r15
ffff800000107191:	5d                   	pop    %rbp
ffff800000107192:	c3                   	ret

ffff800000107193 <do_irq0x20>:
ffff800000107193:	f3 0f 1e fa          	endbr64
ffff800000107197:	55                   	push   %rbp
ffff800000107198:	48 89 e5             	mov    %rsp,%rbp
ffff80000010719b:	41 57                	push   %r15
ffff80000010719d:	53                   	push   %rbx
ffff80000010719e:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff80000010719e <do_irq0x20+0xb>
ffff8000001071a5:	49 bb b2 36 00 00 00 	movabs $0x36b2,%r11
ffff8000001071ac:	00 00 00 
ffff8000001071af:	4c 01 db             	add    %r11,%rbx
ffff8000001071b2:	48 b8 48 ed ff ff ff 	movabs $0xffffffffffffed48,%rax
ffff8000001071b9:	ff ff ff 
ffff8000001071bc:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001071c0:	48 89 c7             	mov    %rax,%rdi
ffff8000001071c3:	49 89 df             	mov    %rbx,%r15
ffff8000001071c6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001071cb:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff8000001071d2:	ff ff ff 
ffff8000001071d5:	48 01 da             	add    %rbx,%rdx
ffff8000001071d8:	ff d2                	call   *%rdx
ffff8000001071da:	be 20 00 00 00       	mov    $0x20,%esi
ffff8000001071df:	bf 20 00 00 00       	mov    $0x20,%edi
ffff8000001071e4:	48 b8 2c c7 ff ff ff 	movabs $0xffffffffffffc72c,%rax
ffff8000001071eb:	ff ff ff 
ffff8000001071ee:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001071f2:	ff d0                	call   *%rax
ffff8000001071f4:	90                   	nop
ffff8000001071f5:	5b                   	pop    %rbx
ffff8000001071f6:	41 5f                	pop    %r15
ffff8000001071f8:	5d                   	pop    %rbp
ffff8000001071f9:	c3                   	ret

ffff8000001071fa <do_irq0x21>:
ffff8000001071fa:	f3 0f 1e fa          	endbr64
ffff8000001071fe:	55                   	push   %rbp
ffff8000001071ff:	48 89 e5             	mov    %rsp,%rbp
ffff800000107202:	41 57                	push   %r15
ffff800000107204:	53                   	push   %rbx
ffff800000107205:	48 83 ec 10          	sub    $0x10,%rsp
ffff800000107209:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000107209 <do_irq0x21+0xf>
ffff800000107210:	49 bb 47 36 00 00 00 	movabs $0x3647,%r11
ffff800000107217:	00 00 00 
ffff80000010721a:	4c 01 db             	add    %r11,%rbx
ffff80000010721d:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000107224:	bf 60 00 00 00       	mov    $0x60,%edi
ffff800000107229:	48 b8 f3 c6 ff ff ff 	movabs $0xffffffffffffc6f3,%rax
ffff800000107230:	ff ff ff 
ffff800000107233:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107237:	ff d0                	call   *%rax
ffff800000107239:	0f b6 c0             	movzbl %al,%eax
ffff80000010723c:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff80000010723f:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107242:	89 c6                	mov    %eax,%esi
ffff800000107244:	48 b8 59 ed ff ff ff 	movabs $0xffffffffffffed59,%rax
ffff80000010724b:	ff ff ff 
ffff80000010724e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107252:	48 89 c7             	mov    %rax,%rdi
ffff800000107255:	49 89 df             	mov    %rbx,%r15
ffff800000107258:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010725d:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff800000107264:	ff ff ff 
ffff800000107267:	48 01 da             	add    %rbx,%rdx
ffff80000010726a:	ff d2                	call   *%rdx
ffff80000010726c:	be 20 00 00 00       	mov    $0x20,%esi
ffff800000107271:	bf 20 00 00 00       	mov    $0x20,%edi
ffff800000107276:	48 b8 2c c7 ff ff ff 	movabs $0xffffffffffffc72c,%rax
ffff80000010727d:	ff ff ff 
ffff800000107280:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107284:	ff d0                	call   *%rax
ffff800000107286:	90                   	nop
ffff800000107287:	48 83 c4 10          	add    $0x10,%rsp
ffff80000010728b:	5b                   	pop    %rbx
ffff80000010728c:	41 5f                	pop    %r15
ffff80000010728e:	5d                   	pop    %rbp
ffff80000010728f:	c3                   	ret

ffff800000107290 <do_irq0x2c>:
ffff800000107290:	f3 0f 1e fa          	endbr64
ffff800000107294:	55                   	push   %rbp
ffff800000107295:	48 89 e5             	mov    %rsp,%rbp
ffff800000107298:	41 57                	push   %r15
ffff80000010729a:	53                   	push   %rbx
ffff80000010729b:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff80000010729b <do_irq0x2c+0xb>
ffff8000001072a2:	49 bb b5 35 00 00 00 	movabs $0x35b5,%r11
ffff8000001072a9:	00 00 00 
ffff8000001072ac:	4c 01 db             	add    %r11,%rbx
ffff8000001072af:	48 b8 5c ed ff ff ff 	movabs $0xffffffffffffed5c,%rax
ffff8000001072b6:	ff ff ff 
ffff8000001072b9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001072bd:	48 89 c7             	mov    %rax,%rdi
ffff8000001072c0:	49 89 df             	mov    %rbx,%r15
ffff8000001072c3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001072c8:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff8000001072cf:	ff ff ff 
ffff8000001072d2:	48 01 da             	add    %rbx,%rdx
ffff8000001072d5:	ff d2                	call   *%rdx
ffff8000001072d7:	be 20 00 00 00       	mov    $0x20,%esi
ffff8000001072dc:	bf a0 00 00 00       	mov    $0xa0,%edi
ffff8000001072e1:	48 b8 2c c7 ff ff ff 	movabs $0xffffffffffffc72c,%rax
ffff8000001072e8:	ff ff ff 
ffff8000001072eb:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001072ef:	ff d0                	call   *%rax
ffff8000001072f1:	be 20 00 00 00       	mov    $0x20,%esi
ffff8000001072f6:	bf 20 00 00 00       	mov    $0x20,%edi
ffff8000001072fb:	48 b8 2c c7 ff ff ff 	movabs $0xffffffffffffc72c,%rax
ffff800000107302:	ff ff ff 
ffff800000107305:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107309:	ff d0                	call   *%rax
ffff80000010730b:	90                   	nop
ffff80000010730c:	5b                   	pop    %rbx
ffff80000010730d:	41 5f                	pop    %r15
ffff80000010730f:	5d                   	pop    %rbp
ffff800000107310:	c3                   	ret

ffff800000107311 <memoryinit>:
ffff800000107311:	f3 0f 1e fa          	endbr64
ffff800000107315:	55                   	push   %rbp
ffff800000107316:	48 89 e5             	mov    %rsp,%rbp
ffff800000107319:	41 57                	push   %r15
ffff80000010731b:	53                   	push   %rbx
ffff80000010731c:	48 83 ec 40          	sub    $0x40,%rsp
ffff800000107320:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000107320 <memoryinit+0xf>
ffff800000107327:	49 bb 30 35 00 00 00 	movabs $0x3530,%r11
ffff80000010732e:	00 00 00 
ffff800000107331:	4c 01 db             	add    %r11,%rbx
ffff800000107334:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010733b:	00 
ffff80000010733c:	48 b8 00 7e 00 00 00 	movabs $0xffff800000007e00,%rax
ffff800000107343:	80 ff ff 
ffff800000107346:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff80000010734a:	e9 d9 00 00 00       	jmp    ffff800000107428 <memoryinit+0x117>
ffff80000010734f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107353:	8b 40 10             	mov    0x10(%rax),%eax
ffff800000107356:	83 f8 01             	cmp    $0x1,%eax
ffff800000107359:	0f 85 c4 00 00 00    	jne    ffff800000107423 <memoryinit+0x112>
ffff80000010735f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107363:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107367:	48 01 45 e8          	add    %rax,-0x18(%rbp)
ffff80000010736b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010736f:	48 8b 00             	mov    (%rax),%rax
ffff800000107372:	48 ba 00 00 00 00 00 	movabs $0xffff800000000000,%rdx
ffff800000107379:	80 ff ff 
ffff80000010737c:	48 01 d0             	add    %rdx,%rax
ffff80000010737f:	48 89 c2             	mov    %rax,%rdx
ffff800000107382:	48 b8 c0 ff ff ff ff 	movabs $0xffffffffffffffc0,%rax
ffff800000107389:	ff ff ff 
ffff80000010738c:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107390:	48 39 c2             	cmp    %rax,%rdx
ffff800000107393:	48 0f 43 c2          	cmovae %rdx,%rax
ffff800000107397:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff80000010739b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010739f:	48 8b 10             	mov    (%rax),%rdx
ffff8000001073a2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001073a6:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001073aa:	48 01 c2             	add    %rax,%rdx
ffff8000001073ad:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff8000001073b4:	80 ff ff 
ffff8000001073b7:	48 01 d0             	add    %rdx,%rax
ffff8000001073ba:	48 89 c2             	mov    %rax,%rdx
ffff8000001073bd:	48 b8 ff ff 7f 00 00 	movabs $0xffff8000007fffff,%rax
ffff8000001073c4:	80 ff ff 
ffff8000001073c7:	48 39 d0             	cmp    %rdx,%rax
ffff8000001073ca:	72 21                	jb     ffff8000001073ed <memoryinit+0xdc>
ffff8000001073cc:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001073d0:	48 8b 10             	mov    (%rax),%rdx
ffff8000001073d3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001073d7:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001073db:	48 01 c2             	add    %rax,%rdx
ffff8000001073de:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff8000001073e5:	80 ff ff 
ffff8000001073e8:	48 01 d0             	add    %rdx,%rax
ffff8000001073eb:	eb 0a                	jmp    ffff8000001073f7 <memoryinit+0xe6>
ffff8000001073ed:	48 b8 00 00 80 00 00 	movabs $0xffff800000800000,%rax
ffff8000001073f4:	80 ff ff 
ffff8000001073f7:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff8000001073fb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001073ff:	48 3b 45 d0          	cmp    -0x30(%rbp),%rax
ffff800000107403:	73 1e                	jae    ffff800000107423 <memoryinit+0x112>
ffff800000107405:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
ffff800000107409:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010740d:	48 89 d6             	mov    %rdx,%rsi
ffff800000107410:	48 89 c7             	mov    %rax,%rdi
ffff800000107413:	48 b8 82 cc ff ff ff 	movabs $0xffffffffffffcc82,%rax
ffff80000010741a:	ff ff ff 
ffff80000010741d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107421:	ff d0                	call   *%rax
ffff800000107423:	48 83 45 e0 14       	addq   $0x14,-0x20(%rbp)
ffff800000107428:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010742c:	8b 40 10             	mov    0x10(%rax),%eax
ffff80000010742f:	85 c0                	test   %eax,%eax
ffff800000107431:	74 10                	je     ffff800000107443 <memoryinit+0x132>
ffff800000107433:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107437:	8b 40 10             	mov    0x10(%rax),%eax
ffff80000010743a:	83 f8 04             	cmp    $0x4,%eax
ffff80000010743d:	0f 86 0c ff ff ff    	jbe    ffff80000010734f <memoryinit+0x3e>
ffff800000107443:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107447:	48 c1 e8 14          	shr    $0x14,%rax
ffff80000010744b:	48 89 c6             	mov    %rax,%rsi
ffff80000010744e:	48 b8 6d ed ff ff ff 	movabs $0xffffffffffffed6d,%rax
ffff800000107455:	ff ff ff 
ffff800000107458:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010745c:	48 89 c7             	mov    %rax,%rdi
ffff80000010745f:	49 89 df             	mov    %rbx,%r15
ffff800000107462:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107467:	48 ba 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rdx
ffff80000010746e:	ff ff ff 
ffff800000107471:	48 01 da             	add    %rbx,%rdx
ffff800000107474:	ff d2                	call   *%rdx
ffff800000107476:	ba 00 04 00 00       	mov    $0x400,%edx
ffff80000010747b:	be 08 00 00 00       	mov    $0x8,%esi
ffff800000107480:	bf 02 00 00 00       	mov    $0x2,%edi
ffff800000107485:	49 89 df             	mov    %rbx,%r15
ffff800000107488:	48 b8 5b d0 ff ff ff 	movabs $0xffffffffffffd05b,%rax
ffff80000010748f:	ff ff ff 
ffff800000107492:	48 01 d8             	add    %rbx,%rax
ffff800000107495:	ff d0                	call   *%rax
ffff800000107497:	0f 20 d8             	mov    %cr3,%rax
ffff80000010749a:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
ffff80000010749e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001074a2:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
ffff8000001074a6:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff8000001074aa:	48 ba 00 00 00 00 00 	movabs $0xffff800000000000,%rdx
ffff8000001074b1:	80 ff ff 
ffff8000001074b4:	48 01 d0             	add    %rdx,%rax
ffff8000001074b7:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff8000001074be:	0f 20 d8             	mov    %cr3,%rax
ffff8000001074c1:	0f 22 d8             	mov    %rax,%cr3
ffff8000001074c4:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff8000001074c8:	90                   	nop
ffff8000001074c9:	48 83 c4 40          	add    $0x40,%rsp
ffff8000001074cd:	5b                   	pop    %rbx
ffff8000001074ce:	41 5f                	pop    %r15
ffff8000001074d0:	5d                   	pop    %rbp
ffff8000001074d1:	c3                   	ret

ffff8000001074d2 <freerange>:
ffff8000001074d2:	f3 0f 1e fa          	endbr64
ffff8000001074d6:	55                   	push   %rbp
ffff8000001074d7:	48 89 e5             	mov    %rsp,%rbp
ffff8000001074da:	41 57                	push   %r15
ffff8000001074dc:	53                   	push   %rbx
ffff8000001074dd:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001074e1:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001074e1 <freerange+0xf>
ffff8000001074e8:	49 bb 6f 33 00 00 00 	movabs $0x336f,%r11
ffff8000001074ef:	00 00 00 
ffff8000001074f2:	4c 01 db             	add    %r11,%rbx
ffff8000001074f5:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001074f9:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001074fd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107501:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff800000107507:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff80000010750d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107511:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
ffff800000107515:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107519:	48 89 c6             	mov    %rax,%rsi
ffff80000010751c:	48 b8 81 ed ff ff ff 	movabs $0xffffffffffffed81,%rax
ffff800000107523:	ff ff ff 
ffff800000107526:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010752a:	48 89 c7             	mov    %rax,%rdi
ffff80000010752d:	49 89 df             	mov    %rbx,%r15
ffff800000107530:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107535:	48 b9 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rcx
ffff80000010753c:	ff ff ff 
ffff80000010753f:	48 01 d9             	add    %rbx,%rcx
ffff800000107542:	ff d1                	call   *%rcx
ffff800000107544:	eb 1f                	jmp    ffff800000107565 <freerange+0x93>
ffff800000107546:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010754a:	48 89 c7             	mov    %rax,%rdi
ffff80000010754d:	48 b8 30 cd ff ff ff 	movabs $0xffffffffffffcd30,%rax
ffff800000107554:	ff ff ff 
ffff800000107557:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010755b:	ff d0                	call   *%rax
ffff80000010755d:	48 81 45 e8 00 10 00 	addq   $0x1000,-0x18(%rbp)
ffff800000107564:	00 
ffff800000107565:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107569:	48 05 00 10 00 00    	add    $0x1000,%rax
ffff80000010756f:	48 39 45 d0          	cmp    %rax,-0x30(%rbp)
ffff800000107573:	73 d1                	jae    ffff800000107546 <freerange+0x74>
ffff800000107575:	90                   	nop
ffff800000107576:	90                   	nop
ffff800000107577:	48 83 c4 20          	add    $0x20,%rsp
ffff80000010757b:	5b                   	pop    %rbx
ffff80000010757c:	41 5f                	pop    %r15
ffff80000010757e:	5d                   	pop    %rbp
ffff80000010757f:	c3                   	ret

ffff800000107580 <kfree>:
ffff800000107580:	f3 0f 1e fa          	endbr64
ffff800000107584:	55                   	push   %rbp
ffff800000107585:	48 89 e5             	mov    %rsp,%rbp
ffff800000107588:	41 57                	push   %r15
ffff80000010758a:	53                   	push   %rbx
ffff80000010758b:	48 83 ec 20          	sub    $0x20,%rsp
ffff80000010758f:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff80000010758f <kfree+0xf>
ffff800000107596:	49 bb c1 32 00 00 00 	movabs $0x32c1,%r11
ffff80000010759d:	00 00 00 
ffff8000001075a0:	4c 01 db             	add    %r11,%rbx
ffff8000001075a3:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001075a7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001075ab:	25 ff 0f 00 00       	and    $0xfff,%eax
ffff8000001075b0:	48 85 c0             	test   %rax,%rax
ffff8000001075b3:	75 14                	jne    ffff8000001075c9 <kfree+0x49>
ffff8000001075b5:	48 b8 c0 ff ff ff ff 	movabs $0xffffffffffffffc0,%rax
ffff8000001075bc:	ff ff ff 
ffff8000001075bf:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001075c3:	48 39 45 d8          	cmp    %rax,-0x28(%rbp)
ffff8000001075c7:	73 23                	jae    ffff8000001075ec <kfree+0x6c>
ffff8000001075c9:	48 b8 9f ed ff ff ff 	movabs $0xffffffffffffed9f,%rax
ffff8000001075d0:	ff ff ff 
ffff8000001075d3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001075d7:	48 89 c7             	mov    %rax,%rdi
ffff8000001075da:	49 89 df             	mov    %rbx,%r15
ffff8000001075dd:	48 b8 59 a2 ff ff ff 	movabs $0xffffffffffffa259,%rax
ffff8000001075e4:	ff ff ff 
ffff8000001075e7:	48 01 d8             	add    %rbx,%rax
ffff8000001075ea:	ff d0                	call   *%rax
ffff8000001075ec:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001075f0:	ba 00 10 00 00       	mov    $0x1000,%edx
ffff8000001075f5:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001075fa:	48 89 c7             	mov    %rax,%rdi
ffff8000001075fd:	49 89 df             	mov    %rbx,%r15
ffff800000107600:	48 b8 b9 d9 ff ff ff 	movabs $0xffffffffffffd9b9,%rax
ffff800000107607:	ff ff ff 
ffff80000010760a:	48 01 d8             	add    %rbx,%rax
ffff80000010760d:	ff d0                	call   *%rax
ffff80000010760f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107613:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107617:	48 b8 a8 00 00 00 00 	movabs $0xa8,%rax
ffff80000010761e:	00 00 00 
ffff800000107621:	48 8b 14 03          	mov    (%rbx,%rax,1),%rdx
ffff800000107625:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107629:	48 89 10             	mov    %rdx,(%rax)
ffff80000010762c:	48 ba a8 00 00 00 00 	movabs $0xa8,%rdx
ffff800000107633:	00 00 00 
ffff800000107636:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010763a:	48 89 04 13          	mov    %rax,(%rbx,%rdx,1)
ffff80000010763e:	90                   	nop
ffff80000010763f:	48 83 c4 20          	add    $0x20,%rsp
ffff800000107643:	5b                   	pop    %rbx
ffff800000107644:	41 5f                	pop    %r15
ffff800000107646:	5d                   	pop    %rbp
ffff800000107647:	c3                   	ret

ffff800000107648 <kalloc>:
ffff800000107648:	f3 0f 1e fa          	endbr64
ffff80000010764c:	55                   	push   %rbp
ffff80000010764d:	48 89 e5             	mov    %rsp,%rbp
ffff800000107650:	41 57                	push   %r15
ffff800000107652:	48 83 ec 18          	sub    $0x18,%rsp
ffff800000107656:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000107656 <kalloc+0xe>
ffff80000010765d:	49 bb fa 31 00 00 00 	movabs $0x31fa,%r11
ffff800000107664:	00 00 00 
ffff800000107667:	4c 01 d8             	add    %r11,%rax
ffff80000010766a:	48 ba a8 00 00 00 00 	movabs $0xa8,%rdx
ffff800000107671:	00 00 00 
ffff800000107674:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000107678:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010767c:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff800000107681:	74 15                	je     ffff800000107698 <kalloc+0x50>
ffff800000107683:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff800000107687:	48 8b 12             	mov    (%rdx),%rdx
ffff80000010768a:	48 b9 a8 00 00 00 00 	movabs $0xa8,%rcx
ffff800000107691:	00 00 00 
ffff800000107694:	48 89 14 08          	mov    %rdx,(%rax,%rcx,1)
ffff800000107698:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff80000010769d:	74 23                	je     ffff8000001076c2 <kalloc+0x7a>
ffff80000010769f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff8000001076a3:	ba 00 10 00 00       	mov    $0x1000,%edx
ffff8000001076a8:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001076ad:	48 89 cf             	mov    %rcx,%rdi
ffff8000001076b0:	49 89 c7             	mov    %rax,%r15
ffff8000001076b3:	48 b9 b9 d9 ff ff ff 	movabs $0xffffffffffffd9b9,%rcx
ffff8000001076ba:	ff ff ff 
ffff8000001076bd:	48 01 c1             	add    %rax,%rcx
ffff8000001076c0:	ff d1                	call   *%rcx
ffff8000001076c2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001076c6:	4c 8b 7d f8          	mov    -0x8(%rbp),%r15
ffff8000001076ca:	c9                   	leave
ffff8000001076cb:	c3                   	ret

ffff8000001076cc <mfree>:
ffff8000001076cc:	f3 0f 1e fa          	endbr64
ffff8000001076d0:	55                   	push   %rbp
ffff8000001076d1:	48 89 e5             	mov    %rsp,%rbp
ffff8000001076d4:	41 57                	push   %r15
ffff8000001076d6:	53                   	push   %rbx
ffff8000001076d7:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001076db:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001076db <mfree+0xf>
ffff8000001076e2:	49 bb 75 31 00 00 00 	movabs $0x3175,%r11
ffff8000001076e9:	00 00 00 
ffff8000001076ec:	4c 01 db             	add    %r11,%rbx
ffff8000001076ef:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001076f3:	89 75 d4             	mov    %esi,-0x2c(%rbp)
ffff8000001076f6:	81 7d d4 00 04 00 00 	cmpl   $0x400,-0x2c(%rbp)
ffff8000001076fd:	7e 1c                	jle    ffff80000010771b <mfree+0x4f>
ffff8000001076ff:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107703:	48 89 c7             	mov    %rax,%rdi
ffff800000107706:	48 b8 30 cd ff ff ff 	movabs $0xffffffffffffcd30,%rax
ffff80000010770d:	ff ff ff 
ffff800000107710:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107714:	ff d0                	call   *%rax
ffff800000107716:	e9 90 00 00 00       	jmp    ffff8000001077ab <mfree+0xdf>
ffff80000010771b:	48 b8 60 ff ff ff ff 	movabs $0xffffffffffffff60,%rax
ffff800000107722:	ff ff ff 
ffff800000107725:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107729:	48 8b 00             	mov    (%rax),%rax
ffff80000010772c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107730:	eb 72                	jmp    ffff8000001077a4 <mfree+0xd8>
ffff800000107732:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107736:	8b 40 20             	mov    0x20(%rax),%eax
ffff800000107739:	39 45 d4             	cmp    %eax,-0x2c(%rbp)
ffff80000010773c:	7e 5a                	jle    ffff800000107798 <mfree+0xcc>
ffff80000010773e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107742:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff800000107746:	8b 40 20             	mov    0x20(%rax),%eax
ffff800000107749:	39 45 d4             	cmp    %eax,-0x2c(%rbp)
ffff80000010774c:	7f 4a                	jg     ffff800000107798 <mfree+0xcc>
ffff80000010774e:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107751:	48 63 d0             	movslq %eax,%rdx
ffff800000107754:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107758:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010775d:	48 89 c7             	mov    %rax,%rdi
ffff800000107760:	49 89 df             	mov    %rbx,%r15
ffff800000107763:	48 b8 b9 d9 ff ff ff 	movabs $0xffffffffffffd9b9,%rax
ffff80000010776a:	ff ff ff 
ffff80000010776d:	48 01 d8             	add    %rbx,%rax
ffff800000107770:	ff d0                	call   *%rax
ffff800000107772:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107776:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff80000010777a:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010777e:	48 89 d6             	mov    %rdx,%rsi
ffff800000107781:	48 89 c7             	mov    %rax,%rdi
ffff800000107784:	49 89 df             	mov    %rbx,%r15
ffff800000107787:	48 b8 b8 d6 ff ff ff 	movabs $0xffffffffffffd6b8,%rax
ffff80000010778e:	ff ff ff 
ffff800000107791:	48 01 d8             	add    %rbx,%rax
ffff800000107794:	ff d0                	call   *%rax
ffff800000107796:	eb 13                	jmp    ffff8000001077ab <mfree+0xdf>
ffff800000107798:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010779c:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff8000001077a0:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001077a4:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff8000001077a9:	75 87                	jne    ffff800000107732 <mfree+0x66>
ffff8000001077ab:	48 83 c4 20          	add    $0x20,%rsp
ffff8000001077af:	5b                   	pop    %rbx
ffff8000001077b0:	41 5f                	pop    %r15
ffff8000001077b2:	5d                   	pop    %rbp
ffff8000001077b3:	c3                   	ret

ffff8000001077b4 <malloc>:
ffff8000001077b4:	f3 0f 1e fa          	endbr64
ffff8000001077b8:	55                   	push   %rbp
ffff8000001077b9:	48 89 e5             	mov    %rsp,%rbp
ffff8000001077bc:	41 57                	push   %r15
ffff8000001077be:	53                   	push   %rbx
ffff8000001077bf:	48 83 ec 30          	sub    $0x30,%rsp
ffff8000001077c3:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001077c3 <malloc+0xf>
ffff8000001077ca:	49 bb 8d 30 00 00 00 	movabs $0x308d,%r11
ffff8000001077d1:	00 00 00 
ffff8000001077d4:	4c 01 db             	add    %r11,%rbx
ffff8000001077d7:	89 7d cc             	mov    %edi,-0x34(%rbp)
ffff8000001077da:	81 7d cc 00 04 00 00 	cmpl   $0x400,-0x34(%rbp)
ffff8000001077e1:	7e 1d                	jle    ffff800000107800 <malloc+0x4c>
ffff8000001077e3:	48 b8 f8 cd ff ff ff 	movabs $0xffffffffffffcdf8,%rax
ffff8000001077ea:	ff ff ff 
ffff8000001077ed:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001077f1:	ff d0                	call   *%rax
ffff8000001077f3:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff8000001077f7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001077fb:	e9 a2 00 00 00       	jmp    ffff8000001078a2 <malloc+0xee>
ffff800000107800:	48 b8 60 ff ff ff ff 	movabs $0xffffffffffffff60,%rax
ffff800000107807:	ff ff ff 
ffff80000010780a:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010780e:	48 8b 00             	mov    (%rax),%rax
ffff800000107811:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107815:	eb 7b                	jmp    ffff800000107892 <malloc+0xde>
ffff800000107817:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010781b:	8b 40 20             	mov    0x20(%rax),%eax
ffff80000010781e:	39 45 cc             	cmp    %eax,-0x34(%rbp)
ffff800000107821:	7e 63                	jle    ffff800000107886 <malloc+0xd2>
ffff800000107823:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107827:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff80000010782b:	8b 40 20             	mov    0x20(%rax),%eax
ffff80000010782e:	39 45 cc             	cmp    %eax,-0x34(%rbp)
ffff800000107831:	7f 53                	jg     ffff800000107886 <malloc+0xd2>
ffff800000107833:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107837:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff80000010783b:	48 89 c7             	mov    %rax,%rdi
ffff80000010783e:	49 89 df             	mov    %rbx,%r15
ffff800000107841:	48 b8 b5 d4 ff ff ff 	movabs $0xffffffffffffd4b5,%rax
ffff800000107848:	ff ff ff 
ffff80000010784b:	48 01 d8             	add    %rbx,%rax
ffff80000010784e:	ff d0                	call   *%rax
ffff800000107850:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000107854:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107858:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff80000010785c:	8b 40 20             	mov    0x20(%rax),%eax
ffff80000010785f:	48 63 d0             	movslq %eax,%rdx
ffff800000107862:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107866:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010786b:	48 89 c7             	mov    %rax,%rdi
ffff80000010786e:	49 89 df             	mov    %rbx,%r15
ffff800000107871:	48 b8 b9 d9 ff ff ff 	movabs $0xffffffffffffd9b9,%rax
ffff800000107878:	ff ff ff 
ffff80000010787b:	48 01 d8             	add    %rbx,%rax
ffff80000010787e:	ff d0                	call   *%rax
ffff800000107880:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107884:	eb 1c                	jmp    ffff8000001078a2 <malloc+0xee>
ffff800000107886:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010788a:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff80000010788e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107892:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff800000107897:	0f 85 7a ff ff ff    	jne    ffff800000107817 <malloc+0x63>
ffff80000010789d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001078a2:	48 83 c4 30          	add    $0x30,%rsp
ffff8000001078a6:	5b                   	pop    %rbx
ffff8000001078a7:	41 5f                	pop    %r15
ffff8000001078a9:	5d                   	pop    %rbp
ffff8000001078aa:	c3                   	ret

ffff8000001078ab <kmem_cache_init>:
ffff8000001078ab:	f3 0f 1e fa          	endbr64
ffff8000001078af:	55                   	push   %rbp
ffff8000001078b0:	48 89 e5             	mov    %rsp,%rbp
ffff8000001078b3:	53                   	push   %rbx
ffff8000001078b4:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001078b8:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001078b8 <kmem_cache_init+0xd>
ffff8000001078bf:	49 bb 98 2f 00 00 00 	movabs $0x2f98,%r11
ffff8000001078c6:	00 00 00 
ffff8000001078c9:	4c 01 db             	add    %r11,%rbx
ffff8000001078cc:	89 7d dc             	mov    %edi,-0x24(%rbp)
ffff8000001078cf:	89 75 d8             	mov    %esi,-0x28(%rbp)
ffff8000001078d2:	89 55 d4             	mov    %edx,-0x2c(%rbp)
ffff8000001078d5:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff8000001078d8:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff8000001078db:	eb 4a                	jmp    ffff800000107927 <kmem_cache_init+0x7c>
ffff8000001078dd:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001078e0:	ba 01 00 00 00       	mov    $0x1,%edx
ffff8000001078e5:	89 c6                	mov    %eax,%esi
ffff8000001078e7:	48 b8 a8 ed ff ff ff 	movabs $0xffffffffffffeda8,%rax
ffff8000001078ee:	ff ff ff 
ffff8000001078f1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001078f5:	48 89 c7             	mov    %rax,%rdi
ffff8000001078f8:	48 b8 82 d1 ff ff ff 	movabs $0xffffffffffffd182,%rax
ffff8000001078ff:	ff ff ff 
ffff800000107902:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107906:	ff d0                	call   *%rax
ffff800000107908:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff80000010790c:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff800000107911:	75 0a                	jne    ffff80000010791d <kmem_cache_init+0x72>
ffff800000107913:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
ffff800000107918:	e9 af 00 00 00       	jmp    ffff8000001079cc <kmem_cache_init+0x121>
ffff80000010791d:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107920:	0f af 45 dc          	imul   -0x24(%rbp),%eax
ffff800000107924:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff800000107927:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff80000010792a:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
ffff80000010792d:	7e ae                	jle    ffff8000001078dd <kmem_cache_init+0x32>
ffff80000010792f:	83 7d d8 5f          	cmpl   $0x5f,-0x28(%rbp)
ffff800000107933:	7f 43                	jg     ffff800000107978 <kmem_cache_init+0xcd>
ffff800000107935:	83 7d d4 60          	cmpl   $0x60,-0x2c(%rbp)
ffff800000107939:	7e 3d                	jle    ffff800000107978 <kmem_cache_init+0xcd>
ffff80000010793b:	ba 01 00 00 00       	mov    $0x1,%edx
ffff800000107940:	be 60 00 00 00       	mov    $0x60,%esi
ffff800000107945:	48 b8 a8 ed ff ff ff 	movabs $0xffffffffffffeda8,%rax
ffff80000010794c:	ff ff ff 
ffff80000010794f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107953:	48 89 c7             	mov    %rax,%rdi
ffff800000107956:	48 b8 82 d1 ff ff ff 	movabs $0xffffffffffffd182,%rax
ffff80000010795d:	ff ff ff 
ffff800000107960:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107964:	ff d0                	call   *%rax
ffff800000107966:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff80000010796a:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff80000010796f:	75 07                	jne    ffff800000107978 <kmem_cache_init+0xcd>
ffff800000107971:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
ffff800000107976:	eb 54                	jmp    ffff8000001079cc <kmem_cache_init+0x121>
ffff800000107978:	81 7d d8 bf 00 00 00 	cmpl   $0xbf,-0x28(%rbp)
ffff80000010797f:	7f 46                	jg     ffff8000001079c7 <kmem_cache_init+0x11c>
ffff800000107981:	81 7d d4 c0 00 00 00 	cmpl   $0xc0,-0x2c(%rbp)
ffff800000107988:	7e 3d                	jle    ffff8000001079c7 <kmem_cache_init+0x11c>
ffff80000010798a:	ba 01 00 00 00       	mov    $0x1,%edx
ffff80000010798f:	be c0 00 00 00       	mov    $0xc0,%esi
ffff800000107994:	48 b8 a8 ed ff ff ff 	movabs $0xffffffffffffeda8,%rax
ffff80000010799b:	ff ff ff 
ffff80000010799e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001079a2:	48 89 c7             	mov    %rax,%rdi
ffff8000001079a5:	48 b8 82 d1 ff ff ff 	movabs $0xffffffffffffd182,%rax
ffff8000001079ac:	ff ff ff 
ffff8000001079af:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001079b3:	ff d0                	call   *%rax
ffff8000001079b5:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff8000001079b9:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff8000001079be:	75 07                	jne    ffff8000001079c7 <kmem_cache_init+0x11c>
ffff8000001079c0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
ffff8000001079c5:	eb 05                	jmp    ffff8000001079cc <kmem_cache_init+0x121>
ffff8000001079c7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001079cc:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff8000001079d0:	c9                   	leave
ffff8000001079d1:	c3                   	ret

ffff8000001079d2 <kmem_cache_create>:
ffff8000001079d2:	f3 0f 1e fa          	endbr64
ffff8000001079d6:	55                   	push   %rbp
ffff8000001079d7:	48 89 e5             	mov    %rsp,%rbp
ffff8000001079da:	41 57                	push   %r15
ffff8000001079dc:	53                   	push   %rbx
ffff8000001079dd:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001079e1:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001079e1 <kmem_cache_create+0xf>
ffff8000001079e8:	49 bb 6f 2e 00 00 00 	movabs $0x2e6f,%r11
ffff8000001079ef:	00 00 00 
ffff8000001079f2:	4c 01 db             	add    %r11,%rbx
ffff8000001079f5:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001079f9:	89 75 d4             	mov    %esi,-0x2c(%rbp)
ffff8000001079fc:	89 55 d0             	mov    %edx,-0x30(%rbp)
ffff8000001079ff:	49 89 df             	mov    %rbx,%r15
ffff800000107a02:	48 b8 f8 cd ff ff ff 	movabs $0xffffffffffffcdf8,%rax
ffff800000107a09:	ff ff ff 
ffff800000107a0c:	48 01 d8             	add    %rbx,%rax
ffff800000107a0f:	ff d0                	call   *%rax
ffff800000107a11:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000107a15:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107a19:	ba 00 10 00 00       	mov    $0x1000,%edx
ffff800000107a1e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107a23:	48 89 c7             	mov    %rax,%rdi
ffff800000107a26:	49 89 df             	mov    %rbx,%r15
ffff800000107a29:	48 b8 b9 d9 ff ff ff 	movabs $0xffffffffffffd9b9,%rax
ffff800000107a30:	ff ff ff 
ffff800000107a33:	48 01 d8             	add    %rbx,%rax
ffff800000107a36:	ff d0                	call   *%rax
ffff800000107a38:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff800000107a3d:	75 0a                	jne    ffff800000107a49 <kmem_cache_create+0x77>
ffff800000107a3f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107a44:	e9 cf 00 00 00       	jmp    ffff800000107b18 <kmem_cache_create+0x146>
ffff800000107a49:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107a4d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000107a51:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff800000107a55:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107a59:	8b 55 d4             	mov    -0x2c(%rbp),%edx
ffff800000107a5c:	89 50 20             	mov    %edx,0x20(%rax)
ffff800000107a5f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107a63:	8b 55 d0             	mov    -0x30(%rbp),%edx
ffff800000107a66:	89 50 24             	mov    %edx,0x24(%rax)
ffff800000107a69:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107a6d:	48 c7 40 38 00 00 00 	movq   $0x0,0x38(%rax)
ffff800000107a74:	00 
ffff800000107a75:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107a79:	48 89 c7             	mov    %rax,%rdi
ffff800000107a7c:	48 b8 d1 d2 ff ff ff 	movabs $0xffffffffffffd2d1,%rax
ffff800000107a83:	ff ff ff 
ffff800000107a86:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107a8a:	ff d0                	call   *%rax
ffff800000107a8c:	48 b8 b8 00 00 00 00 	movabs $0xb8,%rax
ffff800000107a93:	00 00 00 
ffff800000107a96:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107a9a:	48 85 c0             	test   %rax,%rax
ffff800000107a9d:	75 14                	jne    ffff800000107ab3 <kmem_cache_create+0xe1>
ffff800000107a9f:	48 ba b8 00 00 00 00 	movabs $0xb8,%rdx
ffff800000107aa6:	00 00 00 
ffff800000107aa9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107aad:	48 89 04 13          	mov    %rax,(%rbx,%rdx,1)
ffff800000107ab1:	eb 61                	jmp    ffff800000107b14 <kmem_cache_create+0x142>
ffff800000107ab3:	48 b8 b8 00 00 00 00 	movabs $0xb8,%rax
ffff800000107aba:	00 00 00 
ffff800000107abd:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107ac1:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107ac5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107ac9:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff800000107acd:	48 85 c0             	test   %rax,%rax
ffff800000107ad0:	74 16                	je     ffff800000107ae8 <kmem_cache_create+0x116>
ffff800000107ad2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107ad6:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff800000107ada:	8b 50 20             	mov    0x20(%rax),%edx
ffff800000107add:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107ae1:	8b 40 20             	mov    0x20(%rax),%eax
ffff800000107ae4:	39 c2                	cmp    %eax,%edx
ffff800000107ae6:	7e 1e                	jle    ffff800000107b06 <kmem_cache_create+0x134>
ffff800000107ae8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107aec:	48 8b 50 38          	mov    0x38(%rax),%rdx
ffff800000107af0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107af4:	48 89 50 38          	mov    %rdx,0x38(%rax)
ffff800000107af8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107afc:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000107b00:	48 89 50 38          	mov    %rdx,0x38(%rax)
ffff800000107b04:	eb 0e                	jmp    ffff800000107b14 <kmem_cache_create+0x142>
ffff800000107b06:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107b0a:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff800000107b0e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107b12:	eb b1                	jmp    ffff800000107ac5 <kmem_cache_create+0xf3>
ffff800000107b14:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107b18:	48 83 c4 20          	add    $0x20,%rsp
ffff800000107b1c:	5b                   	pop    %rbx
ffff800000107b1d:	41 5f                	pop    %r15
ffff800000107b1f:	5d                   	pop    %rbp
ffff800000107b20:	c3                   	ret

ffff800000107b21 <slab_alloc>:
ffff800000107b21:	f3 0f 1e fa          	endbr64
ffff800000107b25:	55                   	push   %rbp
ffff800000107b26:	48 89 e5             	mov    %rsp,%rbp
ffff800000107b29:	41 57                	push   %r15
ffff800000107b2b:	53                   	push   %rbx
ffff800000107b2c:	48 83 ec 40          	sub    $0x40,%rsp
ffff800000107b30:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000107b30 <slab_alloc+0xf>
ffff800000107b37:	49 bb 20 2d 00 00 00 	movabs $0x2d20,%r11
ffff800000107b3e:	00 00 00 
ffff800000107b41:	4c 01 db             	add    %r11,%rbx
ffff800000107b44:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
ffff800000107b48:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000107b4c:	8b 40 20             	mov    0x20(%rax),%eax
ffff800000107b4f:	89 45 e0             	mov    %eax,-0x20(%rbp)
ffff800000107b52:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000107b56:	8b 40 24             	mov    0x24(%rax),%eax
ffff800000107b59:	89 45 dc             	mov    %eax,-0x24(%rbp)
ffff800000107b5c:	49 89 df             	mov    %rbx,%r15
ffff800000107b5f:	48 b8 f8 cd ff ff ff 	movabs $0xffffffffffffcdf8,%rax
ffff800000107b66:	ff ff ff 
ffff800000107b69:	48 01 d8             	add    %rbx,%rax
ffff800000107b6c:	ff d0                	call   *%rax
ffff800000107b6e:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff800000107b72:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107b76:	ba 00 10 00 00       	mov    $0x1000,%edx
ffff800000107b7b:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107b80:	48 89 c7             	mov    %rax,%rdi
ffff800000107b83:	49 89 df             	mov    %rbx,%r15
ffff800000107b86:	48 b8 b9 d9 ff ff ff 	movabs $0xffffffffffffd9b9,%rax
ffff800000107b8d:	ff ff ff 
ffff800000107b90:	48 01 d8             	add    %rbx,%rax
ffff800000107b93:	ff d0                	call   *%rax
ffff800000107b95:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000107b99:	48 8b 50 30          	mov    0x30(%rax),%rdx
ffff800000107b9d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107ba1:	48 89 10             	mov    %rdx,(%rax)
ffff800000107ba4:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000107ba8:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
ffff800000107bac:	48 89 50 30          	mov    %rdx,0x30(%rax)
ffff800000107bb0:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000107bb4:	8b 40 28             	mov    0x28(%rax),%eax
ffff800000107bb7:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000107bba:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000107bbe:	89 50 28             	mov    %edx,0x28(%rax)
ffff800000107bc1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107bc5:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
ffff800000107bc9:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000107bd0:	00 
ffff800000107bd1:	c7 45 e4 18 00 00 00 	movl   $0x18,-0x1c(%rbp)
ffff800000107bd8:	e9 9a 00 00 00       	jmp    ffff800000107c77 <slab_alloc+0x156>
ffff800000107bdd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107be1:	8b 40 08             	mov    0x8(%rax),%eax
ffff800000107be4:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000107be7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107beb:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000107bee:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107bf2:	8b 40 0c             	mov    0xc(%rax),%eax
ffff800000107bf5:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000107bf8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107bfc:	89 50 0c             	mov    %edx,0xc(%rax)
ffff800000107bff:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107c03:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000107c07:	48 85 c0             	test   %rax,%rax
ffff800000107c0a:	75 2a                	jne    ffff800000107c36 <slab_alloc+0x115>
ffff800000107c0c:	8b 45 e4             	mov    -0x1c(%rbp),%eax
ffff800000107c0f:	48 63 d0             	movslq %eax,%rdx
ffff800000107c12:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107c16:	48 01 d0             	add    %rdx,%rax
ffff800000107c19:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107c1d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107c21:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff800000107c28:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107c2c:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff800000107c30:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000107c34:	eb 2a                	jmp    ffff800000107c60 <slab_alloc+0x13f>
ffff800000107c36:	8b 45 e4             	mov    -0x1c(%rbp),%eax
ffff800000107c39:	48 63 d0             	movslq %eax,%rdx
ffff800000107c3c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107c40:	48 01 c2             	add    %rax,%rdx
ffff800000107c43:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107c47:	48 89 10             	mov    %rdx,(%rax)
ffff800000107c4a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107c4e:	48 8b 00             	mov    (%rax),%rax
ffff800000107c51:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107c55:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107c59:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff800000107c60:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
ffff800000107c64:	74 0b                	je     ffff800000107c71 <slab_alloc+0x150>
ffff800000107c66:	8b 45 e0             	mov    -0x20(%rbp),%eax
ffff800000107c69:	83 c0 07             	add    $0x7,%eax
ffff800000107c6c:	83 e0 f8             	and    $0xfffffff8,%eax
ffff800000107c6f:	eb 03                	jmp    ffff800000107c74 <slab_alloc+0x153>
ffff800000107c71:	8b 45 e0             	mov    -0x20(%rbp),%eax
ffff800000107c74:	01 45 e4             	add    %eax,-0x1c(%rbp)
ffff800000107c77:	81 7d e4 ff 0f 00 00 	cmpl   $0xfff,-0x1c(%rbp)
ffff800000107c7e:	0f 8e 59 ff ff ff    	jle    ffff800000107bdd <slab_alloc+0xbc>
ffff800000107c84:	90                   	nop
ffff800000107c85:	90                   	nop
ffff800000107c86:	48 83 c4 40          	add    $0x40,%rsp
ffff800000107c8a:	5b                   	pop    %rbx
ffff800000107c8b:	41 5f                	pop    %r15
ffff800000107c8d:	5d                   	pop    %rbp
ffff800000107c8e:	c3                   	ret

ffff800000107c8f <slab_free>:
ffff800000107c8f:	f3 0f 1e fa          	endbr64
ffff800000107c93:	55                   	push   %rbp
ffff800000107c94:	48 89 e5             	mov    %rsp,%rbp
ffff800000107c97:	41 57                	push   %r15
ffff800000107c99:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000107c9d:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000107c9d <slab_free+0xe>
ffff800000107ca4:	49 bb b3 2b 00 00 00 	movabs $0x2bb3,%r11
ffff800000107cab:	00 00 00 
ffff800000107cae:	4c 01 d8             	add    %r11,%rax
ffff800000107cb1:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000107cb5:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000107cb9:	48 8b 52 30          	mov    0x30(%rdx),%rdx
ffff800000107cbd:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000107cc1:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000107cc5:	48 8b 52 30          	mov    0x30(%rdx),%rdx
ffff800000107cc9:	48 8b 0a             	mov    (%rdx),%rcx
ffff800000107ccc:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000107cd0:	48 89 4a 30          	mov    %rcx,0x30(%rdx)
ffff800000107cd4:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff800000107cd8:	48 89 d7             	mov    %rdx,%rdi
ffff800000107cdb:	49 89 c7             	mov    %rax,%r15
ffff800000107cde:	48 ba 30 cd ff ff ff 	movabs $0xffffffffffffcd30,%rdx
ffff800000107ce5:	ff ff ff 
ffff800000107ce8:	48 01 c2             	add    %rax,%rdx
ffff800000107ceb:	ff d2                	call   *%rdx
ffff800000107ced:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107cf1:	8b 40 28             	mov    0x28(%rax),%eax
ffff800000107cf4:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000107cf7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107cfb:	89 50 28             	mov    %edx,0x28(%rax)
ffff800000107cfe:	90                   	nop
ffff800000107cff:	4c 8b 7d f8          	mov    -0x8(%rbp),%r15
ffff800000107d03:	c9                   	leave
ffff800000107d04:	c3                   	ret

ffff800000107d05 <kmem_cache_alloc>:
ffff800000107d05:	f3 0f 1e fa          	endbr64
ffff800000107d09:	55                   	push   %rbp
ffff800000107d0a:	48 89 e5             	mov    %rsp,%rbp
ffff800000107d0d:	41 57                	push   %r15
ffff800000107d0f:	53                   	push   %rbx
ffff800000107d10:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000107d14:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000107d14 <kmem_cache_alloc+0xf>
ffff800000107d1b:	49 bb 3c 2b 00 00 00 	movabs $0x2b3c,%r11
ffff800000107d22:	00 00 00 
ffff800000107d25:	4c 01 db             	add    %r11,%rbx
ffff800000107d28:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000107d2c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107d30:	48 8b 00             	mov    (%rax),%rax
ffff800000107d33:	48 85 c0             	test   %rax,%rax
ffff800000107d36:	0f 85 19 01 00 00    	jne    ffff800000107e55 <kmem_cache_alloc+0x150>
ffff800000107d3c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107d40:	8b 40 08             	mov    0x8(%rax),%eax
ffff800000107d43:	85 c0                	test   %eax,%eax
ffff800000107d45:	75 67                	jne    ffff800000107dae <kmem_cache_alloc+0xa9>
ffff800000107d47:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107d4b:	8b 40 28             	mov    0x28(%rax),%eax
ffff800000107d4e:	85 c0                	test   %eax,%eax
ffff800000107d50:	75 17                	jne    ffff800000107d69 <kmem_cache_alloc+0x64>
ffff800000107d52:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107d56:	48 89 c7             	mov    %rax,%rdi
ffff800000107d59:	48 b8 d1 d2 ff ff ff 	movabs $0xffffffffffffd2d1,%rax
ffff800000107d60:	ff ff ff 
ffff800000107d63:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107d67:	ff d0                	call   *%rax
ffff800000107d69:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107d6d:	48 8b 50 30          	mov    0x30(%rax),%rdx
ffff800000107d71:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107d75:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000107d79:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107d7d:	48 8b 40 30          	mov    0x30(%rax),%rax
ffff800000107d81:	48 8b 10             	mov    (%rax),%rdx
ffff800000107d84:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107d88:	48 89 50 30          	mov    %rdx,0x30(%rax)
ffff800000107d8c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107d90:	8b 40 28             	mov    0x28(%rax),%eax
ffff800000107d93:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000107d96:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107d9a:	89 50 28             	mov    %edx,0x28(%rax)
ffff800000107d9d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107da1:	8b 40 08             	mov    0x8(%rax),%eax
ffff800000107da4:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000107da7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107dab:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000107dae:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107db2:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000107db6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107dba:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107dbe:	8b 40 0c             	mov    0xc(%rax),%eax
ffff800000107dc1:	85 c0                	test   %eax,%eax
ffff800000107dc3:	0f 84 80 00 00 00    	je     ffff800000107e49 <kmem_cache_alloc+0x144>
ffff800000107dc9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107dcd:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000107dd1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107dd5:	48 89 10             	mov    %rdx,(%rax)
ffff800000107dd8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107ddc:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000107de0:	48 8b 10             	mov    (%rax),%rdx
ffff800000107de3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107de7:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000107deb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107def:	8b 40 08             	mov    0x8(%rax),%eax
ffff800000107df2:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000107df5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107df9:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000107dfc:	eb 57                	jmp    ffff800000107e55 <kmem_cache_alloc+0x150>
ffff800000107dfe:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107e02:	48 8b 00             	mov    (%rax),%rax
ffff800000107e05:	8b 40 0c             	mov    0xc(%rax),%eax
ffff800000107e08:	85 c0                	test   %eax,%eax
ffff800000107e0a:	7e 32                	jle    ffff800000107e3e <kmem_cache_alloc+0x139>
ffff800000107e0c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107e10:	48 8b 10             	mov    (%rax),%rdx
ffff800000107e13:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107e17:	48 89 10             	mov    %rdx,(%rax)
ffff800000107e1a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107e1e:	48 8b 00             	mov    (%rax),%rax
ffff800000107e21:	48 8b 10             	mov    (%rax),%rdx
ffff800000107e24:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107e28:	48 89 10             	mov    %rdx,(%rax)
ffff800000107e2b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107e2f:	8b 40 08             	mov    0x8(%rax),%eax
ffff800000107e32:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000107e35:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107e39:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000107e3c:	eb 17                	jmp    ffff800000107e55 <kmem_cache_alloc+0x150>
ffff800000107e3e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107e42:	48 8b 00             	mov    (%rax),%rax
ffff800000107e45:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107e49:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107e4d:	48 8b 00             	mov    (%rax),%rax
ffff800000107e50:	48 85 c0             	test   %rax,%rax
ffff800000107e53:	75 a9                	jne    ffff800000107dfe <kmem_cache_alloc+0xf9>
ffff800000107e55:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107e59:	48 8b 00             	mov    (%rax),%rax
ffff800000107e5c:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000107e60:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000107e64:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107e68:	48 8b 00             	mov    (%rax),%rax
ffff800000107e6b:	8b 50 0c             	mov    0xc(%rax),%edx
ffff800000107e6e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107e72:	48 8b 00             	mov    (%rax),%rax
ffff800000107e75:	83 ea 01             	sub    $0x1,%edx
ffff800000107e78:	89 50 0c             	mov    %edx,0xc(%rax)
ffff800000107e7b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107e7f:	48 8b 00             	mov    (%rax),%rax
ffff800000107e82:	8b 50 0c             	mov    0xc(%rax),%edx
ffff800000107e85:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107e89:	48 8b 00             	mov    (%rax),%rax
ffff800000107e8c:	83 ea 01             	sub    $0x1,%edx
ffff800000107e8f:	89 50 0c             	mov    %edx,0xc(%rax)
ffff800000107e92:	8b 40 0c             	mov    0xc(%rax),%eax
ffff800000107e95:	85 c0                	test   %eax,%eax
ffff800000107e97:	75 2c                	jne    ffff800000107ec5 <kmem_cache_alloc+0x1c0>
ffff800000107e99:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107e9d:	48 8b 00             	mov    (%rax),%rax
ffff800000107ea0:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000107ea4:	48 8b 52 10          	mov    0x10(%rdx),%rdx
ffff800000107ea8:	48 89 10             	mov    %rdx,(%rax)
ffff800000107eab:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107eaf:	48 8b 10             	mov    (%rax),%rdx
ffff800000107eb2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107eb6:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000107eba:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107ebe:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff800000107ec5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107ec9:	8b 50 20             	mov    0x20(%rax),%edx
ffff800000107ecc:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107ed0:	48 89 c6             	mov    %rax,%rsi
ffff800000107ed3:	48 b8 b0 ed ff ff ff 	movabs $0xffffffffffffedb0,%rax
ffff800000107eda:	ff ff ff 
ffff800000107edd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107ee1:	48 89 c7             	mov    %rax,%rdi
ffff800000107ee4:	49 89 df             	mov    %rbx,%r15
ffff800000107ee7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107eec:	48 b9 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rcx
ffff800000107ef3:	ff ff ff 
ffff800000107ef6:	48 01 d9             	add    %rbx,%rcx
ffff800000107ef9:	ff d1                	call   *%rcx
ffff800000107efb:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107eff:	48 83 c4 20          	add    $0x20,%rsp
ffff800000107f03:	5b                   	pop    %rbx
ffff800000107f04:	41 5f                	pop    %r15
ffff800000107f06:	5d                   	pop    %rbp
ffff800000107f07:	c3                   	ret

ffff800000107f08 <kmem_cache_free>:
ffff800000107f08:	f3 0f 1e fa          	endbr64
ffff800000107f0c:	55                   	push   %rbp
ffff800000107f0d:	48 89 e5             	mov    %rsp,%rbp
ffff800000107f10:	41 57                	push   %r15
ffff800000107f12:	53                   	push   %rbx
ffff800000107f13:	48 83 ec 30          	sub    $0x30,%rsp
ffff800000107f17:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000107f17 <kmem_cache_free+0xf>
ffff800000107f1e:	49 bb 39 29 00 00 00 	movabs $0x2939,%r11
ffff800000107f25:	00 00 00 
ffff800000107f28:	4c 01 db             	add    %r11,%rbx
ffff800000107f2b:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
ffff800000107f2f:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
ffff800000107f33:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107f37:	48 8b 00             	mov    (%rax),%rax
ffff800000107f3a:	48 3b 45 c0          	cmp    -0x40(%rbp),%rax
ffff800000107f3e:	0f 83 c6 00 00 00    	jae    ffff80000010800a <kmem_cache_free+0x102>
ffff800000107f44:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107f48:	48 8b 00             	mov    (%rax),%rax
ffff800000107f4b:	48 05 00 10 00 00    	add    $0x1000,%rax
ffff800000107f51:	48 3b 45 c0          	cmp    -0x40(%rbp),%rax
ffff800000107f55:	0f 82 af 00 00 00    	jb     ffff80000010800a <kmem_cache_free+0x102>
ffff800000107f5b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107f5f:	48 8b 00             	mov    (%rax),%rax
ffff800000107f62:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000107f66:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107f6a:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000107f6e:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
ffff800000107f72:	73 73                	jae    ffff800000107fe7 <kmem_cache_free+0xdf>
ffff800000107f74:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000107f78:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff800000107f7c:	48 89 10             	mov    %rdx,(%rax)
ffff800000107f7f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107f83:	48 8b 00             	mov    (%rax),%rax
ffff800000107f86:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff800000107f8a:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000107f8e:	eb 5e                	jmp    ffff800000107fee <kmem_cache_free+0xe6>
ffff800000107f90:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107f94:	48 8b 00             	mov    (%rax),%rax
ffff800000107f97:	48 85 c0             	test   %rax,%rax
ffff800000107f9a:	75 18                	jne    ffff800000107fb4 <kmem_cache_free+0xac>
ffff800000107f9c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107fa0:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff800000107fa4:	48 89 10             	mov    %rdx,(%rax)
ffff800000107fa7:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000107fab:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff800000107fb2:	eb 3a                	jmp    ffff800000107fee <kmem_cache_free+0xe6>
ffff800000107fb4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107fb8:	48 8b 00             	mov    (%rax),%rax
ffff800000107fbb:	48 39 45 c0          	cmp    %rax,-0x40(%rbp)
ffff800000107fbf:	73 1b                	jae    ffff800000107fdc <kmem_cache_free+0xd4>
ffff800000107fc1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107fc5:	48 8b 10             	mov    (%rax),%rdx
ffff800000107fc8:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000107fcc:	48 89 10             	mov    %rdx,(%rax)
ffff800000107fcf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107fd3:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff800000107fd7:	48 89 10             	mov    %rdx,(%rax)
ffff800000107fda:	eb 12                	jmp    ffff800000107fee <kmem_cache_free+0xe6>
ffff800000107fdc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107fe0:	48 8b 00             	mov    (%rax),%rax
ffff800000107fe3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107fe7:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff800000107fec:	75 a2                	jne    ffff800000107f90 <kmem_cache_free+0x88>
ffff800000107fee:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107ff2:	48 8b 00             	mov    (%rax),%rax
ffff800000107ff5:	8b 50 0c             	mov    0xc(%rax),%edx
ffff800000107ff8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107ffc:	48 8b 00             	mov    (%rax),%rax
ffff800000107fff:	83 c2 01             	add    $0x1,%edx
ffff800000108002:	89 50 0c             	mov    %edx,0xc(%rax)
ffff800000108005:	e9 bf 01 00 00       	jmp    ffff8000001081c9 <kmem_cache_free+0x2c1>
ffff80000010800a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010800e:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000108012:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000108016:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010801a:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff80000010801e:	e9 98 01 00 00       	jmp    ffff8000001081bb <kmem_cache_free+0x2b3>
ffff800000108023:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000108027:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
ffff80000010802b:	0f 83 77 01 00 00    	jae    ffff8000001081a8 <kmem_cache_free+0x2a0>
ffff800000108031:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000108035:	48 05 00 10 00 00    	add    $0x1000,%rax
ffff80000010803b:	48 3b 45 c0          	cmp    -0x40(%rbp),%rax
ffff80000010803f:	0f 82 63 01 00 00    	jb     ffff8000001081a8 <kmem_cache_free+0x2a0>
ffff800000108045:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000108049:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff80000010804d:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff800000108051:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000108055:	48 3b 45 d0          	cmp    -0x30(%rbp),%rax
ffff800000108059:	73 70                	jae    ffff8000001080cb <kmem_cache_free+0x1c3>
ffff80000010805b:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff80000010805f:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
ffff800000108063:	48 89 10             	mov    %rdx,(%rax)
ffff800000108066:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010806a:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff80000010806e:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000108072:	eb 5e                	jmp    ffff8000001080d2 <kmem_cache_free+0x1ca>
ffff800000108074:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000108078:	48 8b 00             	mov    (%rax),%rax
ffff80000010807b:	48 85 c0             	test   %rax,%rax
ffff80000010807e:	75 18                	jne    ffff800000108098 <kmem_cache_free+0x190>
ffff800000108080:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000108084:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff800000108088:	48 89 10             	mov    %rdx,(%rax)
ffff80000010808b:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff80000010808f:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff800000108096:	eb 3a                	jmp    ffff8000001080d2 <kmem_cache_free+0x1ca>
ffff800000108098:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010809c:	48 8b 00             	mov    (%rax),%rax
ffff80000010809f:	48 39 45 c0          	cmp    %rax,-0x40(%rbp)
ffff8000001080a3:	73 1b                	jae    ffff8000001080c0 <kmem_cache_free+0x1b8>
ffff8000001080a5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001080a9:	48 8b 10             	mov    (%rax),%rdx
ffff8000001080ac:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff8000001080b0:	48 89 10             	mov    %rdx,(%rax)
ffff8000001080b3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001080b7:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff8000001080bb:	48 89 10             	mov    %rdx,(%rax)
ffff8000001080be:	eb 12                	jmp    ffff8000001080d2 <kmem_cache_free+0x1ca>
ffff8000001080c0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001080c4:	48 8b 00             	mov    (%rax),%rax
ffff8000001080c7:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff8000001080cb:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
ffff8000001080d0:	75 a2                	jne    ffff800000108074 <kmem_cache_free+0x16c>
ffff8000001080d2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001080d6:	8b 40 0c             	mov    0xc(%rax),%eax
ffff8000001080d9:	85 c0                	test   %eax,%eax
ffff8000001080db:	75 11                	jne    ffff8000001080ee <kmem_cache_free+0x1e6>
ffff8000001080dd:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001080e1:	8b 40 08             	mov    0x8(%rax),%eax
ffff8000001080e4:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001080e7:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001080eb:	89 50 08             	mov    %edx,0x8(%rax)
ffff8000001080ee:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001080f2:	8b 40 0c             	mov    0xc(%rax),%eax
ffff8000001080f5:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001080f8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001080fc:	89 50 0c             	mov    %edx,0xc(%rax)
ffff8000001080ff:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000108103:	8b 50 0c             	mov    0xc(%rax),%edx
ffff800000108106:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010810a:	8b 40 08             	mov    0x8(%rax),%eax
ffff80000010810d:	39 c2                	cmp    %eax,%edx
ffff80000010810f:	0f 85 b3 00 00 00    	jne    ffff8000001081c8 <kmem_cache_free+0x2c0>
ffff800000108115:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108119:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff80000010811d:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
ffff800000108121:	75 11                	jne    ffff800000108134 <kmem_cache_free+0x22c>
ffff800000108123:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000108127:	48 8b 10             	mov    (%rax),%rdx
ffff80000010812a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010812e:	48 89 50 30          	mov    %rdx,0x30(%rax)
ffff800000108132:	eb 0e                	jmp    ffff800000108142 <kmem_cache_free+0x23a>
ffff800000108134:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000108138:	48 8b 10             	mov    (%rax),%rdx
ffff80000010813b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010813f:	48 89 10             	mov    %rdx,(%rax)
ffff800000108142:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108146:	8b 40 08             	mov    0x8(%rax),%eax
ffff800000108149:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff80000010814c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108150:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000108153:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108157:	8b 40 28             	mov    0x28(%rax),%eax
ffff80000010815a:	83 f8 10             	cmp    $0x10,%eax
ffff80000010815d:	75 1b                	jne    ffff80000010817a <kmem_cache_free+0x272>
ffff80000010815f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000108163:	48 89 c7             	mov    %rax,%rdi
ffff800000108166:	49 89 df             	mov    %rbx,%r15
ffff800000108169:	48 b8 30 cd ff ff ff 	movabs $0xffffffffffffcd30,%rax
ffff800000108170:	ff ff ff 
ffff800000108173:	48 01 d8             	add    %rbx,%rax
ffff800000108176:	ff d0                	call   *%rax
ffff800000108178:	eb 4e                	jmp    ffff8000001081c8 <kmem_cache_free+0x2c0>
ffff80000010817a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010817e:	48 8b 50 30          	mov    0x30(%rax),%rdx
ffff800000108182:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000108186:	48 89 10             	mov    %rdx,(%rax)
ffff800000108189:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010818d:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000108191:	48 89 50 30          	mov    %rdx,0x30(%rax)
ffff800000108195:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108199:	8b 40 28             	mov    0x28(%rax),%eax
ffff80000010819c:	8d 50 01             	lea    0x1(%rax),%edx
ffff80000010819f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001081a3:	89 50 28             	mov    %edx,0x28(%rax)
ffff8000001081a6:	eb 20                	jmp    ffff8000001081c8 <kmem_cache_free+0x2c0>
ffff8000001081a8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001081ac:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff8000001081b0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001081b4:	48 8b 00             	mov    (%rax),%rax
ffff8000001081b7:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff8000001081bb:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff8000001081c0:	0f 85 5d fe ff ff    	jne    ffff800000108023 <kmem_cache_free+0x11b>
ffff8000001081c6:	eb 01                	jmp    ffff8000001081c9 <kmem_cache_free+0x2c1>
ffff8000001081c8:	90                   	nop
ffff8000001081c9:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001081cd:	8b 50 20             	mov    0x20(%rax),%edx
ffff8000001081d0:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff8000001081d4:	48 89 c6             	mov    %rax,%rsi
ffff8000001081d7:	48 b8 e0 ed ff ff ff 	movabs $0xffffffffffffede0,%rax
ffff8000001081de:	ff ff ff 
ffff8000001081e1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001081e5:	48 89 c7             	mov    %rax,%rdi
ffff8000001081e8:	49 89 df             	mov    %rbx,%r15
ffff8000001081eb:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001081f0:	48 b9 33 a1 ff ff ff 	movabs $0xffffffffffffa133,%rcx
ffff8000001081f7:	ff ff ff 
ffff8000001081fa:	48 01 d9             	add    %rbx,%rcx
ffff8000001081fd:	ff d1                	call   *%rcx
ffff8000001081ff:	90                   	nop
ffff800000108200:	48 83 c4 30          	add    $0x30,%rsp
ffff800000108204:	5b                   	pop    %rbx
ffff800000108205:	41 5f                	pop    %r15
ffff800000108207:	5d                   	pop    %rbp
ffff800000108208:	c3                   	ret

ffff800000108209 <memset>:
ffff800000108209:	f3 0f 1e fa          	endbr64
ffff80000010820d:	55                   	push   %rbp
ffff80000010820e:	48 89 e5             	mov    %rsp,%rbp
ffff800000108211:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000108211 <memset+0x8>
ffff800000108218:	49 bb 3f 26 00 00 00 	movabs $0x263f,%r11
ffff80000010821f:	00 00 00 
ffff800000108222:	4c 01 d8             	add    %r11,%rax
ffff800000108225:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000108229:	89 75 e4             	mov    %esi,-0x1c(%rbp)
ffff80000010822c:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff800000108230:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000108234:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000108238:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff80000010823f:	eb 16                	jmp    ffff800000108257 <memset+0x4e>
ffff800000108241:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000108244:	48 63 d0             	movslq %eax,%rdx
ffff800000108247:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff80000010824b:	48 01 d0             	add    %rdx,%rax
ffff80000010824e:	8b 55 e4             	mov    -0x1c(%rbp),%edx
ffff800000108251:	88 10                	mov    %dl,(%rax)
ffff800000108253:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff800000108257:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff80000010825a:	48 98                	cltq
ffff80000010825c:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
ffff800000108260:	72 df                	jb     ffff800000108241 <memset+0x38>
ffff800000108262:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000108266:	5d                   	pop    %rbp
ffff800000108267:	c3                   	ret

ffff800000108268 <memcmp>:
ffff800000108268:	f3 0f 1e fa          	endbr64
ffff80000010826c:	55                   	push   %rbp
ffff80000010826d:	48 89 e5             	mov    %rsp,%rbp
ffff800000108270:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000108270 <memcmp+0x8>
ffff800000108277:	49 bb e0 25 00 00 00 	movabs $0x25e0,%r11
ffff80000010827e:	00 00 00 
ffff800000108281:	4c 01 d8             	add    %r11,%rax
ffff800000108284:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000108288:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
ffff80000010828c:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff800000108290:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000108294:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000108298:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010829c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff8000001082a0:	eb 34                	jmp    ffff8000001082d6 <memcmp+0x6e>
ffff8000001082a2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001082a6:	0f b6 10             	movzbl (%rax),%edx
ffff8000001082a9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001082ad:	0f b6 00             	movzbl (%rax),%eax
ffff8000001082b0:	38 c2                	cmp    %al,%dl
ffff8000001082b2:	74 18                	je     ffff8000001082cc <memcmp+0x64>
ffff8000001082b4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001082b8:	0f b6 00             	movzbl (%rax),%eax
ffff8000001082bb:	0f be d0             	movsbl %al,%edx
ffff8000001082be:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001082c2:	0f b6 00             	movzbl (%rax),%eax
ffff8000001082c5:	0f be c0             	movsbl %al,%eax
ffff8000001082c8:	29 c2                	sub    %eax,%edx
ffff8000001082ca:	eb 20                	jmp    ffff8000001082ec <memcmp+0x84>
ffff8000001082cc:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
ffff8000001082d1:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
ffff8000001082d6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001082da:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
ffff8000001082de:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff8000001082e2:	48 85 c0             	test   %rax,%rax
ffff8000001082e5:	75 bb                	jne    ffff8000001082a2 <memcmp+0x3a>
ffff8000001082e7:	ba 00 00 00 00       	mov    $0x0,%edx
ffff8000001082ec:	89 d0                	mov    %edx,%eax
ffff8000001082ee:	5d                   	pop    %rbp
ffff8000001082ef:	c3                   	ret

ffff8000001082f0 <memmove>:
ffff8000001082f0:	f3 0f 1e fa          	endbr64
ffff8000001082f4:	55                   	push   %rbp
ffff8000001082f5:	48 89 e5             	mov    %rsp,%rbp
ffff8000001082f8:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001082f8 <memmove+0x8>
ffff8000001082ff:	49 bb 58 25 00 00 00 	movabs $0x2558,%r11
ffff800000108306:	00 00 00 
ffff800000108309:	4c 01 d8             	add    %r11,%rax
ffff80000010830c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000108310:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
ffff800000108314:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff800000108318:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
ffff80000010831d:	75 09                	jne    ffff800000108328 <memmove+0x38>
ffff80000010831f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000108323:	e9 99 00 00 00       	jmp    ffff8000001083c1 <memmove+0xd1>
ffff800000108328:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010832c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000108330:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000108334:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000108338:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010833c:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
ffff800000108340:	73 6a                	jae    ffff8000001083ac <memmove+0xbc>
ffff800000108342:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000108346:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010834a:	48 01 d0             	add    %rdx,%rax
ffff80000010834d:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
ffff800000108351:	73 59                	jae    ffff8000001083ac <memmove+0xbc>
ffff800000108353:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000108357:	48 01 45 f8          	add    %rax,-0x8(%rbp)
ffff80000010835b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010835f:	48 01 45 f0          	add    %rax,-0x10(%rbp)
ffff800000108363:	eb 17                	jmp    ffff80000010837c <memmove+0x8c>
ffff800000108365:	48 83 6d f8 01       	subq   $0x1,-0x8(%rbp)
ffff80000010836a:	48 83 6d f0 01       	subq   $0x1,-0x10(%rbp)
ffff80000010836f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000108373:	0f b6 10             	movzbl (%rax),%edx
ffff800000108376:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff80000010837a:	88 10                	mov    %dl,(%rax)
ffff80000010837c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000108380:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
ffff800000108384:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff800000108388:	48 85 c0             	test   %rax,%rax
ffff80000010838b:	75 d8                	jne    ffff800000108365 <memmove+0x75>
ffff80000010838d:	eb 2e                	jmp    ffff8000001083bd <memmove+0xcd>
ffff80000010838f:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000108393:	48 8d 42 01          	lea    0x1(%rdx),%rax
ffff800000108397:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff80000010839b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff80000010839f:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff8000001083a3:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
ffff8000001083a7:	0f b6 12             	movzbl (%rdx),%edx
ffff8000001083aa:	88 10                	mov    %dl,(%rax)
ffff8000001083ac:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001083b0:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
ffff8000001083b4:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff8000001083b8:	48 85 c0             	test   %rax,%rax
ffff8000001083bb:	75 d2                	jne    ffff80000010838f <memmove+0x9f>
ffff8000001083bd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001083c1:	5d                   	pop    %rbp
ffff8000001083c2:	c3                   	ret

ffff8000001083c3 <memcpy>:
ffff8000001083c3:	f3 0f 1e fa          	endbr64
ffff8000001083c7:	55                   	push   %rbp
ffff8000001083c8:	48 89 e5             	mov    %rsp,%rbp
ffff8000001083cb:	48 83 ec 18          	sub    $0x18,%rsp
ffff8000001083cf:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001083cf <memcpy+0xc>
ffff8000001083d6:	49 bb 81 24 00 00 00 	movabs $0x2481,%r11
ffff8000001083dd:	00 00 00 
ffff8000001083e0:	4c 01 d8             	add    %r11,%rax
ffff8000001083e3:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff8000001083e7:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff8000001083eb:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001083ef:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff8000001083f3:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
ffff8000001083f7:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
ffff8000001083fb:	48 89 cf             	mov    %rcx,%rdi
ffff8000001083fe:	48 b9 a0 da ff ff ff 	movabs $0xffffffffffffdaa0,%rcx
ffff800000108405:	ff ff ff 
ffff800000108408:	48 8d 04 08          	lea    (%rax,%rcx,1),%rax
ffff80000010840c:	ff d0                	call   *%rax
ffff80000010840e:	c9                   	leave
ffff80000010840f:	c3                   	ret

ffff800000108410 <strncmp>:
ffff800000108410:	f3 0f 1e fa          	endbr64
ffff800000108414:	55                   	push   %rbp
ffff800000108415:	48 89 e5             	mov    %rsp,%rbp
ffff800000108418:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000108418 <strncmp+0x8>
ffff80000010841f:	49 bb 38 24 00 00 00 	movabs $0x2438,%r11
ffff800000108426:	00 00 00 
ffff800000108429:	4c 01 d8             	add    %r11,%rax
ffff80000010842c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000108430:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff800000108434:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000108438:	eb 0f                	jmp    ffff800000108449 <strncmp+0x39>
ffff80000010843a:	48 83 6d e8 01       	subq   $0x1,-0x18(%rbp)
ffff80000010843f:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
ffff800000108444:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
ffff800000108449:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff80000010844e:	74 1d                	je     ffff80000010846d <strncmp+0x5d>
ffff800000108450:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000108454:	0f b6 00             	movzbl (%rax),%eax
ffff800000108457:	84 c0                	test   %al,%al
ffff800000108459:	74 12                	je     ffff80000010846d <strncmp+0x5d>
ffff80000010845b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010845f:	0f b6 10             	movzbl (%rax),%edx
ffff800000108462:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000108466:	0f b6 00             	movzbl (%rax),%eax
ffff800000108469:	38 c2                	cmp    %al,%dl
ffff80000010846b:	74 cd                	je     ffff80000010843a <strncmp+0x2a>
ffff80000010846d:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff800000108472:	75 07                	jne    ffff80000010847b <strncmp+0x6b>
ffff800000108474:	ba 00 00 00 00       	mov    $0x0,%edx
ffff800000108479:	eb 16                	jmp    ffff800000108491 <strncmp+0x81>
ffff80000010847b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010847f:	0f b6 00             	movzbl (%rax),%eax
ffff800000108482:	0f be d0             	movsbl %al,%edx
ffff800000108485:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000108489:	0f b6 00             	movzbl (%rax),%eax
ffff80000010848c:	0f be c0             	movsbl %al,%eax
ffff80000010848f:	29 c2                	sub    %eax,%edx
ffff800000108491:	89 d0                	mov    %edx,%eax
ffff800000108493:	5d                   	pop    %rbp
ffff800000108494:	c3                   	ret

ffff800000108495 <strncpy>:
ffff800000108495:	f3 0f 1e fa          	endbr64
ffff800000108499:	55                   	push   %rbp
ffff80000010849a:	48 89 e5             	mov    %rsp,%rbp
ffff80000010849d:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff80000010849d <strncpy+0x8>
ffff8000001084a4:	49 bb b3 23 00 00 00 	movabs $0x23b3,%r11
ffff8000001084ab:	00 00 00 
ffff8000001084ae:	4c 01 d8             	add    %r11,%rax
ffff8000001084b1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff8000001084b5:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
ffff8000001084b9:	89 55 dc             	mov    %edx,-0x24(%rbp)
ffff8000001084bc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001084c0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff8000001084c4:	90                   	nop
ffff8000001084c5:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff8000001084c8:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001084cb:	89 55 dc             	mov    %edx,-0x24(%rbp)
ffff8000001084ce:	85 c0                	test   %eax,%eax
ffff8000001084d0:	7e 35                	jle    ffff800000108507 <strncpy+0x72>
ffff8000001084d2:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff8000001084d6:	48 8d 42 01          	lea    0x1(%rdx),%rax
ffff8000001084da:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff8000001084de:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001084e2:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff8000001084e6:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff8000001084ea:	0f b6 12             	movzbl (%rdx),%edx
ffff8000001084ed:	88 10                	mov    %dl,(%rax)
ffff8000001084ef:	0f b6 00             	movzbl (%rax),%eax
ffff8000001084f2:	84 c0                	test   %al,%al
ffff8000001084f4:	75 cf                	jne    ffff8000001084c5 <strncpy+0x30>
ffff8000001084f6:	eb 0f                	jmp    ffff800000108507 <strncpy+0x72>
ffff8000001084f8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001084fc:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000108500:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000108504:	c6 00 00             	movb   $0x0,(%rax)
ffff800000108507:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff80000010850a:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff80000010850d:	89 55 dc             	mov    %edx,-0x24(%rbp)
ffff800000108510:	85 c0                	test   %eax,%eax
ffff800000108512:	7f e4                	jg     ffff8000001084f8 <strncpy+0x63>
ffff800000108514:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000108518:	5d                   	pop    %rbp
ffff800000108519:	c3                   	ret

ffff80000010851a <safestrcpy>:
ffff80000010851a:	f3 0f 1e fa          	endbr64
ffff80000010851e:	55                   	push   %rbp
ffff80000010851f:	48 89 e5             	mov    %rsp,%rbp
ffff800000108522:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000108522 <safestrcpy+0x8>
ffff800000108529:	49 bb 2e 23 00 00 00 	movabs $0x232e,%r11
ffff800000108530:	00 00 00 
ffff800000108533:	4c 01 d8             	add    %r11,%rax
ffff800000108536:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff80000010853a:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
ffff80000010853e:	89 55 dc             	mov    %edx,-0x24(%rbp)
ffff800000108541:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000108545:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000108549:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
ffff80000010854d:	7f 06                	jg     ffff800000108555 <safestrcpy+0x3b>
ffff80000010854f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000108553:	eb 3a                	jmp    ffff80000010858f <safestrcpy+0x75>
ffff800000108555:	90                   	nop
ffff800000108556:	83 6d dc 01          	subl   $0x1,-0x24(%rbp)
ffff80000010855a:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
ffff80000010855e:	7e 24                	jle    ffff800000108584 <safestrcpy+0x6a>
ffff800000108560:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000108564:	48 8d 42 01          	lea    0x1(%rdx),%rax
ffff800000108568:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff80000010856c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000108570:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff800000108574:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff800000108578:	0f b6 12             	movzbl (%rdx),%edx
ffff80000010857b:	88 10                	mov    %dl,(%rax)
ffff80000010857d:	0f b6 00             	movzbl (%rax),%eax
ffff800000108580:	84 c0                	test   %al,%al
ffff800000108582:	75 d2                	jne    ffff800000108556 <safestrcpy+0x3c>
ffff800000108584:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000108588:	c6 00 00             	movb   $0x0,(%rax)
ffff80000010858b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010858f:	5d                   	pop    %rbp
ffff800000108590:	c3                   	ret

ffff800000108591 <strlen>:
ffff800000108591:	f3 0f 1e fa          	endbr64
ffff800000108595:	55                   	push   %rbp
ffff800000108596:	48 89 e5             	mov    %rsp,%rbp
ffff800000108599:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000108599 <strlen+0x8>
ffff8000001085a0:	49 bb b7 22 00 00 00 	movabs $0x22b7,%r11
ffff8000001085a7:	00 00 00 
ffff8000001085aa:	4c 01 d8             	add    %r11,%rax
ffff8000001085ad:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff8000001085b1:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff8000001085b8:	eb 04                	jmp    ffff8000001085be <strlen+0x2d>
ffff8000001085ba:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff8000001085be:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001085c1:	48 63 d0             	movslq %eax,%rdx
ffff8000001085c4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001085c8:	48 01 d0             	add    %rdx,%rax
ffff8000001085cb:	0f b6 00             	movzbl (%rax),%eax
ffff8000001085ce:	84 c0                	test   %al,%al
ffff8000001085d0:	75 e8                	jne    ffff8000001085ba <strlen+0x29>
ffff8000001085d2:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001085d5:	5d                   	pop    %rbp
ffff8000001085d6:	c3                   	ret

Disassembly of section .eh_frame:

ffff8000001085d8 <.eh_frame>:
ffff8000001085d8:	14 00                	adc    $0x0,%al
ffff8000001085da:	00 00                	add    %al,(%rax)
ffff8000001085dc:	00 00                	add    %al,(%rax)
ffff8000001085de:	00 00                	add    %al,(%rax)
ffff8000001085e0:	01 7a 52             	add    %edi,0x52(%rdx)
ffff8000001085e3:	00 01                	add    %al,(%rcx)
ffff8000001085e5:	78 10                	js     ffff8000001085f7 <_etext+0x20>
ffff8000001085e7:	01 1b                	add    %ebx,(%rbx)
ffff8000001085e9:	0c 07                	or     $0x7,%al
ffff8000001085eb:	08 90 01 00 00 1c    	or     %dl,0x1c000001(%rax)
ffff8000001085f1:	00 00                	add    %al,(%rax)
ffff8000001085f3:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff8000001085f6:	00 00                	add    %al,(%rax)
ffff8000001085f8:	7d bc                	jge    ffff8000001085b6 <strlen+0x25>
ffff8000001085fa:	ff                   	(bad)
ffff8000001085fb:	ff a2 00 00 00 00    	jmp    *0x0(%rdx)
ffff800000108601:	45 0e                	rex.RB (bad)
ffff800000108603:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108609:	43 8f 03             	rex.XB pop (%r11)
ffff80000010860c:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff800000108610:	1c 00                	sbb    $0x0,%al
ffff800000108612:	00 00                	add    %al,(%rax)
ffff800000108614:	3c 00                	cmp    $0x0,%al
ffff800000108616:	00 00                	add    %al,(%rax)
ffff800000108618:	ff                   	(bad)
ffff800000108619:	bc ff ff 06 01       	mov    $0x106ffff,%esp
ffff80000010861e:	00 00                	add    %al,(%rax)
ffff800000108620:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108623:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108629:	02 fd                	add    %ch,%bh
ffff80000010862b:	0c 07                	or     $0x7,%al
ffff80000010862d:	08 00                	or     %al,(%rax)
ffff80000010862f:	00 20                	add    %ah,(%rax)
ffff800000108631:	00 00                	add    %al,(%rax)
ffff800000108633:	00 5c 00 00          	add    %bl,0x0(%rax,%rax,1)
ffff800000108637:	00 e5                	add    %ah,%ch
ffff800000108639:	bd ff ff 66 05       	mov    $0x566ffff,%ebp
ffff80000010863e:	00 00                	add    %al,(%rax)
ffff800000108640:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108643:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108649:	48 83 03 03          	addq   $0x3,(%rbx)
ffff80000010864d:	55                   	push   %rbp
ffff80000010864e:	05 0c 07 08 00       	add    $0x8070c,%eax
ffff800000108653:	00 20                	add    %ah,(%rax)
ffff800000108655:	00 00                	add    %al,(%rax)
ffff800000108657:	00 80 00 00 00 27    	add    %al,0x27000000(%rax)
ffff80000010865d:	c3                   	ret
ffff80000010865e:	ff                   	(bad)
ffff80000010865f:	ff 26                	jmp    *(%rsi)
ffff800000108661:	01 00                	add    %eax,(%rax)
ffff800000108663:	00 00                	add    %al,(%rax)
ffff800000108665:	45 0e                	rex.RB (bad)
ffff800000108667:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff80000010866d:	4a 8f 03             	rex.WX pop (%rbx)
ffff800000108670:	83 04 03 13          	addl   $0x13,(%rbx,%rax,1)
ffff800000108674:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff800000108677:	08 1c 00             	or     %bl,(%rax,%rax,1)
ffff80000010867a:	00 00                	add    %al,(%rax)
ffff80000010867c:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
ffff80000010867d:	00 00                	add    %al,(%rax)
ffff80000010867f:	00 29                	add    %ch,(%rcx)
ffff800000108681:	c4                   	(bad)
ffff800000108682:	ff                   	(bad)
ffff800000108683:	ff 90 00 00 00 00    	call   *0x0(%rax)
ffff800000108689:	45 0e                	rex.RB (bad)
ffff80000010868b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108691:	45 83 03 00          	rex.RB addl $0x0,(%r11)
ffff800000108695:	00 00                	add    %al,(%rax)
ffff800000108697:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff80000010869a:	00 00                	add    %al,(%rax)
ffff80000010869c:	c4                   	(bad)
ffff80000010869d:	00 00                	add    %al,(%rax)
ffff80000010869f:	00 99 c4 ff ff ce    	add    %bl,-0x3100003c(%rcx)
ffff8000001086a5:	01 00                	add    %eax,(%rax)
ffff8000001086a7:	00 00                	add    %al,(%rax)
ffff8000001086a9:	45 0e                	rex.RB (bad)
ffff8000001086ab:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001086b1:	03 c5                	add    %ebp,%eax
ffff8000001086b3:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff8000001086b6:	08 00                	or     %al,(%rax)
ffff8000001086b8:	18 00                	sbb    %al,(%rax)
ffff8000001086ba:	00 00                	add    %al,(%rax)
ffff8000001086bc:	e4 00                	in     $0x0,%al
ffff8000001086be:	00 00                	add    %al,(%rax)
ffff8000001086c0:	47 c6                	rex.RXB (bad)
ffff8000001086c2:	ff                   	(bad)
ffff8000001086c3:	ff 4d 00             	decl   0x0(%rbp)
ffff8000001086c6:	00 00                	add    %al,(%rax)
ffff8000001086c8:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001086cb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001086d1:	46 8f 03             	rex.RX pop (%rbx)
ffff8000001086d4:	20 00                	and    %al,(%rax)
ffff8000001086d6:	00 00                	add    %al,(%rax)
ffff8000001086d8:	00 01                	add    %al,(%rcx)
ffff8000001086da:	00 00                	add    %al,(%rax)
ffff8000001086dc:	78 c6                	js     ffff8000001086a4 <_etext+0xcd>
ffff8000001086de:	ff                   	(bad)
ffff8000001086df:	ff 69 00             	ljmp   *0x0(%rcx)
ffff8000001086e2:	00 00                	add    %al,(%rax)
ffff8000001086e4:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001086e7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001086ed:	49 8f 03             	rex.WB pop (%r11)
ffff8000001086f0:	02 57 0c             	add    0xc(%rdi),%dl
ffff8000001086f3:	07                   	(bad)
ffff8000001086f4:	08 00                	or     %al,(%rax)
ffff8000001086f6:	00 00                	add    %al,(%rax)
ffff8000001086f8:	18 00                	sbb    %al,(%rax)
ffff8000001086fa:	00 00                	add    %al,(%rax)
ffff8000001086fc:	24 01                	and    $0x1,%al
ffff8000001086fe:	00 00                	add    %al,(%rax)
ffff800000108700:	bd c6 ff ff 58       	mov    $0x58ffffc6,%ebp
ffff800000108705:	00 00                	add    %al,(%rax)
ffff800000108707:	00 00                	add    %al,(%rax)
ffff800000108709:	45 0e                	rex.RB (bad)
ffff80000010870b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108711:	46 8f 03             	rex.RX pop (%rbx)
ffff800000108714:	20 00                	and    %al,(%rax)
ffff800000108716:	00 00                	add    %al,(%rax)
ffff800000108718:	40 01 00             	rex add %eax,(%rax)
ffff80000010871b:	00 f9                	add    %bh,%cl
ffff80000010871d:	c6                   	(bad)
ffff80000010871e:	ff                   	(bad)
ffff80000010871f:	ff 87 01 00 00 00    	incl   0x1(%rdi)
ffff800000108725:	45 0e                	rex.RB (bad)
ffff800000108727:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff80000010872d:	47 8f 03             	rex.RXB pop (%r11)
ffff800000108730:	83 04 03 77          	addl   $0x77,(%rbx,%rax,1)
ffff800000108734:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff800000108737:	08 20                	or     %ah,(%rax)
ffff800000108739:	00 00                	add    %al,(%rax)
ffff80000010873b:	00 64 01 00          	add    %ah,0x0(%rcx,%rax,1)
ffff80000010873f:	00 8a c8 ff ff db    	add    %cl,-0x24000038(%rdx)
ffff800000108745:	00 00                	add    %al,(%rax)
ffff800000108747:	00 00                	add    %al,(%rax)
ffff800000108749:	45 0e                	rex.RB (bad)
ffff80000010874b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108751:	4a 8f 03             	rex.WX pop (%rbx)
ffff800000108754:	83 04 02 c8          	addl   $0xffffffc8,(%rdx,%rax,1)
ffff800000108758:	0c 07                	or     $0x7,%al
ffff80000010875a:	08 00                	or     %al,(%rax)
ffff80000010875c:	1c 00                	sbb    $0x0,%al
ffff80000010875e:	00 00                	add    %al,(%rax)
ffff800000108760:	88 01                	mov    %al,(%rcx)
ffff800000108762:	00 00                	add    %al,(%rax)
ffff800000108764:	41 c9                	rex.B leave
ffff800000108766:	ff                   	(bad)
ffff800000108767:	ff 1f                	lcall  *(%rdi)
ffff800000108769:	00 00                	add    %al,(%rax)
ffff80000010876b:	00 00                	add    %al,(%rax)
ffff80000010876d:	45 0e                	rex.RB (bad)
ffff80000010876f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108775:	56                   	push   %rsi
ffff800000108776:	0c 07                	or     $0x7,%al
ffff800000108778:	08 00                	or     %al,(%rax)
ffff80000010877a:	00 00                	add    %al,(%rax)
ffff80000010877c:	1c 00                	sbb    $0x0,%al
ffff80000010877e:	00 00                	add    %al,(%rax)
ffff800000108780:	a8 01                	test   $0x1,%al
ffff800000108782:	00 00                	add    %al,(%rax)
ffff800000108784:	40 c9                	rex leave
ffff800000108786:	ff                   	(bad)
ffff800000108787:	ff 1f                	lcall  *(%rdi)
ffff800000108789:	00 00                	add    %al,(%rax)
ffff80000010878b:	00 00                	add    %al,(%rax)
ffff80000010878d:	45 0e                	rex.RB (bad)
ffff80000010878f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108795:	56                   	push   %rsi
ffff800000108796:	0c 07                	or     $0x7,%al
ffff800000108798:	08 00                	or     %al,(%rax)
ffff80000010879a:	00 00                	add    %al,(%rax)
ffff80000010879c:	20 00                	and    %al,(%rax)
ffff80000010879e:	00 00                	add    %al,(%rax)
ffff8000001087a0:	c8 01 00 00          	enter  $0x1,$0x0
ffff8000001087a4:	3f                   	(bad)
ffff8000001087a5:	c9                   	leave
ffff8000001087a6:	ff                   	(bad)
ffff8000001087a7:	ff                   	lcall  (bad)
ffff8000001087a8:	db 00                	fildl  (%rax)
ffff8000001087aa:	00 00                	add    %al,(%rax)
ffff8000001087ac:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001087af:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001087b5:	47 8f 03             	rex.RXB pop (%r11)
ffff8000001087b8:	83 04 02 cb          	addl   $0xffffffcb,(%rdx,%rax,1)
ffff8000001087bc:	0c 07                	or     $0x7,%al
ffff8000001087be:	08 00                	or     %al,(%rax)
ffff8000001087c0:	24 00                	and    $0x0,%al
ffff8000001087c2:	00 00                	add    %al,(%rax)
ffff8000001087c4:	ec                   	in     (%dx),%al
ffff8000001087c5:	01 00                	add    %eax,(%rax)
ffff8000001087c7:	00 f6                	add    %dh,%dh
ffff8000001087c9:	c9                   	leave
ffff8000001087ca:	ff                   	(bad)
ffff8000001087cb:	ff f4                	push   %rsp
ffff8000001087cd:	01 00                	add    %eax,(%rax)
ffff8000001087cf:	00 00                	add    %al,(%rax)
ffff8000001087d1:	45 0e                	rex.RB (bad)
ffff8000001087d3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001087d9:	4a 8f 03             	rex.WX pop (%rbx)
ffff8000001087dc:	83 04 03 e1          	addl   $0xffffffe1,(%rbx,%rax,1)
ffff8000001087e0:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff8000001087e3:	08 00                	or     %al,(%rax)
ffff8000001087e5:	00 00                	add    %al,(%rax)
ffff8000001087e7:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff8000001087ea:	00 00                	add    %al,(%rax)
ffff8000001087ec:	14 02                	adc    $0x2,%al
ffff8000001087ee:	00 00                	add    %al,(%rax)
ffff8000001087f0:	c2 cb ff             	ret    $0xffcb
ffff8000001087f3:	ff 30                	push   (%rax)
ffff8000001087f5:	03 00                	add    (%rax),%eax
ffff8000001087f7:	00 00                	add    %al,(%rax)
ffff8000001087f9:	45 0e                	rex.RB (bad)
ffff8000001087fb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108801:	03 27                	add    (%rdi),%esp
ffff800000108803:	03 0c 07             	add    (%rdi,%rax,1),%ecx
ffff800000108806:	08 00                	or     %al,(%rax)
ffff800000108808:	20 00                	and    %al,(%rax)
ffff80000010880a:	00 00                	add    %al,(%rax)
ffff80000010880c:	34 02                	xor    $0x2,%al
ffff80000010880e:	00 00                	add    %al,(%rax)
ffff800000108810:	d2 ce                	ror    %cl,%dh
ffff800000108812:	ff                   	(bad)
ffff800000108813:	ff ab 04 00 00 00    	ljmp   *0x4(%rbx)
ffff800000108819:	45 0e                	rex.RB (bad)
ffff80000010881b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108821:	45 83 03 03          	rex.RB addl $0x3,(%r11)
ffff800000108825:	9d                   	popf
ffff800000108826:	04 0c                	add    $0xc,%al
ffff800000108828:	07                   	(bad)
ffff800000108829:	08 00                	or     %al,(%rax)
ffff80000010882b:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff80000010882e:	00 00                	add    %al,(%rax)
ffff800000108830:	58                   	pop    %rax
ffff800000108831:	02 00                	add    (%rax),%al
ffff800000108833:	00 59 d3             	add    %bl,-0x2d(%rcx)
ffff800000108836:	ff                   	(bad)
ffff800000108837:	ff d3                	call   *%rbx
ffff800000108839:	00 00                	add    %al,(%rax)
ffff80000010883b:	00 00                	add    %al,(%rax)
ffff80000010883d:	45 0e                	rex.RB (bad)
ffff80000010883f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108845:	02 ca                	add    %dl,%cl
ffff800000108847:	0c 07                	or     $0x7,%al
ffff800000108849:	08 00                	or     %al,(%rax)
ffff80000010884b:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff80000010884e:	00 00                	add    %al,(%rax)
ffff800000108850:	78 02                	js     ffff800000108854 <_etext+0x27d>
ffff800000108852:	00 00                	add    %al,(%rax)
ffff800000108854:	0c d4                	or     $0xd4,%al
ffff800000108856:	ff                   	(bad)
ffff800000108857:	ff d5                	call   *%rbp
ffff800000108859:	00 00                	add    %al,(%rax)
ffff80000010885b:	00 00                	add    %al,(%rax)
ffff80000010885d:	45 0e                	rex.RB (bad)
ffff80000010885f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108865:	02 cc                	add    %ah,%cl
ffff800000108867:	0c 07                	or     $0x7,%al
ffff800000108869:	08 00                	or     %al,(%rax)
ffff80000010886b:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff80000010886e:	00 00                	add    %al,(%rax)
ffff800000108870:	98                   	cwtl
ffff800000108871:	02 00                	add    (%rax),%al
ffff800000108873:	00 c1                	add    %al,%cl
ffff800000108875:	d4                   	(bad)
ffff800000108876:	ff                   	(bad)
ffff800000108877:	ff                   	lcall  (bad)
ffff800000108878:	d8 00                	fadds  (%rax)
ffff80000010887a:	00 00                	add    %al,(%rax)
ffff80000010887c:	00 45 0e             	add    %al,0xe(%rbp)
ffff80000010887f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108885:	02 cf                	add    %bh,%cl
ffff800000108887:	0c 07                	or     $0x7,%al
ffff800000108889:	08 00                	or     %al,(%rax)
ffff80000010888b:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff80000010888e:	00 00                	add    %al,(%rax)
ffff800000108890:	b8 02 00 00 79       	mov    $0x79000002,%eax
ffff800000108895:	d5 ff ff db          	{rex2 0xff} ud0 %r27,%r27
ffff800000108899:	00 00                	add    %al,(%rax)
ffff80000010889b:	00 00                	add    %al,(%rax)
ffff80000010889d:	45 0e                	rex.RB (bad)
ffff80000010889f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001088a5:	02 d2                	add    %dl,%dl
ffff8000001088a7:	0c 07                	or     $0x7,%al
ffff8000001088a9:	08 00                	or     %al,(%rax)
ffff8000001088ab:	00 18                	add    %bl,(%rax)
ffff8000001088ad:	00 00                	add    %al,(%rax)
ffff8000001088af:	00 d8                	add    %bl,%al
ffff8000001088b1:	02 00                	add    (%rax),%al
ffff8000001088b3:	00 34 d6             	add    %dh,(%rsi,%rdx,8)
ffff8000001088b6:	ff                   	(bad)
ffff8000001088b7:	ff                   	(bad)
ffff8000001088b8:	7e 00                	jle    ffff8000001088ba <_etext+0x2e3>
ffff8000001088ba:	00 00                	add    %al,(%rax)
ffff8000001088bc:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001088bf:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001088c5:	46 8f 03             	rex.RX pop (%rbx)
ffff8000001088c8:	18 00                	sbb    %al,(%rax)
ffff8000001088ca:	00 00                	add    %al,(%rax)
ffff8000001088cc:	f4                   	hlt
ffff8000001088cd:	02 00                	add    (%rax),%al
ffff8000001088cf:	00 96 d6 ff ff 7e    	add    %dl,0x7effffd6(%rsi)
ffff8000001088d5:	00 00                	add    %al,(%rax)
ffff8000001088d7:	00 00                	add    %al,(%rax)
ffff8000001088d9:	45 0e                	rex.RB (bad)
ffff8000001088db:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001088e1:	46 8f 03             	rex.RX pop (%rbx)
ffff8000001088e4:	18 00                	sbb    %al,(%rax)
ffff8000001088e6:	00 00                	add    %al,(%rax)
ffff8000001088e8:	10 03                	adc    %al,(%rbx)
ffff8000001088ea:	00 00                	add    %al,(%rax)
ffff8000001088ec:	f8                   	clc
ffff8000001088ed:	d6                   	(bad)
ffff8000001088ee:	ff                   	(bad)
ffff8000001088ef:	ff                   	(bad)
ffff8000001088f0:	7e 00                	jle    ffff8000001088f2 <_etext+0x31b>
ffff8000001088f2:	00 00                	add    %al,(%rax)
ffff8000001088f4:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001088f7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001088fd:	46 8f 03             	rex.RX pop (%rbx)
ffff800000108900:	18 00                	sbb    %al,(%rax)
ffff800000108902:	00 00                	add    %al,(%rax)
ffff800000108904:	2c 03                	sub    $0x3,%al
ffff800000108906:	00 00                	add    %al,(%rax)
ffff800000108908:	5a                   	pop    %rdx
ffff800000108909:	d7                   	xlat   %ds:(%rbx)
ffff80000010890a:	ff                   	(bad)
ffff80000010890b:	ff                   	(bad)
ffff80000010890c:	7e 00                	jle    ffff80000010890e <_etext+0x337>
ffff80000010890e:	00 00                	add    %al,(%rax)
ffff800000108910:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108913:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108919:	46 8f 03             	rex.RX pop (%rbx)
ffff80000010891c:	18 00                	sbb    %al,(%rax)
ffff80000010891e:	00 00                	add    %al,(%rax)
ffff800000108920:	48 03 00             	add    (%rax),%rax
ffff800000108923:	00 bc d7 ff ff 7e 00 	add    %bh,0x7effff(%rdi,%rdx,8)
ffff80000010892a:	00 00                	add    %al,(%rax)
ffff80000010892c:	00 45 0e             	add    %al,0xe(%rbp)
ffff80000010892f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108935:	46 8f 03             	rex.RX pop (%rbx)
ffff800000108938:	18 00                	sbb    %al,(%rax)
ffff80000010893a:	00 00                	add    %al,(%rax)
ffff80000010893c:	64 03 00             	add    %fs:(%rax),%eax
ffff80000010893f:	00 1e                	add    %bl,(%rsi)
ffff800000108941:	d8 ff                	fdivr  %st(7),%st
ffff800000108943:	ff                   	(bad)
ffff800000108944:	7e 00                	jle    ffff800000108946 <_etext+0x36f>
ffff800000108946:	00 00                	add    %al,(%rax)
ffff800000108948:	00 45 0e             	add    %al,0xe(%rbp)
ffff80000010894b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108951:	46 8f 03             	rex.RX pop (%rbx)
ffff800000108954:	18 00                	sbb    %al,(%rax)
ffff800000108956:	00 00                	add    %al,(%rax)
ffff800000108958:	80 03 00             	addb   $0x0,(%rbx)
ffff80000010895b:	00 80 d8 ff ff 7e    	add    %al,0x7effffd8(%rax)
ffff800000108961:	00 00                	add    %al,(%rax)
ffff800000108963:	00 00                	add    %al,(%rax)
ffff800000108965:	45 0e                	rex.RB (bad)
ffff800000108967:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff80000010896d:	46 8f 03             	rex.RX pop (%rbx)
ffff800000108970:	18 00                	sbb    %al,(%rax)
ffff800000108972:	00 00                	add    %al,(%rax)
ffff800000108974:	9c                   	pushf
ffff800000108975:	03 00                	add    (%rax),%eax
ffff800000108977:	00 e2                	add    %ah,%dl
ffff800000108979:	d8 ff                	fdivr  %st(7),%st
ffff80000010897b:	ff                   	(bad)
ffff80000010897c:	7e 00                	jle    ffff80000010897e <_etext+0x3a7>
ffff80000010897e:	00 00                	add    %al,(%rax)
ffff800000108980:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108983:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108989:	46 8f 03             	rex.RX pop (%rbx)
ffff80000010898c:	18 00                	sbb    %al,(%rax)
ffff80000010898e:	00 00                	add    %al,(%rax)
ffff800000108990:	b8 03 00 00 44       	mov    $0x44000003,%eax
ffff800000108995:	d9 ff                	fcos
ffff800000108997:	ff                   	(bad)
ffff800000108998:	7e 00                	jle    ffff80000010899a <_etext+0x3c3>
ffff80000010899a:	00 00                	add    %al,(%rax)
ffff80000010899c:	00 45 0e             	add    %al,0xe(%rbp)
ffff80000010899f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001089a5:	46 8f 03             	rex.RX pop (%rbx)
ffff8000001089a8:	18 00                	sbb    %al,(%rax)
ffff8000001089aa:	00 00                	add    %al,(%rax)
ffff8000001089ac:	d4                   	(bad)
ffff8000001089ad:	03 00                	add    (%rax),%eax
ffff8000001089af:	00 a6 d9 ff ff 7e    	add    %ah,0x7effffd9(%rsi)
ffff8000001089b5:	00 00                	add    %al,(%rax)
ffff8000001089b7:	00 00                	add    %al,(%rax)
ffff8000001089b9:	45 0e                	rex.RB (bad)
ffff8000001089bb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001089c1:	46 8f 03             	rex.RX pop (%rbx)
ffff8000001089c4:	1c 00                	sbb    $0x0,%al
ffff8000001089c6:	00 00                	add    %al,(%rax)
ffff8000001089c8:	f0 03 00             	lock add (%rax),%eax
ffff8000001089cb:	00 08                	add    %cl,(%rax)
ffff8000001089cd:	da ff                	(bad)
ffff8000001089cf:	ff af 01 00 00 00    	ljmp   *0x1(%rdi)
ffff8000001089d5:	45 0e                	rex.RB (bad)
ffff8000001089d7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001089dd:	47 8f 03             	rex.RXB pop (%r11)
ffff8000001089e0:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff8000001089e4:	1c 00                	sbb    $0x0,%al
ffff8000001089e6:	00 00                	add    %al,(%rax)
ffff8000001089e8:	10 04 00             	adc    %al,(%rax,%rax,1)
ffff8000001089eb:	00 97 db ff ff af    	add    %dl,-0x50000025(%rdi)
ffff8000001089f1:	01 00                	add    %eax,(%rax)
ffff8000001089f3:	00 00                	add    %al,(%rax)
ffff8000001089f5:	45 0e                	rex.RB (bad)
ffff8000001089f7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001089fd:	47 8f 03             	rex.RXB pop (%r11)
ffff800000108a00:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff800000108a04:	1c 00                	sbb    $0x0,%al
ffff800000108a06:	00 00                	add    %al,(%rax)
ffff800000108a08:	30 04 00             	xor    %al,(%rax,%rax,1)
ffff800000108a0b:	00 26                	add    %ah,(%rsi)
ffff800000108a0d:	dd ff                	(bad)
ffff800000108a0f:	ff af 01 00 00 00    	ljmp   *0x1(%rdi)
ffff800000108a15:	45 0e                	rex.RB (bad)
ffff800000108a17:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108a1d:	47 8f 03             	rex.RXB pop (%r11)
ffff800000108a20:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff800000108a24:	1c 00                	sbb    $0x0,%al
ffff800000108a26:	00 00                	add    %al,(%rax)
ffff800000108a28:	50                   	push   %rax
ffff800000108a29:	04 00                	add    $0x0,%al
ffff800000108a2b:	00 b5 de ff ff af    	add    %dh,-0x50000022(%rbp)
ffff800000108a31:	01 00                	add    %eax,(%rax)
ffff800000108a33:	00 00                	add    %al,(%rax)
ffff800000108a35:	45 0e                	rex.RB (bad)
ffff800000108a37:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108a3d:	47 8f 03             	rex.RXB pop (%r11)
ffff800000108a40:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff800000108a44:	1c 00                	sbb    $0x0,%al
ffff800000108a46:	00 00                	add    %al,(%rax)
ffff800000108a48:	70 04                	jo     ffff800000108a4e <_etext+0x477>
ffff800000108a4a:	00 00                	add    %al,(%rax)
ffff800000108a4c:	44 e0 ff             	rex.R loopne ffff800000108a4e <_etext+0x477>
ffff800000108a4f:	ff                   	(bad)
ffff800000108a50:	3d 02 00 00 00       	cmp    $0x2,%eax
ffff800000108a55:	45 0e                	rex.RB (bad)
ffff800000108a57:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108a5d:	47 8f 03             	rex.RXB pop (%r11)
ffff800000108a60:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff800000108a64:	18 00                	sbb    %al,(%rax)
ffff800000108a66:	00 00                	add    %al,(%rax)
ffff800000108a68:	90                   	nop
ffff800000108a69:	04 00                	add    $0x0,%al
ffff800000108a6b:	00 61 e2             	add    %ah,-0x1e(%rcx)
ffff800000108a6e:	ff                   	(bad)
ffff800000108a6f:	ff                   	(bad)
ffff800000108a70:	7e 00                	jle    ffff800000108a72 <_etext+0x49b>
ffff800000108a72:	00 00                	add    %al,(%rax)
ffff800000108a74:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108a77:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108a7d:	46 8f 03             	rex.RX pop (%rbx)
ffff800000108a80:	18 00                	sbb    %al,(%rax)
ffff800000108a82:	00 00                	add    %al,(%rax)
ffff800000108a84:	ac                   	lods   %ds:(%rsi),%al
ffff800000108a85:	04 00                	add    $0x0,%al
ffff800000108a87:	00 c3                	add    %al,%bl
ffff800000108a89:	e2 ff                	loop   ffff800000108a8a <_etext+0x4b3>
ffff800000108a8b:	ff                   	(bad)
ffff800000108a8c:	7e 00                	jle    ffff800000108a8e <_etext+0x4b7>
ffff800000108a8e:	00 00                	add    %al,(%rax)
ffff800000108a90:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108a93:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108a99:	46 8f 03             	rex.RX pop (%rbx)
ffff800000108a9c:	18 00                	sbb    %al,(%rax)
ffff800000108a9e:	00 00                	add    %al,(%rax)
ffff800000108aa0:	c8 04 00 00          	enter  $0x4,$0x0
ffff800000108aa4:	25 e3 ff ff 7e       	and    $0x7effffe3,%eax
ffff800000108aa9:	00 00                	add    %al,(%rax)
ffff800000108aab:	00 00                	add    %al,(%rax)
ffff800000108aad:	45 0e                	rex.RB (bad)
ffff800000108aaf:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108ab5:	46 8f 03             	rex.RX pop (%rbx)
ffff800000108ab8:	18 00                	sbb    %al,(%rax)
ffff800000108aba:	00 00                	add    %al,(%rax)
ffff800000108abc:	e4 04                	in     $0x4,%al
ffff800000108abe:	00 00                	add    %al,(%rax)
ffff800000108ac0:	87 e3                	xchg   %esp,%ebx
ffff800000108ac2:	ff                   	(bad)
ffff800000108ac3:	ff                   	(bad)
ffff800000108ac4:	7e 00                	jle    ffff800000108ac6 <_etext+0x4ef>
ffff800000108ac6:	00 00                	add    %al,(%rax)
ffff800000108ac8:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108acb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108ad1:	46 8f 03             	rex.RX pop (%rbx)
ffff800000108ad4:	18 00                	sbb    %al,(%rax)
ffff800000108ad6:	00 00                	add    %al,(%rax)
ffff800000108ad8:	00 05 00 00 e9 e3    	add    %al,-0x1c170000(%rip)        # ffff7fffe3f98ade <OLDSS+0xffff7fffe3f98a26>
ffff800000108ade:	ff                   	(bad)
ffff800000108adf:	ff                   	(bad)
ffff800000108ae0:	7e 00                	jle    ffff800000108ae2 <_etext+0x50b>
ffff800000108ae2:	00 00                	add    %al,(%rax)
ffff800000108ae4:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108ae7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108aed:	46 8f 03             	rex.RX pop (%rbx)
ffff800000108af0:	1c 00                	sbb    $0x0,%al
ffff800000108af2:	00 00                	add    %al,(%rax)
ffff800000108af4:	1c 05                	sbb    $0x5,%al
ffff800000108af6:	00 00                	add    %al,(%rax)
ffff800000108af8:	4b e4 ff             	rex.WXB in $0xff,%al
ffff800000108afb:	ff                   	(bad)
ffff800000108afc:	39 00                	cmp    %eax,(%rax)
ffff800000108afe:	00 00                	add    %al,(%rax)
ffff800000108b00:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108b03:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108b09:	70 0c                	jo     ffff800000108b17 <_etext+0x540>
ffff800000108b0b:	07                   	(bad)
ffff800000108b0c:	08 00                	or     %al,(%rax)
ffff800000108b0e:	00 00                	add    %al,(%rax)
ffff800000108b10:	1c 00                	sbb    $0x0,%al
ffff800000108b12:	00 00                	add    %al,(%rax)
ffff800000108b14:	3c 05                	cmp    $0x5,%al
ffff800000108b16:	00 00                	add    %al,(%rax)
ffff800000108b18:	64 e4 ff             	fs in  $0xff,%al
ffff800000108b1b:	ff 36                	push   (%rsi)
ffff800000108b1d:	00 00                	add    %al,(%rax)
ffff800000108b1f:	00 00                	add    %al,(%rax)
ffff800000108b21:	45 0e                	rex.RB (bad)
ffff800000108b23:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108b29:	6d                   	insl   (%dx),%es:(%rdi)
ffff800000108b2a:	0c 07                	or     $0x7,%al
ffff800000108b2c:	08 00                	or     %al,(%rax)
ffff800000108b2e:	00 00                	add    %al,(%rax)
ffff800000108b30:	20 00                	and    %al,(%rax)
ffff800000108b32:	00 00                	add    %al,(%rax)
ffff800000108b34:	5c                   	pop    %rsp
ffff800000108b35:	05 00 00 7a e4       	add    $0xe47a0000,%eax
ffff800000108b3a:	ff                   	(bad)
ffff800000108b3b:	ff e1                	jmp    *%rcx
ffff800000108b3d:	01 00                	add    %eax,(%rax)
ffff800000108b3f:	00 00                	add    %al,(%rax)
ffff800000108b41:	45 0e                	rex.RB (bad)
ffff800000108b43:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108b49:	43 8f 03             	rex.XB pop (%r11)
ffff800000108b4c:	83 04 03 d5          	addl   $0xffffffd5,(%rbx,%rax,1)
ffff800000108b50:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff800000108b53:	08 20                	or     %ah,(%rax)
ffff800000108b55:	00 00                	add    %al,(%rax)
ffff800000108b57:	00 80 05 00 00 37    	add    %al,0x37000005(%rax)
ffff800000108b5d:	e6 ff                	out    %al,$0xff
ffff800000108b5f:	ff 67 00             	jmp    *0x0(%rdi)
ffff800000108b62:	00 00                	add    %al,(%rax)
ffff800000108b64:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108b67:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108b6d:	43 8f 03             	rex.XB pop (%r11)
ffff800000108b70:	83 04 02 5b          	addl   $0x5b,(%rdx,%rax,1)
ffff800000108b74:	0c 07                	or     $0x7,%al
ffff800000108b76:	08 00                	or     %al,(%rax)
ffff800000108b78:	20 00                	and    %al,(%rax)
ffff800000108b7a:	00 00                	add    %al,(%rax)
ffff800000108b7c:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
ffff800000108b7d:	05 00 00 7a e6       	add    $0xe67a0000,%eax
ffff800000108b82:	ff                   	(bad)
ffff800000108b83:	ff 96 00 00 00 00    	call   *0x0(%rsi)
ffff800000108b89:	45 0e                	rex.RB (bad)
ffff800000108b8b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108b91:	47 8f 03             	rex.RXB pop (%r11)
ffff800000108b94:	83 04 02 86          	addl   $0xffffff86,(%rdx,%rax,1)
ffff800000108b98:	0c 07                	or     $0x7,%al
ffff800000108b9a:	08 00                	or     %al,(%rax)
ffff800000108b9c:	20 00                	and    %al,(%rax)
ffff800000108b9e:	00 00                	add    %al,(%rax)
ffff800000108ba0:	c8 05 00 00          	enter  $0x5,$0x0
ffff800000108ba4:	ec                   	in     (%dx),%al
ffff800000108ba5:	e6 ff                	out    %al,$0xff
ffff800000108ba7:	ff 81 00 00 00 00    	incl   0x0(%rcx)
ffff800000108bad:	45 0e                	rex.RB (bad)
ffff800000108baf:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108bb5:	43 8f 03             	rex.XB pop (%r11)
ffff800000108bb8:	83 04 02 75          	addl   $0x75,(%rdx,%rax,1)
ffff800000108bbc:	0c 07                	or     $0x7,%al
ffff800000108bbe:	08 00                	or     %al,(%rax)
ffff800000108bc0:	20 00                	and    %al,(%rax)
ffff800000108bc2:	00 00                	add    %al,(%rax)
ffff800000108bc4:	ec                   	in     (%dx),%al
ffff800000108bc5:	05 00 00 49 e7       	add    $0xe7490000,%eax
ffff800000108bca:	ff                   	(bad)
ffff800000108bcb:	ff c1                	inc    %ecx
ffff800000108bcd:	01 00                	add    %eax,(%rax)
ffff800000108bcf:	00 00                	add    %al,(%rax)
ffff800000108bd1:	45 0e                	rex.RB (bad)
ffff800000108bd3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108bd9:	47 8f 03             	rex.RXB pop (%r11)
ffff800000108bdc:	83 04 03 b1          	addl   $0xffffffb1,(%rbx,%rax,1)
ffff800000108be0:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff800000108be3:	08 20                	or     %ah,(%rax)
ffff800000108be5:	00 00                	add    %al,(%rax)
ffff800000108be7:	00 10                	add    %dl,(%rax)
ffff800000108be9:	06                   	(bad)
ffff800000108bea:	00 00                	add    %al,(%rax)
ffff800000108bec:	e6 e8                	out    %al,$0xe8
ffff800000108bee:	ff                   	(bad)
ffff800000108bef:	ff ae 00 00 00 00    	ljmp   *0x0(%rsi)
ffff800000108bf5:	45 0e                	rex.RB (bad)
ffff800000108bf7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108bfd:	47 8f 03             	rex.RXB pop (%r11)
ffff800000108c00:	83 04 02 9e          	addl   $0xffffff9e,(%rdx,%rax,1)
ffff800000108c04:	0c 07                	or     $0x7,%al
ffff800000108c06:	08 00                	or     %al,(%rax)
ffff800000108c08:	20 00                	and    %al,(%rax)
ffff800000108c0a:	00 00                	add    %al,(%rax)
ffff800000108c0c:	34 06                	xor    $0x6,%al
ffff800000108c0e:	00 00                	add    %al,(%rax)
ffff800000108c10:	70 e9                	jo     ffff800000108bfb <_etext+0x624>
ffff800000108c12:	ff                   	(bad)
ffff800000108c13:	ff c8                	dec    %eax
ffff800000108c15:	00 00                	add    %al,(%rax)
ffff800000108c17:	00 00                	add    %al,(%rax)
ffff800000108c19:	45 0e                	rex.RB (bad)
ffff800000108c1b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108c21:	47 8f 03             	rex.RXB pop (%r11)
ffff800000108c24:	83 04 02 b8          	addl   $0xffffffb8,(%rdx,%rax,1)
ffff800000108c28:	0c 07                	or     $0x7,%al
ffff800000108c2a:	08 00                	or     %al,(%rax)
ffff800000108c2c:	20 00                	and    %al,(%rax)
ffff800000108c2e:	00 00                	add    %al,(%rax)
ffff800000108c30:	58                   	pop    %rax
ffff800000108c31:	06                   	(bad)
ffff800000108c32:	00 00                	add    %al,(%rax)
ffff800000108c34:	14 ea                	adc    $0xea,%al
ffff800000108c36:	ff                   	(bad)
ffff800000108c37:	ff 84 00 00 00 00 45 	incl   0x45000000(%rax,%rax,1)
ffff800000108c3e:	0e                   	(bad)
ffff800000108c3f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108c45:	46 8f 03             	rex.RX pop (%rbx)
ffff800000108c48:	02 75 0c             	add    0xc(%rbp),%dh
ffff800000108c4b:	07                   	(bad)
ffff800000108c4c:	08 00                	or     %al,(%rax)
ffff800000108c4e:	00 00                	add    %al,(%rax)
ffff800000108c50:	20 00                	and    %al,(%rax)
ffff800000108c52:	00 00                	add    %al,(%rax)
ffff800000108c54:	7c 06                	jl     ffff800000108c5c <_etext+0x685>
ffff800000108c56:	00 00                	add    %al,(%rax)
ffff800000108c58:	74 ea                	je     ffff800000108c44 <_etext+0x66d>
ffff800000108c5a:	ff                   	(bad)
ffff800000108c5b:	ff                   	ljmp   (bad)
ffff800000108c5c:	e8 00 00 00 00       	call   ffff800000108c61 <_etext+0x68a>
ffff800000108c61:	45 0e                	rex.RB (bad)
ffff800000108c63:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108c69:	47 8f 03             	rex.RXB pop (%r11)
ffff800000108c6c:	83 04 02 d8          	addl   $0xffffffd8,(%rdx,%rax,1)
ffff800000108c70:	0c 07                	or     $0x7,%al
ffff800000108c72:	08 00                	or     %al,(%rax)
ffff800000108c74:	20 00                	and    %al,(%rax)
ffff800000108c76:	00 00                	add    %al,(%rax)
ffff800000108c78:	a0 06 00 00 38 eb ff 	movabs 0xf7ffffeb38000006,%al
ffff800000108c7f:	ff f7 
ffff800000108c81:	00 00                	add    %al,(%rax)
ffff800000108c83:	00 00                	add    %al,(%rax)
ffff800000108c85:	45 0e                	rex.RB (bad)
ffff800000108c87:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108c8d:	47 8f 03             	rex.RXB pop (%r11)
ffff800000108c90:	83 04 02 e7          	addl   $0xffffffe7,(%rdx,%rax,1)
ffff800000108c94:	0c 07                	or     $0x7,%al
ffff800000108c96:	08 00                	or     %al,(%rax)
ffff800000108c98:	20 00                	and    %al,(%rax)
ffff800000108c9a:	00 00                	add    %al,(%rax)
ffff800000108c9c:	c4                   	(bad)
ffff800000108c9d:	06                   	(bad)
ffff800000108c9e:	00 00                	add    %al,(%rax)
ffff800000108ca0:	0b ec                	or     %esp,%ebp
ffff800000108ca2:	ff                   	(bad)
ffff800000108ca3:	ff 27                	jmp    *(%rdi)
ffff800000108ca5:	01 00                	add    %eax,(%rax)
ffff800000108ca7:	00 00                	add    %al,(%rax)
ffff800000108ca9:	45 0e                	rex.RB (bad)
ffff800000108cab:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108cb1:	45 83 03 03          	rex.RB addl $0x3,(%r11)
ffff800000108cb5:	19 01                	sbb    %eax,(%rcx)
ffff800000108cb7:	0c 07                	or     $0x7,%al
ffff800000108cb9:	08 00                	or     %al,(%rax)
ffff800000108cbb:	00 20                	add    %ah,(%rax)
ffff800000108cbd:	00 00                	add    %al,(%rax)
ffff800000108cbf:	00 e8                	add    %ch,%al
ffff800000108cc1:	06                   	(bad)
ffff800000108cc2:	00 00                	add    %al,(%rax)
ffff800000108cc4:	0e                   	(bad)
ffff800000108cc5:	ed                   	in     (%dx),%eax
ffff800000108cc6:	ff                   	(bad)
ffff800000108cc7:	ff 4f 01             	decl   0x1(%rdi)
ffff800000108cca:	00 00                	add    %al,(%rax)
ffff800000108ccc:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108ccf:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108cd5:	47 8f 03             	rex.RXB pop (%r11)
ffff800000108cd8:	83 04 03 3f          	addl   $0x3f,(%rbx,%rax,1)
ffff800000108cdc:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff800000108cdf:	08 20                	or     %ah,(%rax)
ffff800000108ce1:	00 00                	add    %al,(%rax)
ffff800000108ce3:	00 0c 07             	add    %cl,(%rdi,%rax,1)
ffff800000108ce6:	00 00                	add    %al,(%rax)
ffff800000108ce8:	39 ee                	cmp    %ebp,%esi
ffff800000108cea:	ff                   	(bad)
ffff800000108ceb:	ff 6e 01             	ljmp   *0x1(%rsi)
ffff800000108cee:	00 00                	add    %al,(%rax)
ffff800000108cf0:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108cf3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108cf9:	47 8f 03             	rex.RXB pop (%r11)
ffff800000108cfc:	83 04 03 5e          	addl   $0x5e,(%rbx,%rax,1)
ffff800000108d00:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff800000108d03:	08 20                	or     %ah,(%rax)
ffff800000108d05:	00 00                	add    %al,(%rax)
ffff800000108d07:	00 30                	add    %dh,(%rax)
ffff800000108d09:	07                   	(bad)
ffff800000108d0a:	00 00                	add    %al,(%rax)
ffff800000108d0c:	83 ef ff             	sub    $0xffffffff,%edi
ffff800000108d0f:	ff 76 00             	push   0x0(%rsi)
ffff800000108d12:	00 00                	add    %al,(%rax)
ffff800000108d14:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108d17:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108d1d:	46 8f 03             	rex.RX pop (%rbx)
ffff800000108d20:	02 67 0c             	add    0xc(%rdi),%ah
ffff800000108d23:	07                   	(bad)
ffff800000108d24:	08 00                	or     %al,(%rax)
ffff800000108d26:	00 00                	add    %al,(%rax)
ffff800000108d28:	20 00                	and    %al,(%rax)
ffff800000108d2a:	00 00                	add    %al,(%rax)
ffff800000108d2c:	54                   	push   %rsp
ffff800000108d2d:	07                   	(bad)
ffff800000108d2e:	00 00                	add    %al,(%rax)
ffff800000108d30:	d5 ef ff ff          	{rex2 0xef} ud0 %r15,%r31
ffff800000108d34:	03 02                	add    (%rdx),%eax
ffff800000108d36:	00 00                	add    %al,(%rax)
ffff800000108d38:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108d3b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108d41:	47 8f 03             	rex.RXB pop (%r11)
ffff800000108d44:	83 04 03 f3          	addl   $0xfffffff3,(%rbx,%rax,1)
ffff800000108d48:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff800000108d4b:	08 20                	or     %ah,(%rax)
ffff800000108d4d:	00 00                	add    %al,(%rax)
ffff800000108d4f:	00 78 07             	add    %bh,0x7(%rax)
ffff800000108d52:	00 00                	add    %al,(%rax)
ffff800000108d54:	b4 f1                	mov    $0xf1,%ah
ffff800000108d56:	ff                   	(bad)
ffff800000108d57:	ff 01                	incl   (%rcx)
ffff800000108d59:	03 00                	add    (%rax),%eax
ffff800000108d5b:	00 00                	add    %al,(%rax)
ffff800000108d5d:	45 0e                	rex.RB (bad)
ffff800000108d5f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108d65:	47 8f 03             	rex.RXB pop (%r11)
ffff800000108d68:	83 04 03 f1          	addl   $0xfffffff1,(%rbx,%rax,1)
ffff800000108d6c:	02 0c 07             	add    (%rdi,%rax,1),%cl
ffff800000108d6f:	08 1c 00             	or     %bl,(%rax,%rax,1)
ffff800000108d72:	00 00                	add    %al,(%rax)
ffff800000108d74:	9c                   	pushf
ffff800000108d75:	07                   	(bad)
ffff800000108d76:	00 00                	add    %al,(%rax)
ffff800000108d78:	91                   	xchg   %eax,%ecx
ffff800000108d79:	f4                   	hlt
ffff800000108d7a:	ff                   	(bad)
ffff800000108d7b:	ff 5f 00             	lcall  *0x0(%rdi)
ffff800000108d7e:	00 00                	add    %al,(%rax)
ffff800000108d80:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108d83:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108d89:	02 56 0c             	add    0xc(%rsi),%dl
ffff800000108d8c:	07                   	(bad)
ffff800000108d8d:	08 00                	or     %al,(%rax)
ffff800000108d8f:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000108d92:	00 00                	add    %al,(%rax)
ffff800000108d94:	bc 07 00 00 d0       	mov    $0xd0000007,%esp
ffff800000108d99:	f4                   	hlt
ffff800000108d9a:	ff                   	(bad)
ffff800000108d9b:	ff 88 00 00 00 00    	decl   0x0(%rax)
ffff800000108da1:	45 0e                	rex.RB (bad)
ffff800000108da3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108da9:	02 7f 0c             	add    0xc(%rdi),%bh
ffff800000108dac:	07                   	(bad)
ffff800000108dad:	08 00                	or     %al,(%rax)
ffff800000108daf:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000108db2:	00 00                	add    %al,(%rax)
ffff800000108db4:	dc 07                	faddl  (%rdi)
ffff800000108db6:	00 00                	add    %al,(%rax)
ffff800000108db8:	38 f5                	cmp    %dh,%ch
ffff800000108dba:	ff                   	(bad)
ffff800000108dbb:	ff d3                	call   *%rbx
ffff800000108dbd:	00 00                	add    %al,(%rax)
ffff800000108dbf:	00 00                	add    %al,(%rax)
ffff800000108dc1:	45 0e                	rex.RB (bad)
ffff800000108dc3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108dc9:	02 ca                	add    %dl,%cl
ffff800000108dcb:	0c 07                	or     $0x7,%al
ffff800000108dcd:	08 00                	or     %al,(%rax)
ffff800000108dcf:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000108dd2:	00 00                	add    %al,(%rax)
ffff800000108dd4:	fc                   	cld
ffff800000108dd5:	07                   	(bad)
ffff800000108dd6:	00 00                	add    %al,(%rax)
ffff800000108dd8:	eb f5                	jmp    ffff800000108dcf <_etext+0x7f8>
ffff800000108dda:	ff                   	(bad)
ffff800000108ddb:	ff 4d 00             	decl   0x0(%rbp)
ffff800000108dde:	00 00                	add    %al,(%rax)
ffff800000108de0:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108de3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108de9:	02 44 0c 07          	add    0x7(%rsp,%rcx,1),%al
ffff800000108ded:	08 00                	or     %al,(%rax)
ffff800000108def:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000108df2:	00 00                	add    %al,(%rax)
ffff800000108df4:	1c 08                	sbb    $0x8,%al
ffff800000108df6:	00 00                	add    %al,(%rax)
ffff800000108df8:	18 f6                	sbb    %dh,%dh
ffff800000108dfa:	ff                   	(bad)
ffff800000108dfb:	ff 85 00 00 00 00    	incl   0x0(%rbp)
ffff800000108e01:	45 0e                	rex.RB (bad)
ffff800000108e03:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108e09:	02 7c 0c 07          	add    0x7(%rsp,%rcx,1),%bh
ffff800000108e0d:	08 00                	or     %al,(%rax)
ffff800000108e0f:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000108e12:	00 00                	add    %al,(%rax)
ffff800000108e14:	3c 08                	cmp    $0x8,%al
ffff800000108e16:	00 00                	add    %al,(%rax)
ffff800000108e18:	7d f6                	jge    ffff800000108e10 <_etext+0x839>
ffff800000108e1a:	ff                   	(bad)
ffff800000108e1b:	ff 85 00 00 00 00    	incl   0x0(%rbp)
ffff800000108e21:	45 0e                	rex.RB (bad)
ffff800000108e23:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108e29:	02 7c 0c 07          	add    0x7(%rsp,%rcx,1),%bh
ffff800000108e2d:	08 00                	or     %al,(%rax)
ffff800000108e2f:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000108e32:	00 00                	add    %al,(%rax)
ffff800000108e34:	5c                   	pop    %rsp
ffff800000108e35:	08 00                	or     %al,(%rax)
ffff800000108e37:	00 e2                	add    %ah,%dl
ffff800000108e39:	f6 ff                	idiv   %bh
ffff800000108e3b:	ff 77 00             	push   0x0(%rdi)
ffff800000108e3e:	00 00                	add    %al,(%rax)
ffff800000108e40:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108e43:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108e49:	02 6e 0c             	add    0xc(%rsi),%ch
ffff800000108e4c:	07                   	(bad)
ffff800000108e4d:	08 00                	or     %al,(%rax)
ffff800000108e4f:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000108e52:	00 00                	add    %al,(%rax)
ffff800000108e54:	7c 08                	jl     ffff800000108e5e <_etext+0x887>
ffff800000108e56:	00 00                	add    %al,(%rax)
ffff800000108e58:	39 f7                	cmp    %esi,%edi
ffff800000108e5a:	ff                   	(bad)
ffff800000108e5b:	ff 46 00             	incl   0x0(%rsi)
ffff800000108e5e:	00 00                	add    %al,(%rax)
ffff800000108e60:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108e63:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108e69:	7d 0c                	jge    ffff800000108e77 <.LC0+0x7>
ffff800000108e6b:	07                   	(bad)
ffff800000108e6c:	08 00                	or     %al,(%rax)
	...

Disassembly of section .rodata:

ffff800000108e70 <.LC0>:
ffff800000108e70:	70 61                	jo     ffff800000108ed3 <.LC2+0x13>
ffff800000108e72:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108e73:	69 63 3a 20 00   	imul   $0xa0020,0x3a(%rbx),%esp

ffff800000108e78 <.LC1>:
ffff800000108e78:	0a 00                	or     (%rax),%al
ffff800000108e7a:	00 00                	add    %al,(%rax)
ffff800000108e7c:	00 00                	add    %al,(%rax)
	...

ffff800000108e80 <.LC0>:
ffff800000108e80:	69 6e 69 74 20 74 61 	imul   $0x61742074,0x69(%rsi),%ebp
ffff800000108e87:	73 6b                	jae    ffff800000108ef4 <.LC3+0x15>
ffff800000108e89:	20 69 73             	and    %ch,0x73(%rcx)
ffff800000108e8c:	20 72 75             	and    %dh,0x75(%rdx)
ffff800000108e8f:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108e90:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108e91:	69 6e 67 0a 00 00 00 	imul   $0xa,0x67(%rsi),%ebp

ffff800000108e98 <.LC1>:
ffff800000108e98:	69 6e 69 74 20 74 61 	imul   $0x61742074,0x69(%rsi),%ebp
ffff800000108e9f:	73 6b                	jae    ffff800000108f0c <.LC4+0x16>
ffff800000108ea1:	20 69 73             	and    %ch,0x73(%rcx)
ffff800000108ea4:	20 72 75             	and    %dh,0x75(%rdx)
ffff800000108ea7:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108ea8:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108ea9:	69 6e 67 2c 20 61 72 	imul   $0x7261202c,0x67(%rsi),%ebp
ffff800000108eb0:	67 20 3d 20 25 6c 78 	and    %bh,0x786c2520(%eip)        # ffff8000787cb3d7 <_ebss+0x786c0ac7>
ffff800000108eb7:	0a 00                	or     (%rax),%al
ffff800000108eb9:	00 00                	add    %al,(%rax)
ffff800000108ebb:	00 00                	add    %al,(%rax)
ffff800000108ebd:	00 00                	add    %al,(%rax)
	...

ffff800000108ec0 <.LC2>:
ffff800000108ec0:	65 78 69             	gs js  ffff800000108f2c <.LC0+0x1c>
ffff800000108ec3:	74 20                	je     ffff800000108ee5 <.LC3+0x6>
ffff800000108ec5:	74 61                	je     ffff800000108f28 <.LC0+0x18>
ffff800000108ec7:	73 6b                	jae    ffff800000108f34 <.LC0+0x24>
ffff800000108ec9:	20 69 73             	and    %ch,0x73(%rcx)
ffff800000108ecc:	20 72 75             	and    %dh,0x75(%rdx)
ffff800000108ecf:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108ed0:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108ed1:	69 6e 67 2c 20 61 72 	imul   $0x7261202c,0x67(%rsi),%ebp
ffff800000108ed8:	67 3a 25 6c 78 0a 00 	cmp    0xa786c(%eip),%ah        # ffff8000001b074b <_ebss+0xa5e3b>

ffff800000108edf <.LC3>:
ffff800000108edf:	70 72                	jo     ffff800000108f53 <.LC1+0xb>
ffff800000108ee1:	65 76 2d             	gs jbe ffff800000108f11 <.LC0+0x1>
ffff800000108ee4:	3e 74 68             	je,pt  ffff800000108f4f <.LC1+0x7>
ffff800000108ee7:	72 65                	jb     ffff800000108f4e <.LC1+0x6>
ffff800000108ee9:	61                   	(bad)
ffff800000108eea:	64 2d 3e 72 73 70    	fs sub $0x7073723e,%eax
ffff800000108ef0:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0762 <_ebss+0xa5e52>

ffff800000108ef6 <.LC4>:
ffff800000108ef6:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108ef7:	65 78 74             	gs js  ffff800000108f6e <.LC1+0x26>
ffff800000108efa:	2d 3e 74 68 72       	sub    $0x7268743e,%eax
ffff800000108eff:	65 61                	gs (bad)
ffff800000108f01:	64 2d 3e 72 73 70    	fs sub $0x7073723e,%eax
ffff800000108f07:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0779 <_ebss+0xa5e69>
ffff800000108f0d:	00 00                	add    %al,(%rax)
	...

ffff800000108f10 <.LC0>:
ffff800000108f10:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108f12:	5f                   	pop    %rdi
ffff800000108f13:	64 69 76 69 64 65 5f 	imul   $0x655f6564,%fs:0x69(%rsi),%esi
ffff800000108f1a:	65 
ffff800000108f1b:	72 72                	jb     ffff800000108f8f <.LC2+0x17>
ffff800000108f1d:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108f1e:	72 28                	jb     ffff800000108f48 <.LC1>
ffff800000108f20:	30 29                	xor    %ch,(%rcx)
ffff800000108f22:	2c 45                	sub    $0x45,%al
ffff800000108f24:	52                   	push   %rdx
ffff800000108f25:	52                   	push   %rdx
ffff800000108f26:	4f 52                	rex.WRXB push %r10
ffff800000108f28:	5f                   	pop    %rdi
ffff800000108f29:	43                   	rex.XB
ffff800000108f2a:	4f                   	rex.WRXB
ffff800000108f2b:	44                   	rex.R
ffff800000108f2c:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d079f <_ebss+0x522c5e8f>
ffff800000108f33:	53                   	push   %rbx
ffff800000108f34:	50                   	push   %rax
ffff800000108f35:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d07a7 <_ebss+0x522c5e97>
ffff800000108f3b:	49 50                	rex.WB push %r8
ffff800000108f3d:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b07af <_ebss+0xa5e9f>
ffff800000108f43:	00 00                	add    %al,(%rax)
ffff800000108f45:	00 00                	add    %al,(%rax)
	...

ffff800000108f48 <.LC1>:
ffff800000108f48:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108f4a:	5f                   	pop    %rdi
ffff800000108f4b:	64 65 62 75 67 28 31 	(bad)
ffff800000108f52:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000108f59:	5f                   	pop    %rdi
ffff800000108f5a:	43                   	rex.XB
ffff800000108f5b:	4f                   	rex.WRXB
ffff800000108f5c:	44                   	rex.R
ffff800000108f5d:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d07d0 <_ebss+0x522c5ec0>
ffff800000108f64:	53                   	push   %rbx
ffff800000108f65:	50                   	push   %rax
ffff800000108f66:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d07d8 <_ebss+0x522c5ec8>
ffff800000108f6c:	49 50                	rex.WB push %r8
ffff800000108f6e:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b07e0 <_ebss+0xa5ed0>
ffff800000108f74:	00 00                	add    %al,(%rax)
	...

ffff800000108f78 <.LC2>:
ffff800000108f78:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108f7a:	5f                   	pop    %rdi
ffff800000108f7b:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108f7c:	6d                   	insl   (%dx),%es:(%rdi)
ffff800000108f7d:	69 28 32 29 2c 45    	imul   $0x452c2932,(%rax),%ebp
ffff800000108f83:	52                   	push   %rdx
ffff800000108f84:	52                   	push   %rdx
ffff800000108f85:	4f 52                	rex.WRXB push %r10
ffff800000108f87:	5f                   	pop    %rdi
ffff800000108f88:	43                   	rex.XB
ffff800000108f89:	4f                   	rex.WRXB
ffff800000108f8a:	44                   	rex.R
ffff800000108f8b:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d07fe <_ebss+0x522c5eee>
ffff800000108f92:	53                   	push   %rbx
ffff800000108f93:	50                   	push   %rax
ffff800000108f94:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0806 <_ebss+0x522c5ef6>
ffff800000108f9a:	49 50                	rex.WB push %r8
ffff800000108f9c:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b080e <_ebss+0xa5efe>
ffff800000108fa2:	00 00                	add    %al,(%rax)
ffff800000108fa4:	00 00                	add    %al,(%rax)
	...

ffff800000108fa8 <.LC3>:
ffff800000108fa8:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108faa:	5f                   	pop    %rdi
ffff800000108fab:	69 6e 74 33 28 33 29 	imul   $0x29332833,0x74(%rsi),%ebp
ffff800000108fb2:	2c 45                	sub    $0x45,%al
ffff800000108fb4:	52                   	push   %rdx
ffff800000108fb5:	52                   	push   %rdx
ffff800000108fb6:	4f 52                	rex.WRXB push %r10
ffff800000108fb8:	5f                   	pop    %rdi
ffff800000108fb9:	43                   	rex.XB
ffff800000108fba:	4f                   	rex.WRXB
ffff800000108fbb:	44                   	rex.R
ffff800000108fbc:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d082f <_ebss+0x522c5f1f>
ffff800000108fc3:	53                   	push   %rbx
ffff800000108fc4:	50                   	push   %rax
ffff800000108fc5:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0837 <_ebss+0x522c5f27>
ffff800000108fcb:	49 50                	rex.WB push %r8
ffff800000108fcd:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b083f <_ebss+0xa5f2f>
ffff800000108fd3:	00 00                	add    %al,(%rax)
ffff800000108fd5:	00 00                	add    %al,(%rax)
	...

ffff800000108fd8 <.LC4>:
ffff800000108fd8:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108fda:	5f                   	pop    %rdi
ffff800000108fdb:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108fdc:	76 65                	jbe    ffff800000109043 <.LC6+0xb>
ffff800000108fde:	72 66                	jb     ffff800000109046 <.LC6+0xe>
ffff800000108fe0:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108fe1:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108fe2:	77 28                	ja     ffff80000010900c <.LC5+0x4>
ffff800000108fe4:	34 29                	xor    $0x29,%al
ffff800000108fe6:	2c 45                	sub    $0x45,%al
ffff800000108fe8:	52                   	push   %rdx
ffff800000108fe9:	52                   	push   %rdx
ffff800000108fea:	4f 52                	rex.WRXB push %r10
ffff800000108fec:	5f                   	pop    %rdi
ffff800000108fed:	43                   	rex.XB
ffff800000108fee:	4f                   	rex.WRXB
ffff800000108fef:	44                   	rex.R
ffff800000108ff0:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0863 <_ebss+0x522c5f53>
ffff800000108ff7:	53                   	push   %rbx
ffff800000108ff8:	50                   	push   %rax
ffff800000108ff9:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d086b <_ebss+0x522c5f5b>
ffff800000108fff:	49 50                	rex.WB push %r8
ffff800000109001:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0873 <_ebss+0xa5f63>
	...

ffff800000109008 <.LC5>:
ffff800000109008:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff80000010900a:	5f                   	pop    %rdi
ffff80000010900b:	62 6f 75 6e 64       	(bad)
ffff800000109010:	73 28                	jae    ffff80000010903a <.LC6+0x2>
ffff800000109012:	35 29 2c 45 52       	xor    $0x52452c29,%eax
ffff800000109017:	52                   	push   %rdx
ffff800000109018:	4f 52                	rex.WRXB push %r10
ffff80000010901a:	5f                   	pop    %rdi
ffff80000010901b:	43                   	rex.XB
ffff80000010901c:	4f                   	rex.WRXB
ffff80000010901d:	44                   	rex.R
ffff80000010901e:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0891 <_ebss+0x522c5f81>
ffff800000109025:	53                   	push   %rbx
ffff800000109026:	50                   	push   %rax
ffff800000109027:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0899 <_ebss+0x522c5f89>
ffff80000010902d:	49 50                	rex.WB push %r8
ffff80000010902f:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b08a1 <_ebss+0xa5f91>
ffff800000109035:	00 00                	add    %al,(%rax)
	...

ffff800000109038 <.LC6>:
ffff800000109038:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff80000010903a:	5f                   	pop    %rdi
ffff80000010903b:	75 6e                	jne    ffff8000001090ab <.LC8+0x3>
ffff80000010903d:	64 65 66 69 6e 65 64 	fs imul $0x5f64,%gs:0x65(%rsi),%bp
ffff800000109044:	5f 
ffff800000109045:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000109046:	70 63                	jo     ffff8000001090ab <.LC8+0x3>
ffff800000109048:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000109049:	64 65 28 36          	fs sub %dh,%gs:(%rsi)
ffff80000010904d:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000109054:	5f                   	pop    %rdi
ffff800000109055:	43                   	rex.XB
ffff800000109056:	4f                   	rex.WRXB
ffff800000109057:	44                   	rex.R
ffff800000109058:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d08cb <_ebss+0x522c5fbb>
ffff80000010905f:	53                   	push   %rbx
ffff800000109060:	50                   	push   %rax
ffff800000109061:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d08d3 <_ebss+0x522c5fc3>
ffff800000109067:	49 50                	rex.WB push %r8
ffff800000109069:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b08db <_ebss+0xa5fcb>
	...

ffff800000109070 <.LC7>:
ffff800000109070:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000109072:	5f                   	pop    %rdi
ffff800000109073:	64 65 76 5f          	fs gs jbe ffff8000001090d6 <.LC8+0x2e>
ffff800000109077:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000109078:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000109079:	74 5f                	je     ffff8000001090da <.LC8+0x32>
ffff80000010907b:	61                   	(bad)
ffff80000010907c:	76 61                	jbe    ffff8000001090df <.LC8+0x37>
ffff80000010907e:	69 6c 61 62 6c 65 28 	imul   $0x3728656c,0x62(%rcx,%riz,2),%ebp
ffff800000109085:	37 
ffff800000109086:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff80000010908d:	5f                   	pop    %rdi
ffff80000010908e:	43                   	rex.XB
ffff80000010908f:	4f                   	rex.WRXB
ffff800000109090:	44                   	rex.R
ffff800000109091:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0904 <_ebss+0x522c5ff4>
ffff800000109098:	53                   	push   %rbx
ffff800000109099:	50                   	push   %rax
ffff80000010909a:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d090c <_ebss+0x522c5ffc>
ffff8000001090a0:	49 50                	rex.WB push %r8
ffff8000001090a2:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0914 <_ebss+0xa6004>

ffff8000001090a8 <.LC8>:
ffff8000001090a8:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001090aa:	5f                   	pop    %rdi
ffff8000001090ab:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001090ad:	75 62                	jne    ffff800000109111 <.LC9+0x31>
ffff8000001090af:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001090b0:	65 5f                	gs pop %rdi
ffff8000001090b2:	66 61                	data16 (bad)
ffff8000001090b4:	75 6c                	jne    ffff800000109122 <.LC9+0x42>
ffff8000001090b6:	74 28                	je     ffff8000001090e0 <.LC9>
ffff8000001090b8:	38 29                	cmp    %ch,(%rcx)
ffff8000001090ba:	2c 45                	sub    $0x45,%al
ffff8000001090bc:	52                   	push   %rdx
ffff8000001090bd:	52                   	push   %rdx
ffff8000001090be:	4f 52                	rex.WRXB push %r10
ffff8000001090c0:	5f                   	pop    %rdi
ffff8000001090c1:	43                   	rex.XB
ffff8000001090c2:	4f                   	rex.WRXB
ffff8000001090c3:	44                   	rex.R
ffff8000001090c4:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0937 <_ebss+0x522c6027>
ffff8000001090cb:	53                   	push   %rbx
ffff8000001090cc:	50                   	push   %rax
ffff8000001090cd:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d093f <_ebss+0x522c602f>
ffff8000001090d3:	49 50                	rex.WB push %r8
ffff8000001090d5:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0947 <_ebss+0xa6037>
ffff8000001090db:	00 00                	add    %al,(%rax)
ffff8000001090dd:	00 00                	add    %al,(%rax)
	...

ffff8000001090e0 <.LC9>:
ffff8000001090e0:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001090e2:	5f                   	pop    %rdi
ffff8000001090e3:	63 6f 70             	movsxd 0x70(%rdi),%ebp
ffff8000001090e6:	72 6f                	jb     ffff800000109157 <.LC10+0x2f>
ffff8000001090e8:	63 65 73             	movsxd 0x73(%rbp),%esp
ffff8000001090eb:	73 6f                	jae    ffff80000010915c <.LC10+0x34>
ffff8000001090ed:	72 5f                	jb     ffff80000010914e <.LC10+0x26>
ffff8000001090ef:	73 65                	jae    ffff800000109156 <.LC10+0x2e>
ffff8000001090f1:	67 6d                	insl   (%dx),%es:(%edi)
ffff8000001090f3:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff8000001090f5:	74 5f                	je     ffff800000109156 <.LC10+0x2e>
ffff8000001090f7:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001090f8:	76 65                	jbe    ffff80000010915f <.LC10+0x37>
ffff8000001090fa:	72 72                	jb     ffff80000010916e <.LC11+0xe>
ffff8000001090fc:	75 6e                	jne    ffff80000010916c <.LC11+0xc>
ffff8000001090fe:	28 39                	sub    %bh,(%rcx)
ffff800000109100:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000109107:	5f                   	pop    %rdi
ffff800000109108:	43                   	rex.XB
ffff800000109109:	4f                   	rex.WRXB
ffff80000010910a:	44                   	rex.R
ffff80000010910b:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d097e <_ebss+0x522c606e>
ffff800000109112:	53                   	push   %rbx
ffff800000109113:	50                   	push   %rax
ffff800000109114:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0986 <_ebss+0x522c6076>
ffff80000010911a:	49 50                	rex.WB push %r8
ffff80000010911c:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b098e <_ebss+0xa607e>
ffff800000109122:	00 00                	add    %al,(%rax)
ffff800000109124:	00 00                	add    %al,(%rax)
	...

ffff800000109128 <.LC10>:
ffff800000109128:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff80000010912a:	5f                   	pop    %rdi
ffff80000010912b:	69 6e 76 61 6c 69 64 	imul   $0x64696c61,0x76(%rsi),%ebp
ffff800000109132:	5f                   	pop    %rdi
ffff800000109133:	54                   	push   %rsp
ffff800000109134:	53                   	push   %rbx
ffff800000109135:	53                   	push   %rbx
ffff800000109136:	28 31                	sub    %dh,(%rcx)
ffff800000109138:	30 29                	xor    %ch,(%rcx)
ffff80000010913a:	2c 45                	sub    $0x45,%al
ffff80000010913c:	52                   	push   %rdx
ffff80000010913d:	52                   	push   %rdx
ffff80000010913e:	4f 52                	rex.WRXB push %r10
ffff800000109140:	5f                   	pop    %rdi
ffff800000109141:	43                   	rex.XB
ffff800000109142:	4f                   	rex.WRXB
ffff800000109143:	44                   	rex.R
ffff800000109144:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d09b7 <_ebss+0x522c60a7>
ffff80000010914b:	53                   	push   %rbx
ffff80000010914c:	50                   	push   %rax
ffff80000010914d:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d09bf <_ebss+0x522c60af>
ffff800000109153:	49 50                	rex.WB push %r8
ffff800000109155:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b09c7 <_ebss+0xa60b7>
ffff80000010915b:	00 00                	add    %al,(%rax)
ffff80000010915d:	00 00                	add    %al,(%rax)
	...

ffff800000109160 <.LC11>:
ffff800000109160:	54                   	push   %rsp
ffff800000109161:	68 65 20 65 78       	push   $0x78652065
ffff800000109166:	63 65 70             	movsxd 0x70(%rbp),%esp
ffff800000109169:	74 69                	je     ffff8000001091d4 <.LC11+0x74>
ffff80000010916b:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff80000010916c:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff80000010916d:	20 6f 63             	and    %ch,0x63(%rdi)
ffff800000109170:	63 75 72             	movsxd 0x72(%rbp),%esi
ffff800000109173:	72 65                	jb     ffff8000001091da <.LC11+0x7a>
ffff800000109175:	64 20 64 75 72       	and    %ah,%fs:0x72(%rbp,%rsi,2)
ffff80000010917a:	69 6e 67 20 64 65 6c 	imul   $0x6c656420,0x67(%rsi),%ebp
ffff800000109181:	69 76 65 72 79 20 6f 	imul   $0x6f207972,0x65(%rsi),%esi
ffff800000109188:	66 20 61 6e          	data16 and %ah,0x6e(%rcx)
ffff80000010918c:	20 65 76             	and    %ah,0x76(%rbp)
ffff80000010918f:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff800000109191:	74 20                	je     ffff8000001091b3 <.LC11+0x53>
ffff800000109193:	65 78 74             	gs js  ffff80000010920a <.LC12+0x2a>
ffff800000109196:	65 72 6e             	gs jb  ffff800000109207 <.LC12+0x27>
ffff800000109199:	61                   	(bad)
ffff80000010919a:	6c                   	insb   (%dx),%es:(%rdi)
ffff80000010919b:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
ffff80000010919f:	74 68                	je     ffff800000109209 <.LC12+0x29>
ffff8000001091a1:	65 20 70 72          	and    %dh,%gs:0x72(%rax)
ffff8000001091a5:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001091a6:	67 72 61             	addr32 jb ffff80000010920a <.LC12+0x2a>
ffff8000001091a9:	6d                   	insl   (%dx),%es:(%rdi)
ffff8000001091aa:	2c 73                	sub    $0x73,%al
ffff8000001091ac:	75 63                	jne    ffff800000109211 <.LC13+0x1>
ffff8000001091ae:	68 20 61 73 20       	push   $0x20736120
ffff8000001091b3:	61                   	(bad)
ffff8000001091b4:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff8000001091b5:	20 69 6e             	and    %ch,0x6e(%rcx)
ffff8000001091b8:	74 65                	je     ffff80000010921f <.LC13+0xf>
ffff8000001091ba:	72 72                	jb     ffff80000010922e <.LC13+0x1e>
ffff8000001091bc:	75 70                	jne    ffff80000010922e <.LC13+0x1e>
ffff8000001091be:	74 20                	je     ffff8000001091e0 <.LC12>
ffff8000001091c0:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001091c1:	72 20                	jb     ffff8000001091e3 <.LC12+0x3>
ffff8000001091c3:	61                   	(bad)
ffff8000001091c4:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff8000001091c5:	20 65 61             	and    %ah,0x61(%rbp)
ffff8000001091c8:	72 6c                	jb     ffff800000109236 <.LC13+0x26>
ffff8000001091ca:	69 65 72 20 65 78 63 	imul   $0x63786520,0x72(%rbp),%esp
ffff8000001091d1:	65 70 74             	gs jo  ffff800000109248 <.LC14>
ffff8000001091d4:	69 6f 6e 2e 0a 00 00 	imul   $0xa2e,0x6e(%rdi),%ebp
ffff8000001091db:	00 00                	add    %al,(%rax)
ffff8000001091dd:	00 00                	add    %al,(%rax)
	...

ffff8000001091e0 <.LC12>:
ffff8000001091e0:	52                   	push   %rdx
ffff8000001091e1:	65 66 65 72 73       	gs data16 gs jb ffff800000109259 <.LC14+0x11>
ffff8000001091e6:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
ffff8000001091ea:	61                   	(bad)
ffff8000001091eb:	20 67 61             	and    %ah,0x61(%rdi)
ffff8000001091ee:	74 65                	je     ffff800000109255 <.LC14+0xd>
ffff8000001091f0:	20 64 65 73          	and    %ah,0x73(%rbp,%riz,2)
ffff8000001091f4:	63 72 69             	movsxd 0x69(%rdx),%esi
ffff8000001091f7:	70 74                	jo     ffff80000010926d <.LC14+0x25>
ffff8000001091f9:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001091fa:	72 20                	jb     ffff80000010921c <.LC13+0xc>
ffff8000001091fc:	69 6e 20 74 68 65 20 	imul   $0x20656874,0x20(%rsi),%ebp
ffff800000109203:	49                   	rex.WB
ffff800000109204:	44 54                	rex.R push %rsp
ffff800000109206:	3b 0a                	cmp    (%rdx),%ecx
	...

ffff800000109210 <.LC13>:
ffff800000109210:	52                   	push   %rdx
ffff800000109211:	65 66 65 72 73       	gs data16 gs jb ffff800000109289 <.LC15+0x9>
ffff800000109216:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
ffff80000010921a:	61                   	(bad)
ffff80000010921b:	20 64 65 73          	and    %ah,0x73(%rbp,%riz,2)
ffff80000010921f:	63 72 69             	movsxd 0x69(%rdx),%esi
ffff800000109222:	70 74                	jo     ffff800000109298 <.LC15+0x18>
ffff800000109224:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000109225:	72 20                	jb     ffff800000109247 <.LC13+0x37>
ffff800000109227:	69 6e 20 74 68 65 20 	imul   $0x20656874,0x20(%rsi),%ebp
ffff80000010922e:	47                   	rex.RXB
ffff80000010922f:	44 54                	rex.R push %rsp
ffff800000109231:	20 6f 72             	and    %ch,0x72(%rdi)
ffff800000109234:	20 74 68 65          	and    %dh,0x65(%rax,%rbp,2)
ffff800000109238:	20 63 75             	and    %ah,0x75(%rbx)
ffff80000010923b:	72 72                	jb     ffff8000001092af <.LC15+0x2f>
ffff80000010923d:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff80000010923f:	74 20                	je     ffff800000109261 <.LC14+0x19>
ffff800000109241:	4c                   	rex.WR
ffff800000109242:	44 54                	rex.R push %rsp
ffff800000109244:	3b 0a                	cmp    (%rdx),%ecx
	...

ffff800000109248 <.LC14>:
ffff800000109248:	52                   	push   %rdx
ffff800000109249:	65 66 65 72 73       	gs data16 gs jb ffff8000001092c1 <.LC16+0x11>
ffff80000010924e:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
ffff800000109252:	61                   	(bad)
ffff800000109253:	20 73 65             	and    %dh,0x65(%rbx)
ffff800000109256:	67 6d                	insl   (%dx),%es:(%edi)
ffff800000109258:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff80000010925a:	74 20                	je     ffff80000010927c <.LC14+0x34>
ffff80000010925c:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff80000010925d:	72 20                	jb     ffff80000010927f <.LC14+0x37>
ffff80000010925f:	67 61                	addr32 (bad)
ffff800000109261:	74 65                	je     ffff8000001092c8 <.LC16+0x18>
ffff800000109263:	20 64 65 73          	and    %ah,0x73(%rbp,%riz,2)
ffff800000109267:	63 72 69             	movsxd 0x69(%rdx),%esi
ffff80000010926a:	70 74                	jo     ffff8000001092e0 <.LC17+0x10>
ffff80000010926c:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff80000010926d:	72 20                	jb     ffff80000010928f <.LC15+0xf>
ffff80000010926f:	69 6e 20 74 68 65 20 	imul   $0x20656874,0x20(%rsi),%ebp
ffff800000109276:	4c                   	rex.WR
ffff800000109277:	44 54                	rex.R push %rsp
ffff800000109279:	3b 0a                	cmp    (%rdx),%ecx
ffff80000010927b:	00 00                	add    %al,(%rax)
ffff80000010927d:	00 00                	add    %al,(%rax)
	...

ffff800000109280 <.LC15>:
ffff800000109280:	52                   	push   %rdx
ffff800000109281:	65 66 65 72 73       	gs data16 gs jb ffff8000001092f9 <.LC17+0x29>
ffff800000109286:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
ffff80000010928a:	61                   	(bad)
ffff80000010928b:	20 64 65 73          	and    %ah,0x73(%rbp,%riz,2)
ffff80000010928f:	63 72 69             	movsxd 0x69(%rdx),%esi
ffff800000109292:	70 74                	jo     ffff800000109308 <.LC17+0x38>
ffff800000109294:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000109295:	72 20                	jb     ffff8000001092b7 <.LC16+0x7>
ffff800000109297:	69 6e 20 74 68 65 20 	imul   $0x20656874,0x20(%rsi),%ebp
ffff80000010929e:	63 75 72             	movsxd 0x72(%rbp),%esi
ffff8000001092a1:	72 65                	jb     ffff800000109308 <.LC17+0x38>
ffff8000001092a3:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff8000001092a4:	74 20                	je     ffff8000001092c6 <.LC16+0x16>
ffff8000001092a6:	47                   	rex.RXB
ffff8000001092a7:	44 54                	rex.R push %rsp
ffff8000001092a9:	3b 0a                	cmp    (%rdx),%ecx
ffff8000001092ab:	00 00                	add    %al,(%rax)
ffff8000001092ad:	00 00                	add    %al,(%rax)
	...

ffff8000001092b0 <.LC16>:
ffff8000001092b0:	53                   	push   %rbx
ffff8000001092b1:	65 67 6d             	gs insl (%dx),%es:(%edi)
ffff8000001092b4:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff8000001092b6:	74 20                	je     ffff8000001092d8 <.LC17+0x8>
ffff8000001092b8:	53                   	push   %rbx
ffff8000001092b9:	65 6c                	gs insb (%dx),%es:(%rdi)
ffff8000001092bb:	65 63 74 6f 72       	movsxd %gs:0x72(%rdi,%rbp,2),%esi
ffff8000001092c0:	20 49 6e             	and    %cl,0x6e(%rcx)
ffff8000001092c3:	64 65 78 3a          	fs gs js ffff800000109301 <.LC17+0x31>
ffff8000001092c7:	25 23 30 31 30       	and    $0x30313023,%eax
ffff8000001092cc:	78 0a                	js     ffff8000001092d8 <.LC17+0x8>
	...

ffff8000001092d0 <.LC17>:
ffff8000001092d0:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001092d2:	5f                   	pop    %rdi
ffff8000001092d3:	73 65                	jae    ffff80000010933a <.LC18+0x2a>
ffff8000001092d5:	67 6d                	insl   (%dx),%es:(%edi)
ffff8000001092d7:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff8000001092d9:	74 5f                	je     ffff80000010933a <.LC18+0x2a>
ffff8000001092db:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff8000001092dc:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001092dd:	74 5f                	je     ffff80000010933e <.LC18+0x2e>
ffff8000001092df:	70 72                	jo     ffff800000109353 <.LC19+0x3>
ffff8000001092e1:	65 73 65             	gs jae ffff800000109349 <.LC18+0x39>
ffff8000001092e4:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff8000001092e5:	74 28                	je     ffff80000010930f <.LC17+0x3f>
ffff8000001092e7:	31 31                	xor    %esi,(%rcx)
ffff8000001092e9:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff8000001092f0:	5f                   	pop    %rdi
ffff8000001092f1:	43                   	rex.XB
ffff8000001092f2:	4f                   	rex.WRXB
ffff8000001092f3:	44                   	rex.R
ffff8000001092f4:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0b67 <_ebss+0x522c6257>
ffff8000001092fb:	53                   	push   %rbx
ffff8000001092fc:	50                   	push   %rax
ffff8000001092fd:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0b6f <_ebss+0x522c625f>
ffff800000109303:	49 50                	rex.WB push %r8
ffff800000109305:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0b77 <_ebss+0xa6267>
ffff80000010930b:	00 00                	add    %al,(%rax)
ffff80000010930d:	00 00                	add    %al,(%rax)
	...

ffff800000109310 <.LC18>:
ffff800000109310:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000109312:	5f                   	pop    %rdi
ffff800000109313:	73 74                	jae    ffff800000109389 <.LC19+0x39>
ffff800000109315:	61                   	(bad)
ffff800000109316:	63 6b 5f             	movsxd 0x5f(%rbx),%ebp
ffff800000109319:	73 65                	jae    ffff800000109380 <.LC19+0x30>
ffff80000010931b:	67 6d                	insl   (%dx),%es:(%edi)
ffff80000010931d:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff80000010931f:	74 5f                	je     ffff800000109380 <.LC19+0x30>
ffff800000109321:	66 61                	data16 (bad)
ffff800000109323:	75 6c                	jne    ffff800000109391 <.LC20+0x1>
ffff800000109325:	74 28                	je     ffff80000010934f <.LC18+0x3f>
ffff800000109327:	31 32                	xor    %esi,(%rdx)
ffff800000109329:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000109330:	5f                   	pop    %rdi
ffff800000109331:	43                   	rex.XB
ffff800000109332:	4f                   	rex.WRXB
ffff800000109333:	44                   	rex.R
ffff800000109334:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0ba7 <_ebss+0x522c6297>
ffff80000010933b:	53                   	push   %rbx
ffff80000010933c:	50                   	push   %rax
ffff80000010933d:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0baf <_ebss+0x522c629f>
ffff800000109343:	49 50                	rex.WB push %r8
ffff800000109345:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0bb7 <_ebss+0xa62a7>
ffff80000010934b:	00 00                	add    %al,(%rax)
ffff80000010934d:	00 00                	add    %al,(%rax)
	...

ffff800000109350 <.LC19>:
ffff800000109350:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000109352:	5f                   	pop    %rdi
ffff800000109353:	67 65 6e             	outsb  %gs:(%esi),(%dx)
ffff800000109356:	65 72 61             	gs jb  ffff8000001093ba <.LC20+0x2a>
ffff800000109359:	6c                   	insb   (%dx),%es:(%rdi)
ffff80000010935a:	5f                   	pop    %rdi
ffff80000010935b:	70 72                	jo     ffff8000001093cf <.LC21+0xd>
ffff80000010935d:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff80000010935e:	74 65                	je     ffff8000001093c5 <.LC21+0x3>
ffff800000109360:	63 74 69 6f          	movsxd 0x6f(%rcx,%rbp,2),%esi
ffff800000109364:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000109365:	28 31                	sub    %dh,(%rcx)
ffff800000109367:	33 29                	xor    (%rcx),%ebp
ffff800000109369:	2c 45                	sub    $0x45,%al
ffff80000010936b:	52                   	push   %rdx
ffff80000010936c:	52                   	push   %rdx
ffff80000010936d:	4f 52                	rex.WRXB push %r10
ffff80000010936f:	5f                   	pop    %rdi
ffff800000109370:	43                   	rex.XB
ffff800000109371:	4f                   	rex.WRXB
ffff800000109372:	44                   	rex.R
ffff800000109373:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0be6 <_ebss+0x522c62d6>
ffff80000010937a:	53                   	push   %rbx
ffff80000010937b:	50                   	push   %rax
ffff80000010937c:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0bee <_ebss+0x522c62de>
ffff800000109382:	49 50                	rex.WB push %r8
ffff800000109384:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0bf6 <_ebss+0xa62e6>
ffff80000010938a:	00 00                	add    %al,(%rax)
ffff80000010938c:	00 00                	add    %al,(%rax)
	...

ffff800000109390 <.LC20>:
ffff800000109390:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000109392:	5f                   	pop    %rdi
ffff800000109393:	70 61                	jo     ffff8000001093f6 <.LC23+0xd>
ffff800000109395:	67 65 5f             	addr32 gs pop %rdi
ffff800000109398:	66 61                	data16 (bad)
ffff80000010939a:	75 6c                	jne    ffff800000109408 <.LC24+0xc>
ffff80000010939c:	74 28                	je     ffff8000001093c6 <.LC21+0x4>
ffff80000010939e:	31 34 29             	xor    %esi,(%rcx,%rbp,1)
ffff8000001093a1:	2c 45                	sub    $0x45,%al
ffff8000001093a3:	52                   	push   %rdx
ffff8000001093a4:	52                   	push   %rdx
ffff8000001093a5:	4f 52                	rex.WRXB push %r10
ffff8000001093a7:	5f                   	pop    %rdi
ffff8000001093a8:	43                   	rex.XB
ffff8000001093a9:	4f                   	rex.WRXB
ffff8000001093aa:	44                   	rex.R
ffff8000001093ab:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0c1e <_ebss+0x522c630e>
ffff8000001093b2:	53                   	push   %rbx
ffff8000001093b3:	50                   	push   %rax
ffff8000001093b4:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0c26 <_ebss+0x522c6316>
ffff8000001093ba:	49 50                	rex.WB push %r8
ffff8000001093bc:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0c2e <_ebss+0xa631e>

ffff8000001093c2 <.LC21>:
ffff8000001093c2:	50                   	push   %rax
ffff8000001093c3:	61                   	(bad)
ffff8000001093c4:	67 65 20 4e 6f       	and    %cl,%gs:0x6f(%esi)
ffff8000001093c9:	74 2d                	je     ffff8000001093f8 <.LC23+0xf>
ffff8000001093cb:	50                   	push   %rax
ffff8000001093cc:	72 65                	jb     ffff800000109433 <.LC26+0x9>
ffff8000001093ce:	73 65                	jae    ffff800000109435 <.LC26+0xb>
ffff8000001093d0:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff8000001093d1:	74 2c                	je     ffff8000001093ff <.LC24+0x3>
ffff8000001093d3:	09 00                	or     %eax,(%rax)

ffff8000001093d5 <.LC22>:
ffff8000001093d5:	57                   	push   %rdi
ffff8000001093d6:	72 69                	jb     ffff800000109441 <.LC26+0x17>
ffff8000001093d8:	74 65                	je     ffff80000010943f <.LC26+0x15>
ffff8000001093da:	20 43 61             	and    %al,0x61(%rbx)
ffff8000001093dd:	75 73                	jne    ffff800000109452 <.LC27+0xa>
ffff8000001093df:	65 20 46 61          	and    %al,%gs:0x61(%rsi)
ffff8000001093e3:	75 6c                	jne    ffff800000109451 <.LC27+0x9>
ffff8000001093e5:	74 2c                	je     ffff800000109413 <.LC25+0x5>
ffff8000001093e7:	09 00                	or     %eax,(%rax)

ffff8000001093e9 <.LC23>:
ffff8000001093e9:	52                   	push   %rdx
ffff8000001093ea:	65 61                	gs (bad)
ffff8000001093ec:	64 20 43 61          	and    %al,%fs:0x61(%rbx)
ffff8000001093f0:	75 73                	jne    ffff800000109465 <.LC27+0x1d>
ffff8000001093f2:	65 20 46 61          	and    %al,%gs:0x61(%rsi)
ffff8000001093f6:	75 6c                	jne    ffff800000109464 <.LC27+0x1c>
ffff8000001093f8:	74 2c                	je     ffff800000109426 <.LC25+0x18>
ffff8000001093fa:	09 00                	or     %eax,(%rax)

ffff8000001093fc <.LC24>:
ffff8000001093fc:	46 61                	rex.RX (bad)
ffff8000001093fe:	75 6c                	jne    ffff80000010946c <.LC29+0x3>
ffff800000109400:	74 20                	je     ffff800000109422 <.LC25+0x14>
ffff800000109402:	69 6e 20 75 73 65 72 	imul   $0x72657375,0x20(%rsi),%ebp
ffff800000109409:	28 33                	sub    %dh,(%rbx)
ffff80000010940b:	29 09                	sub    %ecx,(%rcx)
	...

ffff80000010940e <.LC25>:
ffff80000010940e:	46 61                	rex.RX (bad)
ffff800000109410:	75 6c                	jne    ffff80000010947e <.LC30+0x6>
ffff800000109412:	74 20                	je     ffff800000109434 <.LC26+0xa>
ffff800000109414:	69 6e 20 73 75 70 65 	imul   $0x65707573,0x20(%rsi),%ebp
ffff80000010941b:	72 76                	jb     ffff800000109493 <.LC30+0x1b>
ffff80000010941d:	69 73 6f 72 28 30 2c 	imul   $0x2c302872,0x6f(%rbx),%esi
ffff800000109424:	31 2c 32             	xor    %ebp,(%rdx,%rsi,1)
ffff800000109427:	29 09                	sub    %ecx,(%rcx)
	...

ffff80000010942a <.LC26>:
ffff80000010942a:	2c 52                	sub    $0x52,%al
ffff80000010942c:	65 73 65             	gs jae ffff800000109494 <.LC30+0x1c>
ffff80000010942f:	72 76                	jb     ffff8000001094a7 <.LC30+0x2f>
ffff800000109431:	65 64 20 42 69       	gs and %al,%fs:0x69(%rdx)
ffff800000109436:	74 20                	je     ffff800000109458 <.LC27+0x10>
ffff800000109438:	43 61                	rex.XB (bad)
ffff80000010943a:	75 73                	jne    ffff8000001094af <.LC30+0x37>
ffff80000010943c:	65 20 46 61          	and    %al,%gs:0x61(%rsi)
ffff800000109440:	75 6c                	jne    ffff8000001094ae <.LC30+0x36>
ffff800000109442:	74 09                	je     ffff80000010944d <.LC27+0x5>
ffff800000109444:	00 00                	add    %al,(%rax)
	...

ffff800000109448 <.LC27>:
ffff800000109448:	2c 49                	sub    $0x49,%al
ffff80000010944a:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff80000010944b:	73 74                	jae    ffff8000001094c1 <.LC31+0x11>
ffff80000010944d:	72 75                	jb     ffff8000001094c4 <.LC31+0x14>
ffff80000010944f:	63 74 69 6f          	movsxd 0x6f(%rcx,%rbp,2),%esi
ffff800000109453:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000109454:	20 66 65             	and    %ah,0x65(%rsi)
ffff800000109457:	74 63                	je     ffff8000001094bc <.LC31+0xc>
ffff800000109459:	68 20 43 61 75       	push   $0x75614320
ffff80000010945e:	73 65                	jae    ffff8000001094c5 <.LC31+0x15>
ffff800000109460:	20 46 61             	and    %al,0x61(%rsi)
ffff800000109463:	75 6c                	jne    ffff8000001094d1 <.LC31+0x21>
ffff800000109465:	74 00                	je     ffff800000109467 <.LC28>

ffff800000109467 <.LC28>:
ffff800000109467:	0a 00                	or     (%rax),%al

ffff800000109469 <.LC29>:
ffff800000109469:	43 52                	rex.XB push %r10
ffff80000010946b:	32 3a                	xor    (%rdx),%bh
ffff80000010946d:	25 6c 78 0a 00       	and    $0xa786c,%eax
ffff800000109472:	00 00                	add    %al,(%rax)
ffff800000109474:	00 00                	add    %al,(%rax)
	...

ffff800000109478 <.LC30>:
ffff800000109478:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff80000010947a:	5f                   	pop    %rdi
ffff80000010947b:	78 38                	js     ffff8000001094b5 <.LC31+0x5>
ffff80000010947d:	37                   	(bad)
ffff80000010947e:	5f                   	pop    %rdi
ffff80000010947f:	46 50                	rex.RX push %rax
ffff800000109481:	55                   	push   %rbp
ffff800000109482:	5f                   	pop    %rdi
ffff800000109483:	65 72 72             	gs jb  ffff8000001094f8 <.LC32+0x10>
ffff800000109486:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000109487:	72 28                	jb     ffff8000001094b1 <.LC31+0x1>
ffff800000109489:	31 36                	xor    %esi,(%rsi)
ffff80000010948b:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000109492:	5f                   	pop    %rdi
ffff800000109493:	43                   	rex.XB
ffff800000109494:	4f                   	rex.WRXB
ffff800000109495:	44                   	rex.R
ffff800000109496:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0d09 <_ebss+0x522c63f9>
ffff80000010949d:	53                   	push   %rbx
ffff80000010949e:	50                   	push   %rax
ffff80000010949f:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0d11 <_ebss+0x522c6401>
ffff8000001094a5:	49 50                	rex.WB push %r8
ffff8000001094a7:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0d19 <_ebss+0xa6409>
ffff8000001094ad:	00 00                	add    %al,(%rax)
	...

ffff8000001094b0 <.LC31>:
ffff8000001094b0:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001094b2:	5f                   	pop    %rdi
ffff8000001094b3:	61                   	(bad)
ffff8000001094b4:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001094b5:	69 67 6e 6d 65 6e 74 	imul   $0x746e656d,0x6e(%rdi),%esp
ffff8000001094bc:	5f                   	pop    %rdi
ffff8000001094bd:	63 68 65             	movsxd 0x65(%rax),%ebp
ffff8000001094c0:	63 6b 28             	movsxd 0x28(%rbx),%ebp
ffff8000001094c3:	31 37                	xor    %esi,(%rdi)
ffff8000001094c5:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff8000001094cc:	5f                   	pop    %rdi
ffff8000001094cd:	43                   	rex.XB
ffff8000001094ce:	4f                   	rex.WRXB
ffff8000001094cf:	44                   	rex.R
ffff8000001094d0:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0d43 <_ebss+0x522c6433>
ffff8000001094d7:	53                   	push   %rbx
ffff8000001094d8:	50                   	push   %rax
ffff8000001094d9:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0d4b <_ebss+0x522c643b>
ffff8000001094df:	49 50                	rex.WB push %r8
ffff8000001094e1:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0d53 <_ebss+0xa6443>
	...

ffff8000001094e8 <.LC32>:
ffff8000001094e8:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001094ea:	5f                   	pop    %rdi
ffff8000001094eb:	6d                   	insl   (%dx),%es:(%rdi)
ffff8000001094ec:	61                   	(bad)
ffff8000001094ed:	63 68 69             	movsxd 0x69(%rax),%ebp
ffff8000001094f0:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff8000001094f1:	65 5f                	gs pop %rdi
ffff8000001094f3:	63 68 65             	movsxd 0x65(%rax),%ebp
ffff8000001094f6:	63 6b 28             	movsxd 0x28(%rbx),%ebp
ffff8000001094f9:	31 38                	xor    %edi,(%rax)
ffff8000001094fb:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000109502:	5f                   	pop    %rdi
ffff800000109503:	43                   	rex.XB
ffff800000109504:	4f                   	rex.WRXB
ffff800000109505:	44                   	rex.R
ffff800000109506:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0d79 <_ebss+0x522c6469>
ffff80000010950d:	53                   	push   %rbx
ffff80000010950e:	50                   	push   %rax
ffff80000010950f:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0d81 <_ebss+0x522c6471>
ffff800000109515:	49 50                	rex.WB push %r8
ffff800000109517:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0d89 <_ebss+0xa6479>
ffff80000010951d:	00 00                	add    %al,(%rax)
	...

ffff800000109520 <.LC33>:
ffff800000109520:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000109522:	5f                   	pop    %rdi
ffff800000109523:	53                   	push   %rbx
ffff800000109524:	49                   	rex.WB
ffff800000109525:	4d                   	rex.WRB
ffff800000109526:	44 5f                	rex.R pop %rdi
ffff800000109528:	65 78 63             	gs js  ffff80000010958e <.LC34+0x36>
ffff80000010952b:	65 70 74             	gs jo  ffff8000001095a2 <.LC0+0xa>
ffff80000010952e:	69 6f 6e 28 31 39 29 	imul   $0x29393128,0x6e(%rdi),%ebp
ffff800000109535:	2c 45                	sub    $0x45,%al
ffff800000109537:	52                   	push   %rdx
ffff800000109538:	52                   	push   %rdx
ffff800000109539:	4f 52                	rex.WRXB push %r10
ffff80000010953b:	5f                   	pop    %rdi
ffff80000010953c:	43                   	rex.XB
ffff80000010953d:	4f                   	rex.WRXB
ffff80000010953e:	44                   	rex.R
ffff80000010953f:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0db2 <_ebss+0x522c64a2>
ffff800000109546:	53                   	push   %rbx
ffff800000109547:	50                   	push   %rax
ffff800000109548:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0dba <_ebss+0x522c64aa>
ffff80000010954e:	49 50                	rex.WB push %r8
ffff800000109550:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0dc2 <_ebss+0xa64b2>
	...

ffff800000109558 <.LC34>:
ffff800000109558:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff80000010955a:	5f                   	pop    %rdi
ffff80000010955b:	76 69                	jbe    ffff8000001095c6 <.LC0+0x9>
ffff80000010955d:	72 74                	jb     ffff8000001095d3 <.LC1+0x2>
ffff80000010955f:	75 61                	jne    ffff8000001095c2 <.LC0+0x5>
ffff800000109561:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000109562:	69 7a 61 74 69 6f 6e 	imul   $0x6e6f6974,0x61(%rdx),%edi
ffff800000109569:	5f                   	pop    %rdi
ffff80000010956a:	65 78 63             	gs js  ffff8000001095d0 <.LC0+0x13>
ffff80000010956d:	65 70 74             	gs jo  ffff8000001095e4 <.LC1+0x13>
ffff800000109570:	69 6f 6e 28 32 30 29 	imul   $0x29303228,0x6e(%rdi),%ebp
ffff800000109577:	2c 45                	sub    $0x45,%al
ffff800000109579:	52                   	push   %rdx
ffff80000010957a:	52                   	push   %rdx
ffff80000010957b:	4f 52                	rex.WRXB push %r10
ffff80000010957d:	5f                   	pop    %rdi
ffff80000010957e:	43                   	rex.XB
ffff80000010957f:	4f                   	rex.WRXB
ffff800000109580:	44                   	rex.R
ffff800000109581:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0df4 <_ebss+0x522c64e4>
ffff800000109588:	53                   	push   %rbx
ffff800000109589:	50                   	push   %rax
ffff80000010958a:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0dfc <_ebss+0x522c64ec>
ffff800000109590:	49 50                	rex.WB push %r8
ffff800000109592:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0e04 <_ebss+0xa64f4>

ffff800000109598 <.LC0>:
ffff800000109598:	54                   	push   %rsp
ffff800000109599:	69 6d 65 72 20 69 6e 	imul   $0x6e692072,0x65(%rbp),%ebp
ffff8000001095a0:	74 65                	je     ffff800000109607 <.LC1+0x7>
ffff8000001095a2:	72 72                	jb     ffff800000109616 <.LC1+0x16>
ffff8000001095a4:	75 70                	jne    ffff800000109616 <.LC1+0x16>
ffff8000001095a6:	74 0a                	je     ffff8000001095b2 <.LC2+0x6>
	...

ffff8000001095a9 <.LC1>:
ffff8000001095a9:	25 78 00         	and    $0x6f4d0078,%eax

ffff8000001095ac <.LC2>:
ffff8000001095ac:	4d 6f                	rex.WRB outsl %ds:(%rsi),(%dx)
ffff8000001095ae:	75 73                	jne    ffff800000109623 <.LC1+0x23>
ffff8000001095b0:	65 20 69 6e          	and    %ch,%gs:0x6e(%rcx)
ffff8000001095b4:	74 65                	je     ffff80000010961b <.LC1+0x1b>
ffff8000001095b6:	72 72                	jb     ffff80000010962a <.LC1+0x2a>
ffff8000001095b8:	75 70                	jne    ffff80000010962a <.LC1+0x2a>
ffff8000001095ba:	74 0a                	je     ffff8000001095c6 <.LC0+0x9>
	...

ffff8000001095bd <.LC0>:
ffff8000001095bd:	54                   	push   %rsp
ffff8000001095be:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001095bf:	74 61                	je     ffff800000109622 <.LC1+0x22>
ffff8000001095c1:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001095c2:	20 6d 65             	and    %ch,0x65(%rbp)
ffff8000001095c5:	6d                   	insl   (%dx),%es:(%rdi)
ffff8000001095c6:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001095c7:	72 79                	jb     ffff800000109642 <.LC2+0x12>
ffff8000001095c9:	3a 20                	cmp    (%rax),%ah
ffff8000001095cb:	25 64 4d 42 0a       	and    $0xa424d64,%eax
	...

ffff8000001095d1 <.LC1>:
ffff8000001095d1:	46 72 65             	rex.RX jb ffff800000109639 <.LC2+0x9>
ffff8000001095d4:	65 20 6d 65          	and    %ch,%gs:0x65(%rbp)
ffff8000001095d8:	6d                   	insl   (%dx),%es:(%rdi)
ffff8000001095d9:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001095da:	72 79                	jb     ffff800000109655 <.LC2+0x25>
ffff8000001095dc:	20 72 61             	and    %dh,0x61(%rdx)
ffff8000001095df:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff8000001095e0:	67 65 3a 20          	cmp    %gs:(%eax),%ah
ffff8000001095e4:	25 6c 78 20 2d       	and    $0x2d20786c,%eax
ffff8000001095e9:	20 25 6c 78 0a 00    	and    %ah,0xa786c(%rip)        # ffff8000001b0e5b <_ebss+0xa654b>

ffff8000001095ef <.LC2>:
ffff8000001095ef:	6b 66 72 65          	imul   $0x65,0x72(%rsi),%esp
ffff8000001095f3:	65 00 00             	add    %al,%gs:(%rax)
	...

ffff8000001095f8 <.LC0>:
	...

ffff800000109600 <.LC1>:
ffff800000109600:	4e                   	rex.WRX
ffff800000109601:	65 77 20             	gs ja  ffff800000109624 <.LC1+0x24>
ffff800000109604:	61                   	(bad)
ffff800000109605:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000109606:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000109607:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000109608:	63 61 74             	movsxd 0x74(%rcx),%esp
ffff80000010960b:	65 20 6d 65          	and    %ch,%gs:0x65(%rbp)
ffff80000010960f:	6d                   	insl   (%dx),%es:(%rdi)
ffff800000109610:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000109611:	72 79                	jb     ffff80000010968c <GDT64_Table+0x2c>
ffff800000109613:	20 62 65             	and    %ah,0x65(%rdx)
ffff800000109616:	67 69 6e 20 61 74 3a 	imul   $0x203a7461,0x20(%esi),%ebp
ffff80000010961d:	20 
ffff80000010961e:	25 70 2c 20 73       	and    $0x73202c70,%eax
ffff800000109623:	69 7a 65 3a 20 25 64 	imul   $0x6425203a,0x65(%rdx),%edi
ffff80000010962a:	0a 00                	or     (%rax),%al
ffff80000010962c:	00 00                	add    %al,(%rax)
	...

ffff800000109630 <.LC2>:
ffff800000109630:	54                   	push   %rsp
ffff800000109631:	68 65 20 6e 65       	push   $0x656e2065
ffff800000109636:	77 20                	ja     ffff800000109658 <.LC2+0x28>
ffff800000109638:	66 72 65             	data16 jb ffff8000001096a0 <GDT64_Table+0x40>
ffff80000010963b:	65 20 6d 65          	and    %ch,%gs:0x65(%rbp)
ffff80000010963f:	6d                   	insl   (%dx),%es:(%rdi)
ffff800000109640:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000109641:	72 79                	jb     ffff8000001096bc <GDT64_Table+0x5c>
ffff800000109643:	20 62 65             	and    %ah,0x65(%rdx)
ffff800000109646:	67 69 6e 20 61 74 3a 	imul   $0x203a7461,0x20(%esi),%ebp
ffff80000010964d:	20 
ffff80000010964e:	25 70 2c 20 73       	and    $0x73202c70,%eax
ffff800000109653:	69 7a 65 3a 20 25 64 	imul   $0x6425203a,0x65(%rdx),%edi
ffff80000010965a:	0a 00                	or     (%rax),%al

Disassembly of section .data:

ffff800000109660 <GDT64_Table>:
	...
ffff80000010966c:	00 98 20 00 00 00    	add    %bl,0x20(%rax)
ffff800000109672:	00 00                	add    %al,(%rax)
ffff800000109674:	00 92 00 00 00 00    	add    %dl,0x0(%rdx)
ffff80000010967a:	00 00                	add    %al,(%rax)
ffff80000010967c:	00 f8                	add    %bh,%al
ffff80000010967e:	20 00                	and    %al,(%rax)
ffff800000109680:	00 00                	add    %al,(%rax)
ffff800000109682:	00 00                	add    %al,(%rax)
ffff800000109684:	00 f2                	add    %dh,%dl
ffff800000109686:	00 00                	add    %al,(%rax)
ffff800000109688:	ff                   	(bad)
ffff800000109689:	ff 00                	incl   (%rax)
ffff80000010968b:	00 00                	add    %al,(%rax)
ffff80000010968d:	9a                   	(bad)
ffff80000010968e:	cf                   	iret
ffff80000010968f:	00 ff                	add    %bh,%bh
ffff800000109691:	ff 00                	incl   (%rax)
ffff800000109693:	00 00                	add    %al,(%rax)
ffff800000109695:	92                   	xchg   %eax,%edx
ffff800000109696:	cf                   	iret
	...

ffff8000001096e8 <GDT6464_LIMIT>:
ffff8000001096e8:	87 00                	xchg   %eax,(%rax)

ffff8000001096ea <GDT64_BASE>:
ffff8000001096ea:	60                   	(bad)
ffff8000001096eb:	96                   	xchg   %eax,%esi
ffff8000001096ec:	10 00                	adc    %al,(%rax)
ffff8000001096ee:	00 80 ff ff      	add    %al,0xffff(%rax)

ffff8000001096f2 <IDT64_Table>:
	...

ffff80000010a6f2 <IDT64_END>:
ffff80000010a6f2:	ff 0f                	decl   (%rdi)

ffff80000010a6f4 <IDT64_BASE>:
ffff80000010a6f4:	f2 96                	repnz xchg %eax,%esi
ffff80000010a6f6:	10 00                	adc    %al,(%rax)
ffff80000010a6f8:	00 80 ff ff      	add    %al,0xffff(%rax)

ffff80000010a6fc <TSS64_Table>:
	...

Disassembly of section .got:

ffff80000010a768 <.got>:
ffff80000010a768:	66 40 10 00          	data16 rex adc %al,(%rax)
ffff80000010a76c:	00 80 ff ff 52 41    	add    %al,0x4152ffff(%rax)
ffff80000010a772:	10 00                	adc    %al,(%rax)
ffff80000010a774:	00 80 ff ff af 40    	add    %al,0x40afffff(%rax)
ffff80000010a77a:	10 00                	adc    %al,(%rax)
ffff80000010a77c:	00 80 ff ff 76 40    	add    %al,0x4076ffff(%rax)
ffff80000010a782:	10 00                	adc    %al,(%rax)
ffff80000010a784:	00 80 ff ff c2 40    	add    %al,0x40c2ffff(%rax)
ffff80000010a78a:	10 00                	adc    %al,(%rax)
ffff80000010a78c:	00 80 ff ff 1f 41    	add    %al,0x411fffff(%rax)
ffff80000010a792:	10 00                	adc    %al,(%rax)
ffff80000010a794:	00 80 ff ff f2 96    	add    %al,-0x690d0001(%rax)
ffff80000010a79a:	10 00                	adc    %al,(%rax)
ffff80000010a79c:	00 80 ff ff 30 41    	add    %al,0x4130ffff(%rax)
ffff80000010a7a2:	10 00                	adc    %al,(%rax)
ffff80000010a7a4:	00 80 ff ff 41 41    	add    %al,0x4141ffff(%rax)
ffff80000010a7aa:	10 00                	adc    %al,(%rax)
ffff80000010a7ac:	00 80 ff ff 08 a9    	add    %al,-0x56f70001(%rax)
ffff80000010a7b2:	10 00                	adc    %al,(%rax)
ffff80000010a7b4:	00 80 ff ff d5 40    	add    %al,0x40d5ffff(%rax)
ffff80000010a7ba:	10 00                	adc    %al,(%rax)
ffff80000010a7bc:	00 80 ff ff fc a6    	add    %al,-0x59030001(%rax)
ffff80000010a7c2:	10 00                	adc    %al,(%rax)
ffff80000010a7c4:	00 80 ff ff 87 41    	add    %al,0x4187ffff(%rax)
ffff80000010a7ca:	10 00                	adc    %al,(%rax)
ffff80000010a7cc:	00 80 ff ff 74 41    	add    %al,0x4174ffff(%rax)
ffff80000010a7d2:	10 00                	adc    %al,(%rax)
ffff80000010a7d4:	00 80 ff ff fb 40    	add    %al,0x40fbffff(%rax)
ffff80000010a7da:	10 00                	adc    %al,(%rax)
ffff80000010a7dc:	00 80 ff ff 12 42    	add    %al,0x4212ffff(%rax)
ffff80000010a7e2:	10 00                	adc    %al,(%rax)
ffff80000010a7e4:	00 80 ff ff 60 96    	add    %al,-0x699f0001(%rax)
ffff80000010a7ea:	10 00                	adc    %al,(%rax)
ffff80000010a7ec:	00 80 ff ff 33 42    	add    %al,0x4233ffff(%rax)
ffff80000010a7f2:	10 00                	adc    %al,(%rax)
ffff80000010a7f4:	00 80 ff ff be 41    	add    %al,0x41beffff(%rax)
ffff80000010a7fa:	10 00                	adc    %al,(%rax)
ffff80000010a7fc:	00 80 ff ff 0c 41    	add    %al,0x410cffff(%rax)
ffff80000010a802:	10 00                	adc    %al,(%rax)
ffff80000010a804:	00 80 ff ff 63 41    	add    %al,0x4163ffff(%rax)
ffff80000010a80a:	10 00                	adc    %al,(%rax)
ffff80000010a80c:	00 80 ff ff 10 a9    	add    %al,-0x56ef0001(%rax)
ffff80000010a812:	10 00                	adc    %al,(%rax)
ffff80000010a814:	00 80 ff ff 98 41    	add    %al,0x4198ffff(%rax)
ffff80000010a81a:	10 00                	adc    %al,(%rax)
ffff80000010a81c:	00 80 ff ff 54 42    	add    %al,0x4254ffff(%rax)
ffff80000010a822:	10 00                	adc    %al,(%rax)
ffff80000010a824:	00 80 ff ff 9c 4f    	add    %al,0x4f9cffff(%rax)
ffff80000010a82a:	10 00                	adc    %al,(%rax)
ffff80000010a82c:	00 80 ff ff ab 41    	add    %al,0x41abffff(%rax)
ffff80000010a832:	10 00                	adc    %al,(%rax)
ffff80000010a834:	00 80 ff ff 89 40    	add    %al,0x4089ffff(%rax)
ffff80000010a83a:	10 00                	adc    %al,(%rax)
ffff80000010a83c:	00 80 ff ff e8 40    	add    %al,0x40e8ffff(%rax)
ffff80000010a842:	10 00                	adc    %al,(%rax)
ffff80000010a844:	00 80 ff ff 9c 40    	add    %al,0x409cffff(%rax)
ffff80000010a84a:	10 00                	adc    %al,(%rax)
ffff80000010a84c:	00                   	.byte 0
ffff80000010a84d:	80 ff ff             	cmp    $0xff,%bh

Disassembly of section .got.plt:

ffff80000010a850 <_GLOBAL_OFFSET_TABLE_>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <RCX>
   a:	74 75                	je     81 <RAX+0x1>
   c:	20 31                	and    %dh,(%rcx)
   e:	33 2e                	xor    (%rsi),%ebp
  10:	33 2e                	xor    (%rsi),%ebp
  12:	30 2d 36 75 62 75    	xor    %ch,0x75627536(%rip)        # 7562754e <OLDSS+0x75627496>
  18:	6e                   	outsb  %ds:(%rsi),(%dx)
  19:	74 75                	je     90 <ERRCODE>
  1b:	32 7e 32             	xor    0x32(%rsi),%bh
  1e:	34 2e                	xor    $0x2e,%al
  20:	30 34 2e             	xor    %dh,(%rsi,%rbp,1)
  23:	31 29                	xor    %ebp,(%rcx)
  25:	20 31                	and    %dh,(%rcx)
  27:	33 2e                	xor    (%rsi),%ebp
  29:	33 2e                	xor    (%rsi),%ebp
  2b:	30 00                	xor    %al,(%rax)
