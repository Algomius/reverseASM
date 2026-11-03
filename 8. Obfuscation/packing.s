	.file	"packing.c"
	.intel_syntax noprefix
	.text
	.globl	encode
	.type	encode, @function
encode:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -8[rbp], 0
	mov	QWORD PTR -16[rbp], 0
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	QWORD PTR -32[rbp], rax
	jmp	.L2
.L8:
	mov	QWORD PTR -24[rbp], 1
	jmp	.L3
.L5:
	add	QWORD PTR -24[rbp], 1
.L3:
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	cmp	rax, QWORD PTR -32[rbp]
	jnb	.L4
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	rcx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	jne	.L4
	cmp	QWORD PTR -24[rbp], 254
	jbe	.L5
.L4:
	mov	rax, QWORD PTR -16[rbp]
	add	rax, 2
	cmp	QWORD PTR -56[rbp], rax
	jnb	.L6
	mov	eax, 0
	jmp	.L7
.L6:
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -16[rbp], rdx
	mov	rdx, QWORD PTR -48[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	BYTE PTR [rax], dl
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, [rdx+rax]
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -16[rbp], rdx
	mov	rdx, QWORD PTR -48[rbp]
	add	rdx, rax
	movzx	eax, BYTE PTR [rcx]
	mov	BYTE PTR [rdx], al
	mov	rax, QWORD PTR -24[rbp]
	add	QWORD PTR -8[rbp], rax
.L2:
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -32[rbp]
	jb	.L8
	mov	rax, QWORD PTR -16[rbp]
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	encode, .-encode
	.globl	decode
	.type	decode, @function
decode:
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -8[rbp], 0
	mov	rax, QWORD PTR -48[rbp]
	and	eax, 1
	test	rax, rax
	je	.L10
	mov	eax, 0
	jmp	.L9
.L10:
	mov	QWORD PTR -16[rbp], 0
	jmp	.L12
.L15:
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -17[rbp], al
	cmp	BYTE PTR -17[rbp], 0
	je	.L13
	movzx	eax, BYTE PTR -17[rbp]
	mov	rdx, QWORD PTR -64[rbp]
	sub	rdx, QWORD PTR -8[rbp]
	cmp	rdx, rax
	jnb	.L14
.L13:
	mov	eax, 0
	jmp	.L9
.L14:
	movzx	edx, BYTE PTR -17[rbp]
	mov	rax, QWORD PTR -16[rbp]
	lea	rcx, 1[rax]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	mov	rsi, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR -8[rbp]
	add	rcx, rsi
	mov	esi, eax
	mov	rdi, rcx
	call	memset@PLT
	movzx	eax, BYTE PTR -17[rbp]
	add	QWORD PTR -8[rbp], rax
	add	QWORD PTR -16[rbp], 2
.L12:
	mov	rax, QWORD PTR -16[rbp]
	cmp	rax, QWORD PTR -48[rbp]
	jb	.L15
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	decode, .-decode
	.section	.rodata
.LC0:
	.string	"Chaine codee %s\n"
.LC1:
	.string	"Chaine decodee %s\n"
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
	sub	rsp, 176
	movabs	rax, 4774450303489622337
	movabs	rdx, 4846791580151137090
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	mov	WORD PTR -32[rbp], 67
	lea	rcx, -112[rbp]
	lea	rax, -48[rbp]
	mov	edx, 64
	mov	rsi, rcx
	mov	rdi, rax
	call	encode
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jne	.L17
	mov	eax, 1
	jmp	.L20
.L17:
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rdx, -176[rbp]
	mov	rsi, QWORD PTR -8[rbp]
	lea	rax, -112[rbp]
	mov	ecx, 63
	mov	rdi, rax
	call	decode
	mov	QWORD PTR -16[rbp], rax
	lea	rax, -176[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	cmp	QWORD PTR -16[rbp], 0
	jne	.L19
	mov	eax, 1
	jmp	.L20
.L19:
	mov	eax, 0
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Debian 14.2.0-19) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
