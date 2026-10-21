	.file	"hash.c"
	.intel_syntax noprefix
	.text
	.globl	hash_string
	.type	hash_string, @function
hash_string:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -4[rbp], -2128831035
	jmp	.L2
.L3:
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -24[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	xor	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	imul	eax, eax, 16777619
	mov	DWORD PTR -4[rbp], eax
.L2:
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L3
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	hash_string, .-hash_string
	.globl	ajoute_un
	.type	ajoute_un, @function
ajoute_un:
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR -4[rbp], edi
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	ajoute_un, .-ajoute_un
	.globl	multi_deux
	.type	multi_deux, @function
multi_deux:
.LFB2:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR -4[rbp], edi
	mov	eax, DWORD PTR -4[rbp]
	add	eax, eax
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	multi_deux, .-multi_deux
	.globl	fonctions
	.section	.rodata
.LC0:
	.string	"ajoute_un"
.LC1:
	.string	"multi_deux"
	.section	.data.rel.local,"aw"
	.align 32
	.type	fonctions, @object
	.size	fonctions, 32
fonctions:
	.quad	.LC0
	.quad	ajoute_un
	.quad	.LC1
	.quad	multi_deux
	.text
	.globl	retrouve_fonction
	.type	retrouve_fonction, @function
retrouve_fonction:
.LFB3:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 24
	mov	DWORD PTR -20[rbp], edi
	mov	QWORD PTR -16[rbp], 2
	mov	QWORD PTR -8[rbp], 0
	jmp	.L10
.L13:
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 4
	mov	rdx, rax
	lea	rax, fonctions[rip]
	mov	rax, QWORD PTR [rdx+rax]
	mov	rdi, rax
	call	hash_string
	cmp	DWORD PTR -20[rbp], eax
	jne	.L11
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 4
	mov	rdx, rax
	lea	rax, fonctions[rip+8]
	mov	rax, QWORD PTR [rdx+rax]
	jmp	.L12
.L11:
	add	QWORD PTR -8[rbp], 1
.L10:
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -16[rbp]
	jb	.L13
	mov	eax, 0
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	retrouve_fonction, .-retrouve_fonction
	.section	.rodata
.LC2:
	.string	"R\303\251sultat : %d\n"
.LC3:
	.string	"Fonction introuvable"
	.text
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	hash_string
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	retrouve_fonction
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	je	.L15
	mov	rax, QWORD PTR -16[rbp]
	mov	edi, 27
	call	rax
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L16
.L15:
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
.L16:
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (Debian 14.2.0-19) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
