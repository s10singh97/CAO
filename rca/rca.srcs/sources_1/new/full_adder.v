`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2019 19:21:35
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


module full_adder(input a, input b, input cin, output sum, output cout);
wire w1, w2, w3;
xor(w1, a, b);
and(w2, a, b);
and(w3, w1, cin);
xor(sum, w1, cin);
or(cout, w2, w3);
endmodule
