section .data:
        message: db "Hello World", 0x21, 0xA
        message_length: equ $-message

section .text:
        global main

main:

        ; print hello world
        mov rax, 1
        mov rdi, 1
        mov rsi, message
        mov rdx,message_length
        syscall

        ; exit
        mov rax, 60
        xor rdi,rdi
        syscall
