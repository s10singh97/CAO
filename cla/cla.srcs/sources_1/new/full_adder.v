`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2019 15:17:08
// Design Name: 
// Module Name: full_adder
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


module full_adder(input i_bit1, input i_bit2, input i_carry, output o_sum, output o_carry);
wire w1, w2, w3;
xor(w1, i_bit1, i_bit2);
and(w2, i_bit1, i_bit2);
and(w3, w1, i_carry);
xor(o_sum, w1, i_carry);
or(o_carry, w2, w3);
endmodule
