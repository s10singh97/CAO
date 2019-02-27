`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2019 16:34:57
// Design Name: 
// Module Name: clp_tb
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

`include "clp.v"
module clp_tb();
reg a = 0;
wire o;
clp f1(.in(a), .out(o));
initial
    begin
        #10;
        a = 1'b1;
        #10;
        a = 1'b0;
        #10;
        a = 1'b1;
        #10;
        a = 1'b0;
        #10;
        a = 1'b1;
        #10;
        a = 1'b0;
        #10;
        a = 1'b1;
    end
endmodule
