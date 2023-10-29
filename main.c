#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <x86intrin.h>

#define MFENCE _mm_mfence();
#define LFENCE _mm_lfence();

#define ROUNDKEY_ARRAY_SIZE UINT8_C(96)

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
int main(__attribute__((unused)) int argc, char *argv[]) {
    uint32_t t0, t1, t2, t3, ui;
    uint32_t roundkey_arr[ROUNDKEY_ARRAY_SIZE];
    uint64_t start, end;

    t0 = strtoul(argv[1], NULL, 10);
    t1 = strtoul(argv[2], NULL, 10);
    t2 = strtoul(argv[3], NULL, 10);
    t3 = strtoul(argv[4], NULL, 10);


    MFENCE
    start = __rdtscp(&ui);
    LFENCE

    endian_conversion(t0);
    endian_conversion(t1);
    endian_conversion(t2);
    endian_conversion(t3);

    t0 = rotateLeftBy1(t0 + 3287280091);
    t1 = rotateLeftBy3(t1 + 2279592887);
    t2 = rotateLeftBy6(t2 + 264218479);
    t3 = rotateLeftBy11(t3 + 528436958);
    roundkey_arr[0] = t0;
    roundkey_arr[1] = t1;
    roundkey_arr[2] = t2;
    roundkey_arr[3] = t3;

    t0 = rotateLeftBy1(t0 + 2294601220);
    t1 = rotateLeftBy3(t1 + 294235145);
    t2 = rotateLeftBy6(t2 + 588470290);
    t3 = rotateLeftBy11(t3 + 1176940580);
    roundkey_arr[4] = t0;
    roundkey_arr[5] = t1;
    roundkey_arr[6] = t2;
    roundkey_arr[7] = t3;

    t0 = rotateLeftBy1(t0 + 3884577321);
    t1 = rotateLeftBy3(t1 + 3474187347);
    t2 = rotateLeftBy6(t2 + 2653407399);
    t3 = rotateLeftBy11(t3 + 1011847503);
    roundkey_arr[8] = t0;
    roundkey_arr[9] = t1;
    roundkey_arr[10] = t2;
    roundkey_arr[11] = t3;

    t0 = rotateLeftBy1(t0 + 3338241891);
    t1 = rotateLeftBy3(t1 + 2381516487);
    t2 = rotateLeftBy6(t2 + 468065679);
    t3 = rotateLeftBy11(t3 + 936131358);
    roundkey_arr[12] = t0;
    roundkey_arr[13] = t1;
    roundkey_arr[14] = t2;
    roundkey_arr[15] = t3;

    t0 = rotateLeftBy1(t0 + 1056873916);
    t1 = rotateLeftBy3(t1 + 2113747832);
    t2 = rotateLeftBy6(t2 + 4227495664);
    t3 = rotateLeftBy11(t3 + 4160024033);
    roundkey_arr[16] = t0;
    roundkey_arr[17] = t1;
    roundkey_arr[18] = t2;
    roundkey_arr[19] = t3;

    t0 = rotateLeftBy1(t0 + 2353881160);
    t1 = rotateLeftBy3(t1 + 412795025);
    t2 = rotateLeftBy6(t2 + 825590050);
    t3 = rotateLeftBy11(t3 + 1651180100);
    roundkey_arr[20] = t0;
    roundkey_arr[21] = t1;
    roundkey_arr[22] = t2;
    roundkey_arr[23] = t3;

    t0 = rotateLeftBy1(t0 + 2023695006);
    t1 = rotateLeftBy3(t1 + 4047390012);
    t2 = rotateLeftBy6(t2 + 3799812729);
    t3 = rotateLeftBy11(t3 + 3304658163);
    roundkey_arr[24] = t0;
    roundkey_arr[25] = t1;
    roundkey_arr[26] = t2;
    roundkey_arr[27] = t3;

    t0 = rotateLeftBy1(t0 + 1872262716);
    t1 = rotateLeftBy3(t1 + 3744525432);
    t2 = rotateLeftBy6(t2 + 3194083569);
    t3 = rotateLeftBy11(t3 + 2093199843);
    roundkey_arr[28] = t0;
    roundkey_arr[29] = t1;
    roundkey_arr[30] = t2;
    roundkey_arr[31] = t3;


    t0 = rotateLeftBy1(t0 + 4025080771);
    t1 = rotateLeftBy3(t1 + 3755194247);
    t2 = rotateLeftBy6(t2 + 3215421199);
    t3 = rotateLeftBy11(t3 + 2135875103);
    roundkey_arr[32] = t0;
    roundkey_arr[33] = t1;
    roundkey_arr[34] = t2;
    roundkey_arr[35] = t3;

    t0 = rotateLeftBy1(t0 + 3302360200);
    t1 = rotateLeftBy3(t1 + 2309753105);
    t2 = rotateLeftBy6(t2 + 324538915);
    t3 = rotateLeftBy11(t3 + 649077830);
    roundkey_arr[36] = t0;
    roundkey_arr[37] = t1;
    roundkey_arr[38] = t2;
    roundkey_arr[39] = t3;

    t0 = rotateLeftBy1(t0 + 2314349031);
    t1 = rotateLeftBy3(t1 + 333730767);
    t2 = rotateLeftBy6(t2 + 667461534);
    t3 = rotateLeftBy11(t3 + 1334923068);
    roundkey_arr[40] = t0;
    roundkey_arr[41] = t1;
    roundkey_arr[42] = t2;
    roundkey_arr[43] = t3;

    t0 = rotateLeftBy1(t0 + 4186399686);
    t1 = rotateLeftBy3(t1 + 4077832077);
    t2 = rotateLeftBy6(t2 + 3860696859);
    t3 = rotateLeftBy11(t3 + 3426426423);
    roundkey_arr[44] = t0;
    roundkey_arr[45] = t1;
    roundkey_arr[46] = t2;
    roundkey_arr[47] = t3;

    t0 = rotateLeftBy1(t0 + 4271750206);
    t1 = rotateLeftBy3(t1 + 4248533117);
    t2 = rotateLeftBy6(t2 + 4202098939);
    t3 = rotateLeftBy11(t3 + 4109230583);
    roundkey_arr[48] = t0;
    roundkey_arr[49] = t1;
    roundkey_arr[50] = t2;
    roundkey_arr[51] = t3;

    t0 = rotateLeftBy1(t0 + 1298155660);
    t1 = rotateLeftBy3(t1 + 2596311320);
    t2 = rotateLeftBy6(t2 + 897655345);
    t3 = rotateLeftBy11(t3 + 1795310690);
    roundkey_arr[52] = t0;
    roundkey_arr[53] = t1;
    roundkey_arr[54] = t2;
    roundkey_arr[55] = t3;

    t0 = rotateLeftBy1(t0 + 2669846136);
    t1 = rotateLeftBy3(t1 + 1044724977);
    t2 = rotateLeftBy6(t2 + 2089449954);
    t3 = rotateLeftBy11(t3 + 4178899908);
    roundkey_arr[56] = t0;
    roundkey_arr[57] = t1;
    roundkey_arr[58] = t2;
    roundkey_arr[59] = t3;

    t0 = rotateLeftBy1(t0 + 2557885551);
    t1 = rotateLeftBy3(t1 + 820803807);
    t2 = rotateLeftBy6(t2 + 1641607614);
    t3 = rotateLeftBy11(t3 + 3283215228);
    roundkey_arr[60] = t0;
    roundkey_arr[61] = t1;
    roundkey_arr[62] = t2;
    roundkey_arr[63] = t3;

    t0 = rotateLeftBy1(t0 + 3923493871);
    t1 = rotateLeftBy3(t1 + 3552020447);
    t2 = rotateLeftBy6(t2 + 2809073599);
    t3 = rotateLeftBy11(t3 + 1323179903);
    roundkey_arr[64] = t0;
    roundkey_arr[65] = t1;
    roundkey_arr[66] = t2;
    roundkey_arr[67] = t3;

    t0 = rotateLeftBy1(t0 + 3590621380);
    t1 = rotateLeftBy3(t1 + 2886275465);
    t2 = rotateLeftBy6(t2 + 1477583635);
    t3 = rotateLeftBy11(t3 + 2955167270);
    roundkey_arr[68] = t0;
    roundkey_arr[69] = t1;
    roundkey_arr[70] = t2;
    roundkey_arr[71] = t3;

    t0 = rotateLeftBy1(t0 + 4062832521);
    t1 = rotateLeftBy3(t1 + 3830697747);
    t2 = rotateLeftBy6(t2 + 3366428199);
    t3 = rotateLeftBy11(t3 + 2437889103);
    roundkey_arr[72] = t0;
    roundkey_arr[73] = t1;
    roundkey_arr[74] = t2;
    roundkey_arr[75] = t3;

    t0 = rotateLeftBy1(t0 + 2271463161);
    t1 = rotateLeftBy3(t1 + 247959027);
    t2 = rotateLeftBy6(t2 + 495918054);
    t3 = rotateLeftBy11(t3 + 991836108);
    roundkey_arr[76] = t0;
    roundkey_arr[77] = t1;
    roundkey_arr[78] = t2;
    roundkey_arr[79] = t3;

    t0 = rotateLeftBy1(t0 + 2646359806);
    t1 = rotateLeftBy3(t1 + 997752317);
    t2 = rotateLeftBy6(t2 + 1995504634);
    t3 = rotateLeftBy11(t3 + 3991009268);
    roundkey_arr[80] = t0;
    roundkey_arr[81] = t1;
    roundkey_arr[82] = t2;
    roundkey_arr[83] = t3;

    t0 = rotateLeftBy1(t0 + 1615367245);
    t1 = rotateLeftBy3(t1 + 3230734490);
    t2 = rotateLeftBy6(t2 + 2166501685);
    t3 = rotateLeftBy11(t3 + 38036075);
    roundkey_arr[84] = t0;
    roundkey_arr[85] = t1;
    roundkey_arr[86] = t2;
    roundkey_arr[87] = t3;

    t0 = rotateLeftBy1(t0 + 580810911);
    t1 = rotateLeftBy3(t1 + 1161621822);
    t2 = rotateLeftBy6(t2 + 2323243644);
    t3 = rotateLeftBy11(t3 + 351519993);
    roundkey_arr[88] = t0;
    roundkey_arr[89] = t1;
    roundkey_arr[90] = t2;
    roundkey_arr[91] = t3;

    t0 = rotateLeftBy1(t0 + 1983672216);
    t1 = rotateLeftBy3(t1 + 3967344432);
    t2 = rotateLeftBy6(t2 + 3639721569);
    t3 = rotateLeftBy11(t3 + 2984475843);
    roundkey_arr[92] = t0;
    roundkey_arr[93] = t1;
    roundkey_arr[94] = t2;
    roundkey_arr[95] = t3;


    MFENCE
    end = __rdtscp(&ui);
    LFENCE
    printf("%lu %X %X %X %X\n", (end - start),  t0, t1, t2, t3);

    //io is excluded from measuring
    /*
    FILE *file = fopen("enc_round.keys", "a");
    if (file == NULL) {
        printf("Unable to open/create the file.\n");
        return EXIT_FAILURE;
    }
    fprintf(file, "%u\n%u\n%u\n%u\n", roundkey_arr[0], roundkey_arr[1], roundkey_arr[2], roundkey_arr[3]);
    for(uint8_t i = 1; i < (ROUNDKEY_ARRAY_SIZE/4);  i++){
        fprintf(file, "%u\n%u\n%u\n%u\n", roundkey_arr[i*4], roundkey_arr[(i*4)+1], roundkey_arr[(i*4)+2], roundkey_arr[(i*4)+3]);
    }
    fclose(file);
     */
    return EXIT_SUCCESS;
}



