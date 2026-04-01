

typedef enum logic [1:0] { OP_NOP, OP_CLEAR, OP_SET, OP_LOAD } OP_DisableMEM_t;
typedef enum logic [1:0] { OP_NOP, OP_FindTarget, OP_FindAggressor } OP_ChessBoardSquare_t;

typedef enum logic [2:0] {
    CP_Empty  = 3'b000;
    CP_Pawn   = 3'b001;
    CP_Knight = 3'b010;
    CP_King   = 3'b011;
    CP_Bishop = 3'b101;
    CP_Rook   = 3'b110
    CP_Queen  = 3'b111;
} ChessPiece_t;


module MoveGen_chessBoardSquare(
    input logic       RSTb,
    input logic       CLK,
    input logic       selRank,        // selRank and selFile selects square for
    input logic       selFile,        //     OP_DisableOperations
    input logic [1:0] OP_Disable,     // OP_DISMEM_NOP, OP_DISMEM_Clear, OP_DISMEM_Set, OP_DISMEM_Load
    input logic [1:0] OP_DisableMem,  // OP_NOP, OP_PUSH, OP_POP
    input logic loadPiece,
    input logic OPER[],  // OP_NOP, OP_FindTarget, OP_FindAggressor
    inout logic SideToMove_bW,
    
    output logic 
);

ChessPiece_t piece;
logic p_empty, p_wpawn, p_bpawn, p_knight, p_bishop, p_rook, p_queen, p_king;

assign p_empty   = (piece[2:1] == 2'b00) ? 1'b1 : 1'b0;
assign p_wpawn   = ((piece[2:0] == CP_Pawn)   && (piece[3]==1) && (SideToMove==1)) ? 1 : 0;
assign p_bpawn   = ((piece[2:0] == CP_Pawn)   && (piece[3]==0) && (SideToMove==0)) ? 1 : 0;
assign p_knight  = ((piece[2:0] == CP_Knight) && (piece[3]== SideToMove)) ? 1 : 0;
assign p_bishop  = ((piece[2:0] == CP_Bishop) && (piece[3]== SideToMove)) ? 1 : 0;
assign p_rook    = ((piece[2:0] == CP_Rook)   && (piece[3]== SideToMove)) ? 1 : 0;
assign p_queen   = ((piece[2:0] == CP_Queen)  && (piece[3]== SideToMove)) ? 1 : 0;
assign p_king    = ((piece[2:0] == CP_King)   && (piece[3]== SideToMove)) ? 1 : 0;

/* Find aggressor propagate the attack rays to hit other side pieces that could attack the
   selected victm.
   Outouts may be:
       - Ortogonals: May hit other side Queen or Hooks.
       - Diagonals: May hit other side Queen or Bishops.
       - Knight: May hit back Knights.
       - King moves: May hit other side King.
       - Pawn attacks: May hit opposite side Pawn.
       - En-passant?
*/




endmodule;
