cmake_minimum_required(VERSION 3.26)
project(lea_key_schedule C)

set(CMAKE_C_COMPILER "clang")
set(CMAKE_C_STANDARD 99)
set(EXECUTABLE_OUTPUT_PATH ./target)
add_compile_options(-O3 -march=native -Wall -Wextra -Wpedantic)

add_executable(lea_key_schedule main.c)
