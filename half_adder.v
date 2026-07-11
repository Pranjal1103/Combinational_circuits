//design
module ha(input a,input b,output reg sum, output reg carry);
  always@(*)
    begin
      assign sum=a^b;
      assign carry=a&b;
    end
endmodule


//testbench
module tb;
  reg a,b;
  wire sum,carry;
  ha dut(a,b,sum,carry);
  initial begin
    $dumpfile("dump.vcd"); 
      $dumpvars;
      end
  initial begin
    a=0;b=0;#10
    a=0;b=1;#10
    a=1;b=0;#10
    a=1;b=1;#10
    $finish;
  end
endmodule

//eda playground link
www.edaplayground.com/x/Qxjr
