	.file	"junk.c"
	.intel_syntax noprefix
	.text
	.globl	calculer
	.type	calculer, @function
calculer:
.LFB11:
	.cfi_startproc
#APP
# 5 "junk.c" 1
	xorl %%r8d, %%r8d
	addl $17, %%r8d
	subl $17, %%r8d
	xorl %%r8d, %%r8d
	
# 0 "" 2
#NO_APP
	lea	eax, 5[rdi]
	ret
	.cfi_endproc
.LFE11:
	.size	calculer, .-calculer
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	mov	edi, 10
	call	calculer
	mov	esi, eax
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
