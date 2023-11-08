#!/bin/bash

./build.sh
./build_script_asm.sh

source env/bin/activate

python3 benchmark.py
