module labbb5( input a,b,c,d,input [2:0] S,output sa,sb,sc,sd,se,sf,sg,DP, output [7:0] AN);

assign sa = (~a & b & ~c & ~d) | (~a & ~b & ~c & d) | (a & b & ~c & d) | (a & ~b & c & d);
assign sb = (a & c & d) | (b & c & ~d) | (b & a & ~d) | (~a & b & ~c & d);
assign sc = (~a & ~b & c & d) | (a & b & c ) | (a & b & ~d);
assign sd = (b & c & d) | (~a & b & ~c & ~d) | (~a & ~b & ~c & d) | (a & ~b & c & ~d);
assign se = (d & ~a) | (~a & b & ~c) | (~c & d & ~b);
assign sf = (~a & ~b & d) | (~a & c & d) | (~a & ~b & c) | (a & b & ~c & d);
assign sg = (~a & ~b & ~c) | (a & b & ~c & ~d) | (~a & b & c & d);
assign DP=0;
assign AN[0]=(~S[2]|~S[1]|~S[0]);
assign AN[1]=(~S[2]|~S[1]|S[0]);
assign AN[2]=(~S[2]|S[1]|~S[0]);
assign AN[3]=(~S[2]|S[1]|S[0]);
assign AN[4]=(S[2]|~S[1]|~S[0]);
assign AN[5]=(S[2]|~S[1]|S[0]);
assign AN[6]=(S[2]|S[1]|~S[0]);
assign AN[7]=(S[2]|S[1]|S[0]);

endmodule