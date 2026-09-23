section .data                          ;Section de définition des données
    message db "Bonjour Linux !", 10   ;transformation du message en hexa + ajout du saut à la ligne 
    longueur equ $ - message           ;Récupération de la longueur du message ($ est la fin du message)
section .text                          ;Section destinée au code
    global _start                      ;Définition du début du programme

_start:
    mov rax, 1                          ; Descripteur 1 - write
    mov rdi, 1                          ; parametre 1 de write - sortie standard
    mov rsi, message                    ; parametre 2 de write - message
    mov rdx, longueur                   ; parametre 3 de write - longueur du message
    syscall

    mov rax, 60                         ; descripteur 60 - exit
    xor rdi, rdi                        ; code retour = 0
    syscall

;nasm -f elf64 assem.s -o assem.o
;ld assem.o -o assem
;./assem