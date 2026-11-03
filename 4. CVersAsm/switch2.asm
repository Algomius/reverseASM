	.file	"switch.c"
	.intel_syntax noprefix
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d"
.LC1:
	.string	"%d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	lea	rdi, .LC0[rip]
	xor	eax, eax
	lea	rsi, 12[rsp]
	mov	DWORD PTR 12[rsp], 2
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR 12[rsp]
	xor	esi, esi
	cmp	eax, 5
	ja	.L2
	lea	rdx, CSWTCH.2[rip]
	mov	esi, DWORD PTR [rdx+rax*4]
.L2:
	lea	rdi, .LC1[rip]
	xor	eax, eax
	call	printf@PLT
	xor	eax, eax
	add	rsp, 24
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.section	.rodata
	.align 16
	.type	CSWTCH.2, @object
	.size	CSWTCH.2, 24
CSWTCH.2:
	.long	37
	.long	42
	.long	54
	.long	76
	.long	26
	.long	12
	.ident	"GCC: (Debian 14.2.0-19) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
