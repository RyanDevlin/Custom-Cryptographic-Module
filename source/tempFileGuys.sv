// $Id: $
// File name:   tempFileGuys.sv
// Created:     4/21/2018
// Author:      Dhairya Agrawal
// Lab Section: 337-05
// Version:     1.0  Initial Design Entry
// Description: .whatevs.

module tempFileGuys
(
	input logic [127:0] key,
	output logic [1407:0] expanded_key
);

	logic [127:0] previous_key1;
	logic [127:0] previous_key2;
	logic [127:0] previous_key3;
	logic [127:0] previous_key4;
	logic [127:0] previous_key5;
	logic [127:0] previous_key6;
	logic [127:0] previous_key7;
	logic [127:0] previous_key8;
	logic [127:0] previous_key9;
	logic [127:0] previous_key10;

	logic [127:0] current_key1;
	logic [127:0] current_key2;
	logic [127:0] current_key3;
	logic [127:0] current_key4;
	logic [127:0] current_key5;
	logic [127:0] current_key6;
	logic [127:0] current_key7;
	logic [127:0] current_key8;
	logic [127:0] current_key9;
	logic [127:0] current_key10;

	logic [31:0] core_out1;
	logic [31:0] core_out2;
	logic [31:0] core_out3;
	logic [31:0] core_out4;
	logic [31:0] core_out5;
	logic [31:0] core_out6;
	logic [31:0] core_out7;
	logic [31:0] core_out8;
	logic [31:0] core_out9;
	logic [31:0] core_out10;

	//always_comb begin
	//key1
	assign expanded_key[1407:1280] = key;
	assign previous_key1 = key;

	//key2
	keyScheduleCore U1 (.inputWord(previous_key1[31:0]), .roundNumber(4'h0), .outputWord(core_out1));
	assign current_key1[127:96] = previous_key1[127:96] ^ core_out1;
	assign current_key1[95:64] = previous_key1[95:64] ^ current_key1[127:96];
	assign current_key1[63:32] = previous_key1[63:32] ^ current_key1[95:64];
	assign current_key1[31:0] = previous_key1[31:0] ^ current_key1[63:32];
	assign previous_key2 = current_key1;
	assign expanded_key[1279:1152] = current_key1;

	//key3
	keyScheduleCore U2 (.inputWord(previous_key2[31:0]), .roundNumber(4'h1), .outputWord(core_out2));
	assign current_key2[127:96] = previous_key2[127:96] ^ core_out2;
	assign current_key2[95:64] = previous_key2[95:64] ^ current_key2[127:96];
	assign current_key2[63:32] = previous_key2[63:32] ^ current_key2[95:64];
	assign current_key2[31:0] = previous_key2[31:0] ^ current_key2[63:32];
	assign previous_key3 = current_key2;
	assign expanded_key[1151:1024] = current_key2;

	//key4
	keyScheduleCore U3 (.inputWord(previous_key3[31:0]), .roundNumber(4'h2), .outputWord(core_out3));
	assign current_key3[127:96] = previous_key3[127:96] ^ core_out3;
	assign current_key3[95:64] = previous_key3[95:64] ^ current_key3[127:96];
	assign current_key3[63:32] = previous_key3[63:32] ^ current_key3[95:64];
	assign current_key3[31:0] = previous_key3[31:0] ^ current_key3[63:32];
	assign previous_key4 = current_key3;
	assign expanded_key[1023:896] = current_key3;

	//key5
	keyScheduleCore U4 (.inputWord(previous_key4[31:0]), .roundNumber(4'h3), .outputWord(core_out4));
	assign current_key4[127:96] = previous_key4[127:96] ^ core_out4;
	assign current_key4[95:64] = previous_key4[95:64] ^ current_key4[127:96];
	assign current_key4[63:32] = previous_key4[63:32] ^ current_key4[95:64];
	assign current_key4[31:0] = previous_key4[31:0] ^ current_key4[63:32];
	assign previous_key5 = current_key4;
	assign expanded_key[895:768] = current_key4;

	//key6
	keyScheduleCore U5 (.inputWord(previous_key5[31:0]), .roundNumber(4'h4), .outputWord(core_out5));
	assign current_key5[127:96] = previous_key5[127:96] ^ core_out5;
	assign current_key5[95:64] = previous_key5[95:64] ^ current_key5[127:96];
	assign current_key5[63:32] = previous_key5[63:32] ^ current_key5[95:64];
	assign current_key5[31:0] = previous_key5[31:0] ^ current_key5[63:32];
	assign previous_key6 = current_key5;
	assign expanded_key[767:640] = current_key5;

	//key7
	keyScheduleCore U6 (.inputWord(previous_key6[31:0]), .roundNumber(4'h5), .outputWord(core_out6));
	assign current_key6[127:96] = previous_key6[127:96] ^ core_out6;
	assign current_key6[95:64] = previous_key6[95:64] ^ current_key6[127:96];
	assign current_key6[63:32] = previous_key6[63:32] ^ current_key6[95:64];
	assign current_key6[31:0] = previous_key6[31:0] ^ current_key6[63:32];
	assign previous_key7 = current_key6;
	assign expanded_key[639:512] = current_key6;

	//key8
	keyScheduleCore U7 (.inputWord(previous_key7[31:0]), .roundNumber(4'h6), .outputWord(core_out7));
	assign current_key7[127:96] = previous_key7[127:96] ^ core_out7;
	assign current_key7[95:64] = previous_key7[95:64] ^ current_key7[127:96];
	assign current_key7[63:32] = previous_key7[63:32] ^ current_key7[95:64];
	assign current_key7[31:0] = previous_key7[31:0] ^ current_key7[63:32];
	assign previous_key8 = current_key7;
	assign expanded_key[511:384] = current_key7;

	//key9
	keyScheduleCore U8 (.inputWord(previous_key8[31:0]), .roundNumber(4'h7), .outputWord(core_out8));
	assign current_key8[127:96] = previous_key8[127:96] ^ core_out8;
	assign current_key8[95:64] = previous_key8[95:64] ^ current_key8[127:96];
	assign current_key8[63:32] = previous_key8[63:32] ^ current_key8[95:64];
	assign current_key8[31:0] = previous_key8[31:0] ^ current_key8[63:32];
	assign previous_key9 = current_key8;
	assign expanded_key[383:256] = current_key8;

	//key10
	keyScheduleCore U9 (.inputWord(previous_key9[31:0]), .roundNumber(4'h8), .outputWord(core_out9));
	assign current_key9[127:96] = previous_key9[127:96] ^ core_out9;
	assign current_key9[95:64] = previous_key9[95:64] ^ current_key9[127:96];
	assign current_key9[63:32] = previous_key9[63:32] ^ current_key9[95:64];
	assign current_key9[31:0] = previous_key9[31:0] ^ current_key9[63:32];
	assign previous_key10 = current_key9;
	assign expanded_key[255:128] = current_key9;

	//key11
	keyScheduleCore U10 (.inputWord(previous_key10[31:0]), .roundNumber(4'h9), .outputWord(core_out10));
	assign current_key10[127:96] = previous_key10[127:96] ^ core_out10;
	assign current_key10[95:64] = previous_key10[95:64] ^ current_key10[127:96];
	assign current_key10[63:32] = previous_key10[63:32] ^ current_key10[95:64];
	assign current_key10[31:0] = previous_key10[31:0] ^ current_key10[63:32];
	assign expanded_key[127:0] = current_key10;
	//end

endmodule
