global ft_strcpy

ft_strcpy:

    push rbp
    mov rbp, rsp
    push rbx

    mov rax, rdi

counter:
    mov bl, [rsi]
    mov [rdi], bl
    cmp byte [rsi], 0
    jz end
    inc rsi
    inc rdi
    jmp counter

end:
    pop rbx
    mov rsp, rbp
    pop rbp
    ret