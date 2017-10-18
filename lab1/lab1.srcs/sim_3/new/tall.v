`timescale 1ns / 1ps
module tall();
    reg clk=1'b0,rst;
    wire [7:0] out;
    main testmain(.CLK(clk),.RST(rst),.out(out));
    
    initial
    begin
        rst=1'b0;
        #10;
    end
    
    always #10 clk = ~clk;
    always #500 begin rst=1'b1; #20 rst=1'b0;end
endmodule