//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Tue Jul 16 20:46:34 2024
//Host        : DESKTOP-TP558OF running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=5,da_clkrst_cnt=1,da_ps7_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (lr_clk_adc,
    lr_clk_dac,
    m_clk_adc,
    m_clk_dac,
    rst,
    rx_i2s_data,
    s_clk_adc,
    s_clk_dac,
    sys_clock,
    tx_i2s_data);
  output lr_clk_adc;
  output lr_clk_dac;
  output m_clk_adc;
  output m_clk_dac;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input rst;
  input rx_i2s_data;
  output s_clk_adc;
  output s_clk_dac;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sys_clock;
  output tx_i2s_data;

  wire clk_wiz_0_clk_out1;
  wire reset_rtl_1;
  wire rx_i2s_data_0_1;
  wire sys_clock_1;
  wire top_0_lr_clk_adc;
  wire top_0_lr_clk_dac;
  wire top_0_m_clk_adc;
  wire top_0_m_clk_dac;
  wire top_0_s_clk_adc;
  wire top_0_s_clk_dac;
  wire top_0_tx_i2s_data;

  assign lr_clk_adc = top_0_lr_clk_adc;
  assign lr_clk_dac = top_0_lr_clk_dac;
  assign m_clk_adc = top_0_m_clk_adc;
  assign m_clk_dac = top_0_m_clk_dac;
  assign reset_rtl_1 = rst;
  assign rx_i2s_data_0_1 = rx_i2s_data;
  assign s_clk_adc = top_0_s_clk_adc;
  assign s_clk_dac = top_0_s_clk_dac;
  assign sys_clock_1 = sys_clock;
  assign tx_i2s_data = top_0_tx_i2s_data;
  design_1_clk_wiz_0_1 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(reset_rtl_1));
  design_1_top_0_0 top_0
       (.CLK_IN(clk_wiz_0_clk_out1),
        .lr_clk_adc(top_0_lr_clk_adc),
        .lr_clk_dac(top_0_lr_clk_dac),
        .m_clk_adc(top_0_m_clk_adc),
        .m_clk_dac(top_0_m_clk_dac),
        .rst(reset_rtl_1),
        .rx_i2s_data(rx_i2s_data_0_1),
        .s_clk_adc(top_0_s_clk_adc),
        .s_clk_dac(top_0_s_clk_dac),
        .tx_i2s_data(top_0_tx_i2s_data));
endmodule
