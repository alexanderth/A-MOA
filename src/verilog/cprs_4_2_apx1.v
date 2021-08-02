module cprs_4_2_apx1 (
input x1,
input x2,
input x3,
input x4,
output carry,
output summ,
output err
);

wire x1_xor_x2 ,x3_xor_x4 ,x1_and_x2 ,x3_and_x4 ;

assign x1_xor_x2 = x1 ^ x2;
assign x3_xor_x4 = x3 ^ x4;

assign x1_and_x2 = x1 & x2;
assign x3_and_x4 = x3 & x4;

assign err = x1_and_x2 & x3_and_x4;
assign sum = x1_xor_x2 ^ x3_xor_x4 + err;
assign carry = x1_xor_x2 & x3_xor_x4 + x1_and_x2 ^ x3_and_x4 + err;

endmodule
