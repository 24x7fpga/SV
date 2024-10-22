class const_ex;

   rand bit [2:0] a;
   rand bit [2:0] b;

   constraint const_1 {a dist{1:=4,[2:5]:=8};}
   constraint const_2 {b dist{1:/4,[2:5]:/8};}

   function void disp;
      $display("a = %d, b = %d", a, b);
   endfunction // disp

endclass // const_ex

module tb_const_dist; 
 
   const_ex dist_ex;
   bit [3:0] a1,a2,b1,b2 = 0;
   
   initial begin
      dist_ex = new();
      for(int i = 0; i < 16; i++) begin
	 dist_ex.randomize();
	 dist_ex.disp;
	 // count no. of 1s
	 if(dist_ex.a == 1)
	   a1 = a1+1;
	 else
	   a2 = a2+1;
	 // count no. of 1s
	 if(dist_ex.b == 1)
	   b1 = b1+1;
	 else
	   b2 = b2+1;
      end
      $display("Occurrence of    1  in a is %d\n", a1,
	       "Occurrence of [2:5] in a is %d\n", a2,
	       "Occurrence of     1 in b is %d\n", b1,
	       "Occurrence of [2:5] in b is %d"  , b2);
   end

endmodule // tb_const_dist 
// Local Variables: 
// verilog-library-directories:("~/Projects/FPGA_Projects/SystemVerilog_Verification/sv_verification/const_dist" ".") 
// End:
