`timescale 1ns / 1ps
module sumcomplet(x,y,z,s,cout);
    input x,y,z;
    output s,cout;
    
    reg cout,s;
    wire w1,w2,w3,w4;
    
    semisum sum1(x,y,w1,w2);
    semisum sum2(w1,z,w4,w3);
    
    always @(w3,w2,w4)
    begin
        cout=w3|w2;
        s=w4;
    end
endmodule