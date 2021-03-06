// $Id: $
// File name:   tb_tempFileGuys.sv
// Created:     4/21/2018
// Author:      Samuale Yigrem
// Lab Section: 337-05
// Version:     1.0  Initial Design Entry
// Description: Test bench for key expansion module
`timescale 1ns / 100ps

module tb_key_expansion ();

localparam CLK_PERIOD = 10;
reg tb_clk;
always begin
	tb_clk = 1'b0;
	#(CLK_PERIOD/2.0);
	tb_clk = 1'b1;
	#(CLK_PERIOD/2.0);
end

// Declare Design Under Test (DUT) portmap signals
logic tb_n_rst;
logic tb_start_key_exp;
logic [127:0] tb_key;
logic tb_key_expanded;
logic [1407:0] tb_exp_key;

// Declare expected outputs
logic [1407:0] expected_expanded_key

// DUT Portmap
key_expansion DUT
(
	.clk(tb_clk),
	.n_rst(tb_n_rst),
	.start_key_exp(tb_start_key_exp),
	.key(tb_key),
	.key_expanded(tb_key_expanded),
	.exp_key(tb_exp_key)
);

initial begin
	tb_n_rst = 1;
	tb_start_key_exp = 0;
	tb_key = '0;
	@(posedge tb_clk);
	tb_n_rst = 0;
	@(posedge tb_clk);
	tb_n_rst = 1;
	@(posedge tb_clk);

	#5;
	tb_start_key_exp = 1;
	tb_key = 128'h5468617473206D79204B756E67204675;
	expected_expanded_key = 1408'h5468617473206D79204B756E67204675E232FCF191129188B159E4E6D679A29356082007C71AB18F76435569A03AF7FAD2600DE7157ABC686339E901C3031EFBA11202C9B468BEA1D75157A01452495BB1293B3305418592D210D232C6429B69BD3DC287B87C47156A6C9527AC2E0E4ECC96ED1674EAAA031E863F24B2A8316A8E51EF21FABB4522E43D7A0656954B6CBFE2BF904559FAB2A16480B4F7F1CBD828FDDEF86DA4244ACCC0A4FE3B316F26;
	@(posedge tb_clk);
	tb_start_key_exp = 0;
	
	#150;
	if(tb_exp_key == expected_expanded_key) begin
		$info("WE ARE SMART :)");
	end

	#5;
	tb_start_key_exp = 1;
	tb_key = 128'h000102030405060708090a0b0c0d0e0f;
	expected_expanded_key = 1408'h000102030405060708090a0b0c0d0e0fd6aa74fdd2af72fadaa678f1d6ab76feb692cf0b643dbdf1be9bc5006830b3feb6ff744ed2c2c9bf6c590cbf0469bf4147f7f7bc95353e03f96c32bcfd058dfd3caaa3e8a99f9deb50f3af57adf622aa5e390f7df7a69296a7553dc10aa31f6b14f9701ae35fe28c440adf4d4ea9c02647438735a41c65b9e016baf4aebf7ad2549932d1f08557681093ed9cbe2c974e13111d7fe3944a17f307a78b4d2b30c5;
	@(posedge tb_clk);
	tb_start_key_exp = 0;

	#150;
	if(tb_exp_key == expected_expanded_key) begin
		$info("WE ARE SMART :)");
	end

end

endmodule
