global ft_write
extern ___error

ft_write:

    push rbp
    mov rbp, rsp

    mov rax, 1

    syscall

    cmp rax, 0
    jge end

    neg rax
    mov rsi, rax
    call ___error
    mov [rax], rsi
    mov rax, -1


end:
    mov rsp, rbp
    pop rbp
    ret