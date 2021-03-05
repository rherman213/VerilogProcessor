`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2020 01:49:09 AM
// Design Name: 
// Module Name: DataMemory
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


module DataMemory(a, di ,we, do);
    input [1:0] we;
    input [31:0] a, di;
    output reg [31:0] do;
    
    reg [31:0] DataMemory[0:127];
    //set values of data memory
    initial 
        begin
            DataMemory[0] = 32'hA00000AA;
            DataMemory[1] = 32'h10000011;
            DataMemory[2] = 32'h20000022;
            DataMemory[3] = 32'h30000033;
            DataMemory[4] = 32'h40000044;
            DataMemory[5] = 32'h50000055;
            DataMemory[6] = 32'h60000066;
            DataMemory[7] = 32'h70000077;
            DataMemory[8] = 32'h80000088;
            DataMemory[9] = 32'h90000099;
       end
       
       always @ (di, a)
            begin
                if (we == 0) begin do = DataMemory[a]; end
            end
                
    
endmodule
