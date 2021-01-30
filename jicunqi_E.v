`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:24:54 01/01/2018 
// Design Name: 
// Module Name:    jicunqi_E 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module jicunqi_E(
	 input [4:0]  s_D,
    input [31:0] instr_D,
    input [31:0] data32rs_D,
    input [31:0] data32rt_D,
	 input [31:0] pcout_D,///(add--pc)
	 input [31:0] pcchu_D,
    input [4:0] rsD,
    input [4:0] rtD,
    input [4:0] rdD,
	 input [31:0]imm32_D,
    input  clk,
	 input clr,
	 
    output reg [4:0] rsE,
    output reg [4:0] rtE,
    output reg [4:0] rdE,
    output reg [31:0] data32_rs_E,
    output reg [31:0] data32_rt_E,
    output reg [31:0] instr_E,
	 output reg [31:0] imm32_E,
	 output reg [31:0] pcout_E,/////(add--pc)
	 output reg [31:0] pcchu_E,
	 output reg [4:0] s_E
	 
    );
	 initial begin
			
			rsE=0;
			rtE=0;
			rdE=0;
			data32_rs_E=0;
			data32_rt_E=0;
			instr_E=0;
			imm32_E=0;
			pcout_E=0;
			pcchu_E=0;
			s_E=0;
			
	 end
	 always @(posedge clk)begin
		if(clr)begin
			
			rsE<=0;
			rtE<=0;
			rdE<=0;
			data32_rs_E<=0;
			data32_rt_E<=0;
			instr_E<=0;
			imm32_E<=0;
			pcout_E<=0;
			pcchu_E<=0;
			s_E<=0;
			
		end
		else begin
			rsE<=rsD;
			rtE<=rtD;
			rdE<=rdD;
			data32_rs_E<=data32rs_D;
			data32_rt_E<=data32rt_D;
			instr_E<=instr_D;
			imm32_E<=imm32_D;
			pcout_E<=pcout_D;
			pcchu_E<=pcchu_D;
			s_E<=s_D;
		
		end
	 end


endmodule
