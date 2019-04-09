`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2019 19:10:33
// Design Name: 
// Module Name: sr
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


module sr(q, qbar, s, r, clk);
output q, qbar;
input s, r, clk;
reg q, qbar;
initial
    begin
        q = 1'b0;
        qbar = 1'b1;
    end
always@(posedge clk)
begin
    case({s, r})
        {1'b0, 1'b0}: begin q = q; qbar = qbar; end
        {1'b0, 1'b1}: begin q = 1'b0; qbar = 1'b1; end
        {1'b1, 1'b0}: begin q = 1'b1; qbar = 1'b0; end
        {1'b1, 1'b1}: begin q = 1'bx; qbar = 1'bx; end
    endcase
end
endmodule
