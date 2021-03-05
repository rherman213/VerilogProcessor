`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2020 06:58:14 PM
// Design Name: 
// Module Name: RegFile
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


module RegFile(rs, qa, clk);

input [4:0] rs;
input clk;
output reg [31:0] qa;

//create a register file
reg[31:0] RegFile [31:0];

//Initialize all to zero
initial 
begin
    RegFile[0] = 32'd0; RegFile[1] = 32'd0; RegFile[2] = 32'd0; RegFile[3] = 32'd0;
    RegFile[4] = 32'd0; RegFile[5] = 32'd0; RegFile[6] = 32'd0; RegFile[7] = 32'd0;
    RegFile[8] = 32'd0; RegFile[9] = 32'd0; RegFile[10] = 32'd0; RegFile[11] = 32'd0;
    RegFile[12] = 32'd0; RegFile[13] = 32'd0; RegFile[14] = 32'd0; RegFile[15] = 32'd0;
    RegFile[16] = 32'd0; RegFile[17] = 32'd0; RegFile[18] = 32'd0; RegFile[19] = 32'd0;
    RegFile[20] = 32'd0; RegFile[21] = 32'd0; RegFile[22] = 32'd0; RegFile[23] = 32'd0;
    RegFile[24] = 32'd0; RegFile[25] = 32'd0; RegFile[26] = 32'd0; RegFile[27] = 32'd0;
    RegFile[28] = 32'd0; RegFile[29] = 32'd0; RegFile[30] = 32'd0; RegFile[31] = 32'd0;
end
//just output for lw instruction
always @ (posedge clk)
begin
qa = RegFile[rs]; 
end

endmodule
