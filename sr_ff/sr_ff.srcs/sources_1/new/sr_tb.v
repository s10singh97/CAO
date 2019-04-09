`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2019 19:24:00
// Design Name: 
// Module Name: sr_tb
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

`include "sr.v"
module sr_tb();
reg clk, s, r;
wire q, qbar;
sr ff(q, qbar, s, r, clk);
initial
    begin
    clk=0;
    forever #10 clk=~clk;
    end
initial 
    begin
    forever
        begin
        s = 1'b0;
        r = 1'b0;
        #10;
        s = 1'b0;
        r = 1'b1;
        #10;
        s = 1'b1;
        r = 1'b0;
        #10;
        s = 1'b1;
        r = 1'b1;
        #10;
        end 
    end
endmodule
