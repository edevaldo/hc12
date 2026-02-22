
`timescale 1ns / 100ps
`include "F74F283.sv"

// Output is zero is most bits are zero. Output is one if most inputs are one.
module majorityGate (
    input  [4:0] i,
    output       m
);
    logic nc0, nc1, s3, co, init;

    F74F283 U1(
        .a( { i[3], i[2], co & init, i[0]}),
        .b( { i[4], i[2], s3 & init, i[1]}),
        .ci( co & init),
        .s( { s3, m, nc1, nc0}),
        .co( co)
    );

    initial begin
        init = 0;
        #10 init = 1;
    end
endmodule





module tb;
    logic [4:0] in;
    logic       m;

    majorityGate dut( in, m);

    initial begin
        $display("\n", `__FILE__, " - Starting simulation.");
        $dumpfile("./vcd/F74F283_majority_tb.vcd");
        $dumpvars(0, tb);

        in = 0;
        for ( integer i = 0; i < 32; i = i + 1) begin
            in = 0;
            #40
            in = i;
            #40;
        end

        #40;
        $display( `__FILE__, " - Test complete!\n");
        $finish;
    end

    initial begin
        $monitor("Time=%0t, in=%d, m=%d", $time, in, m);
    end

endmodule

