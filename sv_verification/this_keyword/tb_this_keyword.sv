class ex_class;
   // class properties or variables
  int a, b, s;

   // places the arguments inside the class properties
  function new(int a, b);
    this.a = a;
    this.b = b;
  endfunction

   // task method
  task sum;
    s = a + b;
    $display("a = %0d , b = %0d, sum s = %0d", this.a, this.b ,s);
  endtask

endclass

module tb_this_keyword; 
 

  ex_class cl_obj;          // declare a class handle of type cl_obj

   initial begin
     cl_obj = new(30,10);   // construct an object
     cl_obj.sum;            // access the class method
   end
 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/SystemVerilog_Verification/sv_verification/this_keyword/*") 
// End:
