	.file	"final.c"
	.intel_syntax noprefix
	.text
	.globl	simu1
	.type	simu1, @function
simu1:
.LFB11:
	.cfi_startproc
	mov	eax, 1
	cmp	edi, 1
	ja	.L8
	ret
.L8:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 8
	.cfi_def_cfa_offset 32
	mov	ebx, edi
	lea	edi, -1[rdi]
	call	simu1
	mov	ebp, eax
	lea	edi, -2[rbx]
	call	simu1
	add	eax, ebp
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	simu1, .-simu1
	.globl	simu2
	.type	simu2, @function
simu2:
.LFB12:
	.cfi_startproc
	mov	eax, 1
	cmp	edi, 1
	jbe	.L9
	jle	.L13
	add	edi, 1
	mov	edx, 2
	mov	ecx, 1
	.p2align 4
.L11:
	mov	esi, eax
	add	eax, ecx
	add	edx, 1
	mov	ecx, esi
	cmp	edi, edx
	jne	.L11
	ret
.L13:
	mov	eax, 0
.L9:
	ret
	.cfi_endproc
.LFE12:
	.size	simu2, .-simu2
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Donner un nombre entre 1 et 100 : "
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"%d"
.LC2:
	.string	"Simulations identiques"
.LC3:
	.string	"Simulations diff\303\251rentes"
	.text
	.globl	main
	.type	main, @function
main:
.LFB13:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 24
	.cfi_def_cfa_offset 48
	mov	DWORD PTR 12[rsp], 2
	lea	rdi, .LC0[rip]
	call	puts@PLT
	lea	rsi, 12[rsp]
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	ebp, DWORD PTR 12[rsp]
	mov	edi, ebp
	call	simu1
	mov	ebx, eax
	mov	edi, ebp
	call	simu2
	cmp	ebx, eax
	je	.L19
	lea	rdi, .LC3[rip]
	call	puts@PLT
.L17:
	mov	eax, 0
	add	rsp, 24
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.L19:
	.cfi_restore_state
	lea	rdi, .LC2[rip]
	call	puts@PLT
	jmp	.L17
	.cfi_endproc
.LFE13:
	.size	main, .-main
	.ident	"GCC: (Debian 14.2.0-19) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
