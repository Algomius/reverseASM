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
	push	r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	xor	eax, eax
	push	rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	lea	rbp, .LC0[rip]
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	mov	rdi, rbp
	lea	rbx, .LC1[rip]
	sub	rsp, 16
	.cfi_def_cfa_offset 48
	lea	r12, 12[rsp]
	mov	DWORD PTR 12[rsp], 0
	mov	rsi, r12
	call	__isoc99_scanf@PLT
	mov	esi, DWORD PTR 12[rsp]
	mov	rdi, rbx
	xor	eax, eax
	mov	edx, esi
	imul	edx, esi
	call	printf@PLT
	mov	rsi, r12
	mov	rdi, rbp
	xor	eax, eax
	call	__isoc99_scanf@PLT
	mov	esi, DWORD PTR 12[rsp]
	mov	rdi, rbx
	xor	eax, eax
	mov	edx, esi
	imul	edx, esi
	call	printf@PLT
	add	rsp, 16
	.cfi_def_cfa_offset 32
	xor	eax, eax
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	rbp
	.cfi_def_cfa_offset 16
	pop	r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.ident	"GCC: (Debian 14.2.0-19) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
