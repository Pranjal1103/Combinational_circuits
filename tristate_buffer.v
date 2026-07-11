//design
module tris_buff(input in,input en,output reg out);
  always@(*)
    begin
      case(en)
        1'b1:out=in;
        default:out=1'bz;
      endcase
    end
endmodule

//testbench
module tb();
  reg in,en;
  wire out;
  tris_buff dut(in,en,out);
  initial
    begin
       $dumpfile("dump.vcd"); 
      $dumpvars;
    end
  initial
    begin
      in=0;en=0;#10
      in=1;en=0;#10
      in=0;en=1;#10
      in=1;en=1;#10
$finish;
    end
endmodule

//eda playground link
www.edaplayground.com/x/beAg
