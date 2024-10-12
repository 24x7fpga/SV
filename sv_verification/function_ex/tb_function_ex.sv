module tb_function_ex; 
 
  function int mul_3(int x);
    return x*3;
  endfunction

  initial begin
    int x;
    $display("---------- Multiply by 3 ----------");
    repeat(20)begin
      x = $urandom_range(1,9);
      $display("x = %0d, mul_by_3 = %0d", x, mul_3(x));
    end
  end
 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/SystemVerilog_Verification/sv_verification/function_ex/*") 
// End:
