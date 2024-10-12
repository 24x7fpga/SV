// Parent class
class parent_class;
   // class properties or variables
  int a, b, s;

   // task method
  task sum (int a,b);
    s = a + b;
    $display("a = %0d , b = %0d, sum s = %0d", a, b ,s);
  endtask

endclass

// Child Class
class child_class extends parent_class;
  // class properties or variables
  int m;

  // task method
  task mul (int a,b);
    m = a * b;
    $display("a = %0d , b = %0d, mul m = %0d", a, b ,m);
  endtask

endclass

// Multilevel Inheritance
class gran_child_class extends child_class;
  // class properties or variables
  int d;

  // task method
  task div (int a,b);
    d = a / b;
    $display("a = %0d , b = %0d, div d = %0d", a, b ,d);
  endtask

endclass

module tb_inheritance; 
 
  gran_child_class cl_obj;      // declare a class handle of type cl_obj

   initial begin
     cl_obj = new( );      // construct an object
     cl_obj.sum(30,10);    // access a method
     cl_obj.mul(30,10);    // access a method
     cl_obj.div(30,10);    // access a method
   end
 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/SystemVerilog_Verification/sv_verification/inheritance/*") 
// End:
