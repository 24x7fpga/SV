class inside_op;
   rand bit [3:0] a;
   rand bit [3:0] b;
   rand bit [3:0] c;

   constraint const_a {a inside {1,2,3,4};}
   constraint const_b {b inside {[10:15]};}
   constraint const_c {!(c inside {[10:15]});}
   
   function void disp();
      $display("a = %0d, b = %0d, c = %0d", a, b, c);
   endfunction // disp

endclass // inside_op

module tb_const_inside_op; 
 
   inside_op i_op;

   initial begin
      i_op = new();
      for(int i = 0; i < 16; i++) begin
	 assert(i_op.randomize())
	   else
	 $error("Randomization Failed ;(");
	 i_op.disp();
      end
   end
   
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/FPGA_Projects/SystemVerilog_Verification/sv_verification/const_inside_op" ".") 
// End:
