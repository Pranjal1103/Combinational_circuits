//design
module encoder(in,out);
  input [7:0] in;
  output reg [2:0] out;
  always@(*)
    begin
      out=3'b000;
      case(in)
        8'b00000000:out=3'b000;
        8'b00000001:out=3'b001;
        8'b00000010:out=3'b010;
        8'b00000100:out=3'b011;
        8'b00001000:out=3'b100;
        8'b00010000:out=3'b101;
        8'b00100000:out=3'b110;
        8'b01000000:out=3'b111;
        default:out=3'b000;
      endcase
    end
endmodule

//testbench
module tb();
  reg [7:0] in;
  wire [2:0] out;
  encoder dut(in,out);
  initial begin
    $dumpfile("demux.vcd");
$dumpvars(0,tb);
  end
  initial
    begin
      in=8'b00000000;#10
      in=8'b00000001;#10
      in=8'b00000010;#10
      in=8'b00000100;#10
      in=8'b00001000;#10
      in=8'b00010000;#10
      in=8'b00100000;#10
      in=8'b01000000;#10
      $finish;
    end
endmodule
           
      
//eda playground link
www.edaplayground.com/x/79bg
