#!/bin/bash

# ./build_asm.sh
./build.sh

source env/bin/activate

python3 benchmark.py
