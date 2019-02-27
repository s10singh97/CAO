`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2019 15:45:57
// Design Name: 
// Module Name: block_ass
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


module block_ass(input i_clock, output r_Test_1, output r_Test_2, output r_Test_3);
    reg r_Test_1, r_Test_2, r_Test_3;
    always @(posedge i_clock)
    begin
      r_Test_1 = 1'b1;
      r_Test_2 = r_Test_1;
      r_Test_3 = r_Test_2;
    end
endmodule
