

typedef struct packed {
    logic [5:0] OP_type;        // Translates from opcode in IR into a uC ROM index (instruction type)
    logic       OP_prefix;      // Signal if value in IR is actually a prefix.
} uc_rom_type_t;

module uC_rom_type(
    input  logic [7:0] opcode,
    input  logic       prefix,
    output logic uc_rom_type_t
);
endmodule;

module uC_rom_address();
endmodule;

module uC_rom();
endmodule;

typedef struct packed {

} uC_dispatch_t;

module uC_engine(
    input  logic clk,
    input  logic resetb,
    input  logic [7:0] D,
    output logic uC_dispatch_t
);

// IR Register and Prefix Flops
always_ff @( posedge clk or negedge resetb) begin
    if ( resetb == 1'b0) begin
        IR <= 8'b0;
        IR_prefix <= 1'b0;
    end
    else begin
        if (IR_load) begin
            if( IR == OP_PREFIX)
                IR_prefix <= 1;
            else
                IR_prefix <= 0;
            end
            IR <= D;
        end
    end
end

endmodule