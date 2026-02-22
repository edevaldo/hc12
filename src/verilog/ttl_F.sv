
module F74F283(
    input logic  [3:0] a,
    input logic  [3:0] b,
    input logic        ci,
    output logic [3:0] s,
    output logic       co
);
    logic [4:0] sum;
    logic [3:0] a_dlyd, b_dlyd;

    /* Delays are added to inputs and output to match datasheet values as 
       close as possible. When Tphl and Tplh differ, the worst is taken.
       This is done because a transition at one input may cause an output
       to go high or low. A more detailed model would be needed to capture
       that behavior correctly. */
    buf #(2:4:6) I0( ci_dlyd, ci);
    buf #(2:4:6) I1[3:0]( a_dlyd, a);
    buf #(2:4:6) I2[3:0]( b_dlyd, b);

    assign sum = {1'b0,a_dlyd} + {1'b0,b_dlyd} + ci_dlyd;

    buf #(4:3:4.5) I3[3:0]( s, sum[3:0]);
    buf #(1.5:1.7:2.5) I4( co, sum[4]);
endmodule



module ttl_74F377(
    input  logic       clk,
    input  logic       nEN,
    input  logic [7:0] D,
    output logic [7:0] Q
);
logic Qi;

always_ff @(posedge clk) begin
    if (clk && nEN == 1'b0)
        Qi <= D;
end

assign #(3.0:6.0:7.5,4.0:7.0:9.0) Q = Qi;

    specify
        // $setuphold(reference, data, setup_time, hold_time)
        $setuphold(posedge clk, D, 3.5, 1.0); 
        $setuphold(posedge clk, nEN, 4.1, 2.0); 
    endspecify
endmodule



module ttl_74F244(
    output logic [3:0] Y,
    input  logic [3:0] D,
    input  logic       nOE
);
    logic       nOE1i, nOE2i;
    logic [3:0] Di, nDi;
    wire  [3:0] y;

    buf #( 1.0:1.0:1.2, 1.0:1.0:1.5) I1a(  Di[0], D[0]);
    buf #( 1.0:1.0:1.2, 1.0:1.0:1.5) I1b(  Di[1], D[1]);
    buf #( 1.0:1.0:1.2, 1.0:1.0:1.5) I1c(  Di[2], D[2]);
    buf #( 1.0:1.0:1.2, 1.0:1.0:1.5) I1d(  Di[3], D[3]);

    not #( 1.0:1.0:1.5, 1.0:1.0:1.2) I2a( nDi[0], D[0]);
    not #( 1.0:1.0:1.5, 1.0:1.0:1.2) I2b( nDi[1], D[1]);
    not #( 1.0:1.0:1.5, 1.0:1.0:1.2) I2c( nDi[2], D[2]);
    not #( 1.0:1.0:1.5, 1.0:1.0:1.2) I2d( nDi[3], D[3]);

    buf #( 0.5:1.5:2.0, 0.5:1.3:1.7) I3( nOEh, nOE);
    buf #( 0.5:1.5:2.0, 0.5:2.4:3.0) I4( nOEl, nOE);

    bufif0 #( 1.5:3.0:5.0, 1.5:3.0:5.0, 1.5:3.0:5.0) I4ha( y[0], 4'b1111, nOEh |  nDi[0]);
    bufif0 #( 1.5:3.0:5.0, 1.5:3.0:5.0, 1.5:3.0:5.0) I4la( y[0], 4'b0000, nOEl |   Di[0]);
    bufif0 #( 1.5:3.0:5.0, 1.5:3.0:5.0, 1.5:3.0:5.0) I4hb( y[1], 4'b1111, nOEh |  nDi[1]);
    bufif0 #( 1.5:3.0:5.0, 1.5:3.0:5.0, 1.5:3.0:5.0) I4lb( y[1], 4'b0000, nOEl |   Di[1]);
    bufif0 #( 1.5:3.0:5.0, 1.5:3.0:5.0, 1.5:3.0:5.0) I4hc( y[2], 4'b1111, nOEh |  nDi[2]);
    bufif0 #( 1.5:3.0:5.0, 1.5:3.0:5.0, 1.5:3.0:5.0) I4lc( y[2], 4'b0000, nOEl |   Di[2]);
    bufif0 #( 1.5:3.0:5.0, 1.5:3.0:5.0, 1.5:3.0:5.0) I4hd( y[3], 4'b1111, nOEh |  nDi[3]);
    bufif0 #( 1.5:3.0:5.0, 1.5:3.0:5.0, 1.5:3.0:5.0) I4ld( y[3], 4'b0000, nOEl |   Di[3]);
    assign Y = y;
endmodule



module ttl_74F138(
    output logic [7:0] nO,
    input  logic [3:0] A,
    input  logic       nE1,  
    input  logic       nE2,  
    input  logic       E3,  
); 
    
endmodule
/*********
  To do:
    Priority:
      74F244, 74F138, 74F240, 74F157, 74F257
      74F245, 74F139, 74F374/574, 74F182, 74F381, 74F382
      4-bit sync counter with load and reset, 74F74, 74F174/6
      SRAM: 8kx8, 32kx8, 64kx8
    Maybe:
      74F181
*********/