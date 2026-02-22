
`timescale 1ns / 10ps
`include "hello.v"

module hello_tb;

    reg A;
    wire B;

hello dut(A,B);

initial begin
    $display("\n", `__FILE__, " - Starting simulation.");
    $dumpfile("./vcd/hello_tb.vcd");
    $dumpvars(0, hello_tb);

    A = 0;
    #20;
    A = 1;
    #20;
    A = 0;
    #20;
    A = 1;

    $display( `__FILE__, " - Test complete!\n");
    $finish;
end



endmodule