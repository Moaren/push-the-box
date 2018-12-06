/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module map_14 (
    output reg out,
    input [2:0] round_number,
    output reg [63:0] map_boundary,
    output reg [63:0] box,
    output reg [63:0] destinations,
    output reg [2:0] start_row,
    output reg [2:0] start_col,
    output reg [2:0] bound_left,
    output reg [2:0] bound_right,
    output reg [2:0] bound_up,
    output reg [2:0] bound_down
  );
  
  
  
  always @* begin
    out = 1'h0;
    bound_left = 1'h0;
    bound_right = 3'h7;
    bound_up = 1'h0;
    bound_down = 3'h7;
    start_row = 1'h0;
    start_col = 1'h0;
    map_boundary = 64'h0000000000000000;
    box = 64'h0000000000000000;
    destinations = 64'h0000000000000000;
    
    case (round_number)
      1'h0: begin
        map_boundary = 64'h38282fe187f7173e;
        box = 64'h0000001410080000;
        destinations = 64'h0010000240000800;
        start_row = 3'h4;
        start_col = 3'h4;
      end
      1'h1: begin
        map_boundary = 64'h7c47d18181eae23e;
        box = 64'h0000002400000000;
        destinations = 64'h0000200008000000;
        start_row = 3'h6;
        start_col = 2'h3;
      end
      2'h2: begin
        map_boundary = 64'h78c888ccc68282fe;
        box = 64'h0000202010200000;
        destinations = 64'h0000000000406800;
        start_row = 2'h2;
        start_col = 1'h1;
      end
      2'h3: begin
        map_boundary = 64'h3ce780a484ff0000;
        box = 64'h0000020200000000;
        destinations = 64'h0000000028000000;
        start_row = 3'h4;
        start_col = 3'h6;
      end
      3'h4: begin
        map_boundary = 64'h784e42eba98581ff;
        box = 64'h0000100000200400;
        destinations = 64'h0000000040404000;
        start_row = 1'h1;
        start_col = 2'h2;
      end
      3'h5: begin
        map_boundary = 64'h7ec282828286fc00;
        box = 64'h0000282828000000;
        destinations = 64'h001c000000700000;
        start_row = 2'h3;
        start_col = 2'h3;
      end
    endcase
  end
endmodule