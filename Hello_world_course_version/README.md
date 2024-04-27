For Compilation:

Compiling and Running for Operating System of 64 bits of processor.
C
ompilling with NASM assembler (The Netwide Assembler);

Manualy:

Compile:

    nasm -f elf64 hello.asm -o hello.o
    
Link:

    ld hello.o -o hello
    
Run:

    ./hello

With one command:

    nasm -f elf64 hello.asm -o hello.o && ld hello.o -o hello && ./hello

With Make tool:

In the folder Hello_world_course_version

    Command: make

    Run the programme:

        ./hello
