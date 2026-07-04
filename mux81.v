//design1
module mux(in,sel,out);
  input [7:0] in;
  input [3:0] sel;
  output reg out;
  always@(*)
    begin
      case(sel)
        3'b000:out=in[0];
        3'b001:out=in[1];
        3'b010:out=in[2];
        3'b011:out=in[3];
        3'b100:out=in[4];
        3'b101:out=in[5];
        3'b110:out=in[6];
        3'b111:out=in[7];
        default:out=0;
      endcase
    end
endmodule

//testbench1
module tb;
  reg [7:0] in;
  reg [3:0] sel;
  wire out;
  mux dut(in,sel,out);
  initial begin
    $dumpfile("mux.vcd");
$dumpvars(0,tb);
  end
  initial
    begin
      in=8'b10101010;
      sel=3'b000;#10
      sel=3'b001;#10
      sel=3'b010;#10
      sel=3'b011;#10
      sel=3'b100;#10
      sel=3'b101;#10
      sel=3'b110;#10
      sel=3'b111;#10
      in=8'b11110000;
      sel=3'b000;#10
      sel=3'b001;#10
      sel=3'b010;#10
      sel=3'b011;#10
      sel=3'b100;#10
      sel=3'b101;#10
      sel=3'b110;#10
      sel=3'b111;#10
      $finish;
    end
endmodule

//eda playground link
www.edaplayground.com/x/Hhx2

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//8:1mux using 2:1 mux
//design
module mux(
  input in0,
  input in1,
  input sel,
  output reg out
);
  always @(*) begin
    case(sel)
      1'b0: out = in0;
      1'b1: out = in1;
      default: out = 1'b0;
    endcase
  end
endmodule

module mux8_1(
  input [7:0] in,
  input [2:0] sel,
  output out
);
    wire w1, w2, w3, w4, w5, w6;
  mux m1(in[0], in[1], sel[0], w1);
  mux m2(in[2], in[3], sel[0], w2);
  mux m3(in[4], in[5], sel[0], w3);
  mux m4(in[6], in[7], sel[0], w4);
  mux m5(w1, w2, sel[1], w5);
  mux m6(w3, w4, sel[1], w6);
  mux m7(w5, w6, sel[2], out);
endmodule

//testbench
module tb;
  reg [7:0] in;
  reg [2:0] sel; 
  wire out;
  mux8_1 dut(
    .in(in),
    .sel(sel),
    .out(out)
  );
  initial begin
    $dumpfile("mux.vcd");
    $dumpvars(0, tb);
  end
  initial begin
    in = 8'b10101010;
    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;
    sel = 3'b101; #10;
    sel = 3'b110; #10;
    sel = 3'b111; #10;
    in = 8'b11110000;
    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;
    sel = 3'b101; #10;
    sel = 3'b110; #10;
    sel = 3'b111; #10;
    $finish;
  end
endmodule

//eda playground link
www.edaplayground.com/x/eEXg
