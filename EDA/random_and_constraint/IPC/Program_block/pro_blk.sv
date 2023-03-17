module dut_example (output bit [3:0] out);
  initial begin
    out = 2;
  end
endmodule


********************************************************

program tb_pro(input [3:0] out);
  initial begin
    if(out == 2)
      $display("Design assigned out is 2");
    else
      $display("Design assigned out = %0d", out);
  end
endprogram

******************************************************

module tb_mod_top;
  wire [3:0] out;
  
  dut_example DUT(out);
  tb_pro tb(out);
endmodule
