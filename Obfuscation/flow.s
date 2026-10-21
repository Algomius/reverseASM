	.file	"flow.c"
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
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -4[rbp], 0
	cmp	DWORD PTR -20[rbp], 9
	jg	.L2
	mov	eax, DWORD PTR -20[rbp]
	add	eax, eax
	mov	DWORD PTR -4[rbp], eax
	jmp	.L3
.L2:
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 3
	mov	DWORD PTR -4[rbp], eax
.L3:
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
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
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L6
.L14:
	cmp	DWORD PTR -4[rbp], 4
	je	.L7
	cmp	DWORD PTR -4[rbp], 4
	jg	.L8
	cmp	DWORD PTR -4[rbp], 3
	je	.L9
	cmp	DWORD PTR -4[rbp], 3
	jg	.L8
	cmp	DWORD PTR -4[rbp], 1
	je	.L10
	cmp	DWORD PTR -4[rbp], 2
	je	.L11
	jmp	.L8
.L10:
	cmp	DWORD PTR -20[rbp], 9
	jg	.L12
	mov	DWORD PTR -4[rbp], 2
	jmp	.L6
.L12:
	mov	DWORD PTR -4[rbp], 3
	jmp	.L6
.L11:
	sal	DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], 8
	jmp	.L6
.L9:
	add	DWORD PTR -20[rbp], 3
	mov	DWORD PTR -4[rbp], 17
	jmp	.L6
.L7:
	sub	DWORD PTR -20[rbp], 1
	mov	DWORD PTR -4[rbp], 5
	jmp	.L6
.L8:
	mov	DWORD PTR -4[rbp], 4
	nop
.L6:
	cmp	DWORD PTR -4[rbp], 5
	jne	.L14
	mov	eax, DWORD PTR -20[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	calculer2, .-calculer2
	.section	.rodata
.LC0:
	.string	"Premier cas : %d\n"
.LC1:
	.string	"Second cas : %d\n"
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
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	calculer1
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	calculer2
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Debian 14.2.0-19) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
