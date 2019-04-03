`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2019 15:21:19
// Design Name: 
// Module Name: prod8bit
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


module prod8bit(input [3:0]a, [3:0]b, output [7:0]o);
assign a = 4'b1000;
assign b = 4'b1001;
reg [7:0] alu = 8'd0;
reg [3:0] alu_in = 4'b0000;
reg [7:0] out;
integer i;
initial
    begin
    out[3:0] = b[3:0];
    repeat(4)
        begin
        alu = alu_in + a;
        if(out[0] == 1)
            out[7:4] = alu[3:0];
        for(i = 0; i < 7; i = i+1)
            begin
            out[i] = out[i+1];
            end
        out[7] = 0;
        alu_in[3:0] = out[7:4];
        end
    end
assign o = out;
endmodule
