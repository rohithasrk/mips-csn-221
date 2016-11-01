	.file	"code.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%u"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	movl	$.LC0, %edi
	leaq	12(%rsp), %rsi
	call	__isoc99_scanf
	movl	12(%rsp), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	.L2
	.p2align 4,,10
	.p2align 3
.L4:
	movl	%eax, %ecx
	andl	$1, %ecx
	addl	%ecx, %edx
	shrl	%eax
	jne	.L4
	movl	$0, 12(%rsp)
.L2:
	movl	$.LC0, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
