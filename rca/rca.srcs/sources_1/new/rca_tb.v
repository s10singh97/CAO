`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2019 10:05:56
// Design Name: 
// Module Name: rca_tb
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

`include "rca.v"
module rca_tb();
reg [3:0] aa = 0;
reg [3:0] bb = 0;
wire final_carry;
rca r1(.ia(aa), .ib(bb), .ocout(final_carry));
initial
    begin
      aa = 4'b0000;
      bb = 4'b0001;
      
      aa = 4'b0010;
      bb = 4'b0010;
      
      aa = 4'b0101;
      bb = 4'b0110;
      
      aa = 4'b1111;
      bb = 4'b1111;
    end
endmodule
