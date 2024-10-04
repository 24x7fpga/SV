module tb_for_loop; 
 
  initial begin
    $display("---------- 3 Times Table ----------");
    for(int i=0; i<11; i++)begin 
      $display("3 x %0d = %0d", i, 3*i);
    end
  end
 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/Verification/sv_verification/for_loop/*") 
// End:
