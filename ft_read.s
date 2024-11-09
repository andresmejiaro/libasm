global ft_read
extern ___error

ft_read:

    push rbp
    mov rbp, rsp

    mov rax, 0

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