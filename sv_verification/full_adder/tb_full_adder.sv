module tb_full_adder; 
 
  /*AUTOREG*/ 
  /*AUTOWIRE*/ 
  intf i_intf();
  
  test t1(i_intf);
  
  full_adder DUT(.a(i_intf.a),
         .b(i_intf.b),
         .c(i_intf.c),
         .s(i_intf.s),
         .co(i_intf.co));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/FPGA_Projects/SystemVerilog_Verification/sv_verification/full_adder" ".") 
// End:
