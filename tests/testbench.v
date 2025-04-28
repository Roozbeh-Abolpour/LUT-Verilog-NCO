`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:08:10 05/27/2018
// Design Name:   topmodule
// Module Name:   D:/LUT1/testf.v
// Project Name:  LUT1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: topmodule
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testf;

	// Inputs
	reg EN;
	reg clk;
	reg [1:0] inc;
	reg [31:0] num;
	// Outputs
	wire [31:0] q;
	integer fid;
	// Instantiate the Unit Under Test (UUT)
	topmodule uut (
		.q(q), 
		.EN(EN), 
		.clk(clk), 
		.inc(inc)
	);
	always begin
		clk<=1'b0;#2;clk<=1'b1;#2;
	end
	always @(posedge clk) begin		
		#1;$fdisplay(fid,"%b",q);
		num<=num+1;
		if (num==1000) begin
			$fclose(fid);
			$finish();
		end
	end
	initial begin		
		EN=1;num=32'd0;inc=2'd1;
		fid=$fopen("out.txt","w");
		#27;
	end
      
endmodule

