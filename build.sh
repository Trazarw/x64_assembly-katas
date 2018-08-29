#! /bin/bash
nasm -f elf64 $1.asm &&
ld -m elf_x86_64 -s -o $1_x64 $1.o &&
rm $1.o && ./$1_x64 && rm $1_x64