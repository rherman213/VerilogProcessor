`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2020 05:45:57 PM
// Design Name: 
// Module Name: AdderModule
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


module AdderModule(PCIn, PCOut);

//inputs - Current Program Counter
input [31:0] PCIn;
//Outputs - Next Program Counter (CurrentPC + 4)
output reg [31:0] PCOut;

//Add 4 to get next PC
always @(*)
begin
PCOut = PCIn + 4;
end
endmodule
