// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Aug 24 17:13:42 2026
// Host        : DESKTOP-TP558OF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/AMD/vivdoWS/i2s-transceiver/i2s_transceiver.gen/sources_1/bd/design_1/ip/design_1_AXIS_I2S_Transceiver_0_0/design_1_AXIS_I2S_Transceiver_0_0_stub.v
// Design      : design_1_AXIS_I2S_Transceiver_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "AXIS_I2S_Transceiver_v1_0,Vivado 2023.2" *)
module design_1_AXIS_I2S_Transceiver_0_0(rst, rx_i2s_data, tx_i2s_data, s_clk_adc, 
  s_clk_dac, m_clk_adc, m_clk_dac, lr_clk_adc, lr_clk_dac, s00_axis_aclk, s00_axis_aresetn, 
  s00_axis_tready, s00_axis_tdata, s00_axis_tstrb, s00_axis_tlast, s00_axis_tvalid, 
  m00_axis_aclk, m00_axis_aresetn, m00_axis_tvalid, m00_axis_tdata, m00_axis_tstrb, 
  m00_axis_tlast, m00_axis_tready)
/* synthesis syn_black_box black_box_pad_pin="rst,rx_i2s_data,tx_i2s_data,s_clk_adc,s_clk_dac,m_clk_adc,m_clk_dac,lr_clk_adc,lr_clk_dac,s00_axis_aresetn,s00_axis_tready,s00_axis_tdata[31:0],s00_axis_tstrb[3:0],s00_axis_tlast,s00_axis_tvalid,m00_axis_aresetn,m00_axis_tvalid,m00_axis_tdata[31:0],m00_axis_tstrb[3:0],m00_axis_tlast,m00_axis_tready" */
/* synthesis syn_force_seq_prim="s00_axis_aclk" */
/* synthesis syn_force_seq_prim="m00_axis_aclk" */;
  input rst;
  input rx_i2s_data;
  output tx_i2s_data;
  output s_clk_adc;
  output s_clk_dac;
  output m_clk_adc;
  output m_clk_dac;
  output lr_clk_adc;
  output lr_clk_dac;
  input s00_axis_aclk /* synthesis syn_isclock = 1 */;
  input s00_axis_aresetn;
  output s00_axis_tready;
  input [31:0]s00_axis_tdata;
  input [3:0]s00_axis_tstrb;
  input s00_axis_tlast;
  input s00_axis_tvalid;
  input m00_axis_aclk /* synthesis syn_isclock = 1 */;
  input m00_axis_aresetn;
  output m00_axis_tvalid;
  output [31:0]m00_axis_tdata;
  output [3:0]m00_axis_tstrb;
  output m00_axis_tlast;
  input m00_axis_tready;
endmodule
