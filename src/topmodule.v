`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:02:18 05/27/2018 
// Design Name: 
// Module Name:    topmodule 
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
module topmodule(q,EN,clk,inc);
output reg [31:0] q;
input EN,clk;
input [1:0] inc;
wire [1:0] address;
wire [31:0] o;
nco g1(.EN(EN),.clk(clk),.inc(inc),.address(address));
slut g2(.EN(EN),.clk(clk),.address(address),.data(o));
always @(posedge clk) begin
	q<=o;
end
endmodule
