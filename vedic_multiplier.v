// VEDIC MULTIPLIER

module vedic_multiplier(a,b,hundreds,tens,ones);

    input [3:0]a;
    input [3:0]b;
	 output[3:0]hundreds,tens,ones;
    wire [7:0]c;
    wire [3:0]q0;	
    wire [3:0]q1;	
    wire [3:0]q2;
    wire [3:0]q3;	
    wire [3:0]temp1;
    wire [5:0]temp2;
    wire [5:0]temp3;
    wire [5:0]temp4;
    wire [3:0]q4;
    wire [5:0]q5;
    wire [5:0]q6;
    
    vedic_2_x_2 z1(a[1:0],b[1:0],q0[3:0]);
    vedic_2_x_2 z2(a[3:2],b[1:0],q1[3:0]);
    vedic_2_x_2 z3(a[1:0],b[3:2],q2[3:0]);
    vedic_2_x_2 z4(a[3:2],b[3:2],q3[3:0]);
    
    assign temp1 ={2'b0,q0[3:2]};
    add_4_bit z5(q1[3:0],temp1,q4);
    assign temp2 ={2'b0,q2[3:0]};
    assign temp3 ={q3[3:0],2'b0};
    add_6_bit z6(temp2,temp3,q5);
    
    assign temp4={2'b0,q4[3:0]};
    add_6_bit z7(temp4,q5,q6);
    assign c[1:0]=q0[1:0];
    assign c[7:2]=q6[5:0];
	 
	 assign hundreds=c/100;
    wire [6:0]next;
	 assign next=c-(hundreds*100);
    assign tens=next/10;
    assign ones=next-(tens*10);
	 
endmodule
