#!/bin/bash


clang main_with_cycles.c -O3 -S -masm=intel -march=native -Wall -Wextra -Wpedantic -fno-asynchronous-unwind-tables -fno-dwarf2-cfi-asm -o main_with_cycles.asm
clang main.c -O3 -S -masm=intel -march=native -Wall -Wextra -Wpedantic -fno-asynchronous-unwind-tables -fno-dwarf2-cfi-asm -o main.asm