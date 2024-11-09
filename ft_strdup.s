global ft_strdup
extern ft_strlen, malloc, ft_strcpy

ft_strdup:

    push rbp
    mov rbp, rsp

    call ft_strlen
    push rdi; save the src
    mov rdi, rax
    inc rdi ; add one for the null char

    call malloc

    cmp rax, 0
    jz error

    mov rdi, rax
    pop rsi; put the src in the second arg

    call ft_strcpy

    jmp end

error:
    pop rsi; to leave stack as it was

end:

    mov rsp, rbp
    pop rbp
    ret