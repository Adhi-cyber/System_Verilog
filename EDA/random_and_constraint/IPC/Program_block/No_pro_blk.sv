/* In this example we will discuss Program block why should we use 
Before that we have to know the three region 

Active region ---.>>> module blocks and blocking assignments are done here and RHS value has been updated
Non-blocking region --->> Here the non blocking assignments are done here
Reactive region --->>> program blocks are executed and here the LHS value are being updated

The flow of execution is active region --> NBA region ---> Reactive region

The problem is when we excute without program block we have the out value as 0 or X instead of 2
Bcoz the value of the x has been only  update in the reactive region but there is no reactive or program
block in the topmodule 
Program block has been used to sample and synchronize the output with the input 

module block can instantatiate the program block 
*/


module dut_example (output bit [3:0] out);
  initial begin
    out = 2;
  end
endmodule

***********************************************************

module tb_pro(input [3:0] out);
  initial begin
    if(out == 2)
      $display("Design assigned out is 2");
    else
      $display("Design assigned out = %0d", out);
  end
endmodule

**********************************************************

module tb_mod_top;
  wire [3:0] out;
  
  dut_example DUT(out);
  tb_pro tb(out);
endmodule
