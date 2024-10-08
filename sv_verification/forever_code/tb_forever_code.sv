module tb_forever_code; 
 
  initial begin
    int i = 0;
    $display("---------- 3 times table ----------");
    forever begin
      i = i + 1;
      #1;
      $display("3 x %0d = %0d", i, i*3);
      if(i==10)
        break;
    end
  end
 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/SystemVerilog_Verification/sv_verification/forever_code/*") 
// End:
