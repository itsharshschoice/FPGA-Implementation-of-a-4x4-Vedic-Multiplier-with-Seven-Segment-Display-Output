module vedic_multiplier_with_display(a,b,hundreds,tens,ones);
input [3:0] a,b;
output [6:0] hundreds,tens,ones;
wire [3:0] H,T,O;

// Instantiate the Vedic multiplier module
vedic_multiplier multiplier(a,b,H,T,O);

// Instantiate the seven-segment display driver
seven_segment_display_driver disp1(H,hundreds);
seven_segment_display_driver disp2(T,tens);
seven_segment_display_driver disp3(O,ones);

endmodule