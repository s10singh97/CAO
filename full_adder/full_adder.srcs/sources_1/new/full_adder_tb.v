`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2019 23:32:09
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb;
reg ra = 0, rb = 0, rc = 0;
wire wsum, wcarry;

full_adder full_dder_inst(.a(ra), .b(rb), .c(rc), .sum(wsum), .carry(wcarry));

initial
    begin
        ra = 1'b0;
        rb = 1'b0;
        rc = 1'b0;
        
        ra = 1'b0;
        rb = 1'b0;
        rc = 1'b1;
        
        ra = 1'b0;
        rb = 1'b1;
        rc = 1'b0;
        
        ra = 1'b0;
        rb = 1'b1;
        rc = 1'b1;
        
        ra = 1'b1;
        rb = 1'b0;
        rc = 1'b0;
        
        ra = 1'b1;
        rb = 1'b0;
        rc = 1'b1;
        
        ra = 1'b1;
        rb = 1'b1;
        rc = 1'b0;
        
        ra = 1'b1;
        rb = 1'b1;
        rc = 1'b1;
    end
endmodule
