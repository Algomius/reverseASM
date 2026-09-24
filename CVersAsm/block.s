	.file	"block.c"
	.intel_syntax noprefix
	.text
	.globl	f2
	.type	f2, @function
f2:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR -4[rbp], edi
	mov	eax, 42
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	f2, .-f2
	.globl	f3
	.type	f3, @function
f3:
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR -4[rbp], edi
	mov	eax, 34
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	f3, .-f3
	.globl	f1
	.type	f1, @function
f1:
.LFB2:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 8
	mov	DWORD PTR -4[rbp], edi
	cmp	DWORD PTR -4[rbp], 0
	jle	.L6
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	f2
	jmp	.L7
.L6:
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	f3
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	f1, .-f1
	.globl	f4
	.type	f4, @function
f4:
.LFB3:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 8
	mov	DWORD PTR -4[rbp], edi
	cmp	DWORD PTR -4[rbp], 19
	jg	.L9
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	f2
	jmp	.L10
.L9:
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	f3
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	f4, .-f4
	.globl	f5
	.type	f5, @function
f5:
.LFB4:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 8
	mov	DWORD PTR -4[rbp], edi
	cmp	DWORD PTR -4[rbp], 49
	jg	.L12
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	f4
	jmp	.L13
.L12:
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	f3
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	f5, .-f5
	.section	.rodata
.LC0:
	.string	"Valeur de b : %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	DWORD PTR -8[rbp], 37
	mov	DWORD PTR -4[rbp], 0
	cmp	DWORD PTR -8[rbp], 29
	jg	.L15
	mov	eax, DWORD PTR -8[rbp]
	mov	edi, eax
	call	f1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L16
.L15:
	mov	eax, DWORD PTR -8[rbp]
	mov	edi, eax
	call	f5
	mov	DWORD PTR -4[rbp], eax
.L16:
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Debian 14.2.0-19) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
