`include "cstrs_challenge1.sv"
`include "cstrs_challenge2.sv"
`include "cstrs_challenge3.sv"

program test #(parameter N = 100, I = 20);

   // version 1
   cstrs_challenge1 #(N) ct;
   // version 2
   // cstrs_challenge2 #(N) ct;
   // version 3
   //cstrs_challenge3 #(N) ct;

   int cnt = 0;
   
   initial begin
      ct = new();
      while(cnt < I)begin
	 ct.randomize();
	 cnt++;
      end
      ct.disp();
   end

endprogram // test
