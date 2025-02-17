module file_12(output R,G,B , input a,b,c,d);
     assign R = ((b & ~c) | (a & ~c) | (~c & ~d) | (a & b) | (a & ~d));
	 assign G = ((~a & ~b) | (~a & d) | (~a & c) | (c & d) | (~b & c));
	 assign B = ((a & ~c) | (~a & c) | (~b & d) | (b & ~d));
	 
	 //assign Y = R & G ;
	 //assign P = R & B ;
	 //assign C = G & B;
	
endmodule	
	