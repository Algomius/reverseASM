	.file	"carre.c"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	carre
	.type	carre, @function
carre:
.LFB11:
	.cfi_startproc
	imul	edi, edi
	mov	eax, edi
	ret
	.cfi_endproc
.LFE11:
	.size	carre, .-carre
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d"
.LC1:
	.string	"Carre de %d = %d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	lea	rbp, .LC0[rip]
	xor	esi, esi
	xor	eax, eax
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rdi, rbp
	lea	rbx, .LC1[rip]
	sub	rsp, 8
	.cfi_def_cfa_offset 32
	call	__isoc99_scanf@PLT
	xor	edx, edx
	mov	rdi, rbx
	xor	esi, esi
	xor	eax, eax
	call	printf@PLT
	mov	rdi, rbp
	xor	esi, esi
	xor	eax, eax
	call	__isoc99_scanf@PLT
	mov	rdi, rbx
	xor	edx, edx
	xor	esi, esi
	xor	eax, eax
	call	printf@PLT
	add	rsp, 8
	.cfi_def_cfa_offset 24
	xor	eax, eax
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.ident	"GCC: (Debian 14.2.0-19) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
