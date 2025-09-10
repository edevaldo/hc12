
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define OPER_LOGICAL_SHIFT         1
#define OPER_ARITHMETIC_SHIFT      2
#define OPER_ROTATE                4
#define OPER_DIR_LEFT  0
#define OPER_DIR_RIGHT 1

/*
 * To Do:
 *     - rotates work for large rotation numbers and negatives.
 *     - shl for negative numbers and 16 and larger does not work.
 *     - shr for negative numbers and 16 and larger does not work.
 *     - asr for negative numbers and 16 and larger does not work.
 *     - bit reverse and shift right with optional add instruction.
 *     - nibble swap operation?
 * Ideas:
 *     - bit reverse stages not controlled only by direction:
 *         - brev <= sign(n) ^ ~OPER_DIR
 *     - asr of a negative number needs to become a shl.
 *     - asr of numbers 16 and larger should have all bits as I15.
 *     - shr, shl of numbers 16 or larger should result in 0. 
 */

void set_zero( char* s)
{
    *s++ = ' ';
    *s++ = ' ';
    *s++ = ' ';
    *s++ = '0';
}

void copy( char* d, char* s)
{
    *d++ = *s++;
    *d++ = *s++;
    *d++ = *s++;
    *d++ = *s++;
}

void swap( char* a, char* b)
{
    char aux;

    for( int i = 0; i < 4; i++)
    {
        aux = *b;
        *b++ = *a;
        *a++ = aux;
    }
}

void init( char vector[14][4])
{
    char c, d;
    int n;

    for( int i = 0; i < 16; i++)
    {
        vector[i][0] = ' ';
        if( i >= 10)
        {
            c = 'I';
            d = '1';
            n = i - 10;
        } else {
            c = ' ';
            d = 'I';
            n = i;
        }
        vector[i][1] = c;
        vector[i][2] = d;
        vector[i][3] = '0'+ n;
    }
}

void bit_reverse( char vector[16][4], int dir)
{
    if( dir == OPER_DIR_LEFT)
    {
        for( int i = 0; i<8; i++)
            swap( vector[i], vector[15-i]);
    }
}

void first_bs_stage( char vector[16][4], int oper, int amt)
{
    if( amt & 8)
    {
        for( int i = 0; i < 8; i++)
            swap( vector[i], vector[(i+8)&0x0F]);
        if( oper == OPER_LOGICAL_SHIFT)
        {
            for( int i = 15; i >= 8; i--)
                set_zero( vector[i]);
        }
        if( oper == OPER_ARITHMETIC_SHIFT)
        {
            for( int i = 15; i >= 8; i--)
                copy( vector[i], " -->");
        }
    }
}

void second_bs_stage( char vector[16][4], int oper, int amt)
{
    char aux_a[4], aux_b[4];

    if( amt & 4)
    {
        for( int i = 15; i >= 12; i--)
        {
            copy( aux_a, vector[i-4]);
            copy( vector[i-4], vector[i]);
            copy( aux_b, vector[i-8]);
            copy( vector[i-8], aux_a);
            copy( aux_a, vector[i-12]);
            copy( vector[i-12], aux_b);
            copy( vector[i], aux_a);
        }
        if( oper == OPER_LOGICAL_SHIFT)
            for( int i = 15; i >= 12; i--)
                set_zero( vector[i]);
        if( oper == OPER_ARITHMETIC_SHIFT)
            for( int i = 15; i >= 12; i--)
                copy( vector[i], " -->");
    }
}

void third_bs_stage( char vector[16][4], int oper, int amt)
{
    char aux_a[4], aux_b[4];

    if( amt & 2)
    {
        for( int start = 15; start >= 14; start--)
        {
            copy( aux_b, vector[start]);
            for( int i = start; i >= 0; i-=2)
            {
                copy( aux_a, vector[(i-2)&0x0F]);
                copy( vector[(i-2)&0x0F], aux_b);
                copy( aux_b, aux_a);
            }
        }
        if( oper == OPER_LOGICAL_SHIFT)
            for( int i = 15; i >= 14; i--)
                set_zero( vector[i]);
        if( oper == OPER_ARITHMETIC_SHIFT)
            for( int i = 15; i >= 14; i--)
                copy( vector[i], " -->");
    }
}

void fourth_bs_stage( char vector[16][4], int oper, int amt)
{
    char aux_a[4], aux_b[4];

    if( amt & 1)
    {
        for( int start = 15; start >= 15; start--)
        {
            copy( aux_b, vector[start]);
            for( int i = start; i >= 0; i--)
            {
                copy( aux_a, vector[(i-1)&0x0F]);
                copy( vector[(i-1)&0x0F], aux_b);
                copy( aux_b, aux_a);
            }
        }
        if( oper == OPER_LOGICAL_SHIFT)
            set_zero( vector[15]);
        if( oper == OPER_ARITHMETIC_SHIFT)
            copy( vector[15], " -->");
    }
}

void print_vector( char Vector[17][4])
{
    for( int i = 0; i < 16; i++)
        for( int j = 0; j < 4; j++)
            putchar( Vector[15-i][j]);
}

int main( int argc, char** argv)
{
    char Input[16][4];
    int oper;
    int dir;
    int amt;

    if(argc < 3)
    {
        printf("Usage:%s <operation> <integer_value>\n", argv[0]);
        return 1;
    }

    if( strcmp( argv[1], "shl") == 0)
    {
        oper = OPER_LOGICAL_SHIFT;
        dir = OPER_DIR_LEFT;
    } else if( strcmp(argv[1], "rol") == 0)
    {
        oper = OPER_ROTATE;
        dir = OPER_DIR_LEFT;
    } else if( strcmp(argv[1], "shr") == 0)
    {
        oper = OPER_LOGICAL_SHIFT;
        dir = OPER_DIR_RIGHT;
    } else if( strcmp(argv[1], "asr") == 0)
    {
        oper = OPER_ARITHMETIC_SHIFT;
        dir = OPER_DIR_RIGHT;
    } else if( strcmp(argv[1], "ror") == 0)
    {
        oper = OPER_ROTATE;
        dir = OPER_DIR_RIGHT;
    } else {
        printf( "[ERROR:] Operation %s not recognized!\n", argv[1]);
        return 1;
    }

    amt = atoi(argv[2]);

    init( Input);
    printf( "Init: ");
    init( Input);
    print_vector( Input);
    printf( "\n");
    printf( "BRev: ");
    bit_reverse( Input, dir);
    print_vector( Input);
    printf( "\n");
    printf( "1st:  ");
    first_bs_stage( Input, oper, amt);
    print_vector( Input);
    printf( "\n");
    printf( "2nd:  ");
    second_bs_stage( Input, oper, amt);
    print_vector( Input);
    printf( "\n");
    printf( "3rd:  ");
    third_bs_stage( Input, oper, amt);
    print_vector( Input);
    printf( "\n");
    printf( "4th:  ");
    fourth_bs_stage( Input, oper, amt);
    print_vector( Input);
    printf( "\n");
    printf( "BRev: ");
    bit_reverse( Input, dir);
    print_vector( Input);
    printf( "\n");

    return 0;
}

