section .data
    values :
        dq 10, 20, 30, 40, 50
    longueur equ ($ - values) / 8
section .text
    global _start

_start:
    xor rcx, rcx
    .boucle_deb:
        cmp rcx, longueur
        jge .boucle_fin

        mov rax, [values + 8 * rcx]
        inc rcx
        jmp .boucle_deb

    .boucle_fin: