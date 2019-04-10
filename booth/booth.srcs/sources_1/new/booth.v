`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2019 12:49:12
// Design Name: 
// Module Name: booth
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


module booth(input [3:0]a, input [3:0]b, output [7:0]o);
assign a = 4'b1001;
assign b = 4'b0011;
//reg [3:0]brbar;
reg [3:0]brbarplus;
initial
    begin
    brbarplus = -a;
    end
integer i;
//initial
//    begin
//    brbar = ~a;
//    end
//initial
//    begin
//    brbarplus = brbar + 4'b0001;
//    end
reg [3:0] acc = 4'b0000;
reg qnplus = 1'b0;

reg [8:0]accopy = 1'd0;
reg [8:0]acqrqnplus;
initial
    begin
    acqrqnplus = {acc[3:0], b[3:0], qnplus};
    end
initial
repeat(4)
    begin #10;
    if(b[0] == 0 && qnplus == 1)
        acqrqnplus[8:5] = acqrqnplus[8:5] + a;
    else if(b[0] == 1 && qnplus == 0)
        acqrqnplus[8:5] = acqrqnplus[8:5] + brbarplus;
    else
        begin
        accopy = acqrqnplus;
        for(i = 0; i < 8; i = i + 1)
            begin
            acqrqnplus[i] = acqrqnplus[i+1];
            end
        acqrqnplus[8] = accopy[8];
        end
    end
assign o[7:0] = acqrqnplus[8:1];
endmodule
