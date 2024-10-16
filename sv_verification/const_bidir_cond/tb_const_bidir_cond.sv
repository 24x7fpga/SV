class const_ex;

   rand bit       a;
   rand bit [3:0] b;
   rand bit [3:0] c;

   constraint cond_1 {b > 1; b < 9; if(a) c == b; else c != b;}

   function void disp();
      $display("a = %0d, b = %0d, c = %0d", a, b, c);
   endfunction // disp

endclass // const_ex

module tb_const_bidir_cond; 

   const_ex bi_con;

   initial begin
      bi_con = new();
      for(int i = 0; i < 16; i++) begin
	 bi_con.randomize();
	 bi_con.disp();
      end
   end
   
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/FPGA_Projects/SystemVerilog_Verification/sv_verification/const_bidir_cond" ".") 
// End:
