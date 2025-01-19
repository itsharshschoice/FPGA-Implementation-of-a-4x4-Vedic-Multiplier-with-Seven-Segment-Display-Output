// Seven-segment display driver

module seven_segment_display_driver(value,seg);
input [3:0] value;
output reg [6:0] seg;
parameter ZERO= 7'b1000000; // 0
parameter ONE=7'b1111001;   // 1
parameter TWO=7'b0100100;   // 2
parameter THREE=7'b0110000; // 3
parameter FOUR=7'b0011001;  // 4
parameter FIVE=7'b0010010;  // 5
parameter SIX=7'b0000010;   // 6
parameter SEVEN=7'b1111000; // 7
parameter EIGHT=7'b0000000; // 8
parameter NINE=7'b0010000;  // 9

always @(*)
begin
case(value)
 4'b0000 : seg = ZERO;
 4'b0001 : seg = ONE;
 4'b0010 : seg = TWO;
 4'b0011 : seg = THREE;
 4'b0100 : seg = FOUR;
 4'b0101 : seg = FIVE;
 4'b0110 : seg = SIX;
 4'b0111 : seg = SEVEN;
 4'b1000 : seg = EIGHT;
 4'b1001 : seg = NINE;
 default : seg = ZERO;
endcase
end
 
endmodule