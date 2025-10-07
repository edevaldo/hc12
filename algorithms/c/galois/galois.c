
#include <stdio.h>
#include <stdlib.h>

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

