#include <stdio.h>
#include <x86intrin.h>

int main(int argc, char* argv[]) {

    printf("%u\n", _rotl(0xc3efe9db, 0));
    printf("%u\n", _rotl(0xc3efe9db, 1));
    printf("%u\n", _rotl(0xc3efe9db, 2));
    printf("%u\n\n", _rotl(0xc3efe9db, 3));


    printf("%u\n", _rotl(0x44626b02, 1));
    printf("%u\n", _rotl(0x44626b02, 2));
    printf("%u\n", _rotl(0x44626b02, 3));
    printf("%u\n\n", _rotl(0x44626b02, 4));


    printf("%u\n", _rotl(0x79e27c8a, 2));
    printf("%u\n", _rotl(0x79e27c8a, 3));
    printf("%u\n", _rotl(0x79e27c8a, 4));
    printf("%u\n\n", _rotl(0x79e27c8a, 5));


    printf("%u\n", _rotl(0x78df30ec, 3));
    printf("%u\n", _rotl(0x78df30ec, 4));
    printf("%u\n", _rotl(0x78df30ec, 5));
    printf("%u\n\n", _rotl(0x78df30ec, 6));


    printf("%u\n", _rotl(0xc3efe9db, 4));
    printf("%u\n", _rotl(0xc3efe9db, 5));
    printf("%u\n", _rotl(0xc3efe9db, 6));
    printf("%u\n\n", _rotl(0xc3efe9db, 7));


    printf("%u\n", _rotl(0x44626b02, 5));
    printf("%u\n", _rotl(0x44626b02, 6));
    printf("%u\n", _rotl(0x44626b02, 7));
    printf("%u\n\n", _rotl(0x44626b02, 8));

    printf("%u\n", _rotl(0x79e27c8a, 6));
    printf("%u\n", _rotl(0x79e27c8a, 7));
    printf("%u\n", _rotl(0x79e27c8a, 8));
    printf("%u\n\n", _rotl(0x79e27c8a, 9));

    printf("%u\n", _rotl(0x78df30ec, 7));
    printf("%u\n", _rotl(0x78df30ec, 8));
    printf("%u\n", _rotl(0x78df30ec, 9));
    printf("%u\n\n", _rotl(0x78df30ec, 10));

    printf("%u\n", _rotl(0xc3efe9db, 8));
    printf("%u\n", _rotl(0xc3efe9db, 9));
    printf("%u\n", _rotl(0xc3efe9db, 10));
    printf("%u\n\n", _rotl(0xc3efe9db, 11));

    printf("%u\n", _rotl(0x44626b02, 9));
    printf("%u\n", _rotl(0x44626b02, 10));
    printf("%u\n", _rotl(0x44626b02, 11));
    printf("%u\n\n", _rotl(0x44626b02, 12));

    printf("%u\n", _rotl(0x79e27c8a, 10));
    printf("%u\n", _rotl(0x79e27c8a, 11));
    printf("%u\n", _rotl(0x79e27c8a, 12));
    printf("%u\n\n", _rotl(0x79e27c8a, 13));

    printf("%u\n", _rotl(0x78df30ec, 11));
    printf("%u\n", _rotl(0x78df30ec, 12));
    printf("%u\n", _rotl(0x78df30ec, 13));
    printf("%u\n\n", _rotl(0x78df30ec, 14));

    printf("%u\n", _rotl(0xc3efe9db, 12));
    printf("%u\n", _rotl(0xc3efe9db, 13));
    printf("%u\n", _rotl(0xc3efe9db, 14));
    printf("%u\n\n", _rotl(0xc3efe9db, 15));

    printf("%u\n", _rotl(0x44626b02, 13));
    printf("%u\n", _rotl(0x44626b02, 14));
    printf("%u\n", _rotl(0x44626b02, 15));
    printf("%u\n\n", _rotl(0x44626b02, 16));

    printf("%u\n", _rotl(0x79e27c8a, 14));
    printf("%u\n", _rotl(0x79e27c8a, 15));
    printf("%u\n", _rotl(0x79e27c8a, 16));
    printf("%u\n\n", _rotl(0x79e27c8a, 17));

    printf("%u\n", _rotl(0x78df30ec, 15));
    printf("%u\n", _rotl(0x78df30ec, 16));
    printf("%u\n", _rotl(0x78df30ec, 17));
    printf("%u\n\n", _rotl(0x78df30ec, 18));

    printf("%u\n", _rotl(0xc3efe9db, 16));
    printf("%u\n", _rotl(0xc3efe9db, 17));
    printf("%u\n", _rotl(0xc3efe9db, 18));
    printf("%u\n\n", _rotl(0xc3efe9db, 19));

    printf("%u\n", _rotl(0x44626b02, 17));
    printf("%u\n", _rotl(0x44626b02, 18));
    printf("%u\n", _rotl(0x44626b02, 19));
    printf("%u\n\n", _rotl(0x44626b02, 20));

    printf("%u\n", _rotl(0x79e27c8a, 18));
    printf("%u\n", _rotl(0x79e27c8a, 19));
    printf("%u\n", _rotl(0x79e27c8a, 20));
    printf("%u\n\n", _rotl(0x79e27c8a, 21));

    printf("%u\n", _rotl(0x78df30ec, 19));
    printf("%u\n", _rotl(0x78df30ec, 20));
    printf("%u\n", _rotl(0x78df30ec, 21));
    printf("%u\n\n", _rotl(0x78df30ec, 22));

    printf("%u\n", _rotl(0xc3efe9db, 20));
    printf("%u\n", _rotl(0xc3efe9db, 21));
    printf("%u\n", _rotl(0xc3efe9db, 22));
    printf("%u\n\n", _rotl(0xc3efe9db, 23));

    printf("%u\n", _rotl(0x44626b02, 21));
    printf("%u\n", _rotl(0x44626b02, 22));
    printf("%u\n", _rotl(0x44626b02, 23));
    printf("%u\n\n", _rotl(0x44626b02, 24));

    printf("%u\n", _rotl(0x79e27c8a, 22));
    printf("%u\n", _rotl(0x79e27c8a, 23));
    printf("%u\n", _rotl(0x79e27c8a, 24));
    printf("%u\n\n", _rotl(0x79e27c8a, 25));

    printf("%u\n", _rotl(0x78df30ec, 23));
    printf("%u\n", _rotl(0x78df30ec, 24));
    printf("%u\n", _rotl(0x78df30ec, 25));
    printf("%u\n\n", _rotl(0x78df30ec, 26));

    return 0;
}
