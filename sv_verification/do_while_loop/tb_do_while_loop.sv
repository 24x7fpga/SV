module tb_do_while_loop; 
 
  initial begin

    int i;

    $display("---------- Do While Loop ----------");
    do begin
      $display("I = %0d", i);
      i = i + 1;
    end while (i<16);

  end
 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/SystemVerilog_Verification/sv_verification/do_while_loop/*") 
// End:
