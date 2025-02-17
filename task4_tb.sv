module testbench;
  reg a,b,c,d;
  wire R,G,B;
  localparam period = 10;
  file_12 UUT  (R,G,B,a,b,c,d);
  
  initial
    begin
	    a = 0 ; b = 0 ; c = 0 ; d = 0 ;
	#10 a = 0 ; b = 0 ; c = 0 ; d = 1 ;
	#10 a = 0 ; b = 0 ; c = 1 ; d = 0 ;
	#10 a = 0 ; b = 0 ; c = 1 ; d = 1 ;
	#10 a = 0 ; b = 1 ; c = 0 ; d = 0 ;
	#10 a = 0 ; b = 1 ; c = 0 ; d = 1 ;
	#10 a = 0 ; b = 1 ; c = 1 ; d = 0 ;
	#10 a = 0 ; b = 1 ; c = 1 ; d = 1 ;
	#10 a = 1 ; b = 0 ; c = 0 ; d = 0 ;
	#10 a = 1 ; b = 0 ; c = 0 ; d = 1 ;
	#10 a = 1 ; b = 0 ; c = 1 ; d = 0 ;
	#10 a = 1 ; b = 0 ; c = 1 ; d = 1 ;
	#10 a = 1 ; b = 1 ; c = 0 ; d = 0 ;
	#10 a = 1 ; b = 1 ; c = 0 ; d = 1 ;
	#10 a = 1 ; b = 1 ; c = 1 ; d = 0 ;
	#10 a = 1 ; b = 1 ; c = 1 ; d = 1 ;
	end
	
endmodule