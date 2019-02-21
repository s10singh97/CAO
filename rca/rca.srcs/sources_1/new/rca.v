`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2019 19:18:35
// Design Name: 
// Module Name: rca
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
module rca(input [3:0] ia, input [3:0] ib, input icin, output ocout);
wire c[2:0];
full_adder f1(.a(ia[0]), .b(ib[0]), .cin(icin), .cout(c[0]), .sum());
full_adder f2(.a(ia[1]), .b(ib[1]), .cin(c[0]), .cout(c[1]), .sum());
full_adder f3(.a(ia[2]), .b(ib[2]), .cin(c[1]), .cout(c[2]), .sum());
full_adder f4(.a(ia[3]), .b(ib[3]), .cin(c[2]), .cout(ocout), .sum());
endmodule
