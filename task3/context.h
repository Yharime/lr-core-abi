/* 要求：完整保存程序执行所需上下文；切回后调用者应能继续往下执行。 */
typedef struct {
    void *rbp;
    void *rbx;
    void *r12;
    void *r13;
    void *r14;
    void *r15;
    void *rsp;
    void *rip;
} context_t;
