interface intf #(parameter int N = 4);

  //Declare all the inputs and outputs using logic 
  //this may also contain modport and clocking block based on the design

   // Outputs
   logic [N-1:0] sum;
   logic	 co;
   // Inputs
   logic [N-1:0] a;
   logic [N-1:0] b;
   logic	 ci;
   
endinterface
