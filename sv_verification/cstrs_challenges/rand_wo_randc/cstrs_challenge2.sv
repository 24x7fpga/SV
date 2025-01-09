class cstrs_challenge2 #(int N = 2);

   // class properties
   bit [N-1:0] x;
   rand int  rand_idx;

   bit [N-1:0] q[$];

   constraint c {
      rand_idx >= 0;
      rand_idx < q.size();
   }

   // pre randomization
   function void pre_randomize();
      if(q.size() == 0) begin
	 for(int i = 0; i < 2**N; i++) begin
	    q.push_back(i);
	 end
      end
   endfunction // pre_randomize

   // post randomization
   function void post_randomize();
      x = q[rand_idx];

      q[rand_idx] = q[q.size()-1];

      q.delete(q.size()-1);
   endfunction // post_randomization
   
   // display function
   function void disp();
      $display("x = %d", x);
   endfunction // disp

endclass // cstrs_challenge2
