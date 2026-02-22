
`timescale 1ns / 100ps

module 74F381(
    input  [3:0] A,             // ALU A input
    input  [3:0] B,             // ALU B input
    input        Cn,            // ALU carry in
    input  [2:0] S,             // ALU operation selection
    output [3:0] F,             // ALU result
    output       Pb,            // ALU carry propagate output
    output       Gb             // ALU carry generate output
);

/* Function Select Table:
 *  S   Op
 *  0   Clear
 *  1   B minus A
 *  2   A minus B
 *  3   A plus B
 *  4   A xor B
 *  5   A or B
 *  6   A and B
 *  7   Preset
 */

    // Delay: (rise, fall, turn-off)
    // Delay: #( rise min : rise typ : rise max, fall min: fall typ: fall max, tur-off min: turn-off typ: turn-off max)
    assign #( 2.5:8.1:13.0, 2.5:5.7:9.0) c = Cn;
    assign #( 4.0:10.4:16.0, 3.5:8.2:12.0) a = A;
    assign #( 4.0:10.4:16.0, 3.5:8.2:12.0) b = B;
    assign #( 4.5:8.3:21.5, 4.0:8.2:16.0) s = S;

    wire [4:0] f; 

    assign f = {A[4],A} + {B[4],B};

always @( a or b or c or s) begin
    case( S) begin
        3'b000: F <= 4'b0; P <= 1'b0; G <= 1'b0;
        3'b001: 
        3'b010:
        3'b011:
        3'b100: F <= A ^ B;  P <= 1'b0; G <= 1'b0;
        3'b101: F <= A | B;  P <= 1'b0; G <= 1'b0;
        3'b110: F <= A & B;  P <= 1'b0; G <= 1'b0;
        3'b111: F <= 4'b1111;  P <= 1'b0; G <= 1'b0;
    endcase
end

endmodule




module 74F381_74F382(
    input  [3:0] A,             // ALU A input
    input  [3:0] B,             // ALU B input
    input        Cn,            // ALU carry in
    input  [2:0] S,             // ALU operation selection
    output [3:0] F,             // ALU result
    output       Pb,            // ALU carry propagate output
    output       Gb             // ALU carry generate output
    output       Co,
    output       OVR
);
    wire [3:0] Ab, Bb;
    wire [2:0] Sb, s;

    not( Bb[0], B[0]);
    not( Ab[0], A[0]);
    not( Bb[1], B[1]);
    not( Ab[1], A[1]);
    not( Bb[2], B[2]);
    not( Ab[2], A[2]);
    not( Bb[3], B[3]);
    not( Ab[4], A[4]);

    not( Sb[0], S[0]);
    not( Sb[1], S[1]);
    not( Sb[2], S[2]);

    not( s[0], Sb[0]);
    not( s[1], Sb[1]);
    not( s[2], Sb[2]);

    and( y1, Ab[0], Bb[0], y32, y31); // 1
    and( y2, y30, y32, y33, Bb[0], A[0]); // 2
    and( y3, y31, y33, B[0], Ab[0]); // 3
    nor( y37, Y1, Y2, Y3); // 37

    and( y4, Ab[0], Bb[0], y30, y32, y36); // 4
    and( y5, ); // 5
    and( y6, ); // 6
    and( y7, ); // 7
    nor( y38, y4, y5, y6, y7); // 38

    and( y29, Sb[0], Sb[1]); // 29
    nand( y30, Sb[0], Sb[1]); // 30
    nand( y31, Sb[1], Sb[1]); // 31
    nand( y32, Sb[0], s[1]); // 32
    nand( y33, s[0], s[1], Sb[2]); // 33
    and( y34, Sb[1], s[2]); // 34
    and( y35, Sb[0], s[2]); // 35
    nor( y36, y35, y34); // 36

endmodule





