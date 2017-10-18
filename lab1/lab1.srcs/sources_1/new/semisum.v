`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2017 12:37:00 AM
// Design Name: 
// Module Name: semisum
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


module semisum(a,b,s,c);
    input a,b;
    output s,c;
    reg s,c;
    
    always @(a, b)
        {c,s}=a+b;
        
endmodule
