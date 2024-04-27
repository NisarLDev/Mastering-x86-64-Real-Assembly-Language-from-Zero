;hello.asm
section .data
	msg db "Hello, world!", 0
section .bss
section .text
	global main
main:
     	mov     rax, 1          ; 1 = write
        mov     rdi, 1          ; 1 = to stdout
        mov     rsi, msg        ; string to display in rsi
        mov     rdx, 13         ; lenght of the string without 0
        syscall                 ; display the string
        mov     rax, 60         ; 60 = eexit
        mov     rdi, 0          ; 0 = success exit code
        syscall                 ; quit

; Compiling and Running for Operating System of 64 bits of processor;
; Compilling with NASM assembler (The Netwide Assembler).
; Compile:
; nasm -f elf64 hello_world_course_version.asm -o hello.o
; Link:
; ld hello.o -o hello
; Run:
; ./hello
