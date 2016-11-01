	.file	"code.c"
	.section	.rodata
.LC0:
	.string	"%u"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	-8(%rbp), %eax
	andl	$1, %eax
	addl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	shrl	%eax
	movl	%eax, -8(%rbp)
.L2:
	movl	-8(%rbp), %eax
	testl	%eax, %eax
	jne	.L3
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
