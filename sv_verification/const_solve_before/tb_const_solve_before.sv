class const_ex;

   rand bit       x;
   rand bit [1:0] y;

   constraint const_1 {
      solve x before y;
      //solve y before x;          // do not apply both solve-before constraint at the same time
      (x == 0) -> (y == 0);
   }

   function void disp();
      $display("x = %d, y = %d", x, y);
   endfunction // disp
   
endclass // const_ex

module tb_const_solve_before; 
 
   const_ex sb;

   initial begin
      sb = new();
      for(int i = 0; i < 16; i++) begin
	 sb.randomize();
	 sb.disp();
      end
   end
   
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/FPGA_Projects/SystemVerilog_Verification/sv_verification/const_solve_before" ".") 
// End:
