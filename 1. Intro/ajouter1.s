	.file	"ajouter.c"
	.intel_syntax noprefix
	.text
	.globl	ajouter
	.type	ajouter, @function
ajouter:
.LFB11:
	.cfi_startproc
	lea	eax, [rdi+rsi]
	ret
	.cfi_endproc
.LFE11:
	.size	ajouter, .-ajouter
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Resultat = %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	mov	esi, 12
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.ident	"GCC: (Debian 14.2.0-19) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
