`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2019 15:14:04
// Design Name: 
// Module Name: carry_look_ahead_adder
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


`include "full_adder.v"
 
module ripple_carry_adder(input a0, input b0, input a1, input b1, input a2, input b2,
input a3, input b3, input c0, output c4);
wire c1, c2, c3, s0, s1, s2, s3;
full_adder f1(a0, b0, c0, s0, c1);
full_adder f2(a1, b1, c1, s1, c2);
full_adder f3(a2, b2, c2, s2, c3);
full_adder f4(a3, b3, c3, s3, c4);
endmodule 
