section .text
    global _start

_start:
    mov rax, 42
    mov rbx, 104
    push rax
    push rbx
    pop rax
    pop rbx
