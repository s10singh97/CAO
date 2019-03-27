`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2019 15:30:44
// Design Name: 
// Module Name: a_tb
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

`include "a.v"
module a_tb();
reg clk, reset;
wire [1:0] counter;

a inst(clk, reset, counter);
initial 
begin 
clk=0;
forever #10 clk=~clk;
end
initial 
begin
reset=1;
#20;
reset=0;
end
endmodule 