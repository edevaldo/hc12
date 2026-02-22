
`timescale 1ns / 100ps
`include "F74F283.sv"

module tb;
    logic [3:0] d, y;
    logic nOE;

    ttl_74F244 dut( y, d, nOE);

    initial begin
        $display("\n", `__FILE__, " - Starting simulation.");
        $dumpfile("./vcd/ttl_74F244_tb.vcd");
        $dumpvars(0, tb);

        d  = 4'b1010;
        nOE = 1'b0;

        #20 nOE = 1'b1;
        #20 nOE = 1'b0;
        #20 d   = 4'b0101; 

        #20;
        $display( `__FILE__, " - Test complete!\n");
        $finish;
    end

    initial begin
        $monitor("Time=%0t, d=%b, nOE=%b, y=%b", $time, d, nOE, y);
    end
endmodule
