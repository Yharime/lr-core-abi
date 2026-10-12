.section .text
.global set_ctx
.global jmp_to
set_ctx:
    pop %rax
    push %rax
    mov %rax,0x38(%rdi)
    mov %rbp,0x00(%rdi)
    mov %rbx,0x08(%rdi)
    mov %r12,0x10(%rdi)
    mov %r13,0x18(%rdi)
    mov %r14,0x20(%rdi)
    mov %r15,0x28(%rdi)
    lea 0x8(%rsp),%rax
    mov %rax,0x30(%rdi)
    mov $0,%rax
    ret
jmp_to:
    mov 0x30(%rdi),%rsp
    mov 0x08(%rdi),%rbx
    mov 0x10(%rdi),%r12
    mov 0x18(%rdi),%r13
    mov 0x20(%rdi),%r14
    mov 0x28(%rdi),%r15
    mov 0x38(%rdi),%rdx 
    mov 0x00(%rdi),%rbp
    mov %rsi,%rax
    jmp *%rdx
