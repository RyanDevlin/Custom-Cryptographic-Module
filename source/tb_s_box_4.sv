// $Id: $
// File name:   tb_s_box_4.sv
// Created:     4/16/2018
// Author:      Ryan Devlin
// Lab Section: 337-05
// Version:     1.0  Initial Design Entry
// Description: Test Bench for s_box_four.

module tb_s_box_4(
	//input wire [127:0] test,
	output wire [31:0] out
);
	reg [31:0] test = 128'h01122335;

	s_box_4 DUT (.in_data(test), .out_data(out));
endmodule
