`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2017 07:47:30 AM
// Design Name: 
// Module Name: t2sum8b
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


module t2sum8b();
    reg [7:0] x;
    reg [7:0] y;
    wire [7:0] s;
    
    sumator8b sumatest(.x(x),.y(y),.s(s));
    
    initial begin
        x = {8'b00000001};
        y= {8'b00000001};
        #10
        x = {8'b00000101};
        y= {8'b00000101};
    end    
    
endmodule
