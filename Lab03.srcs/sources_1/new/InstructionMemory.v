`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2020 05:54:40 PM
// Design Name: 
// Module Name: InstructionMemory
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


module InstructionMemory(a, do);
//inputs - address (a)
input [31:0] a;
//outputs - instruction (do) //from hints video
output reg [31:0] do;
//Creat Intstruction Memory
reg [31:0] IM [0:511];
initial
begin
    //lw binary code
    IM[100] <= 32'b10001101000010100000000000000100;
    IM[104] <= 32'b10001101000010110000000000000100;
    IM[108] <= 32'b10001101000011000000000000000100;
    IM[112] <= 32'b10001101000011010000000000000100;
end


always @(a)
begin
//instruction (do) = the instruction at IM[address]
do <= IM[a];
end
endmodule

