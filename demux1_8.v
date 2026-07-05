//design
module demux(in,en,sel,out);
  input in,en;
  input[2:0]sel;
output reg [7:0]out;
  always @(*)
    begin
      out=8'b000000000;
      if(en)
        begin
          case(sel)
            3'b000:out[0]=in;
            3'b001:out[1]=in;
            3'b010:out[2]=in;
            3'b011:out[3]=in;
            3'b100:out[4]=in;
            3'b101:out[5]=in;
            3'b110:out[6]=in;
            3'b111:out[7]=in;
            default:out=8'b00000000;
          endcase
        end
      else
        out=8'b00000000;
    end
endmodule


//testbench
module tb(out );
reg in,en;
reg[2:0]sel;
output [7:0] out;
demux dut(in,en,sel,out);
   initial begin
     $dumpfile("demux.vcd");
$dumpvars(0,tb);
  end
initial
begin
in=1;en=1;
sel=3'b000; #10
sel=3'b001; #10
sel=3'b010; #10
sel=3'b011; #10
sel=3'b100; #10
sel=3'b101; #10
sel=3'b110; #10
sel=3'b111; #10
en=0; #10
en=1; #10
in=0; #10
in=1; #10
$finish;
end
endmodule

//eda playground link
www.edaplayground.com/x/M8mH
