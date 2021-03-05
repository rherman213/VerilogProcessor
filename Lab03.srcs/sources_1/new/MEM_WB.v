`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2020 02:01:10 AM
// Design Name: 
// Module Name: MEM_WB
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


module MEM_WB(mwReg, mm2reg, memMux, memR, clk ,do,
                wwreg, wm2reg, wbMux, wbR, wbDo);
    
    input [1:0] mwReg, mm2reg, clk;
    input [3:0] memMux;
    input [31:0] do, memR;
    output reg [1:0] wwreg, wm2reg;
    output reg [3:0] wbMux;
    output reg [31:0] wbR, wbDo;
    
    //send to next stage
    always @ (posedge clk)
    begin 
        wwreg = mwReg;
        wm2reg = mm2reg;
        wbMux = memMux;
        wbR = memR;
        wbDo = do;
    end
    

endmodule
