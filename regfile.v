`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:42:25 01/01/2018 
// Design Name: 
// Module Name:    regfile 
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
module regfile(
    input clk,
    input reset,
    input regwrite,
    input [4:0] datars,
    input [4:0] datart,
    input [4:0] writerd,
    input [31:0] writedata,
    input [31:0] pcout_W,
    output [31:0] data1,
    output [31:0] data2
    );
	 integer i = 0;
	 reg [31:0] cun[31:0];
	 initial begin
		for(i=0;i<32;i=i+1)begin
			cun[i] = 0;
		end
	 end
	 always @(posedge clk)begin
		if(reset)begin
			for(i=0;i<32;i=i+1)begin
				cun[i]<=0;
			end
		end
		else begin
			if(regwrite&&writerd!=0)begin
				$display("%d@%h:$%d <= %h", $time, pcout_W, writerd,writedata);
				cun[writerd]<=writedata;
			end
		end
	 end
	 assign data1 = (datars!=0)?cun[datars]:0;
	 assign data2 = (datart!=0)?cun[datart]:0;

endmodule
