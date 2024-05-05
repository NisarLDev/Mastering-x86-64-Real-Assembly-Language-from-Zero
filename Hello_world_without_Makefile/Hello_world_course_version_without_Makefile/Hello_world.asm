section .data
    hello db 'Hello, World!' 0 ; Null-terminated string

section .text
    global _start

_start:

    ; Write Hello, World! to stdout (file descriptor 1)
    mov rax, 1      ; syscall number for sys_write
    mov rdi, 1      ; file descriptor 1 (stdout)
    mov rsi, hello  ; pointer to the string to Write
    mov rdx, 13     ; length of the string
    syscall         ; invoke the system call

    ; exit the programme

    mov rax, 60     ; syscall number for sys_exit
    xor rdi, rdi    ; return code 0
    syscall         ; invoke the system call

; End of code
; End of file