

// --- file 1 ------------------ Package Definition

package my_types_pkg;
  typedef struct packed {
    logic [7:0]  addr;
    logic [31:0] data;
    logic        valid;
  } bus_pkt_t;
endpackage

// --- file 2 ------------------ Module Definition

module my_module 
  import my_types_pkg::*; // Import the type into the module scope
(
  input  logic     clk,
  input  bus_pkt_t in_pkt,  // Use the struct as an input
  output logic     ready
);

  always_ff @(posedge clk) begin
    if (in_pkt.valid) begin
      // Accessing struct members using dot notation
      $display("Received data %h at address %h", in_pkt.data, in_pkt.addr);
    end
  end

  assign ready = 1'b1;

endmodule

// --- file 3 ------------------ Module Instantiation:

module top;
  import my_types_pkg::*; // Import so we can declare 'bus_pkt_t' here
  
  logic     clk = 0;
  bus_pkt_t top_pkt;      // Declare the struct signal
  logic     is_ready;

  // Instantiate the module
  my_module u_dut (
    .clk    (clk),
    .in_pkt (top_pkt),    // Connection works because types match
    .ready  (is_ready)
  );

  initial begin
    top_pkt.addr  = 8'hA5;
    top_pkt.data  = 32'hDEADBEEF;
    top_pkt.valid = 1'b1;
    #10 $finish;
  end

endmodule

