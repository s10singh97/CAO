`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2019 15:19:55
// Design Name: 
// Module Name: a
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


module a(input clk, input reset, output[1:0] counter);
reg [1:0] counter_up;

always @(posedge clk or posedge reset)
begin
    if(reset)
     counter_up <= 2'd0;
    else
     counter_up <= counter_up + 2'd1;
end 
assign counter = counter_up;
endmodule