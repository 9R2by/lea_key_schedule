# LEA 128-Bit Key Schedule For x86(-64)

### LEA Key Schedule

### Dependencies
* clang 17.0.1

* cmake 3.26
  * pip install cmake
  * *pip* shall be used to get a more or less recent version of cmake,
which is sometimes not given via the packages. At least version 3.26 is needed.

Note: You don't have to use *cmake*, but it is more convenient.
If you want to *clang* by manually:
```bash
clang main.c -O3 -march=icelake-client -Wall -Wextra -Wpedantic -o ./target/lea_key_schedule
```
### Building from source

Execute the shell script:
````bash
build.sh
````

### Example

```bash
cd target
./ley_key_schedule 253635900 1264216440 2274796980 3285377520
```

### Program behavior
The program should print the cycles followed by a 4x32bit block of
unsigned integers that contain the computed values from the input.
To that it should create a 

### Testvectors

On the given input the output shall be as described:

Input
```
253635900 1264216440 2274796980 3285377520
```

Output:   
```
x 200715706 3748201117 1534210138 3410477471
```
x is a long unsigned integer that contains the numbers of cycles as measured
by the contained benchmark code. The numbers that are right from the x are
part of the last round of the key schedule. These are there for technical
reasons and can be ignored.

### Optimizations
The implemented algorithm is a variant from the described algorithm
in the paper [LEA: A 128-Bit Block Cipher for Fast Encryption on Common Processors](https://seed.kisa.or.kr/kisa/algorithm/EgovLeaInfo.do).

The software is compiled with optimizations for the 10th generation of
Intel processors, namely *icelake-client*.
If you want to run the software with these settings, your processor
needs to at least support all the features of the Ice Lake cpus. I tested it on Tiger Lake and
Alder Lake processors without any issues.
If you want to run it on another architecture please change the *march* to your architecture
or if you run it locally to *native*.
Please be aware that *x86 intrinsics* are used and also *bswap* as inline assembly.
If your processor does not support these, you might need to adapt the code.

Some but not all optimizations done include:
 * Loop unrolling
 * Pre rotating all delta values 
 * (Using inline assembly) 

### Why Ice Lake?

To be able to manually benchmark the produced code by the compiler,
instruction throughput and latency data is needed. The latest available data
for a processor generation from Intel is [Ice Lake](https://www.intel.com/content/www/us/en/developer/articles/technical/intel-sdm.html),
available directly for download [here](https://www.intel.com/content/www/us/en/develop/download/10th-generation-intel-core-processor-instruction-throughput-and-latency-docs.html).
As of 05.11.2023 I haven't found more recent data.

### Tested On

* Fedora 38
* Debian 12.2

### Note
Only the parts of the algorithm that are necessary for the key
are cycle measured, not the input and output operations.
The reason for this is, that this code is optimized for generating output files
that can be an anaylzed by *dieharder*.
Especially for the key schedule the reason is that usually the schedule is part
of the encryption or is called by other software as a library function,
so only the pure algorithm execution time is relevant. 
