/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module animation_17 (
    input clk,
    input rst,
    output reg [63:0] out_start,
    output reg [63:0] out_win
  );
  
  
  
  reg [263:0] start;
  
  reg [231:0] win;
  
  localparam FLIP = 5'h18;
  
  wire [5-1:0] M_counter_start_value;
  counter_26 counter_start (
    .clk(clk),
    .rst(rst),
    .value(M_counter_start_value)
  );
  
  wire [5-1:0] M_counter_win_value;
  counter_27 counter_win (
    .clk(clk),
    .rst(rst),
    .value(M_counter_win_value)
  );
  
  integer i;
  
  always @* begin
    start = 264'h00000000086888878414444202063e2181071110208485080842428404f8e08f9c;
    win = 232'h18070381e224121f811089febe5f2ff402017fa020119902010000e070;
    for (i = 1'h0; i < 4'h8; i = i + 1) begin
      out_start[(i)*8+7-:8] = start[(i)*33+32-:33] >> M_counter_start_value | start[(i)*33+32-:33] << (6'h21 - M_counter_start_value);
      out_win[(i)*8+7-:8] = win[(i)*29+28-:29] >> M_counter_win_value | win[(i)*29+28-:29] << (5'h1d - M_counter_win_value);
    end
  end
endmodule