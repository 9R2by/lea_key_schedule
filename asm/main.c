#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <x86intrin.h>

#define MFENCE _mm_mfence();
#define LFENCE _mm_lfence();

#define DELTA_ARRAY_SIZE UINT8_C(95)

#define endian_conversion(x) __asm__ volatile ("bswap %0" : "+r" (x))

#define rotateLeftBy1(x) _rotl(x, 1)
#define rotateLeftBy3(x) _rotl(x, 3)
#define rotateLeftBy6(x) _rotl(x, 6)
#define rotateLeftBy11(x) _rotl(x, 11)

/**
 * 
 * Example input: must be a uint32_t value!
 * uint32_t Key: 253635900 1264216440 2274796980 3285377520
 * (0x0f1e2d3c 0x4b5a6978 0x8796a5b4 0xc3d2e1f0)
 *
 * Key as 4 blocks of uint32_t
 * Applied optimizations
 * Deltas are pre rotated and given in decimal, loops are unrolled
 * IO Operations take too much cycles
 * @param argc
 * @param argv
 * @return
 */
int main(__attribute__((unused))int argc, char *argv[]) {
   //register uint32_t t0, t1, t2, t3;
    uint32_t t0, t1, t2, t3;
    uint32_t delta_arr[DELTA_ARRAY_SIZE];
    t0 = strtoul(argv[1], NULL, 10);
    t1 = strtoul(argv[2], NULL, 10);
    t2 = strtoul(argv[3], NULL, 10);
    t3 = strtoul(argv[4], NULL, 10);

    endian_conversion(t0);
    endian_conversion(t1);
    endian_conversion(t2);
    endian_conversion(t3);

    t0 = rotateLeftBy1(t0 + 3287280091);
    t1 = rotateLeftBy3(t1 + 2279592887);
    t2 = rotateLeftBy6(t2 + 264218479);
    t3 = rotateLeftBy11(t3 + 528436958);
    delta_arr[0] = t0;
    delta_arr[1] = t1;
    delta_arr[2] = t2;
    delta_arr[3] = t3;

    t0 = rotateLeftBy1(t0 + 2294601220);
    t1 = rotateLeftBy3(t1 + 294235145);
    t2 = rotateLeftBy6(t2 + 588470290);
    t3 = rotateLeftBy11(t3 + 1176940580);
    delta_arr[4] = t0;
    delta_arr[5] = t1;
    delta_arr[6] = t2;
    delta_arr[7] = t3;

    t0 = rotateLeftBy1(t0 + 3884577321);
    t1 = rotateLeftBy3(t1 + 3474187347);
    t2 = rotateLeftBy6(t2 + 2653407399);
    t3 = rotateLeftBy11(t3 + 1011847503);
    delta_arr[8] = t0;
    delta_arr[9] = t1;
    delta_arr[10] = t2;
    delta_arr[11] = t3;

    t0 = rotateLeftBy1(t0 + 3338241891);
    t1 = rotateLeftBy3(t1 + 2381516487);
    t2 = rotateLeftBy6(t2 + 468065679);
    t3 = rotateLeftBy11(t3 + 936131358);
    delta_arr[12] = t0;
    delta_arr[13] = t1;
    delta_arr[14] = t2;
    delta_arr[15] = t3;

    t0 = rotateLeftBy1(t0 + 1056873916);
    t1 = rotateLeftBy3(t1 + 2113747832);
    t2 = rotateLeftBy6(t2 + 4227495664);
    t3 = rotateLeftBy11(t3 + 4160024033);
    delta_arr[16] = t0;
    delta_arr[17] = t1;
    delta_arr[18] = t2;
    delta_arr[19] = t3;

    t0 = rotateLeftBy1(t0 + 2353881160);
    t1 = rotateLeftBy3(t1 + 412795025);
    t2 = rotateLeftBy6(t2 + 825590050);
    t3 = rotateLeftBy11(t3 + 1651180100);
    delta_arr[20] = t0;
    delta_arr[21] = t1;
    delta_arr[22] = t2;
    delta_arr[23] = t3;

    t0 = rotateLeftBy1(t0 + 2023695006);
    t1 = rotateLeftBy3(t1 + 4047390012);
    t2 = rotateLeftBy6(t2 + 3799812729);
    t3 = rotateLeftBy11(t3 + 3304658163);
    delta_arr[24] = t0;
    delta_arr[25] = t1;
    delta_arr[26] = t2;
    delta_arr[27] = t3;

    t0 = rotateLeftBy1(t0 + 1872262716);
    t1 = rotateLeftBy3(t1 + 3744525432);
    t2 = rotateLeftBy6(t2 + 3194083569);
    t3 = rotateLeftBy11(t3 + 2093199843);
    delta_arr[28] = t0;
    delta_arr[29] = t1;
    delta_arr[30] = t2;
    delta_arr[31] = t3;


    t0 = rotateLeftBy1(t0 + 4025080771);
    t1 = rotateLeftBy3(t1 + 3755194247);
    t2 = rotateLeftBy6(t2 + 3215421199);
    t3 = rotateLeftBy11(t3 + 2135875103);
    delta_arr[32] = t0;
    delta_arr[31] = t1;
    delta_arr[33] = t2;
    delta_arr[34] = t3;

    t0 = rotateLeftBy1(t0 + 3302360200);
    t1 = rotateLeftBy3(t1 + 2309753105);
    t2 = rotateLeftBy6(t2 + 324538915);
    t3 = rotateLeftBy11(t3 + 649077830);
    delta_arr[35] = t0;
    delta_arr[36] = t1;
    delta_arr[37] = t2;
    delta_arr[38] = t3;

    t0 = rotateLeftBy1(t0 + 2314349031);
    t1 = rotateLeftBy3(t1 + 333730767);
    t2 = rotateLeftBy6(t2 + 667461534);
    t3 = rotateLeftBy11(t3 + 1334923068);
    delta_arr[39] = t0;
    delta_arr[40] = t1;
    delta_arr[41] = t2;
    delta_arr[42] = t3;

    t0 = rotateLeftBy1(t0 + 4186399686);
    t1 = rotateLeftBy3(t1 + 4077832077);
    t2 = rotateLeftBy6(t2 + 3860696859);
    t3 = rotateLeftBy11(t3 + 3426426423);
    delta_arr[43] = t0;
    delta_arr[44] = t1;
    delta_arr[45] = t2;
    delta_arr[46] = t3;

    t0 = rotateLeftBy1(t0 + 4271750206);
    t1 = rotateLeftBy3(t1 + 4248533117);
    t2 = rotateLeftBy6(t2 + 4202098939);
    t3 = rotateLeftBy11(t3 + 4109230583);
    delta_arr[47] = t0;
    delta_arr[48] = t1;
    delta_arr[49] = t2;
    delta_arr[50] = t3;

    t0 = rotateLeftBy1(t0 + 1298155660);
    t1 = rotateLeftBy3(t1 + 2596311320);
    t2 = rotateLeftBy6(t2 + 897655345);
    t3 = rotateLeftBy11(t3 + 1795310690);
    delta_arr[51] = t0;
    delta_arr[52] = t1;
    delta_arr[53] = t2;
    delta_arr[54] = t3;

    t0 = rotateLeftBy1(t0 + 2669846136);
    t1 = rotateLeftBy3(t1 + 1044724977);
    t2 = rotateLeftBy6(t2 + 2089449954);
    t3 = rotateLeftBy11(t3 + 4178899908);
    delta_arr[55] = t0;
    delta_arr[56] = t1;
    delta_arr[57] = t2;
    delta_arr[58] = t3;

    t0 = rotateLeftBy1(t0 + 2557885551);
    t1 = rotateLeftBy3(t1 + 820803807);
    t2 = rotateLeftBy6(t2 + 1641607614);
    t3 = rotateLeftBy11(t3 + 3283215228);
    delta_arr[59] = t0;
    delta_arr[60] = t1;
    delta_arr[61] = t2;
    delta_arr[62] = t3;

    t0 = rotateLeftBy1(t0 + 3923493871);
    t1 = rotateLeftBy3(t1 + 3552020447);
    t2 = rotateLeftBy6(t2 + 2809073599);
    t3 = rotateLeftBy11(t3 + 1323179903);
    delta_arr[63] = t0;
    delta_arr[64] = t1;
    delta_arr[65] = t2;
    delta_arr[66] = t3;

    t0 = rotateLeftBy1(t0 + 3590621380);
    t1 = rotateLeftBy3(t1 + 2886275465);
    t2 = rotateLeftBy6(t2 + 1477583635);
    t3 = rotateLeftBy11(t3 + 2955167270);
    delta_arr[67] = t0;
    delta_arr[68] = t1;
    delta_arr[69] = t2;
    delta_arr[70] = t3;

    t0 = rotateLeftBy1(t0 + 4062832521);
    t1 = rotateLeftBy3(t1 + 3830697747);
    t2 = rotateLeftBy6(t2 + 3366428199);
    t3 = rotateLeftBy11(t3 + 2437889103);
    delta_arr[71] = t0;
    delta_arr[72] = t1;
    delta_arr[73] = t2;
    delta_arr[74] = t3;

    t0 = rotateLeftBy1(t0 + 2271463161);
    t1 = rotateLeftBy3(t1 + 247959027);
    t2 = rotateLeftBy6(t2 + 495918054);
    t3 = rotateLeftBy11(t3 + 991836108);
    delta_arr[75] = t0;
    delta_arr[76] = t1;
    delta_arr[77] = t2;
    delta_arr[78] = t3;

    t0 = rotateLeftBy1(t0 + 2646359806);
    t1 = rotateLeftBy3(t1 + 997752317);
    t2 = rotateLeftBy6(t2 + 1995504634);
    t3 = rotateLeftBy11(t3 + 3991009268);
    delta_arr[79] = t0;
    delta_arr[80] = t1;
    delta_arr[81] = t2;
    delta_arr[82] = t3;

    t0 = rotateLeftBy1(t0 + 1615367245);
    t1 = rotateLeftBy3(t1 + 3230734490);
    t2 = rotateLeftBy6(t2 + 2166501685);
    t3 = rotateLeftBy11(t3 + 38036075);
    delta_arr[83] = t0;
    delta_arr[84] = t1;
    delta_arr[85] = t2;
    delta_arr[86] = t3;

    t0 = rotateLeftBy1(t0 + 580810911);
    t1 = rotateLeftBy3(t1 + 1161621822);
    t2 = rotateLeftBy6(t2 + 2323243644);
    t3 = rotateLeftBy11(t3 + 351519993);
    delta_arr[87] = t0;
    delta_arr[88] = t1;
    delta_arr[89] = t2;
    delta_arr[90] = t3;

    t0 = rotateLeftBy1(t0 + 1983672216);
    t1 = rotateLeftBy3(t1 + 3967344432);
    t2 = rotateLeftBy6(t2 + 3639721569);
    t3 = rotateLeftBy11(t3 + 2984475843);
    delta_arr[91] = t0;
    delta_arr[92] = t1;
    delta_arr[93] = t2;
    delta_arr[94] = t3;

    printf("%u %u %u %u\n", delta_arr[91],delta_arr[92], delta_arr[93], delta_arr[94]);
    return EXIT_SUCCESS;
}



