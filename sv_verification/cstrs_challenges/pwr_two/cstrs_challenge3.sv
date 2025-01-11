class cstrs_challenge3 #(parameter N = 32, R = 100);

   // class properties
   rand bit [N-1:0] num;
   bit [N-1:0]	    arr[$];

   // constraint
   constraint c1 {num > 1; num <= $clog2(R);}

   // post randomize
   function void post_randomize();
      arr.push_back(1 << num);
   endfunction // post_randomize

   // display function
   function void disp();
      foreach(arr[i])
	$display("arr[%d] = %d", i, arr[i]);
   endfunction // disp

endclass // cstrs_challenge3
