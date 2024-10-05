module tb_auto_task; 
 
  logic [3:0] a,b;
  logic [4:0] res;

  task automatic sum([3:0] a, b, output logic [4:0] sum);
    sum = a + b;
  endtask

  initial begin
    $display("----------- Automatic Task: Addition -----------");
    repeat(30)begin
      a = $urandom();
      b = $urandom();
      sum(a,b,res);
      $display("a = %0d, b = %0d, sum = %0d", a, b, res);
    end
  end
 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/SystemVerilog_Verification/sv_verification/auto_task/*") 
// End:
