`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2019 15:27:13
// Design Name: 
// Module Name: mux4x1_simple
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


module mux4x1_simple(input a, input b, input c, input d, input s1, input s2, output o);
wire w1, w2, w3, w4;
assign w1 = a & ~s1 & ~s2;
assign w2 = b & s1 & ~s2;
assign w3 = c & ~s1 & s2;
assign w4 = d & s1 & s2;
assign o = w1 | w2 | w3 | w4;
endmodule
