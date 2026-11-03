	.file	"passwordObf.c"
	.intel_syntax noprefix
	.text
	.globl	valideMDP
	.type	valideMDP, @function
valideMDP:
.LFB11:
	.cfi_startproc
	mov	DWORD PTR -24[rsp], 49
	mov	DWORD PTR -20[rsp], 50
	mov	DWORD PTR -16[rsp], 51
	mov	DWORD PTR -12[rsp], 52
	mov	edx, 0
	mov	eax, 0
.L2:
	cmp	eax, 1
	je	.L10
	test	rdi, rdi
	je	.L11
.L4:
	mov	eax, 1
	jmp	.L2
.L11:
	ret
.L10:
	mov	ecx, edx
	movzx	ecx, BYTE PTR [rdi+rcx]
	test	cl, cl
	je	.L12
	cmp	edx, 7
	ja	.L1
	mov	eax, edx
	cmp	cl, BYTE PTR -24[rsp+rax*4]
	jne	.L8
	add	edx, 1
	jmp	.L4
.L12:
	cmp	edx, 8
	setne	al
	movzx	eax, al
	ret
.L8:
	mov	eax, 0
.L1:
	ret
	.cfi_endproc
.LFE11:
	.size	valideMDP, .-valideMDP
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Entrer votre  mot de passe : "
.LC1:
	.string	"%s"
.LC2:
	.string	"Mauvais mot de passe"
.LC3:
	.string	"Mot de passe OK"
	.text
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	push	r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	push	r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	push	rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	push	rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	sub	rsp, 120
	.cfi_def_cfa_offset 160
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	mov	rsi, rsp
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	rbx, rsp
	lea	r13, .LC2[rip]
	lea	r12, .LC0[rip]
	lea	rbp, .LC1[rip]
	jmp	.L14
.L15:
	mov	rdi, r13
	call	puts@PLT
	mov	rdi, r12
	mov	eax, 0
	call	printf@PLT
	mov	rsi, rbx
	mov	rdi, rbp
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L14:
	mov	rdi, rbx
	call	valideMDP
	test	eax, eax
	je	.L15
	lea	rdi, .LC3[rip]
	call	puts@PLT
	mov	eax, 0
	add	rsp, 120
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	rbp
	.cfi_def_cfa_offset 24
	pop	r12
	.cfi_def_cfa_offset 16
	pop	r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.ident	"GCC: (Debian 14.2.0-19) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
