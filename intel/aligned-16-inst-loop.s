        .file   "fibonacci.c"
        .text
        .globl  fibonacci
        .type   fibonacci, @function
fibonacci:
.LFB0:
        nop
        .cfi_startproc
        endbr64
        pushq   %rbp
        .cfi_def_cfa_offset 16
        .cfi_offset 6, -16
        movq    %rsp, %rbp
        .cfi_def_cfa_register 6
        movl    %edi, -20(%rbp)
        movl    $0, -16(%rbp)
        movl    $1, -12(%rbp)
        movl    $0, -8(%rbp)
        jmp     .L2
.L3:
        movl    -16(%rbp), %eax
        movl    %eax, -4(%rbp)
        movl    -12(%rbp), %eax
        addl    %eax, -16(%rbp)
        movl    -4(%rbp), %eax
        movl    %eax, -12(%rbp)
        addl    $1, -8(%rbp)
.L2:
        movl    -8(%rbp), %eax
        cmpl    -20(%rbp), %eax
        jl      .L3
        movl    -16(%rbp), %eax
        popq    %rbp
        .cfi_def_cfa 7, 8
        ret
        .cfi_endproc
.LFE0:
        .size   fibonacci, .-fibonacci
        .section        .rodata
.LC0:
        .string "fibonacci: %d\n"
        .text
        .globl  main
        .type   main, @function
        