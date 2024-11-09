global ft_strlen

ft_strlen:

    push rbp
    mov rbp, rsp

    mov rax, 0

counter:
    cmp byte [rdi], 0
    jz end
    inc rax
    inc rdi
    jmp counter

end:
    mov rsp, rbp
    pop rbp
    ret