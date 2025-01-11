class cstrs_challenge2 #(parameter N = 32, R = 100);

   // class properties
   rand bit [N-1:0] num;
   bit [N-1:0]	    arr[$];

   // constraint
   constraint c1 {num > 1; num <= R; !(num inside {arr});}
   constraint c2 {(num & (num-1)) == 0;}
  
   // post randomize
   function void post_randomize();
     arr.push_back(num);
   endfunction // post_randomize
   
   // display function
   function void disp();
      foreach(arr[i])
	$display("arr[%d] = %d", i, arr[i]);     
   endfunction // disp

endclass // cstrs_challenge2
