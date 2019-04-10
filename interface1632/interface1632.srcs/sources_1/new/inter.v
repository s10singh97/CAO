`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2019 15:20:27
// Design Name: 
// Module Name: inter
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


module inter(input [15:0]a, input [31:0]b, output [31:0]o1, output [15:0]o2);
assign a = 16'b1000011111100000;
assign b = 32'd128000;
assign o1[15:0] = a[15:0];
reg [15:0]out1;
reg [15:0]out2;
initial
    begin
    if(a[15] == 1)
        out1 = 16'b1111111111111111;
    else
        out1 = 16'b0000000000000000;
    end
assign o1[31:16] = out1;

initial
    begin
    out2 = b[15:0];
    #20;
    out2 = b[31:16];
    end
assign o2 = out2;
endmodule
