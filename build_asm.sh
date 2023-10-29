#!/bin/bash

clang main.c -O3 -S -masm=intel -march=native -fno-asynchronous-unwind-tables -fno-dwarf2-cfi-asm -o ./asm/main.asm