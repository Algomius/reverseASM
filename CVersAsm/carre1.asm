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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 8
	.cfi_def_cfa_offset 32
	mov	esi, 0
	lea	rbp, .LC0[rip]
	mov	rdi, rbp
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, 0
	mov	esi, 0
	lea	rbx, .LC1[rip]
	mov	rdi, rbx
	mov	eax, 0
	call	printf@PLT
	mov	esi, 0
	mov	rdi, rbp
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, 0
	mov	esi, 0
	mov	rdi, rbx
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	add	rsp, 8
	.cfi_def_cfa_offset 24
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
