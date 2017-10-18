`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2017 12:32:55 AM
// Design Name: 
// Module Name: ffd
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


module ffd(d,clk,r,Q);
    input  d, clk, r;
    output Q;
    reg Q;
    
    always @(posedge clk or r)
        if (r)
            Q=0;
        else
            Q=d;
endmodule
