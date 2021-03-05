`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2020 10:25:18 AM
// Design Name: 
// Module Name: testbench
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


module testbench();

 
reg clk_tb;
reg [31:0] PCIn;
wire [31:0] PCOut;
wire [31:0] a;
wire [31:0] do;
wire [31:0] RegOut;
wire [5:0] Opcode, func;
wire [1:0] wreg, m2reg, wmem, aluimm;
wire [3:0] aluc;
wire [4:0] rd, rt;
wire [1:0] selector;
wire [4:0] out;
wire [4:0] rs;
wire [31:0] qa;
wire [15:0] in;
wire [31:0] out2;
wire [1:0] ewreg, em2reg, ewmem, ealuimm;
wire [3:0] ealuc;
wire [4:0] emux;
wire [31:0] eqa, eqb, eextend;

wire [4:0] mux;
wire [31:0] qb, r;
wire [1:0] mwreg, mm2reg, mwmem;
wire [4:0] memMux;
wire [31:0] memR, memQB;
wire [31:0] imm;
wire [31:0] b;
wire [1:0] we;
wire [31:0] di;
wire [1:0] wwreg, wm2reg;
wire [3:0] wbMux;
wire [31:0] wbR, wbDo;


    //lab3
    PC PC_tb(PCIn, PCOut, clk_tb);
    AdderModule AdderModule_tb(PCIn, PCOut);
    InstructionMemory InstructionMemory_tb(a, do);
    IF_ID IF_ID_tb(do, RegOut, clk_tb);
    ControlUnit ControlUnit_tb(Opcode, func, wreg, m2reg, wmem, aluc, aluimm);
    Mux Mux_tb(rd, rt, selector, out);
    RegFile RegFile_tb(rs, qa, clk_tb);
    SignExtender SignExtender_tb(in, out2);
    ID_EXE ID_EXE_tb(wreg, m2reg, wmem, aluc, aluimm, mux, qa, qb, extend, clk_tb,
              ewreg, em2reg, ewmem, ealuc, ealuimm, emux, eqa, eqb, eextend);
    //lab4
    EXE_MEM EXE_MEM_tb(ewreg,em2reg,ewmem,clk_tb,qb,r,mux,mwreg, mm2reg,mwmem, memMux, memR, memQB);
    MuxALU MuxALU_tb(qb,imm,ealuimm,b);
    ALU ALU_tb(a,b,aluc,r);
    DataMemory DataMemory_tb(a, di ,we, do);
    MEM_WB MEM_WB_tb(mwReg, mm2reg, memMux, memR, clk_tb ,do,wwreg, wm2reg, wbMux, wbR, wbDo);
    
    
 initial 
        begin
          clk_tb = 0;
          PCIn = 100;
        end
        
always @ (*) 
  begin   
      #5;
      clk_tb = ~clk_tb;
end
   
endmodule
