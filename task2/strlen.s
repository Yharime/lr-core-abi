.section .text 
.global my_strlen
my_strlen:
    push %rbp
    mov %rsp,%rbp
    mov $0,%rdx
    jmp check
check:
    mov (%rdi,%rdx),%al
    test %al,%al
    jne not_empty 
    pop %rbp
    mov %rdx,%rax
    ret 
not_empty:
    add $1,%rdx
    jmp check