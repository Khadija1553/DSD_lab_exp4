`timescale 1ns / 1ps

module labbb5_tb;

    reg a, b, c, d;
    reg [2:0] S;
    wire sa, sb, sc, sd, se, sf, sg, DP;
    wire [7:0] AN;
    
    labbb5 uut (
        .a(a), .b(b), .c(c), .d(d),
        .S(S),
        .sa(sa), .sb(sb), .sc(sc), .sd(sd), .se(se), .sf(sf), .sg(sg), .DP(DP), .AN(AN)
    );
    
    initial begin
        $dumpfile("labbb5_tb.vcd");
        $dumpvars(0, labbb5_tb);
        
        a = 0; b = 0; c = 0; d = 0; S = 3'b000;
        #10;
        
        a = 0; b = 0; c = 0; d = 1; S = 3'b001;
        #10;
        
        a = 0; b = 0; c = 1; d = 0; S = 3'b010;
        #10;
        
        a = 0; b = 0; c = 1; d = 1; S = 3'b011;
        #10;
        
        a = 0; b = 1; c = 0; d = 0; S = 3'b100;
        #10;
        
        a = 1; b = 1; c = 1; d = 1; S = 3'b111;
        #10;
        
        $finish;
    end
    
endmodule
