section .text
    global _start

_fonc:
    push rbp
    mov rbp, rsp
    mov rax, 42
    mov rbx, 104
    push rax
    push rbx
    pop rax
    pop rbx
    pop rbp
    ret

_start:
    push rbp
    mov rbp, rsp
    call _fonc
    leave
    ret
