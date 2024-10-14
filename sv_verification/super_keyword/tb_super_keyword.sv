// Parent class
class parent_class;
   // class properties or variables
  int a, b, s;

   // task method
  task sum (int a,b);
    this.a = a;
    this.b = b;
    s      = a + b;
  endtask

  function void display();
    $display("Parent Class     => a = %0d , b = %0d, sum s = %0d", a, b ,s);
  endfunction

endclass

// Child Class
class child_class extends parent_class;
  // class properties or variables
  int a, b, m;

  // task method
  task mul (int a,b);
    this.a = a;
    this.b = b;
    m      = a * b;
  endtask

  function void display();
    super.display();           // comment and uncomment to observe the difference
    $display("Child Class      => a = %0d , b = %0d, mul m = %0d", a, b ,m);
  endfunction

endclass

// Multilevel Inheritance
class gran_child_class extends child_class;
  // class properties or variables
  int a, b, d;

  // task method
  task div (int a,b);
    this.a = a;
    this.b = b;
    d      = a / b;
  endtask

  function void display();
    super.display();           // comment and uncomment to observe the difference
    $display("Gran Child Class => a = %0d , b = %0d, div d = %0d", a, b ,d);
  endfunction

endclass

module tb_super_keyword; 
 
  gran_child_class cl_obj;      // declare a class handle of type cl_obj

   initial begin
     cl_obj = new( );      // construct an object
     cl_obj.sum(30,10);    // access a method
     cl_obj.display();
     cl_obj.mul(30,10);    // access a method
     cl_obj.display();
     cl_obj.div(30,10);    // access a method
     cl_obj.display();
   end
 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/SystemVerilog_Verification/sv_verification/super_keyword/*") 
// End:
