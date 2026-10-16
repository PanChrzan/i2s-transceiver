
`timescale 1 ns / 1 ps

	module AXIS_I2S_Transceiver_v1_0 #
	(
		// Users to add parameters here
		/* 125 MHz input clock and MCLK_DIVISION = 5 gives:
        MCLK = 12.5 MHz 
        SCLK = 3.125 MHz
        LRCLK = 48.8 kHz */
        parameter MCLK_DIVISION = 5,
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXIS
		parameter integer C_S00_AXIS_TDATA_WIDTH	= 32,

		// Parameters of Axi Master Bus Interface M00_AXIS
		parameter integer C_M00_AXIS_TDATA_WIDTH	= 32,
		parameter integer C_M00_AXIS_START_COUNT	= 32
	)
	(
		// Users to add ports here
		input wire rst,
        input wire rx_i2s_data,
        output wire tx_i2s_data,

		output wire s_clk_adc,
		output wire s_clk_dac,
		output wire m_clk_adc,
		output wire m_clk_dac,
		output wire lr_clk_adc,
		output wire lr_clk_dac,
		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXIS
		input wire  s00_axis_aclk,
		input wire  s00_axis_aresetn,
		output wire  s00_axis_tready,
		input wire [C_S00_AXIS_TDATA_WIDTH-1 : 0] s00_axis_tdata,
		input wire [(C_S00_AXIS_TDATA_WIDTH/8)-1 : 0] s00_axis_tstrb,
		input wire  s00_axis_tlast,
		input wire  s00_axis_tvalid,

		// Ports of Axi Master Bus Interface M00_AXIS
		input wire  m00_axis_aclk,
		input wire  m00_axis_aresetn,
		output wire  m00_axis_tvalid,
		output wire [C_M00_AXIS_TDATA_WIDTH-1 : 0] m00_axis_tdata,
		output wire [(C_M00_AXIS_TDATA_WIDTH/8)-1 : 0] m00_axis_tstrb,
		output wire  m00_axis_tlast,
		input wire  m00_axis_tready
	);
	wire [31:0] axis_m_tdata_int;
	wire axis_m_tvalid_int;
	wire axis_m_tlast_int;
// Instantiation of Axi Bus Interface S00_AXIS
	AXIS_I2S_Transceiver_v1_0_S00_AXIS # ( 
		.C_S_AXIS_TDATA_WIDTH(C_S00_AXIS_TDATA_WIDTH)
	) AXIS_I2S_Transceiver_v1_0_S00_AXIS_inst (
		.S_AXIS_ACLK(s00_axis_aclk),
		.S_AXIS_ARESETN(s00_axis_aresetn),
		.S_AXIS_TREADY(s00_axis_tready),
		.S_AXIS_TDATA(s00_axis_tdata),
		.S_AXIS_TSTRB(s00_axis_tstrb),
		.S_AXIS_TLAST(s00_axis_tlast),
		.S_AXIS_TVALID(s00_axis_tvalid)
	);

// Instantiation of Axi Bus Interface M00_AXIS
	AXIS_I2S_Transceiver_v1_0_M00_AXIS # ( 
		.C_M_AXIS_TDATA_WIDTH(C_M00_AXIS_TDATA_WIDTH),
		.C_M_START_COUNT(C_M00_AXIS_START_COUNT)
	) AXIS_I2S_Transceiver_v1_0_M00_AXIS_inst (
		.axis_tdata_int(axis_m_tdata_int),
		.axis_tvalid_int(axis_m_tvalid_int),
		.axis_tlast_int(axis_m_tlast_int),
		.M_AXIS_ACLK(m00_axis_aclk),
		.M_AXIS_ARESETN(m00_axis_aresetn),
		.M_AXIS_TVALID(m00_axis_tvalid),
		.M_AXIS_TDATA(m00_axis_tdata),
		.M_AXIS_TSTRB(m00_axis_tstrb),
		.M_AXIS_TLAST(m00_axis_tlast),
		.M_AXIS_TREADY(m00_axis_tready)
	);

	// Add user logic here
	top # (
		.MCLK_DIVISION(MCLK_DIVISION)
	)
	I2S_Transceiver(
		.CLK_IN(m00_axis_aclk),
		.rst(rst),
		.rx_i2s_data(rx_i2s_data),
        .tx_i2s_data(tx_i2s_data),

        .axis_m_tdata_int(axis_m_tdata_int),
        .axis_m_tvalid_int(axis_m_tvalid_int),
		.axis_m_tlast_int(axis_m_tlast_int),

        .s_clk_adc(s_clk_adc),
        .s_clk_dac(s_clk_dac),
        .m_clk_adc(m_clk_adc),
        .m_clk_dac(m_clk_dac),
        .lr_clk_adc(lr_clk_adc),
        .lr_clk_dac(lr_clk_dac)
	);
	// User logic ends

	endmodule
