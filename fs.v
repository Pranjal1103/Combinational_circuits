//design
module fs(a,b,c,d,b1);
  input a,b,c;
  output reg d,b1;
  always@(*)
    assign d=a^b^c;
  assign b1=((~a&c)|(~a&b)|(b&c));
endmodule

  //testbench
module fstb();
  reg a,b,c;
  wire d,b1;
  fs dut(.a(a),.b(b),.c(c),.d(d),.b1(b1));
  initial
    begin 
      $dumpfile("dump.vcd");             
      $dumpvars(0,fstb);
    end
  initial begin
    a=0;b=0;c=0;#5
    a=0;b=0;c=1;#5
    a=0;b=1;c=0;#5
    a=0;b=1;c=1;#5
    a=1;b=0;c=0;#5
    a=1;b=0;c=1;#5
    a=1;b=1;c=0;#5
    a=1;b=1;c=1;#5
    $finish;
  end
endmodule

//eda playground link
www.edaplayground.com/x/rk_z
