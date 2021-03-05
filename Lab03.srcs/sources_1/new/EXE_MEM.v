`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2020 10:41:57 PM
// Design Name: 
// Module Name: EXE_MEM
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


module EXE_MEM(ewreg,em2reg,ewmem,clk,qb,r,mux,
    mwreg, mm2reg,mwmem, memMux, memR, memQB);
    
    input [1:0] ewreg, em2reg, ewmem, clk;
    input [4:0] mux;
    input [31:0] qb, r;
    output reg [1:0] mwreg, mm2reg, mwmem;
    output reg [4:0] memMux;
    output reg [31:0] memR, memQB;
    
    always @(posedge clk) 
        begin
            mwreg = ewreg;
            mm2reg = em2reg;
            mwmem = ewmem;
            memMux = mux;
            memR = r;
            memQB = qb;
        end
    
endmodule
