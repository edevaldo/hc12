
`timescale 1ns / 1ns
`include "F74F283.sv"

module tb;
    logic [3:0] a, b, s;
    logic co;

    logic [4:0] in;
    logic [2:0] out;

    logic init;

    F74F283 dut( a, b, s[3] & init, s, co);
    assign a = {in[3:2], 1'b0, in[0]};
    assign b = {in[4], in[2], co & init, in[1]};
    assign out = s[2:0];

    initial begin
        $display("\n", `__FILE__, " - Starting simulation.");
        $dumpfile("./vcd/F74F283_5inputEncoder_tb.vcd");
        $dumpvars(0, tb);

        in = 0;
        init = 0;
        #20 init=1;
        for ( integer i = 0; i < 32; i = i + 1) begin
            in = i;
            #20;
        end

        #20;
        $display( `__FILE__, " - Test complete!\n");
        $finish;
    end

    initial begin
        $monitor("Time=%0t, in=%d, out=%d", $time, in, out);
    end

endmodule



// Makes to carry-save-adders-3-2 out of a 74F283
module two_csa32(
    input  logic [2:0] a1,
    input  logic [2:0] a2,
    output logic [1:0] y1,
    output logic [1:0] y2
);
    logic [3:0] a, b;
    logic [3:0] s;
    logic ci, co;

    assign a = {a2[0], a2[2], 1'b0, a1[0]};
    assign b = {a2[1], a2[2], 1'b0, a1[1]};

    F74F283 U1( a, b, a1[2], s, co);

    assign y1 = s[1:0];
    assign y2 = {co,s[3]};
endmodule



module csa53(
    input  logic [4:0] i,
    output logic [2:0] cnt
);
    logic cin, co;
    logic init;

    F74F283 U1(
        .a( {i[3:2], 1'b0, i[0]}),
        .b( {i[4], i[2], co & init, i[1]}),
        .ci( ci & init),
        .s({ci, cnt[2:0]}),
        .co( co)
    );

    initial begin
        init = 0;
        #10 init = 1;
    end
endmodule



module popcnt16 (
    input  [15:0] i,
    output  [4:0] cnt
);
    logic [2:0] a0, a1;
    logic [1:0] a2, a3;
    logic [3:0] s0, s1;
    logic nc1, nc2;

    csa53 U1( i[4:0], a0[2:0]);
    csa53 U2( i[12:8], a1[2:0]);
    two_csa32 U3( i[7:5], i[15:13], a2[1:0], a3[1:0]);
    F74F283 U4( {1'b0, a0}, {2'b0,a2}, 1'b0, s0, nc1);
    F74F283 U5( {1'b0, a1}, {2'b0,a3}, 1'b0, s1, nc2);
    F74F283 U6( s0, s1, 1'b0, cnt[3:0], cnt[4]);
endmodule



module majorityGate (
    input  [4:0] i,
    output       m
);
    logic nc0, nc1, s3, co;

    F74F283 U1(
        .a( { i[3], i[2], co, i[0]}),
        .b( { i[4], i[2], s3, i[1]}),
        .ci( co),
        .s( { s3, m, nc1, nc0}),
        .co( co)
    );
endmodule
