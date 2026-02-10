
#include <stdio.h>
#include <stdlib.h>

unsigned char galois28_multiply( unsigned char a, unsigned char b, int rpoly)
{
    unsigned char result = 0;

    while (b)
    {
        result ^= a;
        b = b >> 1;
        a = (a & 0x80) ? (a << 1) ^ rpoly : a << 1; 
    }
    return result;
}

int main( int argc, char** argv)
{
    int found;
    int base  = 11;

    if(argc != 2)
    {
        printf("Usage: %s <integer base>\n", argv[0]);
        return 1;
    }
    base = atoi(argv[1]);
    if(base<1)
    {
        printf("argument needs to be a positive integer.\n");
        return 1;
    }

    printf( "Computing the inverses of all numbers in the Galois field modulo %d:\n", base);
    for ( int i = 1; i < base; i++)
    {
        found = 0;
        for ( int j = 0; j < base; j++)
        {
            if( (j * i) % base == 1)
            {
                printf( "%d->%d\n", i, j);
                if ( found)
                {
                    printf( "Number %d has 2 inverses! %d does not work as a base.\n", i, base);
                    break;
                }
                found = 1;
            }
        }
        if( found==0) printf( "Found no inverse for %d. %d does not work as a base.\n", i, base);
    }

    return 0;
}

