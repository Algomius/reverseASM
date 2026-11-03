	.file	"predicat.c"
	.intel_syntax noprefix
	.text
	.globl	calculer1
	.type	calculer1, @function
calculer1:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR -4[rbp], edi
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	imul	eax, DWORD PTR -4[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L2
	mov	eax, 0
	jmp	.L3
.L2:
	mov	eax, 1
.L3:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	calculer1, .-calculer1
	.globl	calculer2
	.type	calculer2, @function
calculer2:
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	imul	eax, DWORD PTR -8[rbp]
	test	eax, eax
	js	.L5
	mov	eax, 0
	jmp	.L6
.L5:
	mov	eax, 1
.L6:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	calculer2, .-calculer2
	.section	.rodata
.LC0:
	.string	"Je serai toujours ici"
.LC1:
	.string	"Et jamais l\303\240"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], 36
	mov	DWORD PTR -8[rbp], 24
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	calculer1
	test	eax, eax
	jne	.L8
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L9
.L8:
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
.L9:
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	calculer2
	test	eax, eax
	jne	.L10
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L11
.L10:
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
.L11:
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Debian 14.2.0-19) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
