section .text
    global _start

_fonc:
    push rbp
    mov rbp, rsp

    push rdi
    push rsi
    pop rbx
    pop rax
    mov rsp, rbp
    pop rbp
    ret

_start:
    push rbp
    mov rbp, rsp
    mov rax, 42
    mov rbx, 104
    mov rdi, rax
    mov rsi, rbx
    call _fonc
    leave
    mov rax, 60
    mov rdi, 0
    syscall
