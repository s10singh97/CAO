`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2019 23:57:22
// Design Name: 
// Module Name: mux4x1
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


module mux4x1(out, i0, i1, i2, i3, s1, s0);
input i0, i1, i2, i3, s1, s0;
output out;
wire mux1, mux2;
mux2x1 mux_1(mux1, i0, i1, s1);
mux2x1 mux_2(mux2, i2, i3, s1);
mux2x1 mux_3(out, mux1, mux2, s0);
endmodule
