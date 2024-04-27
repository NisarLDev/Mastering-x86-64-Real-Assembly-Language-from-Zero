# makefile for hello_world_course_version.asm

hello: hello.o
		gcc -o hello_world_course_version hello.o -no-pie
hello.o: hello_world_course_version.asm
		nasm -f elf64 -g -F dwarf hello_world_course_version.asm -l hello.lst