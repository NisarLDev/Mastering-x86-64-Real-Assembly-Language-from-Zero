# makefile for hello_world_course_version.asm

hello: hello.o
		gcc -o hello hello.o -no-pie
hello.o: hello.asm
		nasm -f elf64 -g -F dwarf hello.asm -l hello.lst