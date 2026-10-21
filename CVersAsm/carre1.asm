	.file	"carre.c"
	.intel_syntax noprefix
	.text
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
	.text
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	push	r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	sub	rsp, 16
	.cfi_def_cfa_offset 48
	mov	DWORD PTR 12[rsp], 0
	lea	r12, 12[rsp]
	mov	rsi, r12
	lea	rbp, .LC0[rip]
	mov	rdi, rbp
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	esi, DWORD PTR 12[rsp]
	mov	edx, esi
	imul	edx, esi
	lea	rbx, .LC1[rip]
	mov	rdi, rbx
	mov	eax, 0
	call	printf@PLT
	mov	rsi, r12
	mov	rdi, rbp
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	esi, DWORD PTR 12[rsp]
	mov	edx, esi
	imul	edx, esi
	mov	rdi, rbx
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	add	rsp, 16
	.cfi_def_cfa_offset 32
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
