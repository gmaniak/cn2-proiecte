`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2017 12:51:28 AM
// Design Name: 
// Module Name: t1semi
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


module t1semi();
    reg x,y,c;
    wire outc, outs;
    
    sumcomplet moduletest(.x(x), .y(y), .z(c), .s(outs), .cout(outc));
    initial begin
        c = 1'b0;
        x = 1'b0;
        y = 1'b1;
        #20;
        x = 1'b1;
        y = 1'b1;
    end
endmodule
