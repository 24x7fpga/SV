class ex_class;
   // class properties or variables
  int a, b, s;

   // task method
  task sum (int a,b);
    s = a + b;
    $display("a = %0d , b = %0d, sum s = %0d", a, b ,s);
  endtask

endclass

module tb_ex_class; 
 
  ex_class cl_obj;      // declare a class handle of type cl_obj

   initial begin
     cl_obj = new( );   // construct an object
     cl_obj.sum(30,10); // access a method
     repeat(10)
        cl_obj.sum($urandom_range(1,50),$urandom_range(1,50));
   end

 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/SystemVerilog_Verification/sv_verification/ex_class/*") 
// End:
