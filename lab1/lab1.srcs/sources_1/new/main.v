`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2017 11:42:06 PM
// Design Name: 
// Module Name: main
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


module main(CLK,RST,out);
    input CLK,RST;
    output out;
    reg [7:0] out;
    reg [7:0] din,sumin;
    wire [7:0] dout,sumout;
    parameter one = 8'b00000001;
    
    initial
    begin
        din = 8'b00000000;
    end
    
    ffd d1(.d(din[0]),.clk(CLK),.r(RST),.Q(dout[0]));
    ffd d2(.d(din[1]),.clk(CLK),.r(RST),.Q(dout[1])); 
    ffd d3(.d(din[2]),.clk(CLK),.r(RST),.Q(dout[2])); 
    ffd d4(.d(din[3]),.clk(CLK),.r(RST),.Q(dout[3])); 
    ffd d5(.d(din[4]),.clk(CLK),.r(RST),.Q(dout[4])); 
    ffd d6(.d(din[5]),.clk(CLK),.r(RST),.Q(dout[5])); 
    ffd d7(.d(din[6]),.clk(CLK),.r(RST),.Q(dout[6])); 
    ffd d8(.d(din[7]),.clk(CLK),.r(RST),.Q(dout[7]));
    
    sumator8b suma(.x(sumin),.y(one),.s(sumout)); 
    
    always@(sumout)
    begin
        din<=sumout;
    end
 
    always@(dout)
    begin
        sumin<=dout;
        out<=dout;
    end
    
endmodule
