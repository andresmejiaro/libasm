global ft_strcmp

ft_strcmp:

    push rbp
    mov rbp, rsp


counter:
    mov rax, 0
    add rax, [rdi]
    sub rax, [rsi]
    cmp rax, 0
    jnz end
    cmp byte [rdi], 0
    jnz end
    cmp byte [rsi], 0
    jnz end
    inc rsi
    inc rdi
    jmp counter

end:
    mov rsp, rbp
    pop rbp
    ret