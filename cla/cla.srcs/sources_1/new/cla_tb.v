`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2019 15:27:33
// Design Name: 
// Module Name: cla_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`include "cla.v"
 
module carry_lookahead_adder_tb ();
 
  parameter WIDTH = 3;
 
  reg [WIDTH-1:0] r_ADD_1 = 0;
  reg [WIDTH-1:0] r_ADD_2 = 0;
  wire [WIDTH:0]  w_RESULT;
   
  carry_lookahead_adder_4_bit #(.WIDTH(WIDTH)) carry_lookahead_inst
    (
     .i_add1(r_ADD_1),
     .i_add2(r_ADD_2),
     .o_result(w_RESULT)
     );
 
  initial
    begin
      #10;
      r_ADD_1 = 3'b000;
      r_ADD_2 = 3'b001;
      #10;
      r_ADD_1 = 3'b010;
      r_ADD_2 = 3'b010;
      #10;
      r_ADD_1 = 3'b101;
      r_ADD_2 = 3'b110;
      #10;
      r_ADD_1 = 3'b111;
      r_ADD_2 = 3'b111;
      #10;
    end
 
endmodule