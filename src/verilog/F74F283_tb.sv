
`timescale 1ns / 100ps
`include "F74F283.sv"

module tb;
    logic [3:0] a, b, s;
    logic ci, co;

    F74F283 dut( a, b, ci, s, co);

    initial begin
        $display("\n", `__FILE__, " - Starting simulation.");
        $dumpfile("./vcd/F74F283_tb.vcd");
        $dumpvars(0, tb);

        a  = 0;
        b  = 0;
        ci = 0;
        for ( integer i = 0; i < 16; i = i + 1) begin
            for ( integer j = 0; j < 16; j = j + 1) begin
                a = i;
                b = j;
                ci = 0;
                #20;
                ci = 1;
                #20;
            end
        end

        #20;
        $display( `__FILE__, " - Test complete!\n");
        $finish;
    end

    initial begin
        //$monitor("Time=%0t, a=%d, b=%d, ci=%b, s=%d, co=%b", $time, a, b, ci, s, co);
    end

endmodule
