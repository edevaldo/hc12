
Are GALs efficient to implement a discreete barrel shifter?

Input signals:
data[15:0]      D[15:0]
~left/right     ~L/R
~logic/arith    ~L/A
~shift/rotate   ~S/R
shamt[3:0]
~oe             ~OE

shl rd, #0-15
rol
shr
asr
ror

brev & shift right: brevshr rd, #amnt (all hardware should be there already)
byte swap: bswap rd, rs (It is a rotate by 8 to any direction)
nibble swap: nswap rd, rd (quite different)
popcnt: popcnt rd, rs (quite different)
ff1: ff1 rd, rs (quite different yet)

Note: Need to add output flags: at least carry and zero should be affected.
Zero: should be set when result is zero.
Carry: Receives bit next to Y15 or Y0 depending on shift direction.

Barrel Shifter:

Y0 := Y0 & shamt == 4'b0000 +
      Y1 & shamt == 4'b0001 & ~L/R == 1'b0

Carry generation:
C     0   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
shl   0 I15 I14 I13 I12 I11 I10  I9  I8  I7  I6  I5  I4  I3  I2  I1
rol   0 I15 I14 I13 I12 I11 I10  I9  I8  I7  I6  I5  I4  I3  I2  I1
shr   0  I0  I1  I2  I3  I4  I5  I6  I7  I8  I9 I10 I11 I12 I13 I14  
asr   0  I0  I1  I2  I3  I4  I5  I6  I7  I8  I9 I10 I11 I12 I13 I14
ror   0  I0  I1  I2  I3  I4  I5  I6  I7  I8  I9 I10 I11 I12 I13 I14

Barrel shifter:
Y0    0   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
shl  I0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
rol  I0 I15 I14 I13 I12 I11 I10  I9  I8  I7  I6  I5  I4  I3  I2  I1
shr  I0  I1  I2  I3  I4  I5  I6  I7  I8  I9 I10 I11 I12 I13 I14 I15  
asr  I0  I1  I2  I3  I4  I5  I6  I7  I8  I9 I10 I11 I12 I13 I14 I15
ror  I0  I1  I2  I3  I4  I5  I6  I7  I8  I9 I10 I11 I12 I13 I14 I15

Y1    0   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
shl  I1  I0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
rol  I1  I0 I15 I14 I13 I12 I11 I10  I9  I8  I7  I6  I5  I4  I3  I2
shr  I1  I2  I3  I4  I5  I6  I7  I8  I9 I10 I11 I12 I13 I14 I15   0  
asr  I1  I2  I3  I4  I5  I6  I7  I8  I9 I10 I11 I12 I13 I14 I15 I15
ror  I1  I2  I3  I4  I5  I6  I7  I8  I9 I10 I11 I12 I13 I14 I15  I0

Y2    0   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
shl  I2  I1  I0   0   0   0   0   0   0   0   0   0   0   0   0   0
rol  I2  I1  I0 I15 I14 I13 I12 I11 I10  I9  I8  I7  I6  I5  I4  I3
shr  I2  I3  I4  I5  I6  I7  I8  I9 I10 I11 I12 I13 I14 I15   0   0
asr  I2  I3  I4  I5  I6  I7  I8  I9 I10 I11 I12 I13 I14 I15 I15 I15
ror  I2  I3  I4  I5  I6  I7  I8  I9 I10 I11 I12 I13 I14 I15  I0  I1

Y3    0   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
shl  I3  I2  I1  I0   0   0   0   0   0   0   0   0   0   0   0   0
rol  I3  I2  I1  I0 I15 I14 I13 I12 I11 I10  I9  I8  I7  I6  I5  I4
shr  I3  I4  I5  I6  I7  I8  I9 I10 I11 I12 I13 I14 I15   0   0   0
asr  I3  I4  I5  I6  I7  I8  I9 I10 I11 I12 I13 I14 I15 I15 I15 I15
ror  I3  I4  I5  I6  I7  I8  I9 I10 I11 I12 I13 I14 I15  I0  I1  I2

Y4    0   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
shl  I4  I3  I2  I1  I0   0   0   0   0   0   0   0   0   0   0   0
rol  I4  I3  I2  I1  I0 I15 I14 I13 I12 I11 I10  I9  I8  I7  I6  I5
shr  I4  I5  I6  I7  I8  I9 I10 I11 I12 I13 I14 I15   0   0   0   0
asr  I4  I5  I6  I7  I8  I9 I10 I11 I12 I13 I14 I15 I15 I15 I15 I15
ror  I4  I5  I6  I7  I8  I9 I10 I11 I12 I13 I14 I15  I0  I1  I2  I3

Y5    0   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
shl  I5  I4  I3  I2  I1  I0   0   0   0   0   0   0   0   0   0   0
rol  I5  I4  I3  I2  I1  I0 I15 I14 I13 I12 I11 I10  I9  I8  I7  I6
shr  I5  I6  I7  I8  I9 I10 I11 I12 I13 I14 I15   0   0   0   0   0
asr  I5  I6  I7  I8  I9 I10 I11 I12 I13 I14 I15 I15 I15 I15 I15 I15
ror  I5  I6  I7  I8  I9 I10 I11 I12 I13 I14 I15  I0  I1  I2  I3  I4

Y6    0   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
shl  I6  I5  I4  I3  I2  I1  I0   0   0   0   0   0   0   0   0   0
rol  I6  I5  I4  I3  I2  I1  I0 I15 I14 I13 I12 I11 I10  I9  I8  I7
shr  I6  I7  I8  I9 I10 I11 I12 I13 I14 I15   0   0   0   0   0   0
asr  I6  I7  I8  I9 I10 I11 I12 I13 I14 I15 I15 I15 I15 I15 I15 I15
ror  I6  I7  I8  I9 I10 I11 I12 I13 I14 I15  I0  I1  I2  I3  I4  I5

Y7    0   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
shl  I7  I6  I5  I4  I3  I2  I1  I0   0   0   0   0   0   0   0   0
rol  I7  I6  I5  I4  I3  I2  I1  I0 I15 I14 I13 I12 I11 I10  I9  I8
shr  I7  I8  I9 I10 I11 I12 I13 I14 I15   0   0   0   0   0   0   0
asr  I7  I8  I9 I10 I11 I12 I13 I14 I15 I15 I15 I15 I15 I15 I15 I15
ror  I7  I8  I9 I10 I11 I12 I13 I14 I15  I0  I1  I2  I3  I4  I5  I6

Y8    0   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
shl  I8  I7  I6  I5  I4  I3  I2  I1  I0   0   0   0   0   0   0   0
rol  I8  I7  I6  I5  I4  I3  I2  I1  I0 I15 I14 I13 I12 I11 I10  I9
shr  I8  I9 I10 I11 I12 I13 I14 I15   0   0   0   0   0   0   0   0
asr  I8  I9 I10 I11 I12 I13 I14 I15 I15 I15 I15 I15 I15 I15 I15 I15
ror  I8  I9 I10 I11 I12 I13 I14 I15  I0  I1  I2  I3  I4  I5  I6  I7 

Y9    0   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
shl  I9  I8  I7  I6  I5  I4  I3  I2  I1  I0   0   0   0   0   0   0
rol  I9  I8  I7  I6  I5  I4  I3  I2  I1  I0 I15 I14 I13 I12 I11 I10
shr  I9 I10 I11 I12 I13 I14 I15   0   0   0   0   0   0   0   0   0
asr  I9 I10 I11 I12 I13 I14 I15 I15 I15 I15 I15 I15 I15 I15 I15 I15
ror  I9 I10 I11 I12 I13 I14 I15  I0  I1  I2  I3  I4  I5  I6  I7  I8

Y10   0   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
shl I10  I9  I8  I7  I6  I5  I4  I3  I2  I1  I0   0   0   0   0   0
rol I10  I9  I8  I7  I6  I5  I4  I3  I2  I1  I0 I15 I14 I13 I12 I11
shr I10 I11 I12 I13 I14 I15   0   0   0   0   0   0   0   0   0   0
asr I10 I11 I12 I13 I14 I15 I15 I15 I15 I15 I15 I15 I15 I15 I15 I15
ror I10 I11 I12 I13 I14 I15  I0  I1  I2  I3  I4  I5  I6  I7  I8  I9

Y11   0   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
shl I11 I10  I9  I8  I7  I6  I5  I4  I3  I2  I1  I0   0   0   0   0
rol I11 I10  I9  I8  I7  I6  I5  I4  I3  I2  I1  I0 I15 I14 I13 I12
shr I11 I12 I13 I14 I15   0   0   0   0   0   0   0   0   0   0   0
asr I11 I12 I13 I14 I15 I15 I15 I15 I15 I15 I15 I15 I15 I15 I15 I15
ror I11 I12 I13 I14 I15  I0  I1  I2  I3  I4  I5  I6  I7  I8  I9 I10

Y12   0   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
shl I12 I11 I10  I9  I8  I7  I6  I5  I4  I3  I2  I1  I0   0   0   0
rol I12 I11 I10  I9  I8  I7  I6  I5  I4  I3  I2  I1  I0 I15 I14 I13
shr I12 I13 I14 I15   0   0   0   0   0   0   0   0   0   0   0   0
asr I12 I13 I14 I15 I15 I15 I15 I15 I15 I15 I15 I15 I15 I15 I15
ror I12 I13 I14 I15  I0  I1  I2  I3  I4  I5  I6  I7  I8  I9 I10

Y13   0   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
shl I13 I12 I11 I10  I9  I8  I7  I6  I5  I4  I3  I2  I1  I0   0   0
rol I13 I12 I11 I10  I9  I8  I7  I6  I5  I4  I3  I2  I1  I0 I15 I14
shr I13 I14 I15   0   0   0   0   0   0   0   0   0   0   0   0   0
asr I13 I14 I15 I15 I15 I15 I15 I15 I15 I15 I15 I15 I15 I15 I15 I15
ror I13 I14 I15  I0  I1  I2  I3  I4  I5  I6  I7  I8  I9 I10 I11 I12

Y14   0   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
shl I14 I13 I12 I11 I10  I9  I8  I7  I6  I5  I4  I3  I2  I1  I0   0
rol I14 I13 I12 I11 I10  I9  I8  I7  I6  I5  I4  I3  I2  I1  I0 I15
shr I14 I15   0   0   0   0   0   0   0   0   0   0   0   0   0   0
asr I14 I15 I15 I15 I15 I15 I15 I15 I15 I15 I15 I15 I15 I15 I15 I15
ror I14 I15  I0  I1  I2  I3  I4  I5  I6  I7  I8  I9 I10 I11 I12 I13

Y15   0   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
shl I15 I14 I13 I12 I11 I10  I9  I8  I7  I6  I5  I4  I3  I2  I1  I0
rol I15 I14 I13 I12 I11 I10  I9  I8  I7  I6  I5  I4  I3  I2  I1  I0
shr I15   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
asr I15 I15 I15 I15 I15 I15 I15 I15 I15 I15 I15 I15 I15 I15 I15 I15
ror I15  I0  I1  I2  I3  I4  I5  I6  I7  I8  I9 I10 I11 I12 I13 I14

  Barrel shifters usually have a first stage that reverse all bits depending on
the direction of the shift. This is usually followed by stages that shift 0 or
8, 4 , 2, 1. Then a final stage that reverses bits back if needed and mask bits
that would be cleared by the shift operation.

How many stages can we implement in a GAL?
22V10 GALs have different numberf of product terms depending on the output.
They range from 8 to 16 in steps of 2 and have two of each. 8,10,12,14,16.

Lets see what such first stage would look like:

Barrel shifter:
Y0    0   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
shl  I0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
rol  I0 I15 I14 I13 I12 I11 I10  I9  I8  I7  I6  I5  I4  I3  I2  I1
shr  I0  I1  I2  I3  I4  I5  I6  I7  I8  I9 I10 I11 I12 I13 I14 I15  
asr  I0  I1  I2  I3  I4  I5  I6  I7  I8  I9 I10 I11 I12 I13 I14 I15
ror  I0  I1  I2  I3  I4  I5  I6  I7  I8  I9 I10 I11 I12 I13 I14 I15



S0: First stage bit reverse when left:
__l  I0  I1  I2  I3  I4  I5  I6  I7  I8  I9 I10 I11 I12 I13 I14 I15
__r I15 I14 I13 I12 I11 I10  I9  I8  I7 II6  I5  I4  I3  I2  I1  I0

S1 - Shift 8 right:
nop S15 S14 S13 S12 S11 S10  S9  S8  S7  S6  S5  S4  S3  S2  S1  S0
shl   0   0   0   0   0   0   0   0 S15 S14 S13 S12 S11 S10  S9  S8
rol  S7  S6  S5  S4  S3  S2  S1  S0 S15 S14 S13 S12 S11 S10  S9  S8
shr   0   0   0   0   0   0   0   0 S15 S14 S13 S12 S11 S10  S9  S8
asr S15 S15 S15 S15 S15 S15 S15 S15 S15 S14 S13 S12 S11 S10  S9  S8
ror  S7  S6  S5  S4  S3  S2  S1  S0 S15 S14 S13 S12 S11 S10  S9  S8

nop S15 S14 S13 S12 S11 S10  S9  S8  S7  S6  S5  S4  S3  S2  S1  S0
sh_   0   0   0   0   0   0   0   0 S15 S14 S13 S12 S11 S10  S9  S8
asr S15 S15 S15 S15 S15 S15 S15 S15 S15 S14 S13 S12 S11 S10  S9  S8
ro_  S7  S6  S5  S4  S3  S2  S1  S0 S15 S14 S13 S12 S11 S10  S9  S8

shl  I7  I6  I5  I4  I3  I2  I1  I0   0   0   0   0   0   0   0   0
rol  I7  I6  I5  I4  I3  I2  I1  I0 I15 I14 I13 I12 I11 I10  I9  I8
shr  I8  I9 I10 I11 I12 I13 I14 I15  I0  I1  I2  I3  I4  I5  I6  I7
asr  I8  I9 I10 I11 I12 I13 I14 I15  I0  I1  I2  I3  I4  I5  I6  I7
ror  I8  I9 I10 I11 I12 I13 I14 I15  I0  I1  I2  I3  I4  I5  I6  I7

S1 - Shift 4 right: