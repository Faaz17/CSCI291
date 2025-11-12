	.file	"task1.c"
 # GNU C23 (Rev5, Built by MSYS2 project) version 15.1.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 15.1.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -mtune=generic -march=nocona -gdwarf-2 -O0
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c"
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "Setting array values to indices:\0"
.LC1:
	.ascii "\12Removing element at index 5:\0"
	.align 8
.LC2:
	.ascii "\12Inserting value 99 at index 3:\0"
	.align 8
.LC3:
	.ascii "\12Reshaping array into 2D matrix (row by row):\0"
	.align 8
.LC4:
	.ascii "\12Printing the transposed matrix (column by column):\0"
.LC5:
	.ascii "\12Array has duplicates.\0"
.LC6:
	.ascii "\12No duplicates found.\0"
.LC7:
	.ascii "\12Flipped array:\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB105:
	.loc 1 20 12
	.cfi_startproc
	pushq	%rbp	 #
	.seh_pushreg	%rbp
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	subq	$336, %rsp	 #,
	.seh_stackalloc	336
.LCFI1:
	.cfi_def_cfa_offset 352
	leaq	128(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 128
.LCFI2:
	.cfi_def_cfa 6, 224
	.seh_endprologue
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:20: int main() {
	.loc 1 20 12
	call	__main	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:26:     printf("Setting array values to indices:\n");
	.loc 1 26 5
	leaq	.LC0(%rip), %rax	 #, tmp101
	movq	%rax, %rcx	 # tmp101,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:27:     setArray(arr, SIZE);
	.loc 1 27 5
	leaq	112(%rbp), %rax	 #, tmp102
	movl	$24, %edx	 #,
	movq	%rax, %rcx	 # tmp102,
	call	setArray	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:28:     printArray(arr, SIZE);
	.loc 1 28 5
	leaq	112(%rbp), %rax	 #, tmp103
	movl	$24, %edx	 #,
	movq	%rax, %rcx	 # tmp103,
	call	printArray	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:31:     printf("\nRemoving element at index 5:\n");
	.loc 1 31 5
	leaq	.LC1(%rip), %rax	 #, tmp104
	movq	%rax, %rcx	 # tmp104,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:32:     rem_align(arr, SIZE, 5);
	.loc 1 32 5
	leaq	112(%rbp), %rax	 #, tmp105
	movl	$5, %r8d	 #,
	movl	$24, %edx	 #,
	movq	%rax, %rcx	 # tmp105,
	call	rem_align	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:33:     printArray(arr, SIZE - 1); // print SIZE-1 because we removed one element
	.loc 1 33 5
	leaq	112(%rbp), %rax	 #, tmp106
	movl	$23, %edx	 #,
	movq	%rax, %rcx	 # tmp106,
	call	printArray	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:36:     printf("\nInserting value 99 at index 3:\n");
	.loc 1 36 5
	leaq	.LC2(%rip), %rax	 #, tmp107
	movq	%rax, %rcx	 # tmp107,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:37:     insert_align(arr, SIZE, 3, 99);
	.loc 1 37 5
	leaq	112(%rbp), %rax	 #, tmp108
	movl	$99, %r9d	 #,
	movl	$3, %r8d	 #,
	movl	$24, %edx	 #,
	movq	%rax, %rcx	 # tmp108,
	call	insert_align	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:38:     printArray(arr, SIZE);
	.loc 1 38 5
	leaq	112(%rbp), %rax	 #, tmp109
	movl	$24, %edx	 #,
	movq	%rax, %rcx	 # tmp109,
	call	printArray	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:41:     printf("\nReshaping array into 2D matrix (row by row):\n");
	.loc 1 41 5
	leaq	.LC3(%rip), %rax	 #, tmp110
	movq	%rax, %rcx	 # tmp110,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:42:     reshape(arr, SIZE, arr2d, nRows, nCols);
	.loc 1 42 5
	leaq	16(%rbp), %rdx	 #, tmp111
	leaq	112(%rbp), %rax	 #, tmp112
	movl	$3, 32(%rsp)	 #,
	movl	$8, %r9d	 #,
	movq	%rdx, %r8	 # tmp111,
	movl	$24, %edx	 #,
	movq	%rax, %rcx	 # tmp112,
	call	reshape	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:43:     printMatrix(arr2d, nRows);
	.loc 1 43 5
	leaq	16(%rbp), %rax	 #, tmp113
	movl	$8, %edx	 #,
	movq	%rax, %rcx	 # tmp113,
	call	printMatrix	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:46:     printf("\nPrinting the transposed matrix (column by column):\n");
	.loc 1 46 5
	leaq	.LC4(%rip), %rax	 #, tmp114
	movq	%rax, %rcx	 # tmp114,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:47:     printTransMatrix(arr2d, nRows, nCols);
	.loc 1 47 5
	leaq	16(%rbp), %rax	 #, tmp115
	movl	$3, %r8d	 #,
	movl	$8, %edx	 #,
	movq	%rax, %rcx	 # tmp115,
	call	printTransMatrix	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:50:     if (foundDuplicate(arr, SIZE))
	.loc 1 50 9
	leaq	112(%rbp), %rax	 #, tmp116
	movl	$24, %edx	 #,
	movq	%rax, %rcx	 # tmp116,
	call	foundDuplicate	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:50:     if (foundDuplicate(arr, SIZE))
	.loc 1 50 8 discriminator 1
	testb	%al, %al	 # _1
	je	.L2	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:51:         printf("\nArray has duplicates.\n");
	.loc 1 51 9
	leaq	.LC5(%rip), %rax	 #, tmp117
	movq	%rax, %rcx	 # tmp117,
	call	puts	 #
	jmp	.L3	 #
.L2:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:53:         printf("\nNo duplicates found.\n");
	.loc 1 53 9
	leaq	.LC6(%rip), %rax	 #, tmp118
	movq	%rax, %rcx	 # tmp118,
	call	puts	 #
.L3:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:56:     printf("\nFlipped array:\n");
	.loc 1 56 5
	leaq	.LC7(%rip), %rax	 #, tmp119
	movq	%rax, %rcx	 # tmp119,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:57:     flipArray(arr, SIZE, flipped);
	.loc 1 57 5
	leaq	-80(%rbp), %rdx	 #, tmp120
	leaq	112(%rbp), %rax	 #, tmp121
	movq	%rdx, %r8	 # tmp120,
	movl	$24, %edx	 #,
	movq	%rax, %rcx	 # tmp121,
	call	flipArray	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:58:     printArray(flipped, SIZE);
	.loc 1 58 5
	leaq	-80(%rbp), %rax	 #, tmp122
	movl	$24, %edx	 #,
	movq	%rax, %rcx	 # tmp122,
	call	printArray	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:60:     return 0;
	.loc 1 60 12
	movl	$0, %eax	 #, _24
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:61: }
	.loc 1 61 1
	addq	$336, %rsp	 #,
	popq	%rbp	 #
.LCFI3:
	.cfi_restore 6
	.cfi_def_cfa 7, -328
	ret	
	.cfi_endproc
.LFE105:
	.seh_endproc
	.globl	setArray
	.def	setArray;	.scl	2;	.type	32;	.endef
	.seh_proc	setArray
setArray:
.LFB106:
	.loc 1 65 38
	.cfi_startproc
	pushq	%rbp	 #
	.seh_pushreg	%rbp
.LCFI4:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
.LCFI5:
	.cfi_def_cfa_register 6
	subq	$16, %rsp	 #,
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # arr, arr
	movl	%edx, 24(%rbp)	 # length, length
.LBB2:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:66:     for (int i = 0; i < length; i++)
	.loc 1 66 14
	movl	$0, -4(%rbp)	 #, i
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:66:     for (int i = 0; i < length; i++)
	.loc 1 66 5
	jmp	.L6	 #
.L7:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:67:         arr[i] = i;
	.loc 1 67 12
	movl	-4(%rbp), %eax	 # i, tmp101
	cltq
	leaq	0(,%rax,4), %rdx	 #, _2
	movq	16(%rbp), %rax	 # arr, tmp102
	addq	%rax, %rdx	 # tmp102, _3
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:67:         arr[i] = i;
	.loc 1 67 16
	movl	-4(%rbp), %eax	 # i, tmp103
	movl	%eax, (%rdx)	 # tmp103, *_3
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:66:     for (int i = 0; i < length; i++)
	.loc 1 66 34 discriminator 3
	addl	$1, -4(%rbp)	 #, i
.L6:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:66:     for (int i = 0; i < length; i++)
	.loc 1 66 23 discriminator 1
	movl	-4(%rbp), %eax	 # i, tmp104
	cmpl	24(%rbp), %eax	 # length, tmp104
	jl	.L7	 #,
.LBE2:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:68: }
	.loc 1 68 1
	nop	
	nop	
	addq	$16, %rsp	 #,
	popq	%rbp	 #
.LCFI6:
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE106:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC8:
	.ascii "Invalid index for removal: %d\12\0"
	.text
	.globl	rem_align
	.def	rem_align;	.scl	2;	.type	32;	.endef
	.seh_proc	rem_align
rem_align:
.LFB107:
	.loc 1 71 48
	.cfi_startproc
	pushq	%rbp	 #
	.seh_pushreg	%rbp
.LCFI7:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
.LCFI8:
	.cfi_def_cfa_register 6
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # arr, arr
	movl	%edx, 24(%rbp)	 # length, length
	movl	%r8d, 32(%rbp)	 # pos, pos
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:73:     if (pos < 0 || pos >= length) {
	.loc 1 73 8
	cmpl	$0, 32(%rbp)	 #, pos
	js	.L9	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:73:     if (pos < 0 || pos >= length) {
	.loc 1 73 17 discriminator 1
	movl	32(%rbp), %eax	 # pos, tmp107
	cmpl	24(%rbp), %eax	 # length, tmp107
	jl	.L10	 #,
.L9:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:74:         printf("Invalid index for removal: %d\n", pos);
	.loc 1 74 9
	movl	32(%rbp), %eax	 # pos, tmp108
	leaq	.LC8(%rip), %rcx	 #, tmp109
	movl	%eax, %edx	 # tmp108,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:75:         return;
	.loc 1 75 9
	jmp	.L8	 #
.L10:
.LBB3:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:78:     for (int i = pos; i < length - 1; i++)
	.loc 1 78 14
	movl	32(%rbp), %eax	 # pos, tmp110
	movl	%eax, -4(%rbp)	 # tmp110, i
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:78:     for (int i = pos; i < length - 1; i++)
	.loc 1 78 5
	jmp	.L12	 #
.L13:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:79:         arr[i] = arr[i + 1];
	.loc 1 79 21
	movl	-4(%rbp), %eax	 # i, tmp111
	cltq
	addq	$1, %rax	 #, _2
	leaq	0(,%rax,4), %rdx	 #, _3
	movq	16(%rbp), %rax	 # arr, tmp112
	addq	%rdx, %rax	 # _3, _4
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:79:         arr[i] = arr[i + 1];
	.loc 1 79 12
	movl	-4(%rbp), %edx	 # i, tmp113
	movslq	%edx, %rdx	 # tmp113, _5
	leaq	0(,%rdx,4), %rcx	 #, _6
	movq	16(%rbp), %rdx	 # arr, tmp114
	addq	%rcx, %rdx	 # _6, _7
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:79:         arr[i] = arr[i + 1];
	.loc 1 79 21
	movl	(%rax), %eax	 # *_4, _8
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:79:         arr[i] = arr[i + 1];
	.loc 1 79 16
	movl	%eax, (%rdx)	 # _8, *_7
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:78:     for (int i = pos; i < length - 1; i++)
	.loc 1 78 40 discriminator 3
	addl	$1, -4(%rbp)	 #, i
.L12:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:78:     for (int i = pos; i < length - 1; i++)
	.loc 1 78 34 discriminator 1
	movl	24(%rbp), %eax	 # length, tmp115
	subl	$1, %eax	 #, _9
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:78:     for (int i = pos; i < length - 1; i++)
	.loc 1 78 25 discriminator 1
	cmpl	%eax, -4(%rbp)	 # _9, i
	jl	.L13	 #,
.L8:
.LBE3:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:80: }
	.loc 1 80 1
	addq	$48, %rsp	 #,
	popq	%rbp	 #
.LCFI9:
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE107:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC9:
	.ascii "Invalid index for insertion: %d\12\0"
	.text
	.globl	insert_align
	.def	insert_align;	.scl	2;	.type	32;	.endef
	.seh_proc	insert_align
insert_align:
.LFB108:
	.loc 1 83 62
	.cfi_startproc
	pushq	%rbp	 #
	.seh_pushreg	%rbp
.LCFI10:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
.LCFI11:
	.cfi_def_cfa_register 6
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # arr, arr
	movl	%edx, 24(%rbp)	 # length, length
	movl	%r8d, 32(%rbp)	 # pos, pos
	movl	%r9d, 40(%rbp)	 # value, value
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:85:     if (pos < 0 || pos >= length) {
	.loc 1 85 8
	cmpl	$0, 32(%rbp)	 #, pos
	js	.L15	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:85:     if (pos < 0 || pos >= length) {
	.loc 1 85 17 discriminator 1
	movl	32(%rbp), %eax	 # pos, tmp109
	cmpl	24(%rbp), %eax	 # length, tmp109
	jl	.L16	 #,
.L15:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:86:         printf("Invalid index for insertion: %d\n", pos);
	.loc 1 86 9
	movl	32(%rbp), %eax	 # pos, tmp110
	leaq	.LC9(%rip), %rcx	 #, tmp111
	movl	%eax, %edx	 # tmp110,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:87:         return;
	.loc 1 87 9
	jmp	.L14	 #
.L16:
.LBB4:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:90:     for (int i = length - 1; i > pos; i--)
	.loc 1 90 14
	movl	24(%rbp), %eax	 # length, tmp115
	subl	$1, %eax	 #, i_17
	movl	%eax, -4(%rbp)	 # i_17, i
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:90:     for (int i = length - 1; i > pos; i--)
	.loc 1 90 5
	jmp	.L18	 #
.L19:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:91:         arr[i] = arr[i - 1];
	.loc 1 91 21
	movl	-4(%rbp), %eax	 # i, tmp116
	cltq
	salq	$2, %rax	 #, _2
	leaq	-4(%rax), %rdx	 #, _3
	movq	16(%rbp), %rax	 # arr, tmp117
	addq	%rdx, %rax	 # _3, _4
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:91:         arr[i] = arr[i - 1];
	.loc 1 91 12
	movl	-4(%rbp), %edx	 # i, tmp118
	movslq	%edx, %rdx	 # tmp118, _5
	leaq	0(,%rdx,4), %rcx	 #, _6
	movq	16(%rbp), %rdx	 # arr, tmp119
	addq	%rcx, %rdx	 # _6, _7
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:91:         arr[i] = arr[i - 1];
	.loc 1 91 21
	movl	(%rax), %eax	 # *_4, _8
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:91:         arr[i] = arr[i - 1];
	.loc 1 91 16
	movl	%eax, (%rdx)	 # _8, *_7
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:90:     for (int i = length - 1; i > pos; i--)
	.loc 1 90 40 discriminator 3
	subl	$1, -4(%rbp)	 #, i
.L18:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:90:     for (int i = length - 1; i > pos; i--)
	.loc 1 90 32 discriminator 1
	movl	-4(%rbp), %eax	 # i, tmp120
	cmpl	32(%rbp), %eax	 # pos, tmp120
	jg	.L19	 #,
.LBE4:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:94:     arr[pos] = value;
	.loc 1 94 8
	movl	32(%rbp), %eax	 # pos, tmp121
	cltq
	leaq	0(,%rax,4), %rdx	 #, _10
	movq	16(%rbp), %rax	 # arr, tmp122
	addq	%rax, %rdx	 # tmp122, _11
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:94:     arr[pos] = value;
	.loc 1 94 14
	movl	40(%rbp), %eax	 # value, tmp123
	movl	%eax, (%rdx)	 # tmp123, *_11
.L14:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:95: }
	.loc 1 95 1
	addq	$48, %rsp	 #,
	popq	%rbp	 #
.LCFI12:
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE108:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC10:
	.ascii "Error: Length mismatch. Cannot reshape.\0"
	.text
	.globl	reshape
	.def	reshape;	.scl	2;	.type	32;	.endef
	.seh_proc	reshape
reshape:
.LFB109:
	.loc 1 98 74
	.cfi_startproc
	pushq	%rbp	 #
	.seh_pushreg	%rbp
.LCFI13:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
.LCFI14:
	.cfi_def_cfa_register 6
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # arr, arr
	movl	%edx, 24(%rbp)	 # length, length
	movq	%r8, 32(%rbp)	 # arr2d, arr2d
	movl	%r9d, 40(%rbp)	 # rows, rows
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:100:     if (length != rows * cols) {
	.loc 1 100 24
	movl	40(%rbp), %eax	 # rows, tmp107
	imull	48(%rbp), %eax	 # cols, _1
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:100:     if (length != rows * cols) {
	.loc 1 100 8
	cmpl	%eax, 24(%rbp)	 # _1, length
	je	.L21	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:101:         printf("Error: Length mismatch. Cannot reshape.\n");
	.loc 1 101 9
	leaq	.LC10(%rip), %rax	 #, tmp108
	movq	%rax, %rcx	 # tmp108,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:102:         return;
	.loc 1 102 9
	jmp	.L20	 #
.L21:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:104:     int index = 0; // keeps track of where we are in the 1D array
	.loc 1 104 9
	movl	$0, -4(%rbp)	 #, index
.LBB5:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:107:     for (int i = 0; i < rows; i++)
	.loc 1 107 14
	movl	$0, -8(%rbp)	 #, i
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:107:     for (int i = 0; i < rows; i++)
	.loc 1 107 5
	jmp	.L23	 #
.L26:
.LBB6:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:108:         for (int j = 0; j < cols; j++)
	.loc 1 108 18
	movl	$0, -12(%rbp)	 #, j
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:108:         for (int j = 0; j < cols; j++)
	.loc 1 108 9
	jmp	.L24	 #
.L25:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:109:             arr2d[i][j] = arr[index++];
	.loc 1 109 36
	movl	-4(%rbp), %eax	 # index, index.0_2
	leal	1(%rax), %edx	 #, tmp109
	movl	%edx, -4(%rbp)	 # tmp109, index
	cltq
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:109:             arr2d[i][j] = arr[index++];
	.loc 1 109 30
	leaq	0(,%rax,4), %rdx	 #, _4
	movq	16(%rbp), %rax	 # arr, tmp110
	leaq	(%rdx,%rax), %r8	 #, _5
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:109:             arr2d[i][j] = arr[index++];
	.loc 1 109 18
	movl	-8(%rbp), %eax	 # i, tmp111
	movslq	%eax, %rdx	 # tmp111, _6
	movq	%rdx, %rax	 # _6, _7
	addq	%rax, %rax	 # _7
	addq	%rdx, %rax	 # _6, _7
	salq	$2, %rax	 #, tmp113
	movq	%rax, %rdx	 # _7, _7
	movq	32(%rbp), %rax	 # arr2d, tmp114
	leaq	(%rdx,%rax), %rcx	 #, _8
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:109:             arr2d[i][j] = arr[index++];
	.loc 1 109 30
	movl	(%r8), %edx	 # *_5, _9
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:109:             arr2d[i][j] = arr[index++];
	.loc 1 109 25
	movl	-12(%rbp), %eax	 # j, tmp116
	cltq
	movl	%edx, (%rcx,%rax,4)	 # _9, (*_8)[j_13]
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:108:         for (int j = 0; j < cols; j++)
	.loc 1 108 36 discriminator 3
	addl	$1, -12(%rbp)	 #, j
.L24:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:108:         for (int j = 0; j < cols; j++)
	.loc 1 108 27 discriminator 1
	movl	-12(%rbp), %eax	 # j, tmp117
	cmpl	48(%rbp), %eax	 # cols, tmp117
	jl	.L25	 #,
.LBE6:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:107:     for (int i = 0; i < rows; i++)
	.loc 1 107 32 discriminator 2
	addl	$1, -8(%rbp)	 #, i
.L23:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:107:     for (int i = 0; i < rows; i++)
	.loc 1 107 23 discriminator 1
	movl	-8(%rbp), %eax	 # i, tmp118
	cmpl	40(%rbp), %eax	 # rows, tmp118
	jl	.L26	 #,
.L20:
.LBE5:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:110: }
	.loc 1 110 1
	addq	$48, %rsp	 #,
	popq	%rbp	 #
.LCFI15:
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE109:
	.seh_endproc
	.section .rdata,"dr"
.LC11:
	.ascii "%d \0"
	.text
	.globl	printTransMatrix
	.def	printTransMatrix;	.scl	2;	.type	32;	.endef
	.seh_proc	printTransMatrix
printTransMatrix:
.LFB110:
	.loc 1 113 60
	.cfi_startproc
	pushq	%rbp	 #
	.seh_pushreg	%rbp
.LCFI16:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
.LCFI17:
	.cfi_def_cfa_register 6
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # arr2d, arr2d
	movl	%edx, 24(%rbp)	 # rows, rows
	movl	%r8d, 32(%rbp)	 # cols, cols
.LBB7:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:115:     for (int j = 0; j < cols; j++) {
	.loc 1 115 14
	movl	$0, -4(%rbp)	 #, j
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:115:     for (int j = 0; j < cols; j++) {
	.loc 1 115 5
	jmp	.L28	 #
.L31:
.LBB8:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:116:         for (int i = 0; i < rows; i++)
	.loc 1 116 18
	movl	$0, -8(%rbp)	 #, i
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:116:         for (int i = 0; i < rows; i++)
	.loc 1 116 9
	jmp	.L29	 #
.L30:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:117:             printf("%d ", arr2d[i][j]);
	.loc 1 117 32
	movl	-8(%rbp), %eax	 # i, tmp102
	movslq	%eax, %rdx	 # tmp102, _1
	movq	%rdx, %rax	 # _1, _2
	addq	%rax, %rax	 # _2
	addq	%rdx, %rax	 # _1, _2
	salq	$2, %rax	 #, tmp104
	movq	%rax, %rdx	 # _2, _2
	movq	16(%rbp), %rax	 # arr2d, tmp105
	addq	%rax, %rdx	 # tmp105, _3
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:117:             printf("%d ", arr2d[i][j]);
	.loc 1 117 13
	movl	-4(%rbp), %eax	 # j, tmp107
	cltq
	movl	(%rdx,%rax,4), %eax	 # (*_3)[j_5], _4
	leaq	.LC11(%rip), %rcx	 #, tmp108
	movl	%eax, %edx	 # _4,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:116:         for (int i = 0; i < rows; i++)
	.loc 1 116 36 discriminator 3
	addl	$1, -8(%rbp)	 #, i
.L29:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:116:         for (int i = 0; i < rows; i++)
	.loc 1 116 27 discriminator 1
	movl	-8(%rbp), %eax	 # i, tmp109
	cmpl	24(%rbp), %eax	 # rows, tmp109
	jl	.L30	 #,
.LBE8:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:118:         printf("\n");
	.loc 1 118 9
	movl	$10, %ecx	 #,
	call	putchar	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:115:     for (int j = 0; j < cols; j++) {
	.loc 1 115 32 discriminator 2
	addl	$1, -4(%rbp)	 #, j
.L28:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:115:     for (int j = 0; j < cols; j++) {
	.loc 1 115 23 discriminator 1
	movl	-4(%rbp), %eax	 # j, tmp110
	cmpl	32(%rbp), %eax	 # cols, tmp110
	jl	.L31	 #,
.LBE7:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:120: }
	.loc 1 120 1
	nop	
	nop	
	addq	$48, %rsp	 #,
	popq	%rbp	 #
.LCFI18:
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE110:
	.seh_endproc
	.globl	foundDuplicate
	.def	foundDuplicate;	.scl	2;	.type	32;	.endef
	.seh_proc	foundDuplicate
foundDuplicate:
.LFB111:
	.loc 1 123 44
	.cfi_startproc
	pushq	%rbp	 #
	.seh_pushreg	%rbp
.LCFI19:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
.LCFI20:
	.cfi_def_cfa_register 6
	subq	$16, %rsp	 #,
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # arr, arr
	movl	%edx, 24(%rbp)	 # length, length
.LBB9:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:125:     for (int i = 0; i < length - 1; i++)
	.loc 1 125 14
	movl	$0, -4(%rbp)	 #, i
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:125:     for (int i = 0; i < length - 1; i++)
	.loc 1 125 5
	jmp	.L33	 #
.L38:
.LBB10:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:126:         for (int j = i + 1; j < length; j++)
	.loc 1 126 18
	movl	-4(%rbp), %eax	 # i, tmp112
	addl	$1, %eax	 #, j_16
	movl	%eax, -8(%rbp)	 # j_16, j
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:126:         for (int j = i + 1; j < length; j++)
	.loc 1 126 9
	jmp	.L34	 #
.L37:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:127:             if (arr[i] == arr[j]) // found a match
	.loc 1 127 20
	movl	-4(%rbp), %eax	 # i, tmp113
	cltq
	leaq	0(,%rax,4), %rdx	 #, _2
	movq	16(%rbp), %rax	 # arr, tmp114
	addq	%rdx, %rax	 # _2, _3
	movl	(%rax), %edx	 # *_3, _4
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:127:             if (arr[i] == arr[j]) // found a match
	.loc 1 127 30
	movl	-8(%rbp), %eax	 # j, tmp115
	cltq
	leaq	0(,%rax,4), %rcx	 #, _6
	movq	16(%rbp), %rax	 # arr, tmp116
	addq	%rcx, %rax	 # _6, _7
	movl	(%rax), %eax	 # *_7, _8
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:127:             if (arr[i] == arr[j]) // found a match
	.loc 1 127 16
	cmpl	%eax, %edx	 # _8, _4
	jne	.L35	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:128:                 return true;
	.loc 1 128 24
	movl	$1, %eax	 #, _12
	jmp	.L36	 #
.L35:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:126:         for (int j = i + 1; j < length; j++)
	.loc 1 126 42 discriminator 2
	addl	$1, -8(%rbp)	 #, j
.L34:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:126:         for (int j = i + 1; j < length; j++)
	.loc 1 126 31 discriminator 1
	movl	-8(%rbp), %eax	 # j, tmp117
	cmpl	24(%rbp), %eax	 # length, tmp117
	jl	.L37	 #,
.LBE10:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:125:     for (int i = 0; i < length - 1; i++)
	.loc 1 125 38 discriminator 2
	addl	$1, -4(%rbp)	 #, i
.L33:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:125:     for (int i = 0; i < length - 1; i++)
	.loc 1 125 32 discriminator 1
	movl	24(%rbp), %eax	 # length, tmp118
	subl	$1, %eax	 #, _9
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:125:     for (int i = 0; i < length - 1; i++)
	.loc 1 125 23 discriminator 1
	cmpl	%eax, -4(%rbp)	 # _9, i
	jl	.L38	 #,
.LBE9:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:129:     return false; // no duplicates found
	.loc 1 129 12
	movl	$0, %eax	 #, _12
.L36:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:130: }
	.loc 1 130 1
	addq	$16, %rsp	 #,
	popq	%rbp	 #
.LCFI21:
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE111:
	.seh_endproc
	.globl	flipArray
	.def	flipArray;	.scl	2;	.type	32;	.endef
	.seh_proc	flipArray
flipArray:
.LFB112:
	.loc 1 133 54
	.cfi_startproc
	pushq	%rbp	 #
	.seh_pushreg	%rbp
.LCFI22:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
.LCFI23:
	.cfi_def_cfa_register 6
	subq	$16, %rsp	 #,
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # arr, arr
	movl	%edx, 24(%rbp)	 # length, length
	movq	%r8, 32(%rbp)	 # flipped, flipped
.LBB11:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:135:     for (int i = 0; i < length; i++)
	.loc 1 135 14
	movl	$0, -4(%rbp)	 #, i
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:135:     for (int i = 0; i < length; i++)
	.loc 1 135 5
	jmp	.L40	 #
.L41:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:136:         flipped[i] = arr[length - 1 - i];
	.loc 1 136 33
	movl	24(%rbp), %eax	 # length, tmp107
	subl	$1, %eax	 #, _1
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:136:         flipped[i] = arr[length - 1 - i];
	.loc 1 136 37
	subl	-4(%rbp), %eax	 # i, _2
	cltq
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:136:         flipped[i] = arr[length - 1 - i];
	.loc 1 136 25
	leaq	0(,%rax,4), %rdx	 #, _4
	movq	16(%rbp), %rax	 # arr, tmp108
	addq	%rdx, %rax	 # _4, _5
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:136:         flipped[i] = arr[length - 1 - i];
	.loc 1 136 16
	movl	-4(%rbp), %edx	 # i, tmp109
	movslq	%edx, %rdx	 # tmp109, _6
	leaq	0(,%rdx,4), %rcx	 #, _7
	movq	32(%rbp), %rdx	 # flipped, tmp110
	addq	%rcx, %rdx	 # _7, _8
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:136:         flipped[i] = arr[length - 1 - i];
	.loc 1 136 25
	movl	(%rax), %eax	 # *_5, _9
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:136:         flipped[i] = arr[length - 1 - i];
	.loc 1 136 20
	movl	%eax, (%rdx)	 # _9, *_8
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:135:     for (int i = 0; i < length; i++)
	.loc 1 135 34 discriminator 3
	addl	$1, -4(%rbp)	 #, i
.L40:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:135:     for (int i = 0; i < length; i++)
	.loc 1 135 23 discriminator 1
	movl	-4(%rbp), %eax	 # i, tmp111
	cmpl	24(%rbp), %eax	 # length, tmp111
	jl	.L41	 #,
.LBE11:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:137: }
	.loc 1 137 1
	nop	
	nop	
	addq	$16, %rsp	 #,
	popq	%rbp	 #
.LCFI24:
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE112:
	.seh_endproc
	.globl	printArray
	.def	printArray;	.scl	2;	.type	32;	.endef
	.seh_proc	printArray
printArray:
.LFB113:
	.loc 1 140 40
	.cfi_startproc
	pushq	%rbp	 #
	.seh_pushreg	%rbp
.LCFI25:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
.LCFI26:
	.cfi_def_cfa_register 6
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # arr, arr
	movl	%edx, 24(%rbp)	 # length, length
.LBB12:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:141:     for (int i = 0; i < length; i++)
	.loc 1 141 14
	movl	$0, -4(%rbp)	 #, i
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:141:     for (int i = 0; i < length; i++)
	.loc 1 141 5
	jmp	.L43	 #
.L44:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:142:         printf("%d ", arr[i]);
	.loc 1 142 26
	movl	-4(%rbp), %eax	 # i, tmp102
	cltq
	leaq	0(,%rax,4), %rdx	 #, _2
	movq	16(%rbp), %rax	 # arr, tmp103
	addq	%rdx, %rax	 # _2, _3
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:142:         printf("%d ", arr[i]);
	.loc 1 142 9
	movl	(%rax), %eax	 # *_3, _4
	leaq	.LC11(%rip), %rcx	 #, tmp104
	movl	%eax, %edx	 # _4,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:141:     for (int i = 0; i < length; i++)
	.loc 1 141 34 discriminator 3
	addl	$1, -4(%rbp)	 #, i
.L43:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:141:     for (int i = 0; i < length; i++)
	.loc 1 141 23 discriminator 1
	movl	-4(%rbp), %eax	 # i, tmp105
	cmpl	24(%rbp), %eax	 # length, tmp105
	jl	.L44	 #,
.LBE12:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:143:     printf("\n");
	.loc 1 143 5
	movl	$10, %ecx	 #,
	call	putchar	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:144: }
	.loc 1 144 1
	nop	
	addq	$48, %rsp	 #,
	popq	%rbp	 #
.LCFI27:
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE113:
	.seh_endproc
	.globl	printMatrix
	.def	printMatrix;	.scl	2;	.type	32;	.endef
	.seh_proc	printMatrix
printMatrix:
.LFB114:
	.loc 1 147 42
	.cfi_startproc
	pushq	%rbp	 #
	.seh_pushreg	%rbp
.LCFI28:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
.LCFI29:
	.cfi_def_cfa_register 6
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # mat, mat
	movl	%edx, 24(%rbp)	 # rows, rows
.LBB13:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:148:     for (int i = 0; i < rows; i++) {
	.loc 1 148 14
	movl	$0, -4(%rbp)	 #, i
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:148:     for (int i = 0; i < rows; i++) {
	.loc 1 148 5
	jmp	.L46	 #
.L49:
.LBB14:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:149:         for (int j = 0; j < nCols; j++)
	.loc 1 149 18
	movl	$0, -8(%rbp)	 #, j
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:149:         for (int j = 0; j < nCols; j++)
	.loc 1 149 9
	jmp	.L47	 #
.L48:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:150:             printf("%d ", mat[i][j]);
	.loc 1 150 30
	movl	-4(%rbp), %eax	 # i, tmp102
	movslq	%eax, %rdx	 # tmp102, _1
	movq	%rdx, %rax	 # _1, _2
	addq	%rax, %rax	 # _2
	addq	%rdx, %rax	 # _1, _2
	salq	$2, %rax	 #, tmp104
	movq	%rax, %rdx	 # _2, _2
	movq	16(%rbp), %rax	 # mat, tmp105
	addq	%rax, %rdx	 # tmp105, _3
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:150:             printf("%d ", mat[i][j]);
	.loc 1 150 13
	movl	-8(%rbp), %eax	 # j, tmp107
	cltq
	movl	(%rdx,%rax,4), %eax	 # (*_3)[j_6], _4
	leaq	.LC11(%rip), %rcx	 #, tmp108
	movl	%eax, %edx	 # _4,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:149:         for (int j = 0; j < nCols; j++)
	.loc 1 149 33 discriminator 3
	addl	$1, -8(%rbp)	 #, j
.L47:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:149:         for (int j = 0; j < nCols; j++)
	.loc 1 149 27 discriminator 1
	cmpl	$2, -8(%rbp)	 #, j
	jle	.L48	 #,
.LBE14:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:151:         printf("\n");
	.loc 1 151 9
	movl	$10, %ecx	 #,
	call	putchar	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:148:     for (int i = 0; i < rows; i++) {
	.loc 1 148 32 discriminator 2
	addl	$1, -4(%rbp)	 #, i
.L46:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:148:     for (int i = 0; i < rows; i++) {
	.loc 1 148 23 discriminator 1
	movl	-4(%rbp), %eax	 # i, tmp109
	cmpl	24(%rbp), %eax	 # rows, tmp109
	jl	.L49	 #,
.LBE13:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c:153: }
	.loc 1 153 1
	nop	
	nop	
	addq	$48, %rsp	 #,
	popq	%rbp	 #
.LCFI30:
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE114:
	.seh_endproc
.Letext0:
	.file 2 "C:/msys64/ucrt64/include/stdio.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x6b4
	.word	0x2
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C23 15.1.0 -mtune=generic -march=nocona -gdwarf-2 -O0\0"
	.byte	0xc
	.ascii "C:/Development/Codelite/Lab3/Lab3/Lab3/task1.c\0"
	.ascii "C:\\\\Development\\\\Codelite\\\\Lab3\\\\Lab3\\\\Lab3\0"
	.quad	.Ltext0
	.quad	.Letext0
	.secrel32	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x3
	.long	0xb6
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
	.uleb128 0x4
	.byte	0x1
	.ascii "printf\0"
	.byte	0x2
	.word	0x1c2
	.byte	0x22
	.byte	0x1
	.long	0x104
	.byte	0x1
	.long	0x145
	.uleb128 0x5
	.long	0x145
	.uleb128 0x6
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xbe
	.uleb128 0x8
	.byte	0x1
	.ascii "printMatrix\0"
	.byte	0x1
	.byte	0x93
	.byte	0x6
	.byte	0x1
	.quad	.LFB114
	.quad	.LFE114
	.secrel32	.LLST9
	.byte	0x1
	.long	0x1d4
	.uleb128 0x9
	.ascii "mat\0"
	.byte	0x1
	.byte	0x93
	.byte	0x16
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.ascii "rows\0"
	.byte	0x1
	.byte	0x93
	.byte	0x24
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xa
	.quad	.LBB13
	.quad	.LBE13
	.uleb128 0xb
	.ascii "i\0"
	.byte	0x1
	.byte	0x94
	.byte	0xe
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0xb
	.ascii "j\0"
	.byte	0x1
	.byte	0x95
	.byte	0x12
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x104
	.long	0x1e4
	.uleb128 0xd
	.long	0xc3
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x1d4
	.uleb128 0x8
	.byte	0x1
	.ascii "printArray\0"
	.byte	0x1
	.byte	0x8c
	.byte	0x6
	.byte	0x1
	.quad	.LFB113
	.quad	.LFE113
	.secrel32	.LLST8
	.byte	0x1
	.long	0x252
	.uleb128 0x9
	.ascii "arr\0"
	.byte	0x1
	.byte	0x8c
	.byte	0x15
	.long	0x252
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.secrel32	.LASF0
	.byte	0x1
	.byte	0x8c
	.byte	0x20
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xa
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0xb
	.ascii "i\0"
	.byte	0x1
	.byte	0x8d
	.byte	0xe
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x104
	.uleb128 0xf
	.byte	0x1
	.ascii "flipArray\0"
	.byte	0x1
	.byte	0x85
	.byte	0x6
	.byte	0x1
	.quad	.LFB112
	.quad	.LFE112
	.secrel32	.LLST7
	.byte	0x1
	.long	0x2d2
	.uleb128 0x9
	.ascii "arr\0"
	.byte	0x1
	.byte	0x85
	.byte	0x14
	.long	0x252
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.secrel32	.LASF0
	.byte	0x1
	.byte	0x85
	.byte	0x1f
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x9
	.ascii "flipped\0"
	.byte	0x1
	.byte	0x85
	.byte	0x2b
	.long	0x252
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xa
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0xb
	.ascii "i\0"
	.byte	0x1
	.byte	0x87
	.byte	0xe
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ascii "foundDuplicate\0"
	.byte	0x1
	.byte	0x7b
	.byte	0x6
	.byte	0x1
	.long	0x361
	.quad	.LFB111
	.quad	.LFE111
	.secrel32	.LLST6
	.byte	0x1
	.long	0x361
	.uleb128 0x9
	.ascii "arr\0"
	.byte	0x1
	.byte	0x7b
	.byte	0x19
	.long	0x252
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.secrel32	.LASF0
	.byte	0x1
	.byte	0x7b
	.byte	0x24
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xa
	.quad	.LBB9
	.quad	.LBE9
	.uleb128 0xb
	.ascii "i\0"
	.byte	0x1
	.byte	0x7d
	.byte	0xe
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0xb
	.ascii "j\0"
	.byte	0x1
	.byte	0x7e
	.byte	0x12
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.ascii "_Bool\0"
	.uleb128 0x8
	.byte	0x1
	.ascii "printTransMatrix\0"
	.byte	0x1
	.byte	0x71
	.byte	0x6
	.byte	0x1
	.quad	.LFB110
	.quad	.LFE110
	.secrel32	.LLST5
	.byte	0x1
	.long	0x40a
	.uleb128 0x9
	.ascii "arr2d\0"
	.byte	0x1
	.byte	0x71
	.byte	0x1b
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.ascii "rows\0"
	.byte	0x1
	.byte	0x71
	.byte	0x2c
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x9
	.ascii "cols\0"
	.byte	0x1
	.byte	0x71
	.byte	0x36
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xa
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0xb
	.ascii "j\0"
	.byte	0x1
	.byte	0x73
	.byte	0xe
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0xb
	.ascii "i\0"
	.byte	0x1
	.byte	0x74
	.byte	0x12
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.ascii "reshape\0"
	.byte	0x1
	.byte	0x62
	.byte	0x6
	.byte	0x1
	.quad	.LFB109
	.quad	.LFE109
	.secrel32	.LLST4
	.byte	0x1
	.long	0x4d0
	.uleb128 0x9
	.ascii "arr\0"
	.byte	0x1
	.byte	0x62
	.byte	0x12
	.long	0x252
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.secrel32	.LASF0
	.byte	0x1
	.byte	0x62
	.byte	0x1d
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x9
	.ascii "arr2d\0"
	.byte	0x1
	.byte	0x62
	.byte	0x29
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x9
	.ascii "rows\0"
	.byte	0x1
	.byte	0x62
	.byte	0x3a
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x9
	.ascii "cols\0"
	.byte	0x1
	.byte	0x62
	.byte	0x44
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0xb
	.ascii "index\0"
	.byte	0x1
	.byte	0x68
	.byte	0x9
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.quad	.LBB5
	.quad	.LBE5
	.uleb128 0xb
	.ascii "i\0"
	.byte	0x1
	.byte	0x6b
	.byte	0xe
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0xb
	.ascii "j\0"
	.byte	0x1
	.byte	0x6c
	.byte	0x12
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.ascii "insert_align\0"
	.byte	0x1
	.byte	0x53
	.byte	0x6
	.byte	0x1
	.quad	.LFB108
	.quad	.LFE108
	.secrel32	.LLST3
	.byte	0x1
	.long	0x55a
	.uleb128 0x9
	.ascii "arr\0"
	.byte	0x1
	.byte	0x53
	.byte	0x17
	.long	0x252
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.secrel32	.LASF0
	.byte	0x1
	.byte	0x53
	.byte	0x22
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x9
	.ascii "pos\0"
	.byte	0x1
	.byte	0x53
	.byte	0x2e
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x9
	.ascii "value\0"
	.byte	0x1
	.byte	0x53
	.byte	0x37
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0xa
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0xb
	.ascii "i\0"
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.ascii "rem_align\0"
	.byte	0x1
	.byte	0x47
	.byte	0x6
	.byte	0x1
	.quad	.LFB107
	.quad	.LFE107
	.secrel32	.LLST2
	.byte	0x1
	.long	0x5d0
	.uleb128 0x9
	.ascii "arr\0"
	.byte	0x1
	.byte	0x47
	.byte	0x14
	.long	0x252
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.secrel32	.LASF0
	.byte	0x1
	.byte	0x47
	.byte	0x1f
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x9
	.ascii "pos\0"
	.byte	0x1
	.byte	0x47
	.byte	0x2b
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xa
	.quad	.LBB3
	.quad	.LBE3
	.uleb128 0xb
	.ascii "i\0"
	.byte	0x1
	.byte	0x4e
	.byte	0xe
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.ascii "setArray\0"
	.byte	0x1
	.byte	0x41
	.byte	0x6
	.byte	0x1
	.quad	.LFB106
	.quad	.LFE106
	.secrel32	.LLST1
	.byte	0x1
	.long	0x636
	.uleb128 0x9
	.ascii "arr\0"
	.byte	0x1
	.byte	0x41
	.byte	0x13
	.long	0x252
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.secrel32	.LASF0
	.byte	0x1
	.byte	0x41
	.byte	0x1e
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xa
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0xb
	.ascii "i\0"
	.byte	0x1
	.byte	0x42
	.byte	0xe
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0x14
	.byte	0x5
	.byte	0x1
	.long	0x104
	.quad	.LFB105
	.quad	.LFE105
	.secrel32	.LLST0
	.byte	0x1
	.long	0x695
	.uleb128 0xb
	.ascii "arr\0"
	.byte	0x1
	.byte	0x15
	.byte	0x9
	.long	0x695
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xb
	.ascii "arr2d\0"
	.byte	0x1
	.byte	0x16
	.byte	0x9
	.long	0x6a5
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0xb
	.ascii "flipped\0"
	.byte	0x1
	.byte	0x17
	.byte	0x9
	.long	0x695
	.byte	0x3
	.byte	0x91
	.sleb128 -304
	.byte	0
	.uleb128 0xc
	.long	0x104
	.long	0x6a5
	.uleb128 0xd
	.long	0xc3
	.byte	0x17
	.byte	0
	.uleb128 0x12
	.long	0x104
	.uleb128 0xd
	.long	0xc3
	.byte	0x7
	.uleb128 0xd
	.long	0xc3
	.byte	0x2
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
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
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
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"dr"
.Ldebug_loc0:
.LLST9:
	.quad	.LFB114-.Ltext0
	.quad	.LCFI28-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI28-.Ltext0
	.quad	.LCFI29-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI29-.Ltext0
	.quad	.LCFI30-.Ltext0
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI30-.Ltext0
	.quad	.LFE114-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST8:
	.quad	.LFB113-.Ltext0
	.quad	.LCFI25-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI25-.Ltext0
	.quad	.LCFI26-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI26-.Ltext0
	.quad	.LCFI27-.Ltext0
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI27-.Ltext0
	.quad	.LFE113-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST7:
	.quad	.LFB112-.Ltext0
	.quad	.LCFI22-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI22-.Ltext0
	.quad	.LCFI23-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI23-.Ltext0
	.quad	.LCFI24-.Ltext0
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI24-.Ltext0
	.quad	.LFE112-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST6:
	.quad	.LFB111-.Ltext0
	.quad	.LCFI19-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI19-.Ltext0
	.quad	.LCFI20-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI20-.Ltext0
	.quad	.LCFI21-.Ltext0
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI21-.Ltext0
	.quad	.LFE111-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST5:
	.quad	.LFB110-.Ltext0
	.quad	.LCFI16-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI16-.Ltext0
	.quad	.LCFI17-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI17-.Ltext0
	.quad	.LCFI18-.Ltext0
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI18-.Ltext0
	.quad	.LFE110-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST4:
	.quad	.LFB109-.Ltext0
	.quad	.LCFI13-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI13-.Ltext0
	.quad	.LCFI14-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI14-.Ltext0
	.quad	.LCFI15-.Ltext0
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI15-.Ltext0
	.quad	.LFE109-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST3:
	.quad	.LFB108-.Ltext0
	.quad	.LCFI10-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI10-.Ltext0
	.quad	.LCFI11-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI11-.Ltext0
	.quad	.LCFI12-.Ltext0
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI12-.Ltext0
	.quad	.LFE108-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST2:
	.quad	.LFB107-.Ltext0
	.quad	.LCFI7-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI7-.Ltext0
	.quad	.LCFI8-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI8-.Ltext0
	.quad	.LCFI9-.Ltext0
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI9-.Ltext0
	.quad	.LFE107-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST1:
	.quad	.LFB106-.Ltext0
	.quad	.LCFI4-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI4-.Ltext0
	.quad	.LCFI5-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI5-.Ltext0
	.quad	.LCFI6-.Ltext0
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI6-.Ltext0
	.quad	.LFE106-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
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
	.sleb128 352
	.quad	.LCFI2-.Ltext0
	.quad	.LCFI3-.Ltext0
	.word	0x3
	.byte	0x76
	.sleb128 224
	.quad	.LCFI3-.Ltext0
	.quad	.LFE105-.Ltext0
	.word	0x3
	.byte	0x77
	.sleb128 -328
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
.LASF0:
	.ascii "length\0"
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 15.1.0"
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	putchar;	.scl	2;	.type	32;	.endef
