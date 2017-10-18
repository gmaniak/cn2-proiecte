`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2017 07:37:01 AM
// Design Name: 
// Module Name: sumator8b
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


module sumator8b(x,y,s);
    input [7:0] x,y;
    output [7:0]s;
    reg [7:0] s;
    
    wire [7:0] carryout;
    reg [7:0] carryin;
    wire [7:0] sumout;
     
    sumcomplet sum1(x[0],y[0],1'b0,sumout[0],carryout[0]);
    sumcomplet sum2(x[1],y[1],carryin[1],sumout[1],carryout[1]);
    sumcomplet sum3(x[2],y[2],carryin[2],sumout[2],carryout[2]);
    sumcomplet sum4(x[3],y[3],carryin[3],sumout[3],carryout[3]);
    sumcomplet sum5(x[4],y[4],carryin[4],sumout[4],carryout[4]);
    sumcomplet sum6(x[5],y[5],carryin[5],sumout[5],carryout[5]);
    sumcomplet sum7(x[6],y[6],carryin[6],sumout[6],carryout[6]);
    sumcomplet sum8(x[7],y[7],carryin[7],sumout[7],carryout[7]);
    
    always @(sumout)
    begin
        s = sumout;
    end
    
    always@(carryout[0])
        carryin[1] = carryout[0];
    always@(carryout[1])
        carryin[2] = carryout[1];    
    always@(carryout[2])
        carryin[3] = carryout[2];   
    always@(carryout[3])
        carryin[4] = carryout[3]; 
    always@(carryout[4])
        carryin[5] = carryout[4];
    always@(carryout[5])
        carryin[6] = carryout[5];
    always@(carryout[6])
        carryin[7] = carryout[6];   
    
endmodule
