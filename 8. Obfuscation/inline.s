	.file	"inline.c"
	.intel_syntax noprefix
	.text
	.globl	fct1
	.type	fct1, @function
fct1:
.LFB11:
	.cfi_startproc
	lea	eax, 5[rdi]
	ret
	.cfi_endproc
.LFE11:
	.size	fct1, .-fct1
	.globl	fct2
	.type	fct2, @function
fct2:
.LFB12:
	.cfi_startproc
	lea	eax, -3[rdi]
	ret
	.cfi_endproc
.LFE12:
	.size	fct2, .-fct2
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Valeur finale de a : %d\n"
.LC1:
	.string	"La somme est de : %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB13:
	.cfi_startproc
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	mov	esi, 20
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, 101
	.p2align 3
.L4:
	sub	eax, 1
	jne	.L4
	mov	esi, 5050
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE13:
	.size	main, .-main
	.ident	"GCC: (Debian 14.2.0-19) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
