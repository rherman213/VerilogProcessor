`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2020 06:07:52 PM
// Design Name: 
// Module Name: IF_ID
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


module IF_ID(do, RegOut, clk);

//inputs - Instruction (do), clock
input [31:0] do;
input clk;
//output - instruction register
output reg [31:0] RegOut;
initial
begin
//Set to 0
RegOut <= 0;
end

always @(posedge clk)
//Change RegOut Value on positive edge
begin
RegOut <= do;
end

endmodule
