	.file	"switch.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	DWORD PTR -8[rbp], 2
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	cmp	DWORD PTR -8[rbp], 5
	ja	.L2
	mov	eax, DWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*4]
	lea	rax, .L4[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	lea	rdx, .L4[rip]
	add	rax, rdx
	jmp	rax
	.section	.rodata
	.align 4
	.align 4
.L4:
	.long	.L9-.L4
	.long	.L8-.L4
	.long	.L7-.L4
	.long	.L6-.L4
	.long	.L5-.L4
	.long	.L3-.L4
	.text
.L9:
	mov	DWORD PTR -4[rbp], 37
	jmp	.L10
.L8:
	mov	DWORD PTR -4[rbp], 42
	jmp	.L10
.L7:
	mov	DWORD PTR -4[rbp], 54
	jmp	.L10
.L6:
	mov	DWORD PTR -4[rbp], 76
	jmp	.L10
.L5:
	mov	DWORD PTR -4[rbp], 26
	jmp	.L10
.L3:
	mov	DWORD PTR -4[rbp], 12
	jmp	.L10
.L2:
	mov	DWORD PTR -4[rbp], 0
	nop
.L10:
	mov	eax, DWORD PTR -4[rbp]
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
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 14.2.0-19) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
