`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2020 05:40:55 PM
// Design Name: 
// Module Name: PC
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


module PC(PCIn, PCOut, clk);
//inputs - clock, NPCin
input clk;
input [31:0] PCIn;
//outputs - NPOut
output reg [31:0] PCOut;

initial
begin
//Set first instance to 100
PCOut <= 100;
end

//On positive edge set new program count
always @ (posedge clk)
begin
PCOut <= PCIn;
end
endmodule

