`define N 6
class cstrs_challenge;

   // class properties
   rand bit [3:0] arr[`N][`N];

   // constraint logic
   constraint rt_diag  {foreach(arr[i,j]) i == j                       -> arr[i][j] == 0;}    // right diagonal set to zero
   constraint lt_diag  {foreach(arr[i,j]) i+j == `N-1                  -> arr[i][j] == 0;}    // left diagonal set to zero
   constraint non_zero {foreach(arr[i,j]) !((i == j) || (i+j == `N-1)) -> arr[i][j] == 1;}    // rest of the values set to 1
   
   // display function
   function void disp();
      foreach(arr[i])begin
	 foreach(arr[j])begin
	    if(j == `N-1)
	      $display("%d", arr[i][j]);
	    else
	      $write("%d", arr[i][j]);
	 end
      end
   endfunction // disp

endclass // cstrs_challenge
