class const_ex;

   rand bit       a;
   rand bit [3:0] b;
   rand bit [3:0] c;
   rand bit	  d;
   rand bit [3:0] e;
   rand bit [3:0] f;

   // -> similar to if-else
   constraint cond_1 {b > 1; b < 9; (a == 1)  -> (c == b);}
   // equivalence operator is similar to xnor (not supported in Vivado)
   constraint cond_2 {f > 1; f < 9; (d == 1) <-> (e == f);}
   
   function void disp();
      $display("a = %d, b = %d, c = %d :::: d = %d, e = %d, f = %d", a, b, c, d, e ,f);
   endfunction // disp

endclass // const_ex
				       
module tb_const_imply; 
 
   const_ex imp;

   initial begin
      imp = new();
      for(int i = 0; i < 10; i ++) begin
	 imp.randomize();
	 imp.disp();
      end
   end
   
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/FPGA_Projects/SystemVerilog_Verification/sv_verification/const_imply" ".") 
// End:
