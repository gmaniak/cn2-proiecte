module tsemisum();
    reg x,y;
    wire outc, outs;
    
    semisum test(.a(x), .b(y), .s(outs), .c(outc));
    initial begin
        x = 1'b0;
        y = 1'b1;
        #20;
        x = 1'b1;
        y = 1'b1;
    end
endmodule