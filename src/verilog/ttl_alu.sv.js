
`timescale 1ns / 100ps

module 74F381(
    input  [3:0] A,             // ALU A input
    input  [3:0] B,             // ALU B input
    input        Cn,            // ALU carry in
    input  [2:0] F,             // ALU operation selection
    output [3:0] S,             // ALU result
    output       Pb,            // ALU carry propagate output
    output       Gb             // ALU carry generate output
);



endmodule
