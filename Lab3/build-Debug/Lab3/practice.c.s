	.file	"practice.c"
 # GNU C23 (Rev5, Built by MSYS2 project) version 15.1.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 15.1.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -mtune=generic -march=nocona -gdwarf-2 -O0
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "C:/Development/Codelite/Lab3/Lab3/Lab3/practice.c"
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "Enter the cordinates of the point A: \0"
.LC1:
	.ascii "%lf %lf %lf\0"
	.align 8
.LC2:
	.ascii "Enter the cordinates of the point B: \0"
	.align 8
.LC4:
	.ascii "The distance between the cordinates is: %lf\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB105:
	.loc 1 46 15
	.cfi_startproc
	pushq	%rbp	 #
	.seh_pushreg	%rbp
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	subq	$112, %rsp	 #,
	.seh_stackalloc	112
.LCFI1:
	.cfi_def_cfa_offset 128
	leaq	96(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 96
.LCFI2:
	.cfi_def_cfa 6, 32
	movups	%xmm6, 0(%rbp)	 #,
	.seh_savexmm	%xmm6, 96
	.cfi_offset 23, -32
	.seh_endprologue
 # C:/Development/Codelite/Lab3/Lab3/Lab3/practice.c:46: int main(void){
	.loc 1 46 15
	call	__main	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/practice.c:49:     printf("Enter the cordinates of the point A: \n");
	.loc 1 49 5
	leaq	.LC0(%rip), %rax	 #, tmp114
	movq	%rax, %rcx	 # tmp114,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/practice.c:50:     scanf("%lf %lf %lf", &x1, &y1, &z1);
	.loc 1 50 5
	leaq	-32(%rbp), %r8	 #, tmp115
	leaq	-24(%rbp), %rdx	 #, tmp116
	leaq	-16(%rbp), %rax	 #, tmp117
	leaq	.LC1(%rip), %rcx	 #, tmp118
	movq	%r8, %r9	 # tmp115,
	movq	%rdx, %r8	 # tmp116,
	movq	%rax, %rdx	 # tmp117,
	call	scanf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/practice.c:52:     printf("Enter the cordinates of the point B: \n");
	.loc 1 52 5
	leaq	.LC2(%rip), %rax	 #, tmp119
	movq	%rax, %rcx	 # tmp119,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/practice.c:53:     scanf("%lf %lf %lf", &x2, &y2, &z2);
	.loc 1 53 5
	leaq	-56(%rbp), %r8	 #, tmp120
	leaq	-48(%rbp), %rdx	 #, tmp121
	leaq	-40(%rbp), %rax	 #, tmp122
	leaq	.LC1(%rip), %rcx	 #, tmp123
	movq	%r8, %r9	 # tmp120,
	movq	%rdx, %r8	 # tmp121,
	movq	%rax, %rdx	 # tmp122,
	call	scanf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/practice.c:55:     distance = sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2) + pow(z1 - z2, 2));
	.loc 1 55 21
	movsd	-16(%rbp), %xmm0	 # x1, x1.0_1
	movsd	-40(%rbp), %xmm1	 # x2, x2.1_2
	subsd	%xmm1, %xmm0	 # x2.1_2, x1.0_1
	movq	%xmm0, %rax	 # x1.0_1, _3
	movsd	.LC3(%rip), %xmm0	 #, tmp124
	movapd	%xmm0, %xmm1	 # tmp124,
	movq	%rax, %xmm0	 # _3,
	call	pow	 #
	movapd	%xmm0, %xmm6	 #, _4
 # C:/Development/Codelite/Lab3/Lab3/Lab3/practice.c:55:     distance = sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2) + pow(z1 - z2, 2));
	.loc 1 55 39 discriminator 1
	movsd	-24(%rbp), %xmm0	 # y1, y1.2_5
	movsd	-48(%rbp), %xmm1	 # y2, y2.3_6
	subsd	%xmm1, %xmm0	 # y2.3_6, y1.2_5
	movq	%xmm0, %rax	 # y1.2_5, _7
	movsd	.LC3(%rip), %xmm0	 #, tmp125
	movapd	%xmm0, %xmm1	 # tmp125,
	movq	%rax, %xmm0	 # _7,
	call	pow	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/practice.c:55:     distance = sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2) + pow(z1 - z2, 2));
	.loc 1 55 37 discriminator 2
	addsd	%xmm0, %xmm6	 # _8, _9
 # C:/Development/Codelite/Lab3/Lab3/Lab3/practice.c:55:     distance = sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2) + pow(z1 - z2, 2));
	.loc 1 55 57 discriminator 2
	movsd	-32(%rbp), %xmm0	 # z1, z1.4_10
	movsd	-56(%rbp), %xmm1	 # z2, z2.5_11
	subsd	%xmm1, %xmm0	 # z2.5_11, z1.4_10
	movq	%xmm0, %rax	 # z1.4_10, _12
	movsd	.LC3(%rip), %xmm0	 #, tmp126
	movapd	%xmm0, %xmm1	 # tmp126,
	movq	%rax, %xmm0	 # _12,
	call	pow	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/practice.c:55:     distance = sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2) + pow(z1 - z2, 2));
	.loc 1 55 16 discriminator 3
	addsd	%xmm0, %xmm6	 # _13, _9
	movq	%xmm6, %rax	 # _9, _14
	movq	%rax, %xmm0	 # _14,
	call	sqrt	 #
	movq	%xmm0, %rax	 #, tmp127
	movq	%rax, -8(%rbp)	 # tmp127, distance
 # C:/Development/Codelite/Lab3/Lab3/Lab3/practice.c:57:     printf("The distance between the cordinates is: %lf\n", distance);
	.loc 1 57 5
	movsd	-8(%rbp), %xmm0	 # distance, tmp128
	movq	-8(%rbp), %rdx	 # distance, tmp129
	leaq	.LC4(%rip), %rax	 #, tmp130
	movapd	%xmm0, %xmm1	 # tmp128,
	movq	%rax, %rcx	 # tmp130,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/practice.c:59:     return 0;
	.loc 1 59 12
	movl	$0, %eax	 #, _26
 # C:/Development/Codelite/Lab3/Lab3/Lab3/practice.c:60: }
	.loc 1 60 1
	movups	0(%rbp), %xmm6	 #,
	addq	$112, %rsp	 #,
	.cfi_restore 23
	popq	%rbp	 #
.LCFI3:
	.cfi_restore 6
	.cfi_def_cfa 7, -104
	ret	
	.cfi_endproc
.LFE105:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC3:
	.long	0
	.long	1073741824
	.text
.Letext0:
	.file 2 "C:/msys64/ucrt64/include/stdio.h"
	.file 3 "C:/msys64/ucrt64/include/math.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x252
	.word	0x2
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C23 15.1.0 -mtune=generic -march=nocona -gdwarf-2 -O0\0"
	.byte	0xc
	.ascii "C:/Development/Codelite/Lab3/Lab3/Lab3/practice.c\0"
	.ascii "C:\\\\Development\\\\Codelite\\\\Lab3\\\\Lab3\\\\Lab3\0"
	.quad	.Ltext0
	.quad	.Letext0
	.secrel32	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x3
	.long	0xb9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x4
	.byte	0x8
	.long	0xc1
	.uleb128 0x5
	.byte	0x1
	.ascii "printf\0"
	.byte	0x2
	.word	0x1c2
	.byte	0x22
	.byte	0x1
	.long	0x107
	.byte	0x1
	.long	0x170
	.uleb128 0x6
	.long	0x14c
	.uleb128 0x7
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.ascii "sqrt\0"
	.byte	0x3
	.byte	0xb9
	.byte	0x25
	.byte	0x1
	.long	0x12a
	.byte	0x1
	.long	0x18a
	.uleb128 0x6
	.long	0x12a
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.ascii "pow\0"
	.byte	0x3
	.byte	0xb8
	.byte	0x25
	.byte	0x1
	.long	0x12a
	.byte	0x1
	.long	0x1a8
	.uleb128 0x6
	.long	0x12a
	.uleb128 0x6
	.long	0x12a
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.ascii "scanf\0"
	.byte	0x2
	.word	0x1d2
	.byte	0x22
	.byte	0x1
	.long	0x107
	.byte	0x1
	.long	0x1c5
	.uleb128 0x6
	.long	0x14c
	.uleb128 0x7
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0x2e
	.byte	0x5
	.byte	0x1
	.long	0x107
	.quad	.LFB105
	.quad	.LFE105
	.secrel32	.LLST0
	.byte	0x1
	.uleb128 0xa
	.ascii "x1\0"
	.byte	0x1
	.byte	0x2f
	.byte	0xc
	.long	0x12a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.ascii "y1\0"
	.byte	0x1
	.byte	0x2f
	.byte	0x10
	.long	0x12a
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.ascii "z1\0"
	.byte	0x1
	.byte	0x2f
	.byte	0x14
	.long	0x12a
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.ascii "x2\0"
	.byte	0x1
	.byte	0x2f
	.byte	0x18
	.long	0x12a
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xa
	.ascii "y2\0"
	.byte	0x1
	.byte	0x2f
	.byte	0x1c
	.long	0x12a
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xa
	.ascii "z2\0"
	.byte	0x1
	.byte	0x2f
	.byte	0x20
	.long	0x12a
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xa
	.ascii "distance\0"
	.byte	0x1
	.byte	0x2f
	.byte	0x24
	.long	0x12a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"dr"
.Ldebug_loc0:
.LLST0:
	.quad	.LFB105-.Ltext0
	.quad	.LCFI0-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI0-.Ltext0
	.quad	.LCFI1-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI1-.Ltext0
	.quad	.LCFI2-.Ltext0
	.word	0x3
	.byte	0x77
	.sleb128 128
	.quad	.LCFI2-.Ltext0
	.quad	.LCFI3-.Ltext0
	.word	0x2
	.byte	0x76
	.sleb128 32
	.quad	.LCFI3-.Ltext0
	.quad	.LFE105-.Ltext0
	.word	0x3
	.byte	0x77
	.sleb128 -104
	.quad	0
	.quad	0
	.section	.debug_aranges,"dr"
	.long	0x2c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 15.1.0"
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	pow;	.scl	2;	.type	32;	.endef
	.def	sqrt;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
