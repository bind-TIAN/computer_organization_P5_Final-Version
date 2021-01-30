`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:05:51 01/02/2018 
// Design Name: 
// Module Name:    hush 
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
module hush(
    input [4:0] rs_E,
    input [4:0] rt_E,
    input [4:0] writereg_M,
	 input [4:0] writereg_W,
    input  regwrite_M,
    input  regwrite_W,
	 input memtoreg_E,
	 input rs_D,
	 input rt_D,
    output reg [1:0] forword_AE,
    output reg [1:0] forword_BE,
	 output reg flush_E,
	 output reg stall_D,
	 output reg stall_F
    );
	 always @ * begin
		if((rs_E!=0)&&(rs_E==writereg_M)&&(regwrite_M))begin
			forword_AE = 2;
		end
		else if((rs_E!=0)&&(rs_E==writereg_W)&&(regwrite_W))begin
			forword_AE = 1;
		end
		
		else begin
			forword_AE = 0;
			
		end
	   if((rt_E!=0)&&(rt_E==writereg_M)&&(regwrite_M))begin
			forword_BE = 2;
		end
		else if((rt_E!=0)&&(rt_E==writereg_W)&&(regwrite_W))begin
			forword_BE = 1;
		end
		else begin
			forword_BE = 0;
		end
		if(((rs_D==rt_E)||(rt_D==rt_E))&&(memtoreg_E))begin
			stall_F = 1;
			stall_D = 1;
			flush_E = 1;
		end
		else begin
			stall_F = 0;
			stall_D = 0;
			flush_E = 0;
		end
	 end


endmodule
