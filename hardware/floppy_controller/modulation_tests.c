
#include <stdio.h>

/* Test if there are two consective ones in n. 
 *   Return true if not.
 */
long long test(long long n)
{
    return n & (n << 1);
}

int main( void)
{
    int valid = 0;
    long long max_n;
    int numbits;

    for( numbits=2; numbits < 12; numbits++)
    {
        max_n = (long long)1 << (numbits*4-7);
        for(long long i = 0; i < max_n; i++)
        {
            if( test(i))
                continue; // Invalid
            valid++;
        }
        printf("Num bits:%d, available slots:%d, valid combinations:%d\n", numbits, numbits*4-7, valid);
        valid = 0;
    }

    return 0;
}

