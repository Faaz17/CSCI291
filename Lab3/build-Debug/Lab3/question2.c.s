	.file	"question2.c"
 # GNU C23 (Rev5, Built by MSYS2 project) version 15.1.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 15.1.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -mtune=generic -march=nocona -gdwarf-2 -O0
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c"
	.section .rdata,"dr"
.LC0:
	.ascii "%d\0"
	.align 8
.LC1:
	.ascii "Invalid input. Please enter a number.\0"
.LC2:
	.ascii "Exiting program\0"
.LC3:
	.ascii "Invalid choice. Try again.\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB107:
	.loc 1 27 12
	.cfi_startproc
	pushq	%rbp	 #
	.seh_pushreg	%rbp
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	subq	$1824, %rsp	 #,
	.seh_stackalloc	1824
.LCFI1:
	.cfi_def_cfa_offset 1840
	leaq	128(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 128
.LCFI2:
	.cfi_def_cfa 6, 1712
	.seh_endprologue
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:27: int main() {
	.loc 1 27 12
	call	__main	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:29:     int studentCount = 0;
	.loc 1 29 9
	movl	$0, 1692(%rbp)	 #, studentCount
.L11:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:33:         displayMenu();
	.loc 1 33 9
	call	displayMenu	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:36:         if (scanf("%d", &choice) != 1) {
	.loc 1 36 13
	leaq	-84(%rbp), %rax	 #, tmp103
	leaq	.LC0(%rip), %rcx	 #, tmp104
	movq	%rax, %rdx	 # tmp103,
	call	scanf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:36:         if (scanf("%d", &choice) != 1) {
	.loc 1 36 12 discriminator 1
	cmpl	$1, %eax	 #, _1
	je	.L2	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:37:             printf("Invalid input. Please enter a number.\n");
	.loc 1 37 13
	leaq	.LC1(%rip), %rax	 #, tmp105
	movq	%rax, %rcx	 # tmp105,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:38:             while(getchar() != '\n'); // Clear input buffer
	.loc 1 38 18
	nop	
.L3:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:38:             while(getchar() != '\n'); // Clear input buffer
	.loc 1 38 19 discriminator 2
	call	getchar	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:38:             while(getchar() != '\n'); // Clear input buffer
	.loc 1 38 29 discriminator 2
	cmpl	$10, %eax	 #, _2
	jne	.L3	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:39:             continue;
	.loc 1 39 13
	jmp	.L4	 #
.L2:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:42:         switch(choice) {
	.loc 1 42 9
	movl	-84(%rbp), %eax	 # choice, choice.0_3
	cmpl	$4, %eax	 #, choice.0_3
	je	.L5	 #,
	cmpl	$4, %eax	 #, choice.0_3
	jg	.L6	 #,
	cmpl	$3, %eax	 #, choice.0_3
	je	.L7	 #,
	cmpl	$3, %eax	 #, choice.0_3
	jg	.L6	 #,
	cmpl	$1, %eax	 #, choice.0_3
	je	.L8	 #,
	cmpl	$2, %eax	 #, choice.0_3
	je	.L9	 #,
	jmp	.L6	 #
.L8:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:44:                 studentCount = enrol(students, studentCount);
	.loc 1 44 32
	movl	1692(%rbp), %edx	 # studentCount, tmp106
	leaq	-80(%rbp), %rax	 #, tmp107
	movq	%rax, %rcx	 # tmp107,
	call	enrol	 #
	movl	%eax, 1692(%rbp)	 # tmp108, studentCount
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:45:                 break;
	.loc 1 45 17
	jmp	.L4	 #
.L9:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:47:                 searchUpdate(students, studentCount);
	.loc 1 47 17
	movl	1692(%rbp), %edx	 # studentCount, tmp109
	leaq	-80(%rbp), %rax	 #, tmp110
	movq	%rax, %rcx	 # tmp110,
	call	searchUpdate	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:48:                 break;
	.loc 1 48 17
	jmp	.L4	 #
.L7:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:50:                 topStudents(students, studentCount);
	.loc 1 50 17
	movl	1692(%rbp), %edx	 # studentCount, tmp111
	leaq	-80(%rbp), %rax	 #, tmp112
	movq	%rax, %rcx	 # tmp112,
	call	topStudents	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:51:                 break;
	.loc 1 51 17
	jmp	.L4	 #
.L5:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:53:                 printf("Exiting program\n");
	.loc 1 53 17
	leaq	.LC2(%rip), %rax	 #, tmp113
	movq	%rax, %rcx	 # tmp113,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:54:                 return 0;
	.loc 1 54 24
	movl	$0, %eax	 #, _14
	jmp	.L12	 #
.L6:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:56:                 printf("Invalid choice. Try again.\n");
	.loc 1 56 17
	leaq	.LC3(%rip), %rax	 #, tmp114
	movq	%rax, %rcx	 # tmp114,
	call	puts	 #
.L4:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:33:         displayMenu();
	.loc 1 33 9
	jmp	.L11	 #
.L12:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:61: }
	.loc 1 61 1
	addq	$1824, %rsp	 #,
	popq	%rbp	 #
.LCFI3:
	.cfi_restore 6
	.cfi_def_cfa 7, -1816
	ret	
	.cfi_endproc
.LFE107:
	.seh_endproc
	.section .rdata,"dr"
.LC4:
	.ascii "\12Student Management System\0"
.LC5:
	.ascii "1. Enrol student\0"
.LC6:
	.ascii "2. Search and Update student\0"
.LC7:
	.ascii "3. Show top students\0"
.LC8:
	.ascii "4. Exit\0"
.LC9:
	.ascii "Enter your choice: \0"
	.text
	.globl	displayMenu
	.def	displayMenu;	.scl	2;	.type	32;	.endef
	.seh_proc	displayMenu
displayMenu:
.LFB108:
	.loc 1 64 20
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
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:65:     printf("\nStudent Management System\n");
	.loc 1 65 5
	leaq	.LC4(%rip), %rax	 #, tmp98
	movq	%rax, %rcx	 # tmp98,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:66:     printf("1. Enrol student\n");
	.loc 1 66 5
	leaq	.LC5(%rip), %rax	 #, tmp99
	movq	%rax, %rcx	 # tmp99,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:67:     printf("2. Search and Update student\n");
	.loc 1 67 5
	leaq	.LC6(%rip), %rax	 #, tmp100
	movq	%rax, %rcx	 # tmp100,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:68:     printf("3. Show top students\n");
	.loc 1 68 5
	leaq	.LC7(%rip), %rax	 #, tmp101
	movq	%rax, %rcx	 # tmp101,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:69:     printf("4. Exit\n");
	.loc 1 69 5
	leaq	.LC8(%rip), %rax	 #, tmp102
	movq	%rax, %rcx	 # tmp102,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:70:     printf("Enter your choice: ");
	.loc 1 70 5
	leaq	.LC9(%rip), %rax	 #, tmp103
	movq	%rax, %rcx	 # tmp103,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:71: }
	.loc 1 71 1
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
.LCFI6:
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE108:
	.seh_endproc
	.section .rdata,"dr"
.LC10:
	.ascii "Student list is full!\0"
.LC12:
	.ascii "\12Enter First Name: \0"
.LC13:
	.ascii "%s\0"
.LC14:
	.ascii "Enter Last Name: \0"
	.align 8
.LC15:
	.ascii "Enter Student ID (positive integer): \0"
	.align 8
.LC16:
	.ascii "Invalid input. Enter a positive integer: \0"
	.align 8
.LC17:
	.ascii "\12Do you want to input mark for Subject %d? (y/n): \0"
.LC18:
	.ascii " %c\0"
.LC19:
	.ascii "Enter mark for Subject %d: \0"
	.align 8
.LC20:
	.ascii "Invalid mark. Enter a value between 0 and 100: \0"
.LC21:
	.ascii "%f\0"
	.align 8
.LC24:
	.ascii "\12Student Enrolled Successfully\0"
	.text
	.globl	enrol
	.def	enrol;	.scl	2;	.type	32;	.endef
	.seh_proc	enrol
enrol:
.LFB109:
	.loc 1 75 42
	.cfi_startproc
	pushq	%rbp	 #
	.seh_pushreg	%rbp
.LCFI7:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	 #
	.seh_pushreg	%rbx
.LCFI8:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$264, %rsp	 #,
	.seh_stackalloc	264
.LCFI9:
	.cfi_def_cfa_offset 288
	leaq	128(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 128
.LCFI10:
	.cfi_def_cfa 6, 160
	.seh_endprologue
	movq	%rcx, 160(%rbp)	 # students, students
	movl	%edx, 168(%rbp)	 # count, count
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:76:     if (count >= numOfStudents) {
	.loc 1 76 8
	cmpl	$19, 168(%rbp)	 #, count
	jle	.L15	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:77:         printf("Student list is full!\n");
	.loc 1 77 9
	leaq	.LC10(%rip), %rax	 #, tmp117
	movq	%rax, %rcx	 # tmp117,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:78:         return count;
	.loc 1 78 16
	movl	168(%rbp), %eax	 # count, _23
	jmp	.L30	 #
.L15:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:83:     float totalMarks = 0;
	.loc 1 83 11
	pxor	%xmm0, %xmm0	 # tmp118
	movss	%xmm0, 124(%rbp)	 # tmp118, totalMarks
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:84:     int validMarks = 0;
	.loc 1 84 9
	movl	$0, 120(%rbp)	 #, validMarks
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:87:     printf("\nEnter First Name: ");
	.loc 1 87 5
	leaq	.LC12(%rip), %rax	 #, tmp119
	movq	%rax, %rcx	 # tmp119,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:88:     scanf("%s", newStudent.FirstName);
	.loc 1 88 5
	leaq	16(%rbp), %rax	 #, tmp120
	leaq	.LC13(%rip), %rcx	 #, tmp121
	movq	%rax, %rdx	 # tmp120,
	call	scanf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:89:     printf("Enter Last Name: ");
	.loc 1 89 5
	leaq	.LC14(%rip), %rax	 #, tmp122
	movq	%rax, %rcx	 # tmp122,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:90:     scanf("%s", newStudent.LastName);
	.loc 1 90 5
	leaq	16(%rbp), %rax	 #, tmp123
	leaq	20(%rax), %rdx	 #, tmp124
	leaq	.LC13(%rip), %rax	 #, tmp125
	movq	%rax, %rcx	 # tmp125,
	call	scanf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:93:     printf("Enter Student ID (positive integer): ");
	.loc 1 93 5
	leaq	.LC15(%rip), %rax	 #, tmp126
	movq	%rax, %rcx	 # tmp126,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:94:     while(scanf("%d", &newStudent.StudentID) != 1 || newStudent.StudentID <= 0) {
	.loc 1 94 10
	jmp	.L17	 #
.L19:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:95:         printf("Invalid input. Enter a positive integer: ");
	.loc 1 95 9
	leaq	.LC16(%rip), %rax	 #, tmp127
	movq	%rax, %rcx	 # tmp127,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:96:         while(getchar() != '\n');
	.loc 1 96 14
	nop	
.L18:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:96:         while(getchar() != '\n');
	.loc 1 96 15 discriminator 2
	call	getchar	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:96:         while(getchar() != '\n');
	.loc 1 96 25 discriminator 2
	cmpl	$10, %eax	 #, _1
	jne	.L18	 #,
.L17:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:94:     while(scanf("%d", &newStudent.StudentID) != 1 || newStudent.StudentID <= 0) {
	.loc 1 94 11
	leaq	16(%rbp), %rax	 #, tmp128
	leaq	40(%rax), %rdx	 #, tmp129
	leaq	.LC0(%rip), %rax	 #, tmp130
	movq	%rax, %rcx	 # tmp130,
	call	scanf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:94:     while(scanf("%d", &newStudent.StudentID) != 1 || newStudent.StudentID <= 0) {
	.loc 1 94 51 discriminator 1
	cmpl	$1, %eax	 #, _2
	jne	.L19	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:94:     while(scanf("%d", &newStudent.StudentID) != 1 || newStudent.StudentID <= 0) {
	.loc 1 94 64 discriminator 2
	movl	56(%rbp), %eax	 # newStudent.StudentID, _3
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:94:     while(scanf("%d", &newStudent.StudentID) != 1 || newStudent.StudentID <= 0) {
	.loc 1 94 51 discriminator 2
	testl	%eax, %eax	 # _3
	jle	.L19	 #,
.LBB2:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:100:     for(int i = 0; i < numOfSubjects; i++) {
	.loc 1 100 13
	movl	$0, 116(%rbp)	 #, i
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:100:     for(int i = 0; i < numOfSubjects; i++) {
	.loc 1 100 5
	jmp	.L20	 #
.L27:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:101:         printf("\nDo you want to input mark for Subject %d? (y/n): ", i);
	.loc 1 101 9
	movl	116(%rbp), %eax	 # i, tmp131
	leaq	.LC17(%rip), %rcx	 #, tmp132
	movl	%eax, %edx	 # tmp131,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:102:         scanf(" %c", &answer);
	.loc 1 102 9
	leaq	15(%rbp), %rax	 #, tmp133
	leaq	.LC18(%rip), %rcx	 #, tmp134
	movq	%rax, %rdx	 # tmp133,
	call	scanf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:104:         if(answer == 'y' || answer == 'Y') {
	.loc 1 104 19
	movzbl	15(%rbp), %eax	 # answer, answer.1_4
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:104:         if(answer == 'y' || answer == 'Y') {
	.loc 1 104 11
	cmpb	$121, %al	 #, answer.1_4
	je	.L21	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:104:         if(answer == 'y' || answer == 'Y') {
	.loc 1 104 36 discriminator 1
	movzbl	15(%rbp), %eax	 # answer, answer.2_5
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:104:         if(answer == 'y' || answer == 'Y') {
	.loc 1 104 26 discriminator 1
	cmpb	$89, %al	 #, answer.2_5
	jne	.L22	 #,
.L21:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:105:             printf("Enter mark for Subject %d: ", i);
	.loc 1 105 13
	movl	116(%rbp), %eax	 # i, tmp135
	leaq	.LC19(%rip), %rcx	 #, tmp136
	movl	%eax, %edx	 # tmp135,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:106:             while(scanf("%f", &newStudent.SubjectMarks[i]) != 1 || 
	.loc 1 106 18
	jmp	.L23	 #
.L25:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:108:                 printf("Invalid mark. Enter a value between 0 and 100: ");
	.loc 1 108 17
	leaq	.LC20(%rip), %rax	 #, tmp137
	movq	%rax, %rcx	 # tmp137,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:109:                 while(getchar() != '\n');
	.loc 1 109 22
	nop	
.L24:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:109:                 while(getchar() != '\n');
	.loc 1 109 23 discriminator 2
	call	getchar	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:109:                 while(getchar() != '\n');
	.loc 1 109 33 discriminator 2
	cmpl	$10, %eax	 #, _6
	jne	.L24	 #,
.L23:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:106:             while(scanf("%f", &newStudent.SubjectMarks[i]) != 1 || 
	.loc 1 106 19
	leaq	16(%rbp), %rax	 #, tmp138
	movl	116(%rbp), %edx	 # i, tmp140
	movslq	%edx, %rdx	 # tmp140, tmp139
	addq	$8, %rdx	 #, tmp141
	salq	$2, %rdx	 #, tmp142
	addq	%rdx, %rax	 # tmp142, tmp143
	leaq	12(%rax), %rdx	 #, _7
	leaq	.LC21(%rip), %rax	 #, tmp144
	movq	%rax, %rcx	 # tmp144,
	call	scanf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:107:                   newStudent.SubjectMarks[i] < 0 || newStudent.SubjectMarks[i] > 100) {
	.loc 1 107 50
	cmpl	$1, %eax	 #, _8
	jne	.L25	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:107:                   newStudent.SubjectMarks[i] < 0 || newStudent.SubjectMarks[i] > 100) {
	.loc 1 107 42 discriminator 1
	movl	116(%rbp), %eax	 # i, tmp146
	cltq
	addq	$8, %rax	 #, tmp147
	movss	28(%rbp,%rax,4), %xmm1	 # newStudent.SubjectMarks[i_22], _9
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:106:             while(scanf("%f", &newStudent.SubjectMarks[i]) != 1 || 
	.loc 1 106 65
	pxor	%xmm0, %xmm0	 # tmp148
	comiss	%xmm1, %xmm0	 # _9, tmp148
	ja	.L25	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:107:                   newStudent.SubjectMarks[i] < 0 || newStudent.SubjectMarks[i] > 100) {
	.loc 1 107 76
	movl	116(%rbp), %eax	 # i, tmp150
	cltq
	addq	$8, %rax	 #, tmp151
	movss	28(%rbp,%rax,4), %xmm0	 # newStudent.SubjectMarks[i_22], _10
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:107:                   newStudent.SubjectMarks[i] < 0 || newStudent.SubjectMarks[i] > 100) {
	.loc 1 107 50
	comiss	.LC22(%rip), %xmm0	 #, _10
	ja	.L25	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:111:             totalMarks += newStudent.SubjectMarks[i];
	.loc 1 111 50
	movl	116(%rbp), %eax	 # i, tmp153
	cltq
	addq	$8, %rax	 #, tmp154
	movss	28(%rbp,%rax,4), %xmm0	 # newStudent.SubjectMarks[i_22], _11
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:111:             totalMarks += newStudent.SubjectMarks[i];
	.loc 1 111 24
	movss	124(%rbp), %xmm1	 # totalMarks, tmp156
	addss	%xmm1, %xmm0	 # tmp156, totalMarks_58
	movss	%xmm0, 124(%rbp)	 # totalMarks_58, totalMarks
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:112:             validMarks++;
	.loc 1 112 23
	addl	$1, 120(%rbp)	 #, validMarks
	jmp	.L26	 #
.L22:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:114:             newStudent.SubjectMarks[i] = -1;
	.loc 1 114 40
	movl	116(%rbp), %eax	 # i, tmp158
	cltq
	addq	$8, %rax	 #, tmp159
	movss	.LC23(%rip), %xmm0	 #, tmp160
	movss	%xmm0, 28(%rbp,%rax,4)	 # tmp160, newStudent.SubjectMarks[i_22]
.L26:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:100:     for(int i = 0; i < numOfSubjects; i++) {
	.loc 1 100 28 discriminator 2
	addl	$1, 116(%rbp)	 #, i
.L20:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:100:     for(int i = 0; i < numOfSubjects; i++) {
	.loc 1 100 22 discriminator 1
	cmpl	$4, 116(%rbp)	 #, i
	jle	.L27	 #,
.LBE2:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:119:     if(validMarks > 0) {
	.loc 1 119 7
	cmpl	$0, 120(%rbp)	 #, validMarks
	jle	.L28	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:120:         newStudent.AggregateMarks = totalMarks / validMarks;
	.loc 1 120 48
	pxor	%xmm1, %xmm1	 # _12
	cvtsi2ssl	120(%rbp), %xmm1	 # validMarks, _12
	movss	124(%rbp), %xmm0	 # totalMarks, tmp161
	divss	%xmm1, %xmm0	 # _12, _13
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:120:         newStudent.AggregateMarks = totalMarks / validMarks;
	.loc 1 120 35
	movss	%xmm0, 80(%rbp)	 # _13, newStudent.AggregateMarks
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:121:         calculateGrade(newStudent.AggregateMarks, newStudent.Grade);
	.loc 1 121 9
	movl	80(%rbp), %eax	 # newStudent.AggregateMarks, _14
	leaq	16(%rbp), %rdx	 #, tmp162
	addq	$68, %rdx	 #, tmp163
	movd	%eax, %xmm0	 # _14,
	call	calculateGrade	 #
	jmp	.L29	 #
.L28:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:123:         newStudent.AggregateMarks = -1;
	.loc 1 123 35
	movss	.LC23(%rip), %xmm0	 #, tmp164
	movss	%xmm0, 80(%rbp)	 # tmp164, newStudent.AggregateMarks
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:124:         strcpy(newStudent.Grade, "undefined");
	.loc 1 124 9
	leaq	16(%rbp), %rax	 #, tmp165
	addq	$68, %rax	 #, tmp166
	movabsq	$7308895133777555061, %rbx	 #, tmp185
	movq	%rbx, (%rax)	 # tmp185, MEM <char[1:10]> [(void *)&newStudent + 68B]
	movw	$100, 8(%rax)	 #, MEM <char[1:10]> [(void *)&newStudent + 68B]
.L29:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:128:     students[count] = newStudent;
	.loc 1 128 13
	movl	168(%rbp), %eax	 # count, tmp167
	cltq
	imulq	$88, %rax, %rdx	 #, _15, _16
	movq	160(%rbp), %rax	 # students, tmp168
	addq	%rdx, %rax	 # _16, _17
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:128:     students[count] = newStudent;
	.loc 1 128 21
	movq	16(%rbp), %rcx	 # newStudent, tmp169
	movq	24(%rbp), %rbx	 # newStudent,
	movq	%rcx, (%rax)	 # tmp169, *_17
	movq	%rbx, 8(%rax)	 #, *_17
	movq	32(%rbp), %rcx	 # newStudent, tmp170
	movq	40(%rbp), %rbx	 # newStudent,
	movq	%rcx, 16(%rax)	 # tmp170, *_17
	movq	%rbx, 24(%rax)	 #, *_17
	movq	48(%rbp), %rcx	 # newStudent, tmp171
	movq	56(%rbp), %rbx	 # newStudent,
	movq	%rcx, 32(%rax)	 # tmp171, *_17
	movq	%rbx, 40(%rax)	 #, *_17
	movq	64(%rbp), %rcx	 # newStudent, tmp172
	movq	72(%rbp), %rbx	 # newStudent,
	movq	%rcx, 48(%rax)	 # tmp172, *_17
	movq	%rbx, 56(%rax)	 #, *_17
	movq	80(%rbp), %rcx	 # newStudent, tmp173
	movq	88(%rbp), %rbx	 # newStudent,
	movq	%rcx, 64(%rax)	 # tmp173, *_17
	movq	%rbx, 72(%rax)	 #, *_17
	movq	96(%rbp), %rdx	 # newStudent, tmp174
	movq	%rdx, 80(%rax)	 # tmp174, *_17
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:129:     count++;
	.loc 1 129 10
	addl	$1, 168(%rbp)	 #, count
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:132:     printf("\nStudent Enrolled Successfully\n");
	.loc 1 132 5
	leaq	.LC24(%rip), %rax	 #, tmp175
	movq	%rax, %rcx	 # tmp175,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:133:     printStudentDetails(newStudent); // Use helper function
	.loc 1 133 5
	movq	16(%rbp), %rax	 # newStudent, tmp176
	movq	24(%rbp), %rdx	 # newStudent,
	movq	%rax, -96(%rbp)	 # tmp176,
	movq	%rdx, -88(%rbp)	 #,
	movq	32(%rbp), %rax	 # newStudent, tmp177
	movq	40(%rbp), %rdx	 # newStudent,
	movq	%rax, -80(%rbp)	 # tmp177,
	movq	%rdx, -72(%rbp)	 #,
	movq	48(%rbp), %rax	 # newStudent, tmp178
	movq	56(%rbp), %rdx	 # newStudent,
	movq	%rax, -64(%rbp)	 # tmp178,
	movq	%rdx, -56(%rbp)	 #,
	movq	64(%rbp), %rax	 # newStudent, tmp179
	movq	72(%rbp), %rdx	 # newStudent,
	movq	%rax, -48(%rbp)	 # tmp179,
	movq	%rdx, -40(%rbp)	 #,
	movq	80(%rbp), %rax	 # newStudent, tmp180
	movq	88(%rbp), %rdx	 # newStudent,
	movq	%rax, -32(%rbp)	 # tmp180,
	movq	%rdx, -24(%rbp)	 #,
	movq	96(%rbp), %rax	 # newStudent, tmp181
	movq	%rax, -16(%rbp)	 # tmp181,
	leaq	-96(%rbp), %rax	 #, tmp182
	movq	%rax, %rcx	 # tmp182,
	call	printStudentDetails	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:135:     return count;
	.loc 1 135 12
	movl	168(%rbp), %eax	 # count, _23
.L30:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:136: }
	.loc 1 136 1
	addq	$264, %rsp	 #,
	popq	%rbx	 #
	.cfi_restore 3
	popq	%rbp	 #
.LCFI11:
	.cfi_restore 6
	.cfi_def_cfa 7, -248
	ret	
	.cfi_endproc
.LFE109:
	.seh_endproc
	.globl	calculateGrade
	.def	calculateGrade;	.scl	2;	.type	32;	.endef
	.seh_proc	calculateGrade
calculateGrade:
.LFB110:
	.loc 1 140 47
	.cfi_startproc
	pushq	%rbp	 #
	.seh_pushreg	%rbp
.LCFI12:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
.LCFI13:
	.cfi_def_cfa_register 6
	.seh_endprologue
	movss	%xmm0, 16(%rbp)	 # mark, mark
	movq	%rdx, 24(%rbp)	 # grade, grade
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:141:     if(mark < 0) 
	.loc 1 141 7
	pxor	%xmm0, %xmm0	 # tmp98
	comiss	16(%rbp), %xmm0	 # mark, tmp98
	jbe	.L48	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:142:         strcpy(grade, "undefined");
	.loc 1 142 9
	movq	24(%rbp), %rax	 # grade, tmp99
	movabsq	$7308895133777555061, %rcx	 #, tmp110
	movq	%rcx, (%rax)	 # tmp110, MEM <char[1:10]> [(void *)grade_4(D)]
	movw	$100, 8(%rax)	 #, MEM <char[1:10]> [(void *)grade_4(D)]
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:153: }
	.loc 1 153 1
	jmp	.L53	 #
.L48:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:143:     else if(mark < 50) 
	.loc 1 143 12
	movss	.LC25(%rip), %xmm0	 #, tmp100
	comiss	16(%rbp), %xmm0	 # mark, tmp100
	jbe	.L49	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:144:         strcpy(grade, "F");
	.loc 1 144 9
	movq	24(%rbp), %rax	 # grade, tmp101
	movw	$70, (%rax)	 #, MEM <char[1:2]> [(void *)grade_4(D)]
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:153: }
	.loc 1 153 1
	jmp	.L53	 #
.L49:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:145:     else if(mark < 64) 
	.loc 1 145 12
	movss	.LC26(%rip), %xmm0	 #, tmp102
	comiss	16(%rbp), %xmm0	 # mark, tmp102
	jbe	.L50	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:146:         strcpy(grade, "P");
	.loc 1 146 9
	movq	24(%rbp), %rax	 # grade, tmp103
	movw	$80, (%rax)	 #, MEM <char[1:2]> [(void *)grade_4(D)]
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:153: }
	.loc 1 153 1
	jmp	.L53	 #
.L50:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:147:     else if(mark < 74) 
	.loc 1 147 12
	movss	.LC27(%rip), %xmm0	 #, tmp104
	comiss	16(%rbp), %xmm0	 # mark, tmp104
	jbe	.L51	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:148:         strcpy(grade, "C");
	.loc 1 148 9
	movq	24(%rbp), %rax	 # grade, tmp105
	movw	$67, (%rax)	 #, MEM <char[1:2]> [(void *)grade_4(D)]
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:153: }
	.loc 1 153 1
	jmp	.L53	 #
.L51:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:149:     else if(mark < 84) 
	.loc 1 149 12
	movss	.LC28(%rip), %xmm0	 #, tmp106
	comiss	16(%rbp), %xmm0	 # mark, tmp106
	jbe	.L52	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:150:         strcpy(grade, "D");
	.loc 1 150 9
	movq	24(%rbp), %rax	 # grade, tmp107
	movw	$68, (%rax)	 #, MEM <char[1:2]> [(void *)grade_4(D)]
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:153: }
	.loc 1 153 1
	jmp	.L53	 #
.L52:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:152:         strcpy(grade, "HD");
	.loc 1 152 9
	movq	24(%rbp), %rax	 # grade, tmp108
	movw	$17480, (%rax)	 #, MEM <char[1:3]> [(void *)grade_4(D)]
	movb	$0, 2(%rax)	 #, MEM <char[1:3]> [(void *)grade_4(D)]
.L53:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:153: }
	.loc 1 153 1
	nop	
	popq	%rbp	 #
.LCFI14:
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE110:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC29:
	.ascii "\12No students enrolled yet. Cannot search.\0"
.LC30:
	.ascii "\12Search Student\0"
.LC31:
	.ascii "1. Search by StudentID\0"
.LC32:
	.ascii "2. Search by LastName\0"
.LC33:
	.ascii "Invalid input.\0"
.LC34:
	.ascii "Enter StudentID: \0"
.LC35:
	.ascii "Enter LastName: \0"
.LC36:
	.ascii "Invalid search type.\0"
.LC37:
	.ascii "\12unfound\0"
.LC38:
	.ascii "\12Student Found:\0"
	.align 8
.LC39:
	.ascii "\12Do you want to update this student's details? (y/n): \0"
.LC40:
	.ascii "\12Which field to update?\0"
.LC41:
	.ascii "1. FirstName\0"
.LC42:
	.ascii "2. LastName\0"
.LC43:
	.ascii "3. StudentID\0"
.LC44:
	.ascii "4. SubjectMarks\0"
.LC45:
	.ascii "Enter choice: \0"
.LC46:
	.ascii "Enter new First Name: \0"
.LC47:
	.ascii "Enter new Last Name: \0"
.LC48:
	.ascii "Enter new Student ID: \0"
	.align 8
.LC49:
	.ascii "Re-entering all subject marks...\0"
.LC50:
	.ascii "Invalid field choice.\0"
	.align 8
.LC51:
	.ascii "\12Student Updated Successfully:\0"
	.text
	.globl	searchUpdate
	.def	searchUpdate;	.scl	2;	.type	32;	.endef
	.seh_proc	searchUpdate
searchUpdate:
.LFB111:
	.loc 1 158 50
	.cfi_startproc
	pushq	%rbp	 #
	.seh_pushreg	%rbp
.LCFI15:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	 #
	.seh_pushreg	%rbx
.LCFI16:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$232, %rsp	 #,
	.seh_stackalloc	232
.LCFI17:
	.cfi_def_cfa_offset 256
	leaq	224(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 224
.LCFI18:
	.cfi_def_cfa 6, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # students, students
	movl	%edx, 40(%rbp)	 # count, count
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:160:     int foundIndex = -1; // Index of the found student
	.loc 1 160 9
	movl	$-1, -4(%rbp)	 #, foundIndex
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:162:     if (count == 0) {
	.loc 1 162 8
	cmpl	$0, 40(%rbp)	 #, count
	jne	.L55	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:163:         printf("\nNo students enrolled yet. Cannot search.\n");
	.loc 1 163 9
	leaq	.LC29(%rip), %rax	 #, tmp194
	movq	%rax, %rcx	 # tmp194,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:164:         return;
	.loc 1 164 9
	jmp	.L54	 #
.L55:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:167:     printf("\nSearch Student\n");
	.loc 1 167 5
	leaq	.LC30(%rip), %rax	 #, tmp195
	movq	%rax, %rcx	 # tmp195,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:168:     printf("1. Search by StudentID\n");
	.loc 1 168 5
	leaq	.LC31(%rip), %rax	 #, tmp196
	movq	%rax, %rcx	 # tmp196,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:169:     printf("2. Search by LastName\n");
	.loc 1 169 5
	leaq	.LC32(%rip), %rax	 #, tmp197
	movq	%rax, %rcx	 # tmp197,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:170:     printf("Enter your choice: ");
	.loc 1 170 5
	leaq	.LC9(%rip), %rax	 #, tmp198
	movq	%rax, %rcx	 # tmp198,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:172:     if (scanf("%d", &searchType) != 1) {
	.loc 1 172 9
	leaq	-44(%rbp), %rax	 #, tmp199
	leaq	.LC0(%rip), %rcx	 #, tmp200
	movq	%rax, %rdx	 # tmp199,
	call	scanf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:172:     if (scanf("%d", &searchType) != 1) {
	.loc 1 172 8 discriminator 1
	cmpl	$1, %eax	 #, _1
	je	.L57	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:173:         printf("Invalid input.\n");
	.loc 1 173 9
	leaq	.LC33(%rip), %rax	 #, tmp201
	movq	%rax, %rcx	 # tmp201,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:174:         while(getchar() != '\n'); // Clear buffer
	.loc 1 174 14
	nop	
.L58:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:174:         while(getchar() != '\n'); // Clear buffer
	.loc 1 174 15 discriminator 2
	call	getchar	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:174:         while(getchar() != '\n'); // Clear buffer
	.loc 1 174 25 discriminator 2
	cmpl	$10, %eax	 #, _2
	jne	.L58	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:175:         return;
	.loc 1 175 9
	jmp	.L54	 #
.L57:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:178:     if (searchType == 1) {
	.loc 1 178 20
	movl	-44(%rbp), %eax	 # searchType, searchType.3_3
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:178:     if (searchType == 1) {
	.loc 1 178 8
	cmpl	$1, %eax	 #, searchType.3_3
	jne	.L59	 #,
.LBB3:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:181:         printf("Enter StudentID: ");
	.loc 1 181 9
	leaq	.LC34(%rip), %rax	 #, tmp202
	movq	%rax, %rcx	 # tmp202,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:182:         if (scanf("%d", &idToFind) != 1) {
	.loc 1 182 13
	leaq	-48(%rbp), %rax	 #, tmp203
	leaq	.LC0(%rip), %rcx	 #, tmp204
	movq	%rax, %rdx	 # tmp203,
	call	scanf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:182:         if (scanf("%d", &idToFind) != 1) {
	.loc 1 182 12 discriminator 1
	cmpl	$1, %eax	 #, _4
	je	.L60	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:183:             printf("Invalid input.\n");
	.loc 1 183 13
	leaq	.LC33(%rip), %rax	 #, tmp205
	movq	%rax, %rcx	 # tmp205,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:184:             while(getchar() != '\n'); // Clear buffer
	.loc 1 184 18
	nop	
.L61:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:184:             while(getchar() != '\n'); // Clear buffer
	.loc 1 184 19 discriminator 2
	call	getchar	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:184:             while(getchar() != '\n'); // Clear buffer
	.loc 1 184 29 discriminator 2
	cmpl	$10, %eax	 #, _5
	jne	.L61	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:185:             return;
	.loc 1 185 13 discriminator 1
	jmp	.L54	 #
.L60:
.LBB4:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:188:         for (int i = 0; i < count; i++) {
	.loc 1 188 18
	movl	$0, -8(%rbp)	 #, i
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:188:         for (int i = 0; i < count; i++) {
	.loc 1 188 9
	jmp	.L62	 #
.L65:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:189:             if (students[i].StudentID == idToFind) {
	.loc 1 189 25
	movl	-8(%rbp), %eax	 # i, tmp206
	cltq
	imulq	$88, %rax, %rdx	 #, _6, _7
	movq	32(%rbp), %rax	 # students, tmp207
	addq	%rdx, %rax	 # _7, _8
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:189:             if (students[i].StudentID == idToFind) {
	.loc 1 189 28
	movl	40(%rax), %edx	 # _8->StudentID, _9
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:189:             if (students[i].StudentID == idToFind) {
	.loc 1 189 39
	movl	-48(%rbp), %eax	 # idToFind, idToFind.4_10
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:189:             if (students[i].StudentID == idToFind) {
	.loc 1 189 16
	cmpl	%eax, %edx	 # idToFind.4_10, _9
	jne	.L63	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:190:                 foundIndex = i;
	.loc 1 190 28
	movl	-8(%rbp), %eax	 # i, tmp208
	movl	%eax, -4(%rbp)	 # tmp208, foundIndex
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:191:                 break;
	.loc 1 191 17
	jmp	.L66	 #
.L63:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:188:         for (int i = 0; i < count; i++) {
	.loc 1 188 37 discriminator 2
	addl	$1, -8(%rbp)	 #, i
.L62:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:188:         for (int i = 0; i < count; i++) {
	.loc 1 188 27 discriminator 1
	movl	-8(%rbp), %eax	 # i, tmp209
	cmpl	40(%rbp), %eax	 # count, tmp209
	jl	.L65	 #,
	jmp	.L66	 #
.L59:
.LBE4:
.LBE3:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:194:     } else if (searchType == 2) {
	.loc 1 194 27
	movl	-44(%rbp), %eax	 # searchType, searchType.5_11
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:194:     } else if (searchType == 2) {
	.loc 1 194 15
	cmpl	$2, %eax	 #, searchType.5_11
	jne	.L67	 #,
.LBB5:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:197:         printf("Enter LastName: ");
	.loc 1 197 9
	leaq	.LC35(%rip), %rax	 #, tmp210
	movq	%rax, %rcx	 # tmp210,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:198:         scanf("%s", nameToFind);
	.loc 1 198 9
	leaq	-80(%rbp), %rax	 #, tmp211
	leaq	.LC13(%rip), %rcx	 #, tmp212
	movq	%rax, %rdx	 # tmp211,
	call	scanf	 #
.LBB6:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:200:         for (int i = 0; i < count; i++) {
	.loc 1 200 18
	movl	$0, -12(%rbp)	 #, i
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:200:         for (int i = 0; i < count; i++) {
	.loc 1 200 9
	jmp	.L68	 #
.L71:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:201:             if (compareStringsCaseInsensitive(students[i].LastName, nameToFind) == 0) {
	.loc 1 201 55
	movl	-12(%rbp), %eax	 # i, tmp213
	cltq
	imulq	$88, %rax, %rdx	 #, _12, _13
	movq	32(%rbp), %rax	 # students, tmp214
	addq	%rdx, %rax	 # _13, _14
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:201:             if (compareStringsCaseInsensitive(students[i].LastName, nameToFind) == 0) {
	.loc 1 201 58
	leaq	20(%rax), %rcx	 #, _15
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:201:             if (compareStringsCaseInsensitive(students[i].LastName, nameToFind) == 0) {
	.loc 1 201 17
	leaq	-80(%rbp), %rax	 #, tmp215
	movq	%rax, %rdx	 # tmp215,
	call	compareStringsCaseInsensitive	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:201:             if (compareStringsCaseInsensitive(students[i].LastName, nameToFind) == 0) {
	.loc 1 201 16 discriminator 1
	testl	%eax, %eax	 # _16
	jne	.L69	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:202:                 foundIndex = i;
	.loc 1 202 28
	movl	-12(%rbp), %eax	 # i, tmp216
	movl	%eax, -4(%rbp)	 # tmp216, foundIndex
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:203:                 break;
	.loc 1 203 17
	jmp	.L66	 #
.L69:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:200:         for (int i = 0; i < count; i++) {
	.loc 1 200 37 discriminator 2
	addl	$1, -12(%rbp)	 #, i
.L68:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:200:         for (int i = 0; i < count; i++) {
	.loc 1 200 27 discriminator 1
	movl	-12(%rbp), %eax	 # i, tmp217
	cmpl	40(%rbp), %eax	 # count, tmp217
	jl	.L71	 #,
	jmp	.L66	 #
.L67:
.LBE6:
.LBE5:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:209:         printf("Invalid search type.\n");
	.loc 1 209 9
	leaq	.LC36(%rip), %rax	 #, tmp218
	movq	%rax, %rcx	 # tmp218,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:210:         return;
	.loc 1 210 9
	jmp	.L54	 #
.L66:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:214:     if (foundIndex == -1) {
	.loc 1 214 8
	cmpl	$-1, -4(%rbp)	 #, foundIndex
	jne	.L72	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:215:         printf("\nunfound\n");
	.loc 1 215 9
	leaq	.LC37(%rip), %rax	 #, tmp219
	movq	%rax, %rcx	 # tmp219,
	call	puts	 #
	jmp	.L54	 #
.L72:
.LBB7:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:218:         printf("\nStudent Found:\n");
	.loc 1 218 9
	leaq	.LC38(%rip), %rax	 #, tmp220
	movq	%rax, %rcx	 # tmp220,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:219:         printStudentDetails(students[foundIndex]);
	.loc 1 219 37
	movl	-4(%rbp), %eax	 # foundIndex, tmp221
	cltq
	imulq	$88, %rax, %rdx	 #, _17, _18
	movq	32(%rbp), %rax	 # students, tmp222
	addq	%rdx, %rax	 # _18, _19
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:219:         printStudentDetails(students[foundIndex]);
	.loc 1 219 9
	movq	(%rax), %rcx	 # *_19, tmp223
	movq	8(%rax), %rbx	 # *_19,
	movq	%rcx, -192(%rbp)	 # tmp223,
	movq	%rbx, -184(%rbp)	 #,
	movq	16(%rax), %rcx	 # *_19, tmp224
	movq	24(%rax), %rbx	 # *_19,
	movq	%rcx, -176(%rbp)	 # tmp224,
	movq	%rbx, -168(%rbp)	 #,
	movq	32(%rax), %rcx	 # *_19, tmp225
	movq	40(%rax), %rbx	 # *_19,
	movq	%rcx, -160(%rbp)	 # tmp225,
	movq	%rbx, -152(%rbp)	 #,
	movq	48(%rax), %rcx	 # *_19, tmp226
	movq	56(%rax), %rbx	 # *_19,
	movq	%rcx, -144(%rbp)	 # tmp226,
	movq	%rbx, -136(%rbp)	 #,
	movq	64(%rax), %rcx	 # *_19, tmp227
	movq	72(%rax), %rbx	 # *_19,
	movq	%rcx, -128(%rbp)	 # tmp227,
	movq	%rbx, -120(%rbp)	 #,
	movq	80(%rax), %rax	 # *_19, tmp228
	movq	%rax, -112(%rbp)	 # tmp228,
	leaq	-192(%rbp), %rax	 #, tmp229
	movq	%rax, %rcx	 # tmp229,
	call	printStudentDetails	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:223:         printf("\nDo you want to update this student's details? (y/n): ");
	.loc 1 223 9
	leaq	.LC39(%rip), %rax	 #, tmp230
	movq	%rax, %rcx	 # tmp230,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:224:         scanf(" %c", &updateChoice);
	.loc 1 224 9
	leaq	-81(%rbp), %rax	 #, tmp231
	leaq	.LC18(%rip), %rcx	 #, tmp232
	movq	%rax, %rdx	 # tmp231,
	call	scanf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:226:         if (updateChoice == 'y' || updateChoice == 'Y') {
	.loc 1 226 26
	movzbl	-81(%rbp), %eax	 # updateChoice, updateChoice.6_20
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:226:         if (updateChoice == 'y' || updateChoice == 'Y') {
	.loc 1 226 12
	cmpb	$121, %al	 #, updateChoice.6_20
	je	.L74	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:226:         if (updateChoice == 'y' || updateChoice == 'Y') {
	.loc 1 226 49 discriminator 1
	movzbl	-81(%rbp), %eax	 # updateChoice, updateChoice.7_21
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:226:         if (updateChoice == 'y' || updateChoice == 'Y') {
	.loc 1 226 33 discriminator 1
	cmpb	$89, %al	 #, updateChoice.7_21
	jne	.L54	 #,
.L74:
.LBB8:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:228:             printf("\nWhich field to update?\n");
	.loc 1 228 13
	leaq	.LC40(%rip), %rax	 #, tmp233
	movq	%rax, %rcx	 # tmp233,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:229:             printf("1. FirstName\n");
	.loc 1 229 13
	leaq	.LC41(%rip), %rax	 #, tmp234
	movq	%rax, %rcx	 # tmp234,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:230:             printf("2. LastName\n");
	.loc 1 230 13
	leaq	.LC42(%rip), %rax	 #, tmp235
	movq	%rax, %rcx	 # tmp235,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:231:             printf("3. StudentID\n");
	.loc 1 231 13
	leaq	.LC43(%rip), %rax	 #, tmp236
	movq	%rax, %rcx	 # tmp236,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:232:             printf("4. SubjectMarks\n");
	.loc 1 232 13
	leaq	.LC44(%rip), %rax	 #, tmp237
	movq	%rax, %rcx	 # tmp237,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:233:             printf("Enter choice: ");
	.loc 1 233 13
	leaq	.LC45(%rip), %rax	 #, tmp238
	movq	%rax, %rcx	 # tmp238,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:235:             if (scanf("%d", &updateField) != 1) {
	.loc 1 235 17
	leaq	-88(%rbp), %rax	 #, tmp239
	leaq	.LC0(%rip), %rcx	 #, tmp240
	movq	%rax, %rdx	 # tmp239,
	call	scanf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:235:             if (scanf("%d", &updateField) != 1) {
	.loc 1 235 16 discriminator 1
	cmpl	$1, %eax	 #, _22
	je	.L76	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:236:                 printf("Invalid input.\n");
	.loc 1 236 17
	leaq	.LC33(%rip), %rax	 #, tmp241
	movq	%rax, %rcx	 # tmp241,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:237:                 while(getchar() != '\n'); // Clear buffer
	.loc 1 237 22
	nop	
.L77:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:237:                 while(getchar() != '\n'); // Clear buffer
	.loc 1 237 23 discriminator 2
	call	getchar	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:237:                 while(getchar() != '\n'); // Clear buffer
	.loc 1 237 33 discriminator 2
	cmpl	$10, %eax	 #, _23
	jne	.L77	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:238:                 return;
	.loc 1 238 17
	jmp	.L54	 #
.L76:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:241:             int recalculate = 0; // Flag to check if we need to update aggregate/grade
	.loc 1 241 17
	movl	$0, -16(%rbp)	 #, recalculate
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:243:             switch(updateField) {
	.loc 1 243 13
	movl	-88(%rbp), %eax	 # updateField, updateField.8_24
	cmpl	$4, %eax	 #, updateField.8_24
	je	.L79	 #,
	cmpl	$4, %eax	 #, updateField.8_24
	jg	.L80	 #,
	cmpl	$3, %eax	 #, updateField.8_24
	je	.L81	 #,
	cmpl	$3, %eax	 #, updateField.8_24
	jg	.L80	 #,
	cmpl	$1, %eax	 #, updateField.8_24
	je	.L82	 #,
	cmpl	$2, %eax	 #, updateField.8_24
	je	.L83	 #,
	jmp	.L80	 #
.L82:
.LBB9:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:245:                     printf("Enter new First Name: ");
	.loc 1 245 21
	leaq	.LC46(%rip), %rax	 #, tmp242
	movq	%rax, %rcx	 # tmp242,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:246:                     scanf("%s", students[foundIndex].FirstName);
	.loc 1 246 41
	movl	-4(%rbp), %eax	 # foundIndex, tmp243
	cltq
	imulq	$88, %rax, %rdx	 #, _25, _26
	movq	32(%rbp), %rax	 # students, tmp244
	addq	%rdx, %rax	 # _26, _27
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:246:                     scanf("%s", students[foundIndex].FirstName);
	.loc 1 246 53
	movq	%rax, %rdx	 # _27, _28
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:246:                     scanf("%s", students[foundIndex].FirstName);
	.loc 1 246 21
	leaq	.LC13(%rip), %rax	 #, tmp245
	movq	%rax, %rcx	 # tmp245,
	call	scanf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:247:                     break;
	.loc 1 247 21
	jmp	.L84	 #
.L83:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:249:                     printf("Enter new Last Name: ");
	.loc 1 249 21
	leaq	.LC47(%rip), %rax	 #, tmp246
	movq	%rax, %rcx	 # tmp246,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:250:                     scanf("%s", students[foundIndex].LastName);
	.loc 1 250 41
	movl	-4(%rbp), %eax	 # foundIndex, tmp247
	cltq
	imulq	$88, %rax, %rdx	 #, _29, _30
	movq	32(%rbp), %rax	 # students, tmp248
	addq	%rdx, %rax	 # _30, _31
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:250:                     scanf("%s", students[foundIndex].LastName);
	.loc 1 250 53
	leaq	20(%rax), %rdx	 #, _32
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:250:                     scanf("%s", students[foundIndex].LastName);
	.loc 1 250 21
	leaq	.LC13(%rip), %rax	 #, tmp249
	movq	%rax, %rcx	 # tmp249,
	call	scanf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:251:                     break;
	.loc 1 251 21
	jmp	.L84	 #
.L81:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:253:                     printf("Enter new Student ID: ");
	.loc 1 253 21
	leaq	.LC48(%rip), %rax	 #, tmp250
	movq	%rax, %rcx	 # tmp250,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:254:                     while(scanf("%d", &students[foundIndex].StudentID) != 1 || students[foundIndex].StudentID <= 0) {
	.loc 1 254 26
	jmp	.L85	 #
.L87:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:255:                         printf("Invalid input. Enter a positive integer: ");
	.loc 1 255 25
	leaq	.LC16(%rip), %rax	 #, tmp251
	movq	%rax, %rcx	 # tmp251,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:256:                         while(getchar() != '\n');
	.loc 1 256 30
	nop	
.L86:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:256:                         while(getchar() != '\n');
	.loc 1 256 31 discriminator 2
	call	getchar	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:256:                         while(getchar() != '\n');
	.loc 1 256 41 discriminator 2
	cmpl	$10, %eax	 #, _33
	jne	.L86	 #,
.L85:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:254:                     while(scanf("%d", &students[foundIndex].StudentID) != 1 || students[foundIndex].StudentID <= 0) {
	.loc 1 254 48
	movl	-4(%rbp), %eax	 # foundIndex, tmp252
	cltq
	imulq	$88, %rax, %rdx	 #, _34, _35
	movq	32(%rbp), %rax	 # students, tmp253
	addq	%rdx, %rax	 # _35, _36
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:254:                     while(scanf("%d", &students[foundIndex].StudentID) != 1 || students[foundIndex].StudentID <= 0) {
	.loc 1 254 27
	leaq	40(%rax), %rdx	 #, _37
	leaq	.LC0(%rip), %rax	 #, tmp254
	movq	%rax, %rcx	 # tmp254,
	call	scanf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:254:                     while(scanf("%d", &students[foundIndex].StudentID) != 1 || students[foundIndex].StudentID <= 0) {
	.loc 1 254 77 discriminator 1
	cmpl	$1, %eax	 #, _38
	jne	.L87	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:254:                     while(scanf("%d", &students[foundIndex].StudentID) != 1 || students[foundIndex].StudentID <= 0) {
	.loc 1 254 88 discriminator 2
	movl	-4(%rbp), %eax	 # foundIndex, tmp255
	cltq
	imulq	$88, %rax, %rdx	 #, _39, _40
	movq	32(%rbp), %rax	 # students, tmp256
	addq	%rdx, %rax	 # _40, _41
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:254:                     while(scanf("%d", &students[foundIndex].StudentID) != 1 || students[foundIndex].StudentID <= 0) {
	.loc 1 254 100 discriminator 2
	movl	40(%rax), %eax	 # _41->StudentID, _42
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:254:                     while(scanf("%d", &students[foundIndex].StudentID) != 1 || students[foundIndex].StudentID <= 0) {
	.loc 1 254 77 discriminator 2
	testl	%eax, %eax	 # _42
	jle	.L87	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:258:                     break;
	.loc 1 258 21
	jmp	.L84	 #
.L79:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:261:                     printf("Re-entering all subject marks...\n");
	.loc 1 261 21
	leaq	.LC49(%rip), %rax	 #, tmp257
	movq	%rax, %rcx	 # tmp257,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:262:                     float totalMarks = 0;
	.loc 1 262 27
	pxor	%xmm0, %xmm0	 # tmp258
	movss	%xmm0, -20(%rbp)	 # tmp258, totalMarks
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:263:                     int validMarks = 0;
	.loc 1 263 25
	movl	$0, -24(%rbp)	 #, validMarks
.LBB10:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:266:                     for(int i = 0; i < numOfSubjects; i++) {
	.loc 1 266 29
	movl	$0, -28(%rbp)	 #, i
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:266:                     for(int i = 0; i < numOfSubjects; i++) {
	.loc 1 266 21
	jmp	.L88	 #
.L95:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:267:                         printf("\nDo you want to input mark for Subject %d? (y/n): ", i);
	.loc 1 267 25
	movl	-28(%rbp), %eax	 # i, tmp259
	leaq	.LC17(%rip), %rcx	 #, tmp260
	movl	%eax, %edx	 # tmp259,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:268:                         scanf(" %c", &answer);
	.loc 1 268 25
	leaq	-89(%rbp), %rax	 #, tmp261
	leaq	.LC18(%rip), %rcx	 #, tmp262
	movq	%rax, %rdx	 # tmp261,
	call	scanf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:270:                         if(answer == 'y' || answer == 'Y') {
	.loc 1 270 35
	movzbl	-89(%rbp), %eax	 # answer, answer.9_43
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:270:                         if(answer == 'y' || answer == 'Y') {
	.loc 1 270 27
	cmpb	$121, %al	 #, answer.9_43
	je	.L89	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:270:                         if(answer == 'y' || answer == 'Y') {
	.loc 1 270 52 discriminator 1
	movzbl	-89(%rbp), %eax	 # answer, answer.10_44
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:270:                         if(answer == 'y' || answer == 'Y') {
	.loc 1 270 42 discriminator 1
	cmpb	$89, %al	 #, answer.10_44
	jne	.L90	 #,
.L89:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:271:                             printf("Enter mark for Subject %d: ", i);
	.loc 1 271 29
	movl	-28(%rbp), %eax	 # i, tmp263
	leaq	.LC19(%rip), %rcx	 #, tmp264
	movl	%eax, %edx	 # tmp263,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:272:                             while(scanf("%f", &students[foundIndex].SubjectMarks[i]) != 1 || 
	.loc 1 272 34
	jmp	.L91	 #
.L93:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:274:                                 printf("Invalid mark. Enter a value between 0 and 100: ");
	.loc 1 274 33
	leaq	.LC20(%rip), %rax	 #, tmp265
	movq	%rax, %rcx	 # tmp265,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:275:                                 while(getchar() != '\n');
	.loc 1 275 38
	nop	
.L92:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:275:                                 while(getchar() != '\n');
	.loc 1 275 39 discriminator 2
	call	getchar	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:275:                                 while(getchar() != '\n');
	.loc 1 275 49 discriminator 2
	cmpl	$10, %eax	 #, _45
	jne	.L92	 #,
.L91:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:272:                             while(scanf("%f", &students[foundIndex].SubjectMarks[i]) != 1 || 
	.loc 1 272 56
	movl	-4(%rbp), %eax	 # foundIndex, tmp266
	cltq
	imulq	$88, %rax, %rdx	 #, _46, _47
	movq	32(%rbp), %rax	 # students, tmp267
	addq	%rax, %rdx	 # tmp267, _48
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:272:                             while(scanf("%f", &students[foundIndex].SubjectMarks[i]) != 1 || 
	.loc 1 272 35
	movl	-28(%rbp), %eax	 # i, tmp269
	cltq
	addq	$8, %rax	 #, tmp270
	salq	$2, %rax	 #, tmp271
	addq	%rdx, %rax	 # _48, tmp272
	leaq	12(%rax), %rdx	 #, _49
	leaq	.LC21(%rip), %rax	 #, tmp273
	movq	%rax, %rcx	 # tmp273,
	call	scanf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:273:                                   students[foundIndex].SubjectMarks[i] < 0 || students[foundIndex].SubjectMarks[i] > 100) {
	.loc 1 273 76
	cmpl	$1, %eax	 #, _50
	jne	.L93	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:273:                                   students[foundIndex].SubjectMarks[i] < 0 || students[foundIndex].SubjectMarks[i] > 100) {
	.loc 1 273 43 discriminator 1
	movl	-4(%rbp), %eax	 # foundIndex, tmp274
	cltq
	imulq	$88, %rax, %rdx	 #, _51, _52
	movq	32(%rbp), %rax	 # students, tmp275
	addq	%rdx, %rax	 # _52, _53
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:273:                                   students[foundIndex].SubjectMarks[i] < 0 || students[foundIndex].SubjectMarks[i] > 100) {
	.loc 1 273 68 discriminator 1
	movl	-28(%rbp), %edx	 # i, tmp277
	movslq	%edx, %rdx	 # tmp277, tmp276
	addq	$8, %rdx	 #, tmp278
	movss	12(%rax,%rdx,4), %xmm1	 # _53->SubjectMarks[i_107], _54
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:272:                             while(scanf("%f", &students[foundIndex].SubjectMarks[i]) != 1 || 
	.loc 1 272 91
	pxor	%xmm0, %xmm0	 # tmp279
	comiss	%xmm1, %xmm0	 # _54, tmp279
	ja	.L93	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:273:                                   students[foundIndex].SubjectMarks[i] < 0 || students[foundIndex].SubjectMarks[i] > 100) {
	.loc 1 273 87
	movl	-4(%rbp), %eax	 # foundIndex, tmp280
	cltq
	imulq	$88, %rax, %rdx	 #, _55, _56
	movq	32(%rbp), %rax	 # students, tmp281
	addq	%rdx, %rax	 # _56, _57
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:273:                                   students[foundIndex].SubjectMarks[i] < 0 || students[foundIndex].SubjectMarks[i] > 100) {
	.loc 1 273 112
	movl	-28(%rbp), %edx	 # i, tmp283
	movslq	%edx, %rdx	 # tmp283, tmp282
	addq	$8, %rdx	 #, tmp284
	movss	12(%rax,%rdx,4), %xmm0	 # _57->SubjectMarks[i_107], _58
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:273:                                   students[foundIndex].SubjectMarks[i] < 0 || students[foundIndex].SubjectMarks[i] > 100) {
	.loc 1 273 76
	comiss	.LC22(%rip), %xmm0	 #, _58
	ja	.L93	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:277:                             totalMarks += students[foundIndex].SubjectMarks[i];
	.loc 1 277 51
	movl	-4(%rbp), %eax	 # foundIndex, tmp285
	cltq
	imulq	$88, %rax, %rdx	 #, _59, _60
	movq	32(%rbp), %rax	 # students, tmp286
	addq	%rdx, %rax	 # _60, _61
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:277:                             totalMarks += students[foundIndex].SubjectMarks[i];
	.loc 1 277 76
	movl	-28(%rbp), %edx	 # i, tmp288
	movslq	%edx, %rdx	 # tmp288, tmp287
	addq	$8, %rdx	 #, tmp289
	movss	12(%rax,%rdx,4), %xmm0	 # _61->SubjectMarks[i_107], _62
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:277:                             totalMarks += students[foundIndex].SubjectMarks[i];
	.loc 1 277 40
	movss	-20(%rbp), %xmm1	 # totalMarks, tmp291
	addss	%xmm1, %xmm0	 # tmp291, totalMarks_180
	movss	%xmm0, -20(%rbp)	 # totalMarks_180, totalMarks
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:278:                             validMarks++;
	.loc 1 278 39
	addl	$1, -24(%rbp)	 #, validMarks
	jmp	.L94	 #
.L90:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:280:                             students[foundIndex].SubjectMarks[i] = -1;
	.loc 1 280 37
	movl	-4(%rbp), %eax	 # foundIndex, tmp292
	cltq
	imulq	$88, %rax, %rdx	 #, _63, _64
	movq	32(%rbp), %rax	 # students, tmp293
	addq	%rdx, %rax	 # _64, _65
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:280:                             students[foundIndex].SubjectMarks[i] = -1;
	.loc 1 280 66
	movl	-28(%rbp), %edx	 # i, tmp295
	movslq	%edx, %rdx	 # tmp295, tmp294
	addq	$8, %rdx	 #, tmp296
	movss	.LC23(%rip), %xmm0	 #, tmp297
	movss	%xmm0, 12(%rax,%rdx,4)	 # tmp297, _65->SubjectMarks[i_107]
.L94:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:266:                     for(int i = 0; i < numOfSubjects; i++) {
	.loc 1 266 44 discriminator 2
	addl	$1, -28(%rbp)	 #, i
.L88:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:266:                     for(int i = 0; i < numOfSubjects; i++) {
	.loc 1 266 38 discriminator 1
	cmpl	$4, -28(%rbp)	 #, i
	jle	.L95	 #,
.LBE10:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:284:                     recalculate = 1; 
	.loc 1 284 33
	movl	$1, -16(%rbp)	 #, recalculate
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:285:                     break;
	.loc 1 285 21
	jmp	.L84	 #
.L80:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:287:                     printf("Invalid field choice.\n");
	.loc 1 287 21
	leaq	.LC50(%rip), %rax	 #, tmp298
	movq	%rax, %rcx	 # tmp298,
	call	puts	 #
	jmp	.L54	 #
.L84:
.LBE9:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:292:             if (recalculate) {
	.loc 1 292 16
	cmpl	$0, -16(%rbp)	 #, recalculate
	je	.L96	 #,
.LBB11:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:293:                 float totalMarks = 0;
	.loc 1 293 23
	pxor	%xmm0, %xmm0	 # tmp299
	movss	%xmm0, -32(%rbp)	 # tmp299, totalMarks
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:294:                 int validMarks = 0;
	.loc 1 294 21
	movl	$0, -36(%rbp)	 #, validMarks
.LBB12:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:295:                 for(int i = 0; i < numOfSubjects; i++) {
	.loc 1 295 25
	movl	$0, -40(%rbp)	 #, i
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:295:                 for(int i = 0; i < numOfSubjects; i++) {
	.loc 1 295 17
	jmp	.L97	 #
.L100:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:296:                     if(students[foundIndex].SubjectMarks[i] != -1) {
	.loc 1 296 32
	movl	-4(%rbp), %eax	 # foundIndex, tmp300
	cltq
	imulq	$88, %rax, %rdx	 #, _66, _67
	movq	32(%rbp), %rax	 # students, tmp301
	addq	%rdx, %rax	 # _67, _68
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:296:                     if(students[foundIndex].SubjectMarks[i] != -1) {
	.loc 1 296 57
	movl	-40(%rbp), %edx	 # i, tmp303
	movslq	%edx, %rdx	 # tmp303, tmp302
	addq	$8, %rdx	 #, tmp304
	movss	12(%rax,%rdx,4), %xmm0	 # _68->SubjectMarks[i_112], _69
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:296:                     if(students[foundIndex].SubjectMarks[i] != -1) {
	.loc 1 296 23
	movss	.LC23(%rip), %xmm1	 #, tmp305
	ucomiss	%xmm1, %xmm0	 # tmp305, _69
	jp	.L103	 #,
	movss	.LC23(%rip), %xmm1	 #, tmp306
	ucomiss	%xmm1, %xmm0	 # tmp306, _69
	je	.L98	 #,
.L103:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:297:                         totalMarks += students[foundIndex].SubjectMarks[i];
	.loc 1 297 47
	movl	-4(%rbp), %eax	 # foundIndex, tmp307
	cltq
	imulq	$88, %rax, %rdx	 #, _70, _71
	movq	32(%rbp), %rax	 # students, tmp308
	addq	%rdx, %rax	 # _71, _72
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:297:                         totalMarks += students[foundIndex].SubjectMarks[i];
	.loc 1 297 72
	movl	-40(%rbp), %edx	 # i, tmp310
	movslq	%edx, %rdx	 # tmp310, tmp309
	addq	$8, %rdx	 #, tmp311
	movss	12(%rax,%rdx,4), %xmm0	 # _72->SubjectMarks[i_112], _73
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:297:                         totalMarks += students[foundIndex].SubjectMarks[i];
	.loc 1 297 36
	movss	-32(%rbp), %xmm1	 # totalMarks, tmp313
	addss	%xmm1, %xmm0	 # tmp313, totalMarks_201
	movss	%xmm0, -32(%rbp)	 # totalMarks_201, totalMarks
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:298:                         validMarks++;
	.loc 1 298 35
	addl	$1, -36(%rbp)	 #, validMarks
.L98:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:295:                 for(int i = 0; i < numOfSubjects; i++) {
	.loc 1 295 40 discriminator 2
	addl	$1, -40(%rbp)	 #, i
.L97:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:295:                 for(int i = 0; i < numOfSubjects; i++) {
	.loc 1 295 34 discriminator 1
	cmpl	$4, -40(%rbp)	 #, i
	jle	.L100	 #,
.LBE12:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:302:                 if(validMarks > 0) {
	.loc 1 302 19
	cmpl	$0, -36(%rbp)	 #, validMarks
	jle	.L101	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:303:                     students[foundIndex].AggregateMarks = totalMarks / validMarks;
	.loc 1 303 70
	pxor	%xmm1, %xmm1	 # _74
	cvtsi2ssl	-36(%rbp), %xmm1	 # validMarks, _74
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:303:                     students[foundIndex].AggregateMarks = totalMarks / validMarks;
	.loc 1 303 29
	movl	-4(%rbp), %eax	 # foundIndex, tmp314
	cltq
	imulq	$88, %rax, %rdx	 #, _75, _76
	movq	32(%rbp), %rax	 # students, tmp315
	addq	%rdx, %rax	 # _76, _77
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:303:                     students[foundIndex].AggregateMarks = totalMarks / validMarks;
	.loc 1 303 70
	movss	-32(%rbp), %xmm0	 # totalMarks, tmp316
	divss	%xmm1, %xmm0	 # _74, _78
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:303:                     students[foundIndex].AggregateMarks = totalMarks / validMarks;
	.loc 1 303 57
	movss	%xmm0, 64(%rax)	 # _78, _77->AggregateMarks
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:304:                     calculateGrade(students[foundIndex].AggregateMarks, students[foundIndex].Grade);
	.loc 1 304 81
	movl	-4(%rbp), %eax	 # foundIndex, tmp317
	cltq
	imulq	$88, %rax, %rdx	 #, _79, _80
	movq	32(%rbp), %rax	 # students, tmp318
	addq	%rdx, %rax	 # _80, _81
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:304:                     calculateGrade(students[foundIndex].AggregateMarks, students[foundIndex].Grade);
	.loc 1 304 93
	leaq	68(%rax), %rdx	 #, _82
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:304:                     calculateGrade(students[foundIndex].AggregateMarks, students[foundIndex].Grade);
	.loc 1 304 44
	movl	-4(%rbp), %eax	 # foundIndex, tmp319
	cltq
	imulq	$88, %rax, %rcx	 #, _83, _84
	movq	32(%rbp), %rax	 # students, tmp320
	addq	%rcx, %rax	 # _84, _85
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:304:                     calculateGrade(students[foundIndex].AggregateMarks, students[foundIndex].Grade);
	.loc 1 304 21
	movl	64(%rax), %eax	 # _85->AggregateMarks, _86
	movd	%eax, %xmm0	 # _86,
	call	calculateGrade	 #
	jmp	.L96	 #
.L101:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:306:                     students[foundIndex].AggregateMarks = -1;
	.loc 1 306 29
	movl	-4(%rbp), %eax	 # foundIndex, tmp321
	cltq
	imulq	$88, %rax, %rdx	 #, _87, _88
	movq	32(%rbp), %rax	 # students, tmp322
	addq	%rdx, %rax	 # _88, _89
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:306:                     students[foundIndex].AggregateMarks = -1;
	.loc 1 306 57
	movss	.LC23(%rip), %xmm0	 #, tmp323
	movss	%xmm0, 64(%rax)	 # tmp323, _89->AggregateMarks
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:307:                     strcpy(students[foundIndex].Grade, "undefined");
	.loc 1 307 36
	movl	-4(%rbp), %eax	 # foundIndex, tmp324
	cltq
	imulq	$88, %rax, %rdx	 #, _90, _91
	movq	32(%rbp), %rax	 # students, tmp325
	addq	%rdx, %rax	 # _91, _92
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:307:                     strcpy(students[foundIndex].Grade, "undefined");
	.loc 1 307 48
	addq	$68, %rax	 #, _93
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:307:                     strcpy(students[foundIndex].Grade, "undefined");
	.loc 1 307 21
	movabsq	$7308895133777555061, %rbx	 #, tmp337
	movq	%rbx, (%rax)	 # tmp337, MEM <char[1:10]> [(void *)_93]
	movw	$100, 8(%rax)	 #, MEM <char[1:10]> [(void *)_93]
.L96:
.LBE11:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:311:             printf("\nStudent Updated Successfully:\n");
	.loc 1 311 13
	leaq	.LC51(%rip), %rax	 #, tmp326
	movq	%rax, %rcx	 # tmp326,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:312:             printStudentDetails(students[foundIndex]);
	.loc 1 312 41
	movl	-4(%rbp), %eax	 # foundIndex, tmp327
	cltq
	imulq	$88, %rax, %rdx	 #, _94, _95
	movq	32(%rbp), %rax	 # students, tmp328
	addq	%rdx, %rax	 # _95, _96
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:312:             printStudentDetails(students[foundIndex]);
	.loc 1 312 13
	movq	(%rax), %rcx	 # *_96, tmp329
	movq	8(%rax), %rbx	 # *_96,
	movq	%rcx, -192(%rbp)	 # tmp329,
	movq	%rbx, -184(%rbp)	 #,
	movq	16(%rax), %rcx	 # *_96, tmp330
	movq	24(%rax), %rbx	 # *_96,
	movq	%rcx, -176(%rbp)	 # tmp330,
	movq	%rbx, -168(%rbp)	 #,
	movq	32(%rax), %rcx	 # *_96, tmp331
	movq	40(%rax), %rbx	 # *_96,
	movq	%rcx, -160(%rbp)	 # tmp331,
	movq	%rbx, -152(%rbp)	 #,
	movq	48(%rax), %rcx	 # *_96, tmp332
	movq	56(%rax), %rbx	 # *_96,
	movq	%rcx, -144(%rbp)	 # tmp332,
	movq	%rbx, -136(%rbp)	 #,
	movq	64(%rax), %rcx	 # *_96, tmp333
	movq	72(%rax), %rbx	 # *_96,
	movq	%rcx, -128(%rbp)	 # tmp333,
	movq	%rbx, -120(%rbp)	 #,
	movq	80(%rax), %rax	 # *_96, tmp334
	movq	%rax, -112(%rbp)	 # tmp334,
	leaq	-192(%rbp), %rax	 #, tmp335
	movq	%rax, %rcx	 # tmp335,
	call	printStudentDetails	 #
	nop	
.L54:
.LBE8:
.LBE7:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:315: }
	.loc 1 315 1
	addq	$232, %rsp	 #,
	popq	%rbx	 #
	.cfi_restore 3
	popq	%rbp	 #
.LCFI19:
	.cfi_restore 6
	.cfi_def_cfa 7, -216
	ret	
	.cfi_endproc
.LFE111:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC52:
	.ascii "\12No students enrolled yet. Cannot show top students.\0"
	.align 8
.LC54:
	.ascii "\12No students have an aggregate mark calculated yet.\0"
	.align 8
.LC55:
	.ascii "\12Top Student(s) with Aggregate Mark: %.2f\12\0"
	.align 8
.LC56:
	.ascii "-------------------------------------------\0"
	.text
	.globl	topStudents
	.def	topStudents;	.scl	2;	.type	32;	.endef
	.seh_proc	topStudents
topStudents:
.LFB112:
	.loc 1 319 49
	.cfi_startproc
	pushq	%rbp	 #
	.seh_pushreg	%rbp
.LCFI20:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	 #
	.seh_pushreg	%rbx
.LCFI21:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$152, %rsp	 #,
	.seh_stackalloc	152
.LCFI22:
	.cfi_def_cfa_offset 176
	leaq	144(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 144
.LCFI23:
	.cfi_def_cfa 6, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # students, students
	movl	%edx, 40(%rbp)	 # count, count
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:320:     if (count == 0) {
	.loc 1 320 8
	cmpl	$0, 40(%rbp)	 #, count
	jne	.L105	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:321:         printf("\nNo students enrolled yet. Cannot show top students.\n");
	.loc 1 321 9
	leaq	.LC52(%rip), %rax	 #, tmp113
	movq	%rax, %rcx	 # tmp113,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:322:         return;
	.loc 1 322 9
	jmp	.L104	 #
.L105:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:325:     float maxAggregate = -2.0; // Start lower than lowest possible aggregate (-1)
	.loc 1 325 11
	movss	.LC53(%rip), %xmm0	 #, tmp114
	movss	%xmm0, -4(%rbp)	 # tmp114, maxAggregate
.LBB13:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:328:     for (int i = 0; i < count; i++) {
	.loc 1 328 14
	movl	$0, -8(%rbp)	 #, i
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:328:     for (int i = 0; i < count; i++) {
	.loc 1 328 5
	jmp	.L107	 #
.L110:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:329:         if (students[i].AggregateMarks > maxAggregate) {
	.loc 1 329 21
	movl	-8(%rbp), %eax	 # i, tmp115
	cltq
	imulq	$88, %rax, %rdx	 #, _1, _2
	movq	32(%rbp), %rax	 # students, tmp116
	addq	%rdx, %rax	 # _2, _3
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:329:         if (students[i].AggregateMarks > maxAggregate) {
	.loc 1 329 24
	movss	64(%rax), %xmm0	 # _3->AggregateMarks, _4
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:329:         if (students[i].AggregateMarks > maxAggregate) {
	.loc 1 329 12
	comiss	-4(%rbp), %xmm0	 # maxAggregate, _4
	jbe	.L108	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:330:             maxAggregate = students[i].AggregateMarks;
	.loc 1 330 36
	movl	-8(%rbp), %eax	 # i, tmp117
	cltq
	imulq	$88, %rax, %rdx	 #, _5, _6
	movq	32(%rbp), %rax	 # students, tmp118
	addq	%rdx, %rax	 # _6, _7
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:330:             maxAggregate = students[i].AggregateMarks;
	.loc 1 330 26
	movss	64(%rax), %xmm0	 # _7->AggregateMarks, tmp119
	movss	%xmm0, -4(%rbp)	 # tmp119, maxAggregate
.L108:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:328:     for (int i = 0; i < count; i++) {
	.loc 1 328 33 discriminator 2
	addl	$1, -8(%rbp)	 #, i
.L107:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:328:     for (int i = 0; i < count; i++) {
	.loc 1 328 23 discriminator 1
	movl	-8(%rbp), %eax	 # i, tmp120
	cmpl	40(%rbp), %eax	 # count, tmp120
	jl	.L110	 #,
.LBE13:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:334:     if (maxAggregate == -1.0) {
	.loc 1 334 8
	movss	.LC23(%rip), %xmm0	 #, tmp121
	ucomiss	-4(%rbp), %xmm0	 # maxAggregate, tmp121
	jp	.L111	 #,
	movss	.LC23(%rip), %xmm0	 #, tmp122
	ucomiss	-4(%rbp), %xmm0	 # maxAggregate, tmp122
	jne	.L111	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:335:         printf("\nNo students have an aggregate mark calculated yet.\n");
	.loc 1 335 9
	leaq	.LC54(%rip), %rax	 #, tmp123
	movq	%rax, %rcx	 # tmp123,
	call	puts	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:336:         return;
	.loc 1 336 9
	jmp	.L104	 #
.L111:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:340:     printf("\nTop Student(s) with Aggregate Mark: %.2f\n", maxAggregate);
	.loc 1 340 5
	pxor	%xmm0, %xmm0	 # _8
	cvtss2sd	-4(%rbp), %xmm0	 # maxAggregate, _8
	movapd	%xmm0, %xmm1	 # _8, tmp124
	movapd	%xmm1, %xmm0	 # tmp124, tmp125
	movq	%xmm1, %rdx	 # tmp124, tmp126
	leaq	.LC55(%rip), %rax	 #, tmp127
	movapd	%xmm0, %xmm1	 # tmp125,
	movq	%rax, %rcx	 # tmp127,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:341:     printf("-------------------------------------------\n");
	.loc 1 341 5
	leaq	.LC56(%rip), %rax	 #, tmp128
	movq	%rax, %rcx	 # tmp128,
	call	puts	 #
.LBB14:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:342:     for (int i = 0; i < count; i++) {
	.loc 1 342 14
	movl	$0, -12(%rbp)	 #, i
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:342:     for (int i = 0; i < count; i++) {
	.loc 1 342 5
	jmp	.L113	 #
.L116:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:343:         if (students[i].AggregateMarks == maxAggregate) {
	.loc 1 343 21
	movl	-12(%rbp), %eax	 # i, tmp129
	cltq
	imulq	$88, %rax, %rdx	 #, _9, _10
	movq	32(%rbp), %rax	 # students, tmp130
	addq	%rdx, %rax	 # _10, _11
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:343:         if (students[i].AggregateMarks == maxAggregate) {
	.loc 1 343 24
	movss	64(%rax), %xmm0	 # _11->AggregateMarks, _12
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:343:         if (students[i].AggregateMarks == maxAggregate) {
	.loc 1 343 12
	ucomiss	-4(%rbp), %xmm0	 # maxAggregate, _12
	jp	.L114	 #,
	ucomiss	-4(%rbp), %xmm0	 # maxAggregate, _12
	jne	.L114	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:344:             printStudentDetails(students[i]);
	.loc 1 344 41
	movl	-12(%rbp), %eax	 # i, tmp131
	cltq
	imulq	$88, %rax, %rdx	 #, _13, _14
	movq	32(%rbp), %rax	 # students, tmp132
	addq	%rdx, %rax	 # _14, _15
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:344:             printStudentDetails(students[i]);
	.loc 1 344 13
	movq	(%rax), %rcx	 # *_15, tmp133
	movq	8(%rax), %rbx	 # *_15,
	movq	%rcx, -112(%rbp)	 # tmp133,
	movq	%rbx, -104(%rbp)	 #,
	movq	16(%rax), %rcx	 # *_15, tmp134
	movq	24(%rax), %rbx	 # *_15,
	movq	%rcx, -96(%rbp)	 # tmp134,
	movq	%rbx, -88(%rbp)	 #,
	movq	32(%rax), %rcx	 # *_15, tmp135
	movq	40(%rax), %rbx	 # *_15,
	movq	%rcx, -80(%rbp)	 # tmp135,
	movq	%rbx, -72(%rbp)	 #,
	movq	48(%rax), %rcx	 # *_15, tmp136
	movq	56(%rax), %rbx	 # *_15,
	movq	%rcx, -64(%rbp)	 # tmp136,
	movq	%rbx, -56(%rbp)	 #,
	movq	64(%rax), %rcx	 # *_15, tmp137
	movq	72(%rax), %rbx	 # *_15,
	movq	%rcx, -48(%rbp)	 # tmp137,
	movq	%rbx, -40(%rbp)	 #,
	movq	80(%rax), %rax	 # *_15, tmp138
	movq	%rax, -32(%rbp)	 # tmp138,
	leaq	-112(%rbp), %rax	 #, tmp139
	movq	%rax, %rcx	 # tmp139,
	call	printStudentDetails	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:345:             printf("-------------------------------------------\n");
	.loc 1 345 13
	leaq	.LC56(%rip), %rax	 #, tmp140
	movq	%rax, %rcx	 # tmp140,
	call	puts	 #
.L114:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:342:     for (int i = 0; i < count; i++) {
	.loc 1 342 33 discriminator 2
	addl	$1, -12(%rbp)	 #, i
.L113:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:342:     for (int i = 0; i < count; i++) {
	.loc 1 342 23 discriminator 1
	movl	-12(%rbp), %eax	 # i, tmp141
	cmpl	40(%rbp), %eax	 # count, tmp141
	jl	.L116	 #,
.L104:
.LBE14:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:348: }
	.loc 1 348 1
	addq	$152, %rsp	 #,
	popq	%rbx	 #
	.cfi_restore 3
	popq	%rbp	 #
.LCFI24:
	.cfi_restore 6
	.cfi_def_cfa 7, -136
	ret	
	.cfi_endproc
.LFE112:
	.seh_endproc
	.section .rdata,"dr"
.LC57:
	.ascii "Name: %s %s\12\0"
.LC58:
	.ascii "ID: %d\12\0"
.LC59:
	.ascii "Subject Marks:\0"
.LC60:
	.ascii "  Subject %d: Not entered\12\0"
.LC61:
	.ascii "  Subject %d: %.2f\12\0"
	.align 8
.LC62:
	.ascii "Aggregate Mark: Not calculated\0"
.LC63:
	.ascii "Aggregate Mark: %.2f\12\0"
.LC64:
	.ascii "Grade: %s\12\0"
	.text
	.globl	printStudentDetails
	.def	printStudentDetails;	.scl	2;	.type	32;	.endef
	.seh_proc	printStudentDetails
printStudentDetails:
.LFB113:
	.loc 1 353 37
	.cfi_startproc
	pushq	%rbp	 #
	.seh_pushreg	%rbp
.LCFI25:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	 #
	.seh_pushreg	%rbx
.LCFI26:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$56, %rsp	 #,
	.seh_stackalloc	56
.LCFI27:
	.cfi_def_cfa_offset 80
	leaq	48(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 48
.LCFI28:
	.cfi_def_cfa 6, 32
	.seh_endprologue
	movq	%rcx, %rbx	 #, tmp105
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:354:     printf("Name: %s %s\n", s.FirstName, s.LastName);
	.loc 1 354 5
	leaq	20(%rbx), %rdx	 #, tmp106
	leaq	.LC57(%rip), %rax	 #, tmp107
	movq	%rdx, %r8	 # tmp106,
	movq	%rbx, %rdx	 # tmp105,
	movq	%rax, %rcx	 # tmp107,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:355:     printf("ID: %d\n", s.StudentID);
	.loc 1 355 5
	movl	40(%rbx), %eax	 # s.StudentID, _1
	leaq	.LC58(%rip), %rcx	 #, tmp108
	movl	%eax, %edx	 # _1,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:357:     printf("Subject Marks:\n");
	.loc 1 357 5
	leaq	.LC59(%rip), %rax	 #, tmp109
	movq	%rax, %rcx	 # tmp109,
	call	puts	 #
.LBB15:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:358:     for(int i = 0; i < numOfSubjects; i++) {
	.loc 1 358 13
	movl	$0, -4(%rbp)	 #, i
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:358:     for(int i = 0; i < numOfSubjects; i++) {
	.loc 1 358 5
	jmp	.L121	 #
.L125:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:359:         if(s.SubjectMarks[i] == -1) {
	.loc 1 359 26
	movl	-4(%rbp), %eax	 # i, tmp111
	cltq
	addq	$8, %rax	 #, tmp112
	movss	12(%rbx,%rax,4), %xmm0	 # s.SubjectMarks[i_8], _2
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:359:         if(s.SubjectMarks[i] == -1) {
	.loc 1 359 11
	movss	.LC23(%rip), %xmm1	 #, tmp113
	ucomiss	%xmm1, %xmm0	 # tmp113, _2
	jp	.L122	 #,
	movss	.LC23(%rip), %xmm1	 #, tmp114
	ucomiss	%xmm1, %xmm0	 # tmp114, _2
	jne	.L122	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:360:             printf("  Subject %d: Not entered\n", i);
	.loc 1 360 13
	movl	-4(%rbp), %eax	 # i, tmp115
	leaq	.LC60(%rip), %rcx	 #, tmp116
	movl	%eax, %edx	 # tmp115,
	call	printf	 #
	jmp	.L124	 #
.L122:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:362:             printf("  Subject %d: %.2f\n", i, s.SubjectMarks[i]);
	.loc 1 362 61
	movl	-4(%rbp), %eax	 # i, tmp118
	cltq
	addq	$8, %rax	 #, tmp119
	movss	12(%rbx,%rax,4), %xmm0	 # s.SubjectMarks[i_8], _3
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:362:             printf("  Subject %d: %.2f\n", i, s.SubjectMarks[i]);
	.loc 1 362 13
	cvtss2sd	%xmm0, %xmm0	 # _3, _4
	movapd	%xmm0, %xmm1	 # _4, tmp120
	movapd	%xmm1, %xmm0	 # tmp120, tmp121
	movq	%xmm1, %rdx	 # tmp120, tmp122
	movl	-4(%rbp), %eax	 # i, tmp123
	leaq	.LC61(%rip), %rcx	 #, tmp124
	movapd	%xmm0, %xmm2	 # tmp121,
	movq	%rdx, %r8	 # tmp122,
	movl	%eax, %edx	 # tmp123,
	call	printf	 #
.L124:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:358:     for(int i = 0; i < numOfSubjects; i++) {
	.loc 1 358 28 discriminator 2
	addl	$1, -4(%rbp)	 #, i
.L121:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:358:     for(int i = 0; i < numOfSubjects; i++) {
	.loc 1 358 22 discriminator 1
	cmpl	$4, -4(%rbp)	 #, i
	jle	.L125	 #,
.LBE15:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:366:     if (s.AggregateMarks == -1) {
	.loc 1 366 10
	movss	64(%rbx), %xmm0	 # s.AggregateMarks, _5
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:366:     if (s.AggregateMarks == -1) {
	.loc 1 366 8
	movss	.LC23(%rip), %xmm1	 #, tmp125
	ucomiss	%xmm1, %xmm0	 # tmp125, _5
	jp	.L126	 #,
	movss	.LC23(%rip), %xmm1	 #, tmp126
	ucomiss	%xmm1, %xmm0	 # tmp126, _5
	jne	.L126	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:367:         printf("Aggregate Mark: Not calculated\n");
	.loc 1 367 9
	leaq	.LC62(%rip), %rax	 #, tmp127
	movq	%rax, %rcx	 # tmp127,
	call	puts	 #
	jmp	.L128	 #
.L126:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:369:         printf("Aggregate Mark: %.2f\n", s.AggregateMarks);
	.loc 1 369 43
	movss	64(%rbx), %xmm0	 # s.AggregateMarks, _6
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:369:         printf("Aggregate Mark: %.2f\n", s.AggregateMarks);
	.loc 1 369 9
	cvtss2sd	%xmm0, %xmm0	 # _6, _7
	movapd	%xmm0, %xmm1	 # _7, tmp128
	movapd	%xmm1, %xmm0	 # tmp128, tmp129
	movq	%xmm1, %rdx	 # tmp128, tmp130
	leaq	.LC63(%rip), %rax	 #, tmp131
	movapd	%xmm0, %xmm1	 # tmp129,
	movq	%rax, %rcx	 # tmp131,
	call	printf	 #
.L128:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:372:     printf("Grade: %s\n", s.Grade);
	.loc 1 372 5
	leaq	68(%rbx), %rdx	 #, tmp132
	leaq	.LC64(%rip), %rax	 #, tmp133
	movq	%rax, %rcx	 # tmp133,
	call	printf	 #
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:373: }
	.loc 1 373 1
	nop	
	addq	$56, %rsp	 #,
	popq	%rbx	 #
	.cfi_restore 3
	popq	%rbp	 #
.LCFI29:
	.cfi_restore 6
	.cfi_def_cfa 7, -40
	ret	
	.cfi_endproc
.LFE113:
	.seh_endproc
	.globl	compareStringsCaseInsensitive
	.def	compareStringsCaseInsensitive;	.scl	2;	.type	32;	.endef
	.seh_proc	compareStringsCaseInsensitive
compareStringsCaseInsensitive:
.LFB114:
	.loc 1 378 69
	.cfi_startproc
	pushq	%rbp	 #
	.seh_pushreg	%rbp
.LCFI30:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	 #
	.seh_pushreg	%rbx
.LCFI31:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$56, %rsp	 #,
	.seh_stackalloc	56
.LCFI32:
	.cfi_def_cfa_offset 80
	leaq	48(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 48
.LCFI33:
	.cfi_def_cfa 6, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # s1, s1
	movq	%rdx, 40(%rbp)	 # s2, s2
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:379:     int i = 0;
	.loc 1 379 9
	movl	$0, -4(%rbp)	 #, i
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:380:     while (s1[i] != '\0' && s2[i] != '\0') {
	.loc 1 380 11
	jmp	.L132	 #
.L136:
.LBB16:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:381:         int lower1 = tolower((unsigned char)s1[i]);
	.loc 1 381 47
	movl	-4(%rbp), %eax	 # i, tmp128
	movslq	%eax, %rdx	 # tmp128, _1
	movq	32(%rbp), %rax	 # s1, tmp129
	addq	%rdx, %rax	 # _1, _2
	movzbl	(%rax), %eax	 # *_2, _3
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:381:         int lower1 = tolower((unsigned char)s1[i]);
	.loc 1 381 22
	movzbl	%al, %eax	 # _4, _5
	movl	%eax, %ecx	 # _5,
	movq	__imp_tolower(%rip), %rax	 #, tmp130
	call	*%rax	 # tmp130
.LVL0:
	movl	%eax, -8(%rbp)	 # tmp131, lower1
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:382:         int lower2 = tolower((unsigned char)s2[i]);
	.loc 1 382 47
	movl	-4(%rbp), %eax	 # i, tmp132
	movslq	%eax, %rdx	 # tmp132, _6
	movq	40(%rbp), %rax	 # s2, tmp133
	addq	%rdx, %rax	 # _6, _7
	movzbl	(%rax), %eax	 # *_7, _8
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:382:         int lower2 = tolower((unsigned char)s2[i]);
	.loc 1 382 22
	movzbl	%al, %eax	 # _9, _10
	movl	%eax, %ecx	 # _10,
	movq	__imp_tolower(%rip), %rax	 #, tmp134
	call	*%rax	 # tmp134
.LVL1:
	movl	%eax, -12(%rbp)	 # tmp135, lower2
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:384:         if (lower1 != lower2) {
	.loc 1 384 12
	movl	-8(%rbp), %eax	 # lower1, tmp136
	cmpl	-12(%rbp), %eax	 # lower2, tmp136
	je	.L133	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:385:             return lower1 - lower2;
	.loc 1 385 27
	movl	-8(%rbp), %eax	 # lower1, tmp137
	subl	-12(%rbp), %eax	 # lower2, _30
	jmp	.L134	 #
.L133:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:387:         i++;
	.loc 1 387 10
	addl	$1, -4(%rbp)	 #, i
.L132:
.LBE16:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:380:     while (s1[i] != '\0' && s2[i] != '\0') {
	.loc 1 380 14
	movl	-4(%rbp), %eax	 # i, tmp138
	movslq	%eax, %rdx	 # tmp138, _11
	movq	32(%rbp), %rax	 # s1, tmp139
	addq	%rdx, %rax	 # _11, _12
	movzbl	(%rax), %eax	 # *_12, _13
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:380:     while (s1[i] != '\0' && s2[i] != '\0') {
	.loc 1 380 26
	testb	%al, %al	 # _13
	je	.L135	 #,
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:380:     while (s1[i] != '\0' && s2[i] != '\0') {
	.loc 1 380 31 discriminator 1
	movl	-4(%rbp), %eax	 # i, tmp140
	movslq	%eax, %rdx	 # tmp140, _14
	movq	40(%rbp), %rax	 # s2, tmp141
	addq	%rdx, %rax	 # _14, _15
	movzbl	(%rax), %eax	 # *_15, _16
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:380:     while (s1[i] != '\0' && s2[i] != '\0') {
	.loc 1 380 26 discriminator 1
	testb	%al, %al	 # _16
	jne	.L136	 #,
.L135:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:390:     return tolower((unsigned char)s1[i]) - tolower((unsigned char)s2[i]);
	.loc 1 390 37
	movl	-4(%rbp), %eax	 # i, tmp142
	movslq	%eax, %rdx	 # tmp142, _17
	movq	32(%rbp), %rax	 # s1, tmp143
	addq	%rdx, %rax	 # _17, _18
	movzbl	(%rax), %eax	 # *_18, _19
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:390:     return tolower((unsigned char)s1[i]) - tolower((unsigned char)s2[i]);
	.loc 1 390 12
	movzbl	%al, %eax	 # _20, _21
	movl	%eax, %ecx	 # _21,
	movq	__imp_tolower(%rip), %rax	 #, tmp144
	call	*%rax	 # tmp144
.LVL2:
	movl	%eax, %ebx	 #, _22
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:390:     return tolower((unsigned char)s1[i]) - tolower((unsigned char)s2[i]);
	.loc 1 390 69 discriminator 1
	movl	-4(%rbp), %eax	 # i, tmp145
	movslq	%eax, %rdx	 # tmp145, _23
	movq	40(%rbp), %rax	 # s2, tmp146
	addq	%rdx, %rax	 # _23, _24
	movzbl	(%rax), %eax	 # *_24, _25
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:390:     return tolower((unsigned char)s1[i]) - tolower((unsigned char)s2[i]);
	.loc 1 390 44 discriminator 1
	movzbl	%al, %eax	 # _26, _27
	movl	%eax, %ecx	 # _27,
	movq	__imp_tolower(%rip), %rax	 #, tmp147
	call	*%rax	 # tmp147
.LVL3:
	movl	%eax, %edx	 #, _28
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:390:     return tolower((unsigned char)s1[i]) - tolower((unsigned char)s2[i]);
	.loc 1 390 42 discriminator 2
	movl	%ebx, %eax	 # _22, _22
	subl	%edx, %eax	 # _28, _22
.L134:
 # C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c:391: }
	.loc 1 391 1
	addq	$56, %rsp	 #,
	popq	%rbx	 #
	.cfi_restore 3
	popq	%rbp	 #
.LCFI34:
	.cfi_restore 6
	.cfi_def_cfa 7, -40
	ret	
	.cfi_endproc
.LFE114:
	.seh_endproc
	.section .rdata,"dr"
	.align 4
.LC22:
	.long	1120403456
	.align 4
.LC23:
	.long	-1082130432
	.align 4
.LC25:
	.long	1112014848
	.align 4
.LC26:
	.long	1115684864
	.align 4
.LC27:
	.long	1116995584
	.align 4
.LC28:
	.long	1118306304
	.align 4
.LC53:
	.long	-1073741824
	.text
.Letext0:
	.file 2 "C:/msys64/ucrt64/include/ctype.h"
	.file 3 "C:/msys64/ucrt64/include/stdio.h"
	.file 4 "<built-in>"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x85e
	.word	0x2
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C23 15.1.0 -mtune=generic -march=nocona -gdwarf-2 -O0\0"
	.byte	0xc
	.ascii "C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c\0"
	.ascii "C:\\\\Development\\\\Codelite\\\\Lab3\\\\Lab3\\\\Lab3\0"
	.quad	.Ltext0
	.quad	.Letext0
	.secrel32	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x3
	.long	0xba
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
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x4
	.byte	0x58
	.byte	0x1
	.byte	0x9
	.byte	0x9
	.long	0x1c7
	.uleb128 0x5
	.ascii "FirstName\0"
	.byte	0x1
	.byte	0xa
	.byte	0xa
	.long	0x1c7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii "LastName\0"
	.byte	0x1
	.byte	0xb
	.byte	0xa
	.long	0x1c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.ascii "StudentID\0"
	.byte	0x1
	.byte	0xc
	.byte	0x9
	.long	0x108
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.ascii "SubjectMarks\0"
	.byte	0x1
	.byte	0xd
	.byte	0xb
	.long	0x1d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x5
	.ascii "AggregateMarks\0"
	.byte	0x1
	.byte	0xe
	.byte	0xb
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x5
	.ascii "Grade\0"
	.byte	0x1
	.byte	0xf
	.byte	0xa
	.long	0x1c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0
	.uleb128 0x6
	.long	0xba
	.long	0x1d7
	.uleb128 0x7
	.long	0xc7
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.long	0x1e7
	.long	0x1e7
	.uleb128 0x7
	.long	0xc7
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x8
	.ascii "Student\0"
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.long	0x13c
	.uleb128 0x9
	.byte	0x1
	.ascii "tolower\0"
	.byte	0x2
	.byte	0x31
	.byte	0x42
	.byte	0x1
	.long	0x108
	.byte	0x1
	.long	0x21d
	.uleb128 0xa
	.long	0x108
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.ascii "printf\0"
	.byte	0x3
	.word	0x1c2
	.byte	0x22
	.byte	0x1
	.long	0x108
	.byte	0x1
	.long	0x23b
	.uleb128 0xa
	.long	0x23b
	.uleb128 0xc
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0xc2
	.uleb128 0xe
	.byte	0x1
	.ascii "getchar\0"
	.byte	0x3
	.word	0x270
	.byte	0x22
	.byte	0x1
	.long	0x108
	.byte	0x1
	.uleb128 0xb
	.byte	0x1
	.ascii "scanf\0"
	.byte	0x3
	.word	0x1d2
	.byte	0x22
	.byte	0x1
	.long	0x108
	.byte	0x1
	.long	0x272
	.uleb128 0xa
	.long	0x23b
	.uleb128 0xc
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.ascii "compareStringsCaseInsensitive\0"
	.byte	0x1
	.word	0x17a
	.byte	0x5
	.byte	0x1
	.long	0x108
	.quad	.LFB114
	.quad	.LFE114
	.secrel32	.LLST7
	.byte	0x1
	.long	0x351
	.uleb128 0x10
	.ascii "s1\0"
	.byte	0x1
	.word	0x17a
	.byte	0x2e
	.long	0x23b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.ascii "s2\0"
	.byte	0x1
	.word	0x17a
	.byte	0x3f
	.long	0x23b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.ascii "i\0"
	.byte	0x1
	.word	0x17b
	.byte	0x9
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.quad	.LBB16
	.quad	.LBE16
	.long	0x336
	.uleb128 0x11
	.ascii "lower1\0"
	.byte	0x1
	.word	0x17d
	.byte	0xd
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.ascii "lower2\0"
	.byte	0x1
	.word	0x17e
	.byte	0xd
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.quad	.LVL0
	.long	0x842
	.uleb128 0x13
	.quad	.LVL1
	.long	0x842
	.byte	0
	.uleb128 0x13
	.quad	.LVL2
	.long	0x842
	.uleb128 0x13
	.quad	.LVL3
	.long	0x842
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.ascii "printStudentDetails\0"
	.byte	0x1
	.word	0x161
	.byte	0x6
	.byte	0x1
	.quad	.LFB113
	.quad	.LFE113
	.secrel32	.LLST6
	.byte	0x1
	.long	0x3b4
	.uleb128 0x10
	.ascii "s\0"
	.byte	0x1
	.word	0x161
	.byte	0x22
	.long	0x1f0
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x15
	.quad	.LBB15
	.quad	.LBE15
	.uleb128 0x11
	.ascii "i\0"
	.byte	0x1
	.word	0x166
	.byte	0xd
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.ascii "topStudents\0"
	.byte	0x1
	.word	0x13f
	.byte	0x6
	.byte	0x1
	.quad	.LFB112
	.quad	.LFE112
	.secrel32	.LLST5
	.byte	0x1
	.long	0x460
	.uleb128 0x16
	.secrel32	.LASF0
	.byte	0x1
	.word	0x13f
	.byte	0x1a
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.ascii "count\0"
	.byte	0x1
	.word	0x13f
	.byte	0x2a
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.ascii "maxAggregate\0"
	.byte	0x1
	.word	0x145
	.byte	0xb
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.quad	.LBB13
	.quad	.LBE13
	.long	0x43f
	.uleb128 0x11
	.ascii "i\0"
	.byte	0x1
	.word	0x148
	.byte	0xe
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x15
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0x11
	.ascii "i\0"
	.byte	0x1
	.word	0x156
	.byte	0xe
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0x1f0
	.uleb128 0x17
	.byte	0x1
	.ascii "searchUpdate\0"
	.byte	0x1
	.byte	0x9e
	.byte	0x6
	.byte	0x1
	.quad	.LFB111
	.quad	.LFE111
	.secrel32	.LLST4
	.byte	0x1
	.long	0x6a0
	.uleb128 0x18
	.secrel32	.LASF0
	.byte	0x1
	.byte	0x9e
	.byte	0x1b
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.ascii "count\0"
	.byte	0x1
	.byte	0x9e
	.byte	0x2b
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.ascii "searchType\0"
	.byte	0x1
	.byte	0x9f
	.byte	0x9
	.long	0x108
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1a
	.ascii "foundIndex\0"
	.byte	0x1
	.byte	0xa0
	.byte	0x9
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.quad	.LBB3
	.quad	.LBE3
	.long	0x529
	.uleb128 0x1a
	.ascii "idToFind\0"
	.byte	0x1
	.byte	0xb4
	.byte	0xd
	.long	0x108
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x15
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x1a
	.ascii "i\0"
	.byte	0x1
	.byte	0xbc
	.byte	0x12
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x12
	.quad	.LBB5
	.quad	.LBE5
	.long	0x575
	.uleb128 0x1a
	.ascii "nameToFind\0"
	.byte	0x1
	.byte	0xc4
	.byte	0xe
	.long	0x1c7
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x15
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x1a
	.ascii "i\0"
	.byte	0x1
	.byte	0xc8
	.byte	0x12
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x15
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x1a
	.ascii "updateChoice\0"
	.byte	0x1
	.byte	0xde
	.byte	0xe
	.long	0xba
	.byte	0x3
	.byte	0x91
	.sleb128 -113
	.uleb128 0x15
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x1a
	.ascii "updateField\0"
	.byte	0x1
	.byte	0xe3
	.byte	0x11
	.long	0x108
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1a
	.ascii "recalculate\0"
	.byte	0x1
	.byte	0xf1
	.byte	0x11
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.quad	.LBB9
	.quad	.LBE9
	.long	0x649
	.uleb128 0x1b
	.secrel32	.LASF1
	.byte	0x1
	.word	0x106
	.byte	0x1b
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.secrel32	.LASF2
	.byte	0x1
	.word	0x107
	.byte	0x19
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.ascii "answer\0"
	.byte	0x1
	.word	0x108
	.byte	0x1a
	.long	0xba
	.byte	0x3
	.byte	0x91
	.sleb128 -121
	.uleb128 0x15
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x11
	.ascii "i\0"
	.byte	0x1
	.word	0x10a
	.byte	0x1d
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x15
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x1b
	.secrel32	.LASF1
	.byte	0x1
	.word	0x125
	.byte	0x17
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.secrel32	.LASF2
	.byte	0x1
	.word	0x126
	.byte	0x15
	.long	0x108
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x15
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x11
	.ascii "i\0"
	.byte	0x1
	.word	0x127
	.byte	0x19
	.long	0x108
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.ascii "calculateGrade\0"
	.byte	0x1
	.byte	0x8c
	.byte	0x6
	.byte	0x1
	.quad	.LFB110
	.quad	.LFE110
	.secrel32	.LLST3
	.byte	0x1
	.long	0x6f0
	.uleb128 0x19
	.ascii "mark\0"
	.byte	0x1
	.byte	0x8c
	.byte	0x1b
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.ascii "grade\0"
	.byte	0x1
	.byte	0x8c
	.byte	0x26
	.long	0x6f0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0xba
	.uleb128 0x1d
	.byte	0x1
	.ascii "enrol\0"
	.byte	0x1
	.byte	0x4b
	.byte	0x5
	.byte	0x1
	.long	0x108
	.quad	.LFB109
	.quad	.LFE109
	.secrel32	.LLST2
	.byte	0x1
	.long	0x7a7
	.uleb128 0x18
	.secrel32	.LASF0
	.byte	0x1
	.byte	0x4b
	.byte	0x13
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.ascii "count\0"
	.byte	0x1
	.byte	0x4b
	.byte	0x23
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.ascii "newStudent\0"
	.byte	0x1
	.byte	0x51
	.byte	0xd
	.long	0x1f0
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1a
	.ascii "answer\0"
	.byte	0x1
	.byte	0x52
	.byte	0xa
	.long	0xba
	.byte	0x3
	.byte	0x91
	.sleb128 -145
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x1
	.byte	0x53
	.byte	0xb
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.secrel32	.LASF2
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x1a
	.ascii "i\0"
	.byte	0x1
	.byte	0x64
	.byte	0xd
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.ascii "displayMenu\0"
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.byte	0x1
	.quad	.LFB108
	.quad	.LFE108
	.secrel32	.LLST1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0x1b
	.byte	0x5
	.byte	0x1
	.long	0x108
	.quad	.LFB107
	.quad	.LFE107
	.secrel32	.LLST0
	.byte	0x1
	.long	0x832
	.uleb128 0x1e
	.secrel32	.LASF0
	.byte	0x1
	.byte	0x1c
	.byte	0xd
	.long	0x832
	.byte	0x3
	.byte	0x91
	.sleb128 -1792
	.uleb128 0x1a
	.ascii "studentCount\0"
	.byte	0x1
	.byte	0x1d
	.byte	0x9
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.ascii "choice\0"
	.byte	0x1
	.byte	0x1e
	.byte	0x9
	.long	0x108
	.byte	0x3
	.byte	0x91
	.sleb128 -1796
	.byte	0
	.uleb128 0x6
	.long	0x1f0
	.long	0x842
	.uleb128 0x7
	.long	0xc7
	.byte	0x13
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.byte	0x1
	.ascii "tolower\0"
	.ascii "__builtin_tolower\0"
	.byte	0x4
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x5
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x34
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
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0x8
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"dr"
.Ldebug_loc0:
.LLST7:
	.quad	.LFB114-.Ltext0
	.quad	.LCFI30-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI30-.Ltext0
	.quad	.LCFI31-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI31-.Ltext0
	.quad	.LCFI32-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI32-.Ltext0
	.quad	.LCFI33-.Ltext0
	.word	0x3
	.byte	0x77
	.sleb128 80
	.quad	.LCFI33-.Ltext0
	.quad	.LCFI34-.Ltext0
	.word	0x2
	.byte	0x76
	.sleb128 32
	.quad	.LCFI34-.Ltext0
	.quad	.LFE114-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 -40
	.quad	0
	.quad	0
.LLST6:
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
	.byte	0x77
	.sleb128 24
	.quad	.LCFI27-.Ltext0
	.quad	.LCFI28-.Ltext0
	.word	0x3
	.byte	0x77
	.sleb128 80
	.quad	.LCFI28-.Ltext0
	.quad	.LCFI29-.Ltext0
	.word	0x2
	.byte	0x76
	.sleb128 32
	.quad	.LCFI29-.Ltext0
	.quad	.LFE113-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 -40
	.quad	0
	.quad	0
.LLST5:
	.quad	.LFB112-.Ltext0
	.quad	.LCFI20-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI20-.Ltext0
	.quad	.LCFI21-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI21-.Ltext0
	.quad	.LCFI22-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI22-.Ltext0
	.quad	.LCFI23-.Ltext0
	.word	0x3
	.byte	0x77
	.sleb128 176
	.quad	.LCFI23-.Ltext0
	.quad	.LCFI24-.Ltext0
	.word	0x2
	.byte	0x76
	.sleb128 32
	.quad	.LCFI24-.Ltext0
	.quad	.LFE112-.Ltext0
	.word	0x3
	.byte	0x77
	.sleb128 -136
	.quad	0
	.quad	0
.LLST4:
	.quad	.LFB111-.Ltext0
	.quad	.LCFI15-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI15-.Ltext0
	.quad	.LCFI16-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI16-.Ltext0
	.quad	.LCFI17-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI17-.Ltext0
	.quad	.LCFI18-.Ltext0
	.word	0x3
	.byte	0x77
	.sleb128 256
	.quad	.LCFI18-.Ltext0
	.quad	.LCFI19-.Ltext0
	.word	0x2
	.byte	0x76
	.sleb128 32
	.quad	.LCFI19-.Ltext0
	.quad	.LFE111-.Ltext0
	.word	0x3
	.byte	0x77
	.sleb128 -216
	.quad	0
	.quad	0
.LLST3:
	.quad	.LFB110-.Ltext0
	.quad	.LCFI12-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI12-.Ltext0
	.quad	.LCFI13-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI13-.Ltext0
	.quad	.LCFI14-.Ltext0
	.word	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI14-.Ltext0
	.quad	.LFE110-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST2:
	.quad	.LFB109-.Ltext0
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
	.byte	0x77
	.sleb128 24
	.quad	.LCFI9-.Ltext0
	.quad	.LCFI10-.Ltext0
	.word	0x3
	.byte	0x77
	.sleb128 288
	.quad	.LCFI10-.Ltext0
	.quad	.LCFI11-.Ltext0
	.word	0x3
	.byte	0x76
	.sleb128 160
	.quad	.LCFI11-.Ltext0
	.quad	.LFE109-.Ltext0
	.word	0x3
	.byte	0x77
	.sleb128 -248
	.quad	0
	.quad	0
.LLST1:
	.quad	.LFB108-.Ltext0
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
	.quad	.LFE108-.Ltext0
	.word	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST0:
	.quad	.LFB107-.Ltext0
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
	.sleb128 1840
	.quad	.LCFI2-.Ltext0
	.quad	.LCFI3-.Ltext0
	.word	0x3
	.byte	0x76
	.sleb128 1712
	.quad	.LCFI3-.Ltext0
	.quad	.LFE107-.Ltext0
	.word	0x3
	.byte	0x77
	.sleb128 -1816
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
.LASF2:
	.ascii "validMarks\0"
.LASF0:
	.ascii "students\0"
.LASF1:
	.ascii "totalMarks\0"
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 15.1.0"
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	getchar;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
