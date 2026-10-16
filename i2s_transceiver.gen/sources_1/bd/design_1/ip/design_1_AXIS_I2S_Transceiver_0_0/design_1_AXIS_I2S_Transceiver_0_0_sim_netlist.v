// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Aug 24 17:13:42 2026
// Host        : DESKTOP-TP558OF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/AMD/vivdoWS/i2s-transceiver/i2s_transceiver.gen/sources_1/bd/design_1/ip/design_1_AXIS_I2S_Transceiver_0_0/design_1_AXIS_I2S_Transceiver_0_0_sim_netlist.v
// Design      : design_1_AXIS_I2S_Transceiver_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_AXIS_I2S_Transceiver_0_0,AXIS_I2S_Transceiver_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "AXIS_I2S_Transceiver_v1_0,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module design_1_AXIS_I2S_Transceiver_0_0
   (rst,
    rx_i2s_data,
    tx_i2s_data,
    s_clk_adc,
    s_clk_dac,
    m_clk_adc,
    m_clk_dac,
    lr_clk_adc,
    lr_clk_dac,
    s00_axis_aclk,
    s00_axis_aresetn,
    s00_axis_tready,
    s00_axis_tdata,
    s00_axis_tstrb,
    s00_axis_tlast,
    s00_axis_tvalid,
    m00_axis_aclk,
    m00_axis_aresetn,
    m00_axis_tvalid,
    m00_axis_tdata,
    m00_axis_tstrb,
    m00_axis_tlast,
    m00_axis_tready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input rx_i2s_data;
  output tx_i2s_data;
  output s_clk_adc;
  output s_clk_dac;
  output m_clk_adc;
  output m_clk_dac;
  output lr_clk_adc;
  output lr_clk_dac;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY" *) output s00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA" *) input [31:0]s00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB" *) input [3:0]s00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST" *) input s00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input m00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) output m00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) output [31:0]m00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB" *) output [3:0]m00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output m00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input m00_axis_tready;

  wire \<const0> ;
  wire \<const1> ;
  wire lr_clk_dac;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [0:0]\^m00_axis_tdata ;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire m_clk_dac;
  wire rst;
  wire rx_i2s_data;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire s_clk_dac;
  wire tx_i2s_data;

  assign lr_clk_adc = lr_clk_dac;
  assign m00_axis_tdata[31] = \<const0> ;
  assign m00_axis_tdata[30] = \<const0> ;
  assign m00_axis_tdata[29] = \<const0> ;
  assign m00_axis_tdata[28] = \<const0> ;
  assign m00_axis_tdata[27] = \<const0> ;
  assign m00_axis_tdata[26] = \<const0> ;
  assign m00_axis_tdata[25] = \<const0> ;
  assign m00_axis_tdata[24] = \<const0> ;
  assign m00_axis_tdata[23] = \<const0> ;
  assign m00_axis_tdata[22] = \<const0> ;
  assign m00_axis_tdata[21] = \<const0> ;
  assign m00_axis_tdata[20] = \<const0> ;
  assign m00_axis_tdata[19] = \<const0> ;
  assign m00_axis_tdata[18] = \<const0> ;
  assign m00_axis_tdata[17] = \<const0> ;
  assign m00_axis_tdata[16] = \<const0> ;
  assign m00_axis_tdata[15] = \<const0> ;
  assign m00_axis_tdata[14] = \<const0> ;
  assign m00_axis_tdata[13] = \<const0> ;
  assign m00_axis_tdata[12] = \<const0> ;
  assign m00_axis_tdata[11] = \<const0> ;
  assign m00_axis_tdata[10] = \<const0> ;
  assign m00_axis_tdata[9] = \<const0> ;
  assign m00_axis_tdata[8] = \<const0> ;
  assign m00_axis_tdata[7] = \<const0> ;
  assign m00_axis_tdata[6] = \<const0> ;
  assign m00_axis_tdata[5] = \<const0> ;
  assign m00_axis_tdata[4] = \<const0> ;
  assign m00_axis_tdata[3] = \<const0> ;
  assign m00_axis_tdata[2] = \<const0> ;
  assign m00_axis_tdata[1] = \<const0> ;
  assign m00_axis_tdata[0] = \^m00_axis_tdata [0];
  assign m00_axis_tstrb[3] = \<const1> ;
  assign m00_axis_tstrb[2] = \<const1> ;
  assign m00_axis_tstrb[1] = \<const1> ;
  assign m00_axis_tstrb[0] = \<const1> ;
  assign m_clk_adc = m_clk_dac;
  assign s_clk_adc = s_clk_dac;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_1_AXIS_I2S_Transceiver_0_0_AXIS_I2S_Transceiver_v1_0 inst
       (.m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(\^m00_axis_tdata ),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .m_clk_dac(m_clk_dac),
        .mst_exec_state_reg(s00_axis_tready),
        .out_buf_reg(lr_clk_dac),
        .out_buf_reg_0(s_clk_dac),
        .rst(rst),
        .rx_i2s_data(rx_i2s_data),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tvalid(s00_axis_tvalid),
        .tx_i2s_data(tx_i2s_data));
endmodule

(* ORIG_REF_NAME = "AXIS_I2S_Transceiver_v1_0" *) 
module design_1_AXIS_I2S_Transceiver_0_0_AXIS_I2S_Transceiver_v1_0
   (out_buf_reg,
    out_buf_reg_0,
    m_clk_dac,
    mst_exec_state_reg,
    m00_axis_tdata,
    tx_i2s_data,
    m00_axis_tvalid,
    m00_axis_tlast,
    m00_axis_aresetn,
    m00_axis_aclk,
    s00_axis_tvalid,
    s00_axis_aresetn,
    s00_axis_aclk,
    rx_i2s_data,
    rst,
    s00_axis_tlast,
    m00_axis_tready);
  output out_buf_reg;
  output out_buf_reg_0;
  output m_clk_dac;
  output mst_exec_state_reg;
  output [0:0]m00_axis_tdata;
  output tx_i2s_data;
  output m00_axis_tvalid;
  output m00_axis_tlast;
  input m00_axis_aresetn;
  input m00_axis_aclk;
  input s00_axis_tvalid;
  input s00_axis_aresetn;
  input s00_axis_aclk;
  input rx_i2s_data;
  input rst;
  input s00_axis_tlast;
  input m00_axis_tready;

  wire I2S_Transceiver_n_5;
  wire axis_m_tvalid_int;
  wire axis_tdata_int;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [0:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire m_clk_dac;
  wire mst_exec_state_reg;
  wire out_buf_reg;
  wire out_buf_reg_0;
  wire rst;
  wire rx_i2s_data;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire s00_axis_tlast;
  wire s00_axis_tvalid;
  wire tx_i2s_data;

  design_1_AXIS_I2S_Transceiver_0_0_AXIS_I2S_Transceiver_v1_0_M00_AXIS AXIS_I2S_Transceiver_v1_0_M00_AXIS_inst
       (.axis_m_tdata(axis_tdata_int),
        .axis_m_tvalid_int(axis_m_tvalid_int),
        .axis_tlast_delay_reg_0(I2S_Transceiver_n_5),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid));
  design_1_AXIS_I2S_Transceiver_0_0_AXIS_I2S_Transceiver_v1_0_S00_AXIS AXIS_I2S_Transceiver_v1_0_S00_AXIS_inst
       (.mst_exec_state_reg_0(mst_exec_state_reg),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tvalid(s00_axis_tvalid));
  design_1_AXIS_I2S_Transceiver_0_0_top I2S_Transceiver
       (.axis_m_tdata(axis_tdata_int),
        .axis_m_tvalid_int(axis_m_tvalid_int),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m_clk_dac(m_clk_dac),
        .\mem_counter_reg[0] (I2S_Transceiver_n_5),
        .out_buf_reg(out_buf_reg_0),
        .out_buf_reg_0(out_buf_reg),
        .rst(rst),
        .rx_i2s_data(rx_i2s_data),
        .tx_i2s_data(tx_i2s_data));
endmodule

(* ORIG_REF_NAME = "AXIS_I2S_Transceiver_v1_0_M00_AXIS" *) 
module design_1_AXIS_I2S_Transceiver_0_0_AXIS_I2S_Transceiver_v1_0_M00_AXIS
   (m00_axis_tdata,
    m00_axis_tvalid,
    m00_axis_tlast,
    axis_m_tdata,
    m00_axis_aclk,
    axis_tlast_delay_reg_0,
    m00_axis_tready,
    axis_m_tvalid_int,
    m00_axis_aresetn);
  output [0:0]m00_axis_tdata;
  output m00_axis_tvalid;
  output m00_axis_tlast;
  input [0:0]axis_m_tdata;
  input m00_axis_aclk;
  input axis_tlast_delay_reg_0;
  input m00_axis_tready;
  input axis_m_tvalid_int;
  input m00_axis_aresetn;

  wire \FSM_sequential_mst_exec_state[0]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_2_n_0 ;
  wire [0:0]axis_m_tdata;
  wire axis_m_tvalid_int;
  wire axis_tlast_delay_reg_0;
  wire axis_tvalid_delay_i_1_n_0;
  wire count;
  wire [4:0]count_reg;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [0:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [1:0]mst_exec_state;
  wire [4:0]p_0_in;
  wire [3:0]p_0_in__0;
  wire [3:0]read_pointer_reg;
  wire \stream_data_out[0]_i_1_n_0 ;
  wire tx_done;
  wire tx_done_i_1_n_0;
  wire tx_done_i_2_n_0;
  wire tx_done_reg_n_0;
  wire tx_en;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hB900)) 
    \FSM_sequential_mst_exec_state[0]_i_1 
       (.I0(mst_exec_state[0]),
        .I1(mst_exec_state[1]),
        .I2(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .I3(m00_axis_aresetn),
        .O(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h8CAE0000)) 
    \FSM_sequential_mst_exec_state[1]_i_1 
       (.I0(mst_exec_state[0]),
        .I1(mst_exec_state[1]),
        .I2(tx_done_reg_n_0),
        .I3(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .I4(m00_axis_aresetn),
        .O(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \FSM_sequential_mst_exec_state[1]_i_2 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .I4(count_reg[4]),
        .O(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ),
        .Q(mst_exec_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ),
        .Q(mst_exec_state[1]),
        .R(1'b0));
  FDRE axis_tlast_delay_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tlast_delay_reg_0),
        .Q(m00_axis_tlast),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4000)) 
    axis_tvalid_delay_i_1
       (.I0(mst_exec_state[0]),
        .I1(mst_exec_state[1]),
        .I2(axis_m_tvalid_int),
        .I3(m00_axis_aresetn),
        .O(axis_tvalid_delay_i_1_n_0));
  FDRE axis_tvalid_delay_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tvalid_delay_i_1_n_0),
        .Q(m00_axis_tvalid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_1 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .O(p_0_in[3]));
  LUT3 #(
    .INIT(8'h08)) 
    \count[4]_i_1 
       (.I0(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[1]),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[4]_i_2 
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[3]),
        .O(p_0_in[4]));
  FDRE \count_reg[0] 
       (.C(m00_axis_aclk),
        .CE(count),
        .D(p_0_in[0]),
        .Q(count_reg[0]),
        .R(\stream_data_out[0]_i_1_n_0 ));
  FDRE \count_reg[1] 
       (.C(m00_axis_aclk),
        .CE(count),
        .D(p_0_in[1]),
        .Q(count_reg[1]),
        .R(\stream_data_out[0]_i_1_n_0 ));
  FDRE \count_reg[2] 
       (.C(m00_axis_aclk),
        .CE(count),
        .D(p_0_in[2]),
        .Q(count_reg[2]),
        .R(\stream_data_out[0]_i_1_n_0 ));
  FDRE \count_reg[3] 
       (.C(m00_axis_aclk),
        .CE(count),
        .D(p_0_in[3]),
        .Q(count_reg[3]),
        .R(\stream_data_out[0]_i_1_n_0 ));
  FDRE \count_reg[4] 
       (.C(m00_axis_aclk),
        .CE(count),
        .D(p_0_in[4]),
        .Q(count_reg[4]),
        .R(\stream_data_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \read_pointer[0]_i_1 
       (.I0(read_pointer_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \read_pointer[1]_i_1 
       (.I0(read_pointer_reg[0]),
        .I1(read_pointer_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \read_pointer[2]_i_1 
       (.I0(read_pointer_reg[2]),
        .I1(read_pointer_reg[1]),
        .I2(read_pointer_reg[0]),
        .O(p_0_in__0[2]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \read_pointer[3]_i_1 
       (.I0(axis_m_tvalid_int),
        .I1(mst_exec_state[1]),
        .I2(mst_exec_state[0]),
        .I3(m00_axis_tready),
        .I4(read_pointer_reg[3]),
        .O(tx_done));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \read_pointer[3]_i_2 
       (.I0(read_pointer_reg[0]),
        .I1(read_pointer_reg[1]),
        .I2(read_pointer_reg[2]),
        .O(p_0_in__0[3]));
  FDRE \read_pointer_reg[0] 
       (.C(m00_axis_aclk),
        .CE(tx_done),
        .D(p_0_in__0[0]),
        .Q(read_pointer_reg[0]),
        .R(\stream_data_out[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[1] 
       (.C(m00_axis_aclk),
        .CE(tx_done),
        .D(p_0_in__0[1]),
        .Q(read_pointer_reg[1]),
        .R(\stream_data_out[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[2] 
       (.C(m00_axis_aclk),
        .CE(tx_done),
        .D(p_0_in__0[2]),
        .Q(read_pointer_reg[2]),
        .R(\stream_data_out[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[3] 
       (.C(m00_axis_aclk),
        .CE(tx_done),
        .D(p_0_in__0[3]),
        .Q(read_pointer_reg[3]),
        .R(\stream_data_out[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \stream_data_out[0]_i_1 
       (.I0(m00_axis_aresetn),
        .O(\stream_data_out[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \stream_data_out[0]_i_2 
       (.I0(m00_axis_tready),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[1]),
        .I3(axis_m_tvalid_int),
        .O(tx_en));
  FDRE \stream_data_out_reg[0] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(axis_m_tdata),
        .Q(m00_axis_tdata),
        .R(\stream_data_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA8AAAAAAAAAAAAA)) 
    tx_done_i_1
       (.I0(tx_done_i_2_n_0),
        .I1(read_pointer_reg[3]),
        .I2(m00_axis_tready),
        .I3(mst_exec_state[0]),
        .I4(mst_exec_state[1]),
        .I5(axis_m_tvalid_int),
        .O(tx_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h88888888888A8888)) 
    tx_done_i_2
       (.I0(m00_axis_aresetn),
        .I1(tx_done_reg_n_0),
        .I2(read_pointer_reg[1]),
        .I3(read_pointer_reg[0]),
        .I4(read_pointer_reg[3]),
        .I5(read_pointer_reg[2]),
        .O(tx_done_i_2_n_0));
  FDRE tx_done_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(tx_done_i_1_n_0),
        .Q(tx_done_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "AXIS_I2S_Transceiver_v1_0_S00_AXIS" *) 
module design_1_AXIS_I2S_Transceiver_0_0_AXIS_I2S_Transceiver_v1_0_S00_AXIS
   (mst_exec_state_reg_0,
    s00_axis_tlast,
    s00_axis_aclk,
    s00_axis_tvalid,
    s00_axis_aresetn);
  output mst_exec_state_reg_0;
  input s00_axis_tlast;
  input s00_axis_aclk;
  input s00_axis_tvalid;
  input s00_axis_aresetn;

  wire mst_exec_state_i_1_n_0;
  wire mst_exec_state_reg_0;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire s00_axis_tlast;
  wire s00_axis_tvalid;
  wire [2:0]write_pointer;
  wire \write_pointer[0]_i_1_n_0 ;
  wire \write_pointer[1]_i_1_n_0 ;
  wire \write_pointer[2]_i_1_n_0 ;
  wire writes_done;
  wire writes_done0_n_0;
  wire writes_done_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2E00)) 
    mst_exec_state_i_1
       (.I0(s00_axis_tvalid),
        .I1(mst_exec_state_reg_0),
        .I2(writes_done),
        .I3(s00_axis_aresetn),
        .O(mst_exec_state_i_1_n_0));
  FDRE mst_exec_state_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(mst_exec_state_i_1_n_0),
        .Q(mst_exec_state_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \write_pointer[0]_i_1 
       (.I0(write_pointer[0]),
        .I1(s00_axis_tvalid),
        .I2(mst_exec_state_reg_0),
        .I3(s00_axis_aresetn),
        .O(\write_pointer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \write_pointer[1]_i_1 
       (.I0(write_pointer[1]),
        .I1(mst_exec_state_reg_0),
        .I2(s00_axis_tvalid),
        .I3(write_pointer[0]),
        .I4(s00_axis_aresetn),
        .O(\write_pointer[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \write_pointer[2]_i_1 
       (.I0(write_pointer[2]),
        .I1(mst_exec_state_reg_0),
        .I2(s00_axis_tvalid),
        .I3(write_pointer[1]),
        .I4(write_pointer[0]),
        .I5(s00_axis_aresetn),
        .O(\write_pointer[2]_i_1_n_0 ));
  FDRE \write_pointer_reg[0] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\write_pointer[0]_i_1_n_0 ),
        .Q(write_pointer[0]),
        .R(1'b0));
  FDRE \write_pointer_reg[1] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\write_pointer[1]_i_1_n_0 ),
        .Q(write_pointer[1]),
        .R(1'b0));
  FDRE \write_pointer_reg[2] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\write_pointer[2]_i_1_n_0 ),
        .Q(write_pointer[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFF80)) 
    writes_done0
       (.I0(write_pointer[2]),
        .I1(write_pointer[0]),
        .I2(write_pointer[1]),
        .I3(s00_axis_tlast),
        .O(writes_done0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFF2A0000)) 
    writes_done_i_1
       (.I0(writes_done),
        .I1(s00_axis_tvalid),
        .I2(mst_exec_state_reg_0),
        .I3(writes_done0_n_0),
        .I4(s00_axis_aresetn),
        .O(writes_done_i_1_n_0));
  FDRE writes_done_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(writes_done_i_1_n_0),
        .Q(writes_done),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clk_divider" *) 
module design_1_AXIS_I2S_Transceiver_0_0_clk_divider
   (m_clk_dac,
    m00_axis_aclk,
    \counter_reg[0]_0 );
  output m_clk_dac;
  input m00_axis_aclk;
  input \counter_reg[0]_0 ;

  wire [11:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire [11:0]counter_0;
  wire \counter_reg[0]_0 ;
  wire [11:1]data0;
  wire m00_axis_aclk;
  wire m_clk_dac;
  wire out_buf_i_1__1_n_0;
  wire out_buf_i_2__0_n_0;
  wire [3:2]NLW_counter0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__1_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({NLW_counter0_carry__1_CO_UNCONNECTED[3:2],counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__1_O_UNCONNECTED[3],data0[11:9]}),
        .S({1'b0,counter[11:9]}));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \counter[0]_i_1__3 
       (.I0(counter[11]),
        .I1(counter[10]),
        .I2(counter[1]),
        .I3(\counter[0]_i_2_n_0 ),
        .I4(\counter[0]_i_3_n_0 ),
        .I5(counter[0]),
        .O(counter_0[0]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[0]_i_2 
       (.I0(counter[7]),
        .I1(counter[6]),
        .I2(counter[9]),
        .I3(counter[8]),
        .O(\counter[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \counter[0]_i_3 
       (.I0(counter[2]),
        .I1(counter[3]),
        .I2(counter[5]),
        .I3(counter[4]),
        .O(\counter[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[10]_i_1__1 
       (.I0(out_buf_i_2__0_n_0),
        .I1(data0[10]),
        .O(counter_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[11]_i_1__1 
       (.I0(out_buf_i_2__0_n_0),
        .I1(data0[11]),
        .O(counter_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[1]_i_1__3 
       (.I0(out_buf_i_2__0_n_0),
        .I1(data0[1]),
        .O(counter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[2]_i_1__2 
       (.I0(out_buf_i_2__0_n_0),
        .I1(data0[2]),
        .O(counter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[3]_i_1__3 
       (.I0(out_buf_i_2__0_n_0),
        .I1(data0[3]),
        .O(counter_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[4]_i_1__3 
       (.I0(out_buf_i_2__0_n_0),
        .I1(data0[4]),
        .O(counter_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[5]_i_1__1 
       (.I0(out_buf_i_2__0_n_0),
        .I1(data0[5]),
        .O(counter_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[6]_i_1__1 
       (.I0(out_buf_i_2__0_n_0),
        .I1(data0[6]),
        .O(counter_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[7]_i_1__1 
       (.I0(out_buf_i_2__0_n_0),
        .I1(data0[7]),
        .O(counter_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[8]_i_1__1 
       (.I0(out_buf_i_2__0_n_0),
        .I1(data0[8]),
        .O(counter_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[9]_i_1__1 
       (.I0(out_buf_i_2__0_n_0),
        .I1(data0[9]),
        .O(counter_0[9]));
  FDCE \counter_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(\counter_reg[0]_0 ),
        .D(counter_0[0]),
        .Q(counter[0]));
  FDCE \counter_reg[10] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(\counter_reg[0]_0 ),
        .D(counter_0[10]),
        .Q(counter[10]));
  FDCE \counter_reg[11] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(\counter_reg[0]_0 ),
        .D(counter_0[11]),
        .Q(counter[11]));
  FDCE \counter_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(\counter_reg[0]_0 ),
        .D(counter_0[1]),
        .Q(counter[1]));
  FDCE \counter_reg[2] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(\counter_reg[0]_0 ),
        .D(counter_0[2]),
        .Q(counter[2]));
  FDCE \counter_reg[3] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(\counter_reg[0]_0 ),
        .D(counter_0[3]),
        .Q(counter[3]));
  FDCE \counter_reg[4] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(\counter_reg[0]_0 ),
        .D(counter_0[4]),
        .Q(counter[4]));
  FDCE \counter_reg[5] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(\counter_reg[0]_0 ),
        .D(counter_0[5]),
        .Q(counter[5]));
  FDCE \counter_reg[6] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(\counter_reg[0]_0 ),
        .D(counter_0[6]),
        .Q(counter[6]));
  FDCE \counter_reg[7] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(\counter_reg[0]_0 ),
        .D(counter_0[7]),
        .Q(counter[7]));
  FDCE \counter_reg[8] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(\counter_reg[0]_0 ),
        .D(counter_0[8]),
        .Q(counter[8]));
  FDCE \counter_reg[9] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(\counter_reg[0]_0 ),
        .D(counter_0[9]),
        .Q(counter[9]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h9)) 
    out_buf_i_1__1
       (.I0(out_buf_i_2__0_n_0),
        .I1(m_clk_dac),
        .O(out_buf_i_1__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    out_buf_i_2__0
       (.I0(\counter[0]_i_3_n_0 ),
        .I1(\counter[0]_i_2_n_0 ),
        .I2(counter[1]),
        .I3(counter[10]),
        .I4(counter[11]),
        .I5(counter[0]),
        .O(out_buf_i_2__0_n_0));
  FDCE out_buf_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(\counter_reg[0]_0 ),
        .D(out_buf_i_1__1_n_0),
        .Q(m_clk_dac));
endmodule

(* ORIG_REF_NAME = "clk_divider" *) 
module design_1_AXIS_I2S_Transceiver_0_0_clk_divider__parameterized0
   (out_buf_reg_0,
    m00_axis_aclk,
    out_buf_reg_1);
  output out_buf_reg_0;
  input m00_axis_aclk;
  input out_buf_reg_1;

  wire [11:0]counter;
  wire \counter_reg[11]_i_2_n_2 ;
  wire \counter_reg[11]_i_2_n_3 ;
  wire \counter_reg[11]_i_2_n_5 ;
  wire \counter_reg[11]_i_2_n_6 ;
  wire \counter_reg[11]_i_2_n_7 ;
  wire \counter_reg[4]_i_2_n_0 ;
  wire \counter_reg[4]_i_2_n_1 ;
  wire \counter_reg[4]_i_2_n_2 ;
  wire \counter_reg[4]_i_2_n_3 ;
  wire \counter_reg[4]_i_2_n_4 ;
  wire \counter_reg[4]_i_2_n_5 ;
  wire \counter_reg[4]_i_2_n_6 ;
  wire \counter_reg[4]_i_2_n_7 ;
  wire \counter_reg[8]_i_2_n_0 ;
  wire \counter_reg[8]_i_2_n_1 ;
  wire \counter_reg[8]_i_2_n_2 ;
  wire \counter_reg[8]_i_2_n_3 ;
  wire \counter_reg[8]_i_2_n_4 ;
  wire \counter_reg[8]_i_2_n_5 ;
  wire \counter_reg[8]_i_2_n_6 ;
  wire \counter_reg[8]_i_2_n_7 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire m00_axis_aclk;
  wire out_buf_i_1__0_n_0;
  wire out_buf_i_3__0_n_0;
  wire out_buf_i_4__0_n_0;
  wire out_buf_i_5_n_0;
  wire out_buf_reg_0;
  wire out_buf_reg_1;
  wire [3:2]\NLW_counter_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[11]_i_2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__2 
       (.I0(\counter_reg_n_0_[0] ),
        .O(counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[10]_i_1__0 
       (.I0(out_buf_i_3__0_n_0),
        .I1(\counter_reg[11]_i_2_n_6 ),
        .O(counter[10]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[11]_i_1__0 
       (.I0(out_buf_i_3__0_n_0),
        .I1(\counter_reg[11]_i_2_n_5 ),
        .O(counter[11]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[1]_i_1__2 
       (.I0(out_buf_i_3__0_n_0),
        .I1(\counter_reg[4]_i_2_n_7 ),
        .O(counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[2]_i_1__1 
       (.I0(out_buf_i_3__0_n_0),
        .I1(\counter_reg[4]_i_2_n_6 ),
        .O(counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[3]_i_1__2 
       (.I0(out_buf_i_3__0_n_0),
        .I1(\counter_reg[4]_i_2_n_5 ),
        .O(counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[4]_i_1__2 
       (.I0(out_buf_i_3__0_n_0),
        .I1(\counter_reg[4]_i_2_n_4 ),
        .O(counter[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[5]_i_1__0 
       (.I0(out_buf_i_3__0_n_0),
        .I1(\counter_reg[8]_i_2_n_7 ),
        .O(counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[6]_i_1__0 
       (.I0(out_buf_i_3__0_n_0),
        .I1(\counter_reg[8]_i_2_n_6 ),
        .O(counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[7]_i_1__0 
       (.I0(out_buf_i_3__0_n_0),
        .I1(\counter_reg[8]_i_2_n_5 ),
        .O(counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[8]_i_1__0 
       (.I0(out_buf_i_3__0_n_0),
        .I1(\counter_reg[8]_i_2_n_4 ),
        .O(counter[8]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[9]_i_1__0 
       (.I0(out_buf_i_3__0_n_0),
        .I1(\counter_reg[11]_i_2_n_7 ),
        .O(counter[9]));
  FDCE \counter_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(out_buf_reg_1),
        .D(counter[0]),
        .Q(\counter_reg_n_0_[0] ));
  FDCE \counter_reg[10] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(out_buf_reg_1),
        .D(counter[10]),
        .Q(\counter_reg_n_0_[10] ));
  FDCE \counter_reg[11] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(out_buf_reg_1),
        .D(counter[11]),
        .Q(\counter_reg_n_0_[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[11]_i_2 
       (.CI(\counter_reg[8]_i_2_n_0 ),
        .CO({\NLW_counter_reg[11]_i_2_CO_UNCONNECTED [3:2],\counter_reg[11]_i_2_n_2 ,\counter_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[11]_i_2_O_UNCONNECTED [3],\counter_reg[11]_i_2_n_5 ,\counter_reg[11]_i_2_n_6 ,\counter_reg[11]_i_2_n_7 }),
        .S({1'b0,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  FDCE \counter_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(out_buf_reg_1),
        .D(counter[1]),
        .Q(\counter_reg_n_0_[1] ));
  FDCE \counter_reg[2] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(out_buf_reg_1),
        .D(counter[2]),
        .Q(\counter_reg_n_0_[2] ));
  FDCE \counter_reg[3] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(out_buf_reg_1),
        .D(counter[3]),
        .Q(\counter_reg_n_0_[3] ));
  FDCE \counter_reg[4] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(out_buf_reg_1),
        .D(counter[4]),
        .Q(\counter_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_2_n_0 ,\counter_reg[4]_i_2_n_1 ,\counter_reg[4]_i_2_n_2 ,\counter_reg[4]_i_2_n_3 }),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_2_n_4 ,\counter_reg[4]_i_2_n_5 ,\counter_reg[4]_i_2_n_6 ,\counter_reg[4]_i_2_n_7 }),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  FDCE \counter_reg[5] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(out_buf_reg_1),
        .D(counter[5]),
        .Q(\counter_reg_n_0_[5] ));
  FDCE \counter_reg[6] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(out_buf_reg_1),
        .D(counter[6]),
        .Q(\counter_reg_n_0_[6] ));
  FDCE \counter_reg[7] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(out_buf_reg_1),
        .D(counter[7]),
        .Q(\counter_reg_n_0_[7] ));
  FDCE \counter_reg[8] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(out_buf_reg_1),
        .D(counter[8]),
        .Q(\counter_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[8]_i_2 
       (.CI(\counter_reg[4]_i_2_n_0 ),
        .CO({\counter_reg[8]_i_2_n_0 ,\counter_reg[8]_i_2_n_1 ,\counter_reg[8]_i_2_n_2 ,\counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_2_n_4 ,\counter_reg[8]_i_2_n_5 ,\counter_reg[8]_i_2_n_6 ,\counter_reg[8]_i_2_n_7 }),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  FDCE \counter_reg[9] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(out_buf_reg_1),
        .D(counter[9]),
        .Q(\counter_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h9)) 
    out_buf_i_1__0
       (.I0(out_buf_i_3__0_n_0),
        .I1(out_buf_reg_0),
        .O(out_buf_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    out_buf_i_3__0
       (.I0(out_buf_i_4__0_n_0),
        .I1(\counter_reg_n_0_[4] ),
        .I2(\counter_reg_n_0_[5] ),
        .I3(\counter_reg_n_0_[7] ),
        .I4(\counter_reg_n_0_[6] ),
        .I5(out_buf_i_5_n_0),
        .O(out_buf_i_3__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    out_buf_i_4__0
       (.I0(\counter_reg_n_0_[9] ),
        .I1(\counter_reg_n_0_[8] ),
        .I2(\counter_reg_n_0_[11] ),
        .I3(\counter_reg_n_0_[10] ),
        .O(out_buf_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    out_buf_i_5
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[3] ),
        .I3(\counter_reg_n_0_[2] ),
        .O(out_buf_i_5_n_0));
  FDCE out_buf_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(out_buf_reg_1),
        .D(out_buf_i_1__0_n_0),
        .Q(out_buf_reg_0));
endmodule

(* ORIG_REF_NAME = "clk_divider" *) 
module design_1_AXIS_I2S_Transceiver_0_0_clk_divider__parameterized1
   (out_buf_reg_0,
    out_buf_reg_1,
    m00_axis_aclk,
    out_buf_reg_2,
    last_s_clk_state,
    \input_right_channel_reg[23] );
  output out_buf_reg_0;
  output out_buf_reg_1;
  input m00_axis_aclk;
  input out_buf_reg_2;
  input last_s_clk_state;
  input \input_right_channel_reg[23] ;

  wire [11:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__0_n_4;
  wire counter0_carry__0_n_5;
  wire counter0_carry__0_n_6;
  wire counter0_carry__0_n_7;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__1_n_5;
  wire counter0_carry__1_n_6;
  wire counter0_carry__1_n_7;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire counter0_carry_n_4;
  wire counter0_carry_n_5;
  wire counter0_carry_n_6;
  wire counter0_carry_n_7;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire \input_right_channel_reg[23] ;
  wire last_s_clk_state;
  wire m00_axis_aclk;
  wire out_buf_i_1_n_0;
  wire out_buf_i_2_n_0;
  wire out_buf_i_3_n_0;
  wire out_buf_i_4_n_0;
  wire out_buf_reg_0;
  wire out_buf_reg_1;
  wire out_buf_reg_2;
  wire [3:2]NLW_counter0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__1_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry_n_4,counter0_carry_n_5,counter0_carry_n_6,counter0_carry_n_7}),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__0_n_4,counter0_carry__0_n_5,counter0_carry__0_n_6,counter0_carry__0_n_7}),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({NLW_counter0_carry__1_CO_UNCONNECTED[3:2],counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__1_O_UNCONNECTED[3],counter0_carry__1_n_5,counter0_carry__1_n_6,counter0_carry__1_n_7}),
        .S({1'b0,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__1 
       (.I0(\counter_reg_n_0_[0] ),
        .O(counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[10]_i_1 
       (.I0(out_buf_i_2_n_0),
        .I1(counter0_carry__1_n_6),
        .O(counter[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[11]_i_1 
       (.I0(out_buf_i_2_n_0),
        .I1(counter0_carry__1_n_5),
        .O(counter[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[1]_i_1__1 
       (.I0(out_buf_i_2_n_0),
        .I1(counter0_carry_n_7),
        .O(counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[2]_i_1__0 
       (.I0(out_buf_i_2_n_0),
        .I1(counter0_carry_n_6),
        .O(counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[3]_i_1__1 
       (.I0(out_buf_i_2_n_0),
        .I1(counter0_carry_n_5),
        .O(counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[4]_i_1__1 
       (.I0(out_buf_i_2_n_0),
        .I1(counter0_carry_n_4),
        .O(counter[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[5]_i_1 
       (.I0(out_buf_i_2_n_0),
        .I1(counter0_carry__0_n_7),
        .O(counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[6]_i_1 
       (.I0(out_buf_i_2_n_0),
        .I1(counter0_carry__0_n_6),
        .O(counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[7]_i_1 
       (.I0(out_buf_i_2_n_0),
        .I1(counter0_carry__0_n_5),
        .O(counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[8]_i_1 
       (.I0(out_buf_i_2_n_0),
        .I1(counter0_carry__0_n_4),
        .O(counter[8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[9]_i_1 
       (.I0(out_buf_i_2_n_0),
        .I1(counter0_carry__1_n_7),
        .O(counter[9]));
  FDCE \counter_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(out_buf_reg_2),
        .D(counter[0]),
        .Q(\counter_reg_n_0_[0] ));
  FDCE \counter_reg[10] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(out_buf_reg_2),
        .D(counter[10]),
        .Q(\counter_reg_n_0_[10] ));
  FDCE \counter_reg[11] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(out_buf_reg_2),
        .D(counter[11]),
        .Q(\counter_reg_n_0_[11] ));
  FDCE \counter_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(out_buf_reg_2),
        .D(counter[1]),
        .Q(\counter_reg_n_0_[1] ));
  FDCE \counter_reg[2] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(out_buf_reg_2),
        .D(counter[2]),
        .Q(\counter_reg_n_0_[2] ));
  FDCE \counter_reg[3] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(out_buf_reg_2),
        .D(counter[3]),
        .Q(\counter_reg_n_0_[3] ));
  FDCE \counter_reg[4] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(out_buf_reg_2),
        .D(counter[4]),
        .Q(\counter_reg_n_0_[4] ));
  FDCE \counter_reg[5] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(out_buf_reg_2),
        .D(counter[5]),
        .Q(\counter_reg_n_0_[5] ));
  FDCE \counter_reg[6] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(out_buf_reg_2),
        .D(counter[6]),
        .Q(\counter_reg_n_0_[6] ));
  FDCE \counter_reg[7] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(out_buf_reg_2),
        .D(counter[7]),
        .Q(\counter_reg_n_0_[7] ));
  FDCE \counter_reg[8] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(out_buf_reg_2),
        .D(counter[8]),
        .Q(\counter_reg_n_0_[8] ));
  FDCE \counter_reg[9] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(out_buf_reg_2),
        .D(counter[9]),
        .Q(\counter_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h20)) 
    data_valid_i_3
       (.I0(out_buf_reg_0),
        .I1(last_s_clk_state),
        .I2(\input_right_channel_reg[23] ),
        .O(out_buf_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h9)) 
    out_buf_i_1
       (.I0(out_buf_i_2_n_0),
        .I1(out_buf_reg_0),
        .O(out_buf_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    out_buf_i_2
       (.I0(out_buf_i_3_n_0),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[7] ),
        .I4(\counter_reg_n_0_[6] ),
        .I5(out_buf_i_4_n_0),
        .O(out_buf_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    out_buf_i_3
       (.I0(\counter_reg_n_0_[9] ),
        .I1(\counter_reg_n_0_[8] ),
        .I2(\counter_reg_n_0_[10] ),
        .I3(\counter_reg_n_0_[11] ),
        .O(out_buf_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    out_buf_i_4
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[3] ),
        .I3(\counter_reg_n_0_[2] ),
        .O(out_buf_i_4_n_0));
  FDCE out_buf_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(out_buf_reg_2),
        .D(out_buf_i_1_n_0),
        .Q(out_buf_reg_0));
endmodule

(* ORIG_REF_NAME = "i2s_mem" *) 
module design_1_AXIS_I2S_Transceiver_0_0_i2s_mem
   (axis_m_tvalid_int,
    tx_i2s_data,
    \mem_counter_reg[0]_0 ,
    axis_m_tdata,
    \mem_counter_reg[4]_0 ,
    m00_axis_aclk,
    data_valid,
    rst,
    counter_reg,
    m00_axis_aresetn,
    rx_i2s_data_reg);
  output axis_m_tvalid_int;
  output tx_i2s_data;
  output \mem_counter_reg[0]_0 ;
  output [0:0]axis_m_tdata;
  input \mem_counter_reg[4]_0 ;
  input m00_axis_aclk;
  input data_valid;
  input rst;
  input [4:0]counter_reg;
  input m00_axis_aresetn;
  input [23:0]rx_i2s_data_reg;

  wire [0:0]axis_m_tdata;
  wire axis_m_tvalid_int;
  wire axis_m_tvalid_reg_i_1_n_0;
  wire axis_m_tvalid_reg_i_2_n_0;
  wire [4:0]counter;
  wire \counter[0]_i_1__0_n_0 ;
  wire \counter[1]_i_1__0_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[2]_i_2_n_0 ;
  wire \counter[2]_i_3_n_0 ;
  wire \counter[3]_i_1__0_n_0 ;
  wire \counter[4]_i_1__0_n_0 ;
  wire [4:0]counter_reg;
  wire data_valid;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [4:0]mem_counter;
  wire \mem_counter[0]_i_2_n_0 ;
  wire \mem_counter[1]_i_1_n_0 ;
  wire \mem_counter[2]_i_1_n_0 ;
  wire \mem_counter[3]_i_1_n_0 ;
  wire \mem_counter[4]_i_1_n_0 ;
  wire mem_counter__0;
  wire \mem_counter_reg[0]_0 ;
  wire \mem_counter_reg[4]_0 ;
  wire receive_data_reg_0_31_0_5_n_0;
  wire receive_data_reg_0_31_0_5_n_2;
  wire receive_data_reg_0_31_0_5_n_3;
  wire receive_data_reg_0_31_0_5_n_4;
  wire receive_data_reg_0_31_0_5_n_5;
  wire receive_data_reg_0_31_12_17_n_0;
  wire receive_data_reg_0_31_12_17_n_1;
  wire receive_data_reg_0_31_12_17_n_2;
  wire receive_data_reg_0_31_12_17_n_3;
  wire receive_data_reg_0_31_12_17_n_4;
  wire receive_data_reg_0_31_12_17_n_5;
  wire receive_data_reg_0_31_18_23_n_0;
  wire receive_data_reg_0_31_18_23_n_1;
  wire receive_data_reg_0_31_18_23_n_2;
  wire receive_data_reg_0_31_18_23_n_3;
  wire receive_data_reg_0_31_18_23_n_4;
  wire receive_data_reg_0_31_18_23_n_5;
  wire receive_data_reg_0_31_6_11_n_0;
  wire receive_data_reg_0_31_6_11_n_1;
  wire receive_data_reg_0_31_6_11_n_2;
  wire receive_data_reg_0_31_6_11_n_3;
  wire receive_data_reg_0_31_6_11_n_4;
  wire receive_data_reg_0_31_6_11_n_5;
  wire rst;
  wire [23:0]rx_i2s_data_reg;
  wire [1:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[0]_i_5_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[1]_i_5_n_0 ;
  wire \state[1]_i_6_n_0 ;
  wire \state[1]_i_7_n_0 ;
  wire \state[1]_i_8_n_0 ;
  wire \state[1]_i_9_n_0 ;
  wire transmit_data;
  wire tx_i2s_data;
  wire tx_i2s_data_INST_0_i_1_n_0;
  wire tx_i2s_data_INST_0_i_2_n_0;
  wire tx_i2s_data_INST_0_i_3_n_0;
  wire tx_i2s_data_INST_0_i_4_n_0;
  wire tx_i2s_data_INST_0_i_5_n_0;
  wire tx_i2s_data_INST_0_i_6_n_0;
  wire tx_i2s_data_INST_0_i_7_n_0;
  wire tx_i2s_data_INST_0_i_8_n_0;
  wire tx_i2s_data_INST_0_i_9_n_0;
  wire [23:0]tx_i2s_data_reg;
  wire [1:0]NLW_receive_data_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_receive_data_reg_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_receive_data_reg_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_receive_data_reg_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_transmit_data_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_transmit_data_reg_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_transmit_data_reg_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_transmit_data_reg_0_31_6_11_DOD_UNCONNECTED;

  LUT5 #(
    .INIT(32'h222E0000)) 
    axis_m_tvalid_reg_i_1
       (.I0(axis_m_tvalid_int),
        .I1(axis_m_tvalid_reg_i_2_n_0),
        .I2(state[1]),
        .I3(state[0]),
        .I4(rst),
        .O(axis_m_tvalid_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h010D313D)) 
    axis_m_tvalid_reg_i_2
       (.I0(\state[1]_i_9_n_0 ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\state[1]_i_5_n_0 ),
        .I4(\state[1]_i_8_n_0 ),
        .O(axis_m_tvalid_reg_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axis_m_tvalid_reg_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_m_tvalid_reg_i_1_n_0),
        .Q(axis_m_tvalid_int),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0008020000000000)) 
    axis_tlast_delay_i_1
       (.I0(mem_counter[0]),
        .I1(mem_counter[1]),
        .I2(mem_counter[2]),
        .I3(mem_counter[3]),
        .I4(mem_counter[4]),
        .I5(m00_axis_aresetn),
        .O(\mem_counter_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__0 
       (.I0(counter[0]),
        .O(\counter[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__0 
       (.I0(counter[0]),
        .I1(counter[1]),
        .O(\counter[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8FFFFAAA80000)) 
    \counter[2]_i_1 
       (.I0(counter[4]),
        .I1(counter[2]),
        .I2(\counter[2]_i_3_n_0 ),
        .I3(counter[3]),
        .I4(data_valid),
        .I5(rst),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_2 
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[0]),
        .O(\counter[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[2]_i_3 
       (.I0(counter[0]),
        .I1(counter[1]),
        .O(\counter[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[3]_i_1__0 
       (.I0(counter[3]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[2]),
        .O(\counter[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter[4]_i_1__0 
       (.I0(counter[4]),
        .I1(counter[3]),
        .I2(counter[2]),
        .I3(counter[1]),
        .I4(counter[0]),
        .O(\counter[4]_i_1__0_n_0 ));
  FDRE \counter_reg[0] 
       (.C(m00_axis_aclk),
        .CE(data_valid),
        .D(\counter[0]_i_1__0_n_0 ),
        .Q(counter[0]),
        .R(\counter[2]_i_1_n_0 ));
  FDRE \counter_reg[1] 
       (.C(m00_axis_aclk),
        .CE(data_valid),
        .D(\counter[1]_i_1__0_n_0 ),
        .Q(counter[1]),
        .R(\counter[2]_i_1_n_0 ));
  FDRE \counter_reg[2] 
       (.C(m00_axis_aclk),
        .CE(data_valid),
        .D(\counter[2]_i_2_n_0 ),
        .Q(counter[2]),
        .R(\counter[2]_i_1_n_0 ));
  FDRE \counter_reg[3] 
       (.C(m00_axis_aclk),
        .CE(data_valid),
        .D(\counter[3]_i_1__0_n_0 ),
        .Q(counter[3]),
        .R(\counter[2]_i_1_n_0 ));
  FDRE \counter_reg[4] 
       (.C(m00_axis_aclk),
        .CE(data_valid),
        .D(\counter[4]_i_1__0_n_0 ),
        .Q(counter[4]),
        .R(\counter[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_counter[0]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .O(mem_counter__0));
  LUT1 #(
    .INIT(2'h1)) 
    \mem_counter[0]_i_2 
       (.I0(mem_counter[0]),
        .O(\mem_counter[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mem_counter[1]_i_1 
       (.I0(mem_counter[1]),
        .I1(mem_counter[0]),
        .O(\mem_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFFDF000000)) 
    \mem_counter[2]_i_1 
       (.I0(mem_counter[4]),
        .I1(mem_counter[3]),
        .I2(state[1]),
        .I3(mem_counter[1]),
        .I4(mem_counter[0]),
        .I5(mem_counter[2]),
        .O(\mem_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \mem_counter[3]_i_1 
       (.I0(mem_counter[3]),
        .I1(mem_counter[1]),
        .I2(mem_counter[0]),
        .I3(mem_counter[2]),
        .O(\mem_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F80F7007F80FF00)) 
    \mem_counter[4]_i_1 
       (.I0(mem_counter[0]),
        .I1(mem_counter[1]),
        .I2(mem_counter[2]),
        .I3(mem_counter[4]),
        .I4(mem_counter[3]),
        .I5(state[1]),
        .O(\mem_counter[4]_i_1_n_0 ));
  FDRE \mem_counter_reg[0] 
       (.C(m00_axis_aclk),
        .CE(mem_counter__0),
        .D(\mem_counter[0]_i_2_n_0 ),
        .Q(mem_counter[0]),
        .R(\mem_counter_reg[4]_0 ));
  FDRE \mem_counter_reg[1] 
       (.C(m00_axis_aclk),
        .CE(mem_counter__0),
        .D(\mem_counter[1]_i_1_n_0 ),
        .Q(mem_counter[1]),
        .R(\mem_counter_reg[4]_0 ));
  FDRE \mem_counter_reg[2] 
       (.C(m00_axis_aclk),
        .CE(mem_counter__0),
        .D(\mem_counter[2]_i_1_n_0 ),
        .Q(mem_counter[2]),
        .R(\mem_counter_reg[4]_0 ));
  FDRE \mem_counter_reg[3] 
       (.C(m00_axis_aclk),
        .CE(mem_counter__0),
        .D(\mem_counter[3]_i_1_n_0 ),
        .Q(mem_counter[3]),
        .R(\mem_counter_reg[4]_0 ));
  FDRE \mem_counter_reg[4] 
       (.C(m00_axis_aclk),
        .CE(mem_counter__0),
        .D(\mem_counter[4]_i_1_n_0 ),
        .Q(mem_counter[4]),
        .R(\mem_counter_reg[4]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "640" *) 
  (* RTL_RAM_NAME = "inst/I2S_Transceiver/mem/receive_data_reg_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "19" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M receive_data_reg_0_31_0_5
       (.ADDRA(mem_counter),
        .ADDRB(mem_counter),
        .ADDRC(mem_counter),
        .ADDRD(counter),
        .DIA(rx_i2s_data_reg[1:0]),
        .DIB(rx_i2s_data_reg[3:2]),
        .DIC(rx_i2s_data_reg[5:4]),
        .DID({1'b0,1'b0}),
        .DOA({receive_data_reg_0_31_0_5_n_0,axis_m_tdata}),
        .DOB({receive_data_reg_0_31_0_5_n_2,receive_data_reg_0_31_0_5_n_3}),
        .DOC({receive_data_reg_0_31_0_5_n_4,receive_data_reg_0_31_0_5_n_5}),
        .DOD(NLW_receive_data_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(m00_axis_aclk),
        .WE(data_valid));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "640" *) 
  (* RTL_RAM_NAME = "inst/I2S_Transceiver/mem/receive_data_reg_0_31_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "19" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M receive_data_reg_0_31_12_17
       (.ADDRA(mem_counter),
        .ADDRB(mem_counter),
        .ADDRC(mem_counter),
        .ADDRD(counter),
        .DIA(rx_i2s_data_reg[13:12]),
        .DIB(rx_i2s_data_reg[15:14]),
        .DIC(rx_i2s_data_reg[17:16]),
        .DID({1'b0,1'b0}),
        .DOA({receive_data_reg_0_31_12_17_n_0,receive_data_reg_0_31_12_17_n_1}),
        .DOB({receive_data_reg_0_31_12_17_n_2,receive_data_reg_0_31_12_17_n_3}),
        .DOC({receive_data_reg_0_31_12_17_n_4,receive_data_reg_0_31_12_17_n_5}),
        .DOD(NLW_receive_data_reg_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(m00_axis_aclk),
        .WE(data_valid));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "640" *) 
  (* RTL_RAM_NAME = "inst/I2S_Transceiver/mem/receive_data_reg_0_31_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "19" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M receive_data_reg_0_31_18_23
       (.ADDRA(mem_counter),
        .ADDRB(mem_counter),
        .ADDRC(mem_counter),
        .ADDRD(counter),
        .DIA(rx_i2s_data_reg[19:18]),
        .DIB(rx_i2s_data_reg[21:20]),
        .DIC(rx_i2s_data_reg[23:22]),
        .DID({1'b0,1'b0}),
        .DOA({receive_data_reg_0_31_18_23_n_0,receive_data_reg_0_31_18_23_n_1}),
        .DOB({receive_data_reg_0_31_18_23_n_2,receive_data_reg_0_31_18_23_n_3}),
        .DOC({receive_data_reg_0_31_18_23_n_4,receive_data_reg_0_31_18_23_n_5}),
        .DOD(NLW_receive_data_reg_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(m00_axis_aclk),
        .WE(data_valid));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "640" *) 
  (* RTL_RAM_NAME = "inst/I2S_Transceiver/mem/receive_data_reg_0_31_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "19" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M receive_data_reg_0_31_6_11
       (.ADDRA(mem_counter),
        .ADDRB(mem_counter),
        .ADDRC(mem_counter),
        .ADDRD(counter),
        .DIA(rx_i2s_data_reg[7:6]),
        .DIB(rx_i2s_data_reg[9:8]),
        .DIC(rx_i2s_data_reg[11:10]),
        .DID({1'b0,1'b0}),
        .DOA({receive_data_reg_0_31_6_11_n_0,receive_data_reg_0_31_6_11_n_1}),
        .DOB({receive_data_reg_0_31_6_11_n_2,receive_data_reg_0_31_6_11_n_3}),
        .DOC({receive_data_reg_0_31_6_11_n_4,receive_data_reg_0_31_6_11_n_5}),
        .DOD(NLW_receive_data_reg_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(m00_axis_aclk),
        .WE(data_valid));
  LUT6 #(
    .INIT(64'hA8AAFFFFA8AA0000)) 
    \state[0]_i_1 
       (.I0(rst),
        .I1(\state[0]_i_2_n_0 ),
        .I2(\state[0]_i_3_n_0 ),
        .I3(\state[1]_i_3_n_0 ),
        .I4(\state[1]_i_4_n_0 ),
        .I5(state[0]),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h3010)) 
    \state[0]_i_2 
       (.I0(\state[1]_i_5_n_0 ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(rst),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCCCEC8C)) 
    \state[0]_i_3 
       (.I0(counter[3]),
        .I1(rst),
        .I2(\state[0]_i_4_n_0 ),
        .I3(counter[1]),
        .I4(counter[0]),
        .I5(\state[0]_i_5_n_0 ),
        .O(\state[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \state[0]_i_4 
       (.I0(counter[2]),
        .I1(counter[4]),
        .O(\state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state[0]_i_5 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\state[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8AFF8A00)) 
    \state[1]_i_1 
       (.I0(rst),
        .I1(\state[1]_i_2_n_0 ),
        .I2(\state[1]_i_3_n_0 ),
        .I3(\state[1]_i_4_n_0 ),
        .I4(state[1]),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h00BB000F)) 
    \state[1]_i_2 
       (.I0(rst),
        .I1(\state[1]_i_5_n_0 ),
        .I2(\state[1]_i_6_n_0 ),
        .I3(state[1]),
        .I4(state[0]),
        .O(\state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBFBFBFBB)) 
    \state[1]_i_3 
       (.I0(\state[1]_i_7_n_0 ),
        .I1(state[1]),
        .I2(rst),
        .I3(\state[1]_i_8_n_0 ),
        .I4(state[0]),
        .O(\state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD557D5F7DF57DFF7)) 
    \state[1]_i_4 
       (.I0(rst),
        .I1(\state[1]_i_9_n_0 ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\state[1]_i_5_n_0 ),
        .I5(\state[1]_i_8_n_0 ),
        .O(\state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    \state[1]_i_5 
       (.I0(mem_counter[0]),
        .I1(mem_counter[1]),
        .I2(mem_counter[2]),
        .I3(mem_counter[3]),
        .I4(mem_counter[4]),
        .O(\state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000040FFFFFFFE)) 
    \state[1]_i_6 
       (.I0(counter[4]),
        .I1(counter[1]),
        .I2(counter[3]),
        .I3(counter[2]),
        .I4(counter[0]),
        .I5(rst),
        .O(\state[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAA8)) 
    \state[1]_i_7 
       (.I0(state[0]),
        .I1(counter[4]),
        .I2(counter[2]),
        .I3(counter[1]),
        .I4(counter[0]),
        .I5(counter[3]),
        .O(\state[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \state[1]_i_8 
       (.I0(mem_counter[0]),
        .I1(mem_counter[1]),
        .I2(mem_counter[2]),
        .I3(mem_counter[4]),
        .I4(mem_counter[3]),
        .O(\state[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hFFFFFFDE)) 
    \state[1]_i_9 
       (.I0(counter[3]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[2]),
        .I4(counter[4]),
        .O(\state[1]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "640" *) 
  (* RTL_RAM_NAME = "inst/I2S_Transceiver/mem/transmit_data_reg_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "19" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M transmit_data_reg_0_31_0_5
       (.ADDRA(counter),
        .ADDRB(counter),
        .ADDRC(counter),
        .ADDRD(mem_counter),
        .DIA({receive_data_reg_0_31_0_5_n_0,axis_m_tdata}),
        .DIB({receive_data_reg_0_31_0_5_n_2,receive_data_reg_0_31_0_5_n_3}),
        .DIC({receive_data_reg_0_31_0_5_n_4,receive_data_reg_0_31_0_5_n_5}),
        .DID({1'b0,1'b0}),
        .DOA(tx_i2s_data_reg[1:0]),
        .DOB(tx_i2s_data_reg[3:2]),
        .DOC(tx_i2s_data_reg[5:4]),
        .DOD(NLW_transmit_data_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(m00_axis_aclk),
        .WE(transmit_data));
  LUT3 #(
    .INIT(8'h28)) 
    transmit_data_reg_0_31_0_5_i_1
       (.I0(rst),
        .I1(state[0]),
        .I2(state[1]),
        .O(transmit_data));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "640" *) 
  (* RTL_RAM_NAME = "inst/I2S_Transceiver/mem/transmit_data_reg_0_31_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "19" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M transmit_data_reg_0_31_12_17
       (.ADDRA(counter),
        .ADDRB(counter),
        .ADDRC(counter),
        .ADDRD(mem_counter),
        .DIA({receive_data_reg_0_31_12_17_n_0,receive_data_reg_0_31_12_17_n_1}),
        .DIB({receive_data_reg_0_31_12_17_n_2,receive_data_reg_0_31_12_17_n_3}),
        .DIC({receive_data_reg_0_31_12_17_n_4,receive_data_reg_0_31_12_17_n_5}),
        .DID({1'b0,1'b0}),
        .DOA(tx_i2s_data_reg[13:12]),
        .DOB(tx_i2s_data_reg[15:14]),
        .DOC(tx_i2s_data_reg[17:16]),
        .DOD(NLW_transmit_data_reg_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(m00_axis_aclk),
        .WE(transmit_data));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "640" *) 
  (* RTL_RAM_NAME = "inst/I2S_Transceiver/mem/transmit_data_reg_0_31_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "19" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M transmit_data_reg_0_31_18_23
       (.ADDRA(counter),
        .ADDRB(counter),
        .ADDRC(counter),
        .ADDRD(mem_counter),
        .DIA({receive_data_reg_0_31_18_23_n_0,receive_data_reg_0_31_18_23_n_1}),
        .DIB({receive_data_reg_0_31_18_23_n_2,receive_data_reg_0_31_18_23_n_3}),
        .DIC({receive_data_reg_0_31_18_23_n_4,receive_data_reg_0_31_18_23_n_5}),
        .DID({1'b0,1'b0}),
        .DOA(tx_i2s_data_reg[19:18]),
        .DOB(tx_i2s_data_reg[21:20]),
        .DOC(tx_i2s_data_reg[23:22]),
        .DOD(NLW_transmit_data_reg_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(m00_axis_aclk),
        .WE(transmit_data));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "640" *) 
  (* RTL_RAM_NAME = "inst/I2S_Transceiver/mem/transmit_data_reg_0_31_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "19" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M transmit_data_reg_0_31_6_11
       (.ADDRA(counter),
        .ADDRB(counter),
        .ADDRC(counter),
        .ADDRD(mem_counter),
        .DIA({receive_data_reg_0_31_6_11_n_0,receive_data_reg_0_31_6_11_n_1}),
        .DIB({receive_data_reg_0_31_6_11_n_2,receive_data_reg_0_31_6_11_n_3}),
        .DIC({receive_data_reg_0_31_6_11_n_4,receive_data_reg_0_31_6_11_n_5}),
        .DID({1'b0,1'b0}),
        .DOA(tx_i2s_data_reg[7:6]),
        .DOB(tx_i2s_data_reg[9:8]),
        .DOC(tx_i2s_data_reg[11:10]),
        .DOD(NLW_transmit_data_reg_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(m00_axis_aclk),
        .WE(transmit_data));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    tx_i2s_data_INST_0
       (.I0(tx_i2s_data_INST_0_i_1_n_0),
        .I1(counter_reg[4]),
        .I2(tx_i2s_data_INST_0_i_2_n_0),
        .I3(counter_reg[3]),
        .I4(tx_i2s_data_INST_0_i_3_n_0),
        .O(tx_i2s_data));
  MUXF7 tx_i2s_data_INST_0_i_1
       (.I0(tx_i2s_data_INST_0_i_4_n_0),
        .I1(tx_i2s_data_INST_0_i_5_n_0),
        .O(tx_i2s_data_INST_0_i_1_n_0),
        .S(counter_reg[2]));
  MUXF7 tx_i2s_data_INST_0_i_2
       (.I0(tx_i2s_data_INST_0_i_6_n_0),
        .I1(tx_i2s_data_INST_0_i_7_n_0),
        .O(tx_i2s_data_INST_0_i_2_n_0),
        .S(counter_reg[2]));
  MUXF7 tx_i2s_data_INST_0_i_3
       (.I0(tx_i2s_data_INST_0_i_8_n_0),
        .I1(tx_i2s_data_INST_0_i_9_n_0),
        .O(tx_i2s_data_INST_0_i_3_n_0),
        .S(counter_reg[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_i2s_data_INST_0_i_4
       (.I0(tx_i2s_data_reg[19]),
        .I1(tx_i2s_data_reg[18]),
        .I2(counter_reg[1]),
        .I3(tx_i2s_data_reg[17]),
        .I4(counter_reg[0]),
        .I5(tx_i2s_data_reg[16]),
        .O(tx_i2s_data_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_i2s_data_INST_0_i_5
       (.I0(tx_i2s_data_reg[23]),
        .I1(tx_i2s_data_reg[22]),
        .I2(counter_reg[1]),
        .I3(tx_i2s_data_reg[21]),
        .I4(counter_reg[0]),
        .I5(tx_i2s_data_reg[20]),
        .O(tx_i2s_data_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_i2s_data_INST_0_i_6
       (.I0(tx_i2s_data_reg[11]),
        .I1(tx_i2s_data_reg[10]),
        .I2(counter_reg[1]),
        .I3(tx_i2s_data_reg[9]),
        .I4(counter_reg[0]),
        .I5(tx_i2s_data_reg[8]),
        .O(tx_i2s_data_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_i2s_data_INST_0_i_7
       (.I0(tx_i2s_data_reg[15]),
        .I1(tx_i2s_data_reg[14]),
        .I2(counter_reg[1]),
        .I3(tx_i2s_data_reg[13]),
        .I4(counter_reg[0]),
        .I5(tx_i2s_data_reg[12]),
        .O(tx_i2s_data_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_i2s_data_INST_0_i_8
       (.I0(tx_i2s_data_reg[3]),
        .I1(tx_i2s_data_reg[2]),
        .I2(counter_reg[1]),
        .I3(tx_i2s_data_reg[1]),
        .I4(counter_reg[0]),
        .I5(tx_i2s_data_reg[0]),
        .O(tx_i2s_data_INST_0_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_i2s_data_INST_0_i_9
       (.I0(tx_i2s_data_reg[7]),
        .I1(tx_i2s_data_reg[6]),
        .I2(counter_reg[1]),
        .I3(tx_i2s_data_reg[5]),
        .I4(counter_reg[0]),
        .I5(tx_i2s_data_reg[4]),
        .O(tx_i2s_data_INST_0_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "top" *) 
module design_1_AXIS_I2S_Transceiver_0_0_top
   (out_buf_reg,
    out_buf_reg_0,
    axis_m_tvalid_int,
    m_clk_dac,
    tx_i2s_data,
    \mem_counter_reg[0] ,
    axis_m_tdata,
    m00_axis_aclk,
    rst,
    m00_axis_aresetn,
    rx_i2s_data);
  output out_buf_reg;
  output out_buf_reg_0;
  output axis_m_tvalid_int;
  output m_clk_dac;
  output tx_i2s_data;
  output \mem_counter_reg[0] ;
  output [0:0]axis_m_tdata;
  input m00_axis_aclk;
  input rst;
  input m00_axis_aresetn;
  input rx_i2s_data;

  wire LRCLK_n_1;
  wire [0:0]axis_m_tdata;
  wire axis_m_tvalid_int;
  wire [4:0]counter_reg;
  wire data_valid;
  wire i2s_rx_tx_n_1;
  wire i2s_rx_tx_n_10;
  wire i2s_rx_tx_n_11;
  wire i2s_rx_tx_n_12;
  wire i2s_rx_tx_n_13;
  wire i2s_rx_tx_n_14;
  wire i2s_rx_tx_n_15;
  wire i2s_rx_tx_n_16;
  wire i2s_rx_tx_n_17;
  wire i2s_rx_tx_n_18;
  wire i2s_rx_tx_n_19;
  wire i2s_rx_tx_n_20;
  wire i2s_rx_tx_n_21;
  wire i2s_rx_tx_n_22;
  wire i2s_rx_tx_n_23;
  wire i2s_rx_tx_n_24;
  wire i2s_rx_tx_n_25;
  wire i2s_rx_tx_n_26;
  wire i2s_rx_tx_n_27;
  wire i2s_rx_tx_n_28;
  wire i2s_rx_tx_n_29;
  wire i2s_rx_tx_n_30;
  wire i2s_rx_tx_n_31;
  wire i2s_rx_tx_n_8;
  wire i2s_rx_tx_n_9;
  wire last_s_clk_state;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire m_clk_dac;
  wire \mem_counter_reg[0] ;
  wire out_buf_reg;
  wire out_buf_reg_0;
  wire rst;
  wire rx_i2s_data;
  wire tx_i2s_data;

  design_1_AXIS_I2S_Transceiver_0_0_clk_divider__parameterized1 LRCLK
       (.\input_right_channel_reg[23] (out_buf_reg),
        .last_s_clk_state(last_s_clk_state),
        .m00_axis_aclk(m00_axis_aclk),
        .out_buf_reg_0(out_buf_reg_0),
        .out_buf_reg_1(LRCLK_n_1),
        .out_buf_reg_2(i2s_rx_tx_n_1));
  design_1_AXIS_I2S_Transceiver_0_0_clk_divider MCLK
       (.\counter_reg[0]_0 (i2s_rx_tx_n_1),
        .m00_axis_aclk(m00_axis_aclk),
        .m_clk_dac(m_clk_dac));
  design_1_AXIS_I2S_Transceiver_0_0_clk_divider__parameterized0 SCLK
       (.m00_axis_aclk(m00_axis_aclk),
        .out_buf_reg_0(out_buf_reg),
        .out_buf_reg_1(i2s_rx_tx_n_1));
  design_1_AXIS_I2S_Transceiver_0_0_transceiver i2s_rx_tx
       (.Q({i2s_rx_tx_n_8,i2s_rx_tx_n_9,i2s_rx_tx_n_10,i2s_rx_tx_n_11,i2s_rx_tx_n_12,i2s_rx_tx_n_13,i2s_rx_tx_n_14,i2s_rx_tx_n_15,i2s_rx_tx_n_16,i2s_rx_tx_n_17,i2s_rx_tx_n_18,i2s_rx_tx_n_19,i2s_rx_tx_n_20,i2s_rx_tx_n_21,i2s_rx_tx_n_22,i2s_rx_tx_n_23,i2s_rx_tx_n_24,i2s_rx_tx_n_25,i2s_rx_tx_n_26,i2s_rx_tx_n_27,i2s_rx_tx_n_28,i2s_rx_tx_n_29,i2s_rx_tx_n_30,i2s_rx_tx_n_31}),
        .counter_reg(counter_reg),
        .data_valid(data_valid),
        .\input_right_channel_reg[23]_0 (LRCLK_n_1),
        .last_lr_state_reg_0(out_buf_reg_0),
        .last_s_clk_state(last_s_clk_state),
        .last_s_clk_state_reg_0(out_buf_reg),
        .m00_axis_aclk(m00_axis_aclk),
        .rst(rst),
        .rst_0(i2s_rx_tx_n_1),
        .rx_i2s_data(rx_i2s_data));
  design_1_AXIS_I2S_Transceiver_0_0_i2s_mem mem
       (.axis_m_tdata(axis_m_tdata),
        .axis_m_tvalid_int(axis_m_tvalid_int),
        .counter_reg(counter_reg),
        .data_valid(data_valid),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .\mem_counter_reg[0]_0 (\mem_counter_reg[0] ),
        .\mem_counter_reg[4]_0 (i2s_rx_tx_n_1),
        .rst(rst),
        .rx_i2s_data_reg({i2s_rx_tx_n_8,i2s_rx_tx_n_9,i2s_rx_tx_n_10,i2s_rx_tx_n_11,i2s_rx_tx_n_12,i2s_rx_tx_n_13,i2s_rx_tx_n_14,i2s_rx_tx_n_15,i2s_rx_tx_n_16,i2s_rx_tx_n_17,i2s_rx_tx_n_18,i2s_rx_tx_n_19,i2s_rx_tx_n_20,i2s_rx_tx_n_21,i2s_rx_tx_n_22,i2s_rx_tx_n_23,i2s_rx_tx_n_24,i2s_rx_tx_n_25,i2s_rx_tx_n_26,i2s_rx_tx_n_27,i2s_rx_tx_n_28,i2s_rx_tx_n_29,i2s_rx_tx_n_30,i2s_rx_tx_n_31}),
        .tx_i2s_data(tx_i2s_data));
endmodule

(* ORIG_REF_NAME = "transceiver" *) 
module design_1_AXIS_I2S_Transceiver_0_0_transceiver
   (data_valid,
    rst_0,
    last_s_clk_state,
    counter_reg,
    Q,
    m00_axis_aclk,
    last_s_clk_state_reg_0,
    \input_right_channel_reg[23]_0 ,
    last_lr_state_reg_0,
    rst,
    rx_i2s_data);
  output data_valid;
  output rst_0;
  output last_s_clk_state;
  output [4:0]counter_reg;
  output [23:0]Q;
  input m00_axis_aclk;
  input last_s_clk_state_reg_0;
  input \input_right_channel_reg[23]_0 ;
  input last_lr_state_reg_0;
  input rst;
  input rx_i2s_data;

  wire [23:0]Q;
  wire counter;
  wire \counter[2]_i_1__3_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire [4:0]counter_reg;
  wire data_valid;
  wire data_valid2_out;
  wire data_valid_i_2_n_0;
  wire data_valid_i_4_n_0;
  wire [23:0]input_left_channel;
  wire \input_left_channel[0]_i_1_n_0 ;
  wire \input_left_channel[10]_i_1_n_0 ;
  wire \input_left_channel[11]_i_1_n_0 ;
  wire \input_left_channel[12]_i_1_n_0 ;
  wire \input_left_channel[13]_i_1_n_0 ;
  wire \input_left_channel[14]_i_1_n_0 ;
  wire \input_left_channel[15]_i_1_n_0 ;
  wire \input_left_channel[16]_i_1_n_0 ;
  wire \input_left_channel[16]_i_2_n_0 ;
  wire \input_left_channel[17]_i_1_n_0 ;
  wire \input_left_channel[17]_i_2_n_0 ;
  wire \input_left_channel[18]_i_1_n_0 ;
  wire \input_left_channel[18]_i_2_n_0 ;
  wire \input_left_channel[19]_i_1_n_0 ;
  wire \input_left_channel[19]_i_2_n_0 ;
  wire \input_left_channel[1]_i_1_n_0 ;
  wire \input_left_channel[20]_i_1_n_0 ;
  wire \input_left_channel[20]_i_2_n_0 ;
  wire \input_left_channel[21]_i_1_n_0 ;
  wire \input_left_channel[21]_i_2_n_0 ;
  wire \input_left_channel[22]_i_1_n_0 ;
  wire \input_left_channel[22]_i_2_n_0 ;
  wire \input_left_channel[23]_i_1_n_0 ;
  wire \input_left_channel[2]_i_1_n_0 ;
  wire \input_left_channel[3]_i_1_n_0 ;
  wire \input_left_channel[4]_i_1_n_0 ;
  wire \input_left_channel[5]_i_1_n_0 ;
  wire \input_left_channel[6]_i_1_n_0 ;
  wire \input_left_channel[7]_i_1_n_0 ;
  wire \input_left_channel[8]_i_1_n_0 ;
  wire \input_left_channel[9]_i_1_n_0 ;
  wire [23:0]input_right_channel;
  wire \input_right_channel[0]_i_1_n_0 ;
  wire \input_right_channel[10]_i_1_n_0 ;
  wire \input_right_channel[11]_i_1_n_0 ;
  wire \input_right_channel[12]_i_1_n_0 ;
  wire \input_right_channel[13]_i_1_n_0 ;
  wire \input_right_channel[14]_i_1_n_0 ;
  wire \input_right_channel[15]_i_1_n_0 ;
  wire \input_right_channel[16]_i_1_n_0 ;
  wire \input_right_channel[17]_i_1_n_0 ;
  wire \input_right_channel[18]_i_1_n_0 ;
  wire \input_right_channel[19]_i_1_n_0 ;
  wire \input_right_channel[1]_i_1_n_0 ;
  wire \input_right_channel[20]_i_1_n_0 ;
  wire \input_right_channel[21]_i_1_n_0 ;
  wire \input_right_channel[22]_i_1_n_0 ;
  wire \input_right_channel[23]_i_1_n_0 ;
  wire \input_right_channel[2]_i_1_n_0 ;
  wire \input_right_channel[3]_i_1_n_0 ;
  wire \input_right_channel[4]_i_1_n_0 ;
  wire \input_right_channel[5]_i_1_n_0 ;
  wire \input_right_channel[6]_i_1_n_0 ;
  wire \input_right_channel[7]_i_1_n_0 ;
  wire \input_right_channel[8]_i_1_n_0 ;
  wire \input_right_channel[9]_i_1_n_0 ;
  wire \input_right_channel_reg[23]_0 ;
  wire last_lr_state;
  wire last_lr_state_i_1_n_0;
  wire last_lr_state_reg_0;
  wire last_s_clk_state;
  wire last_s_clk_state_reg_0;
  wire m00_axis_aclk;
  wire [4:0]p_0_in__1;
  wire rst;
  wire rst_0;
  wire rx_i2s_data;
  wire [23:0]rx_i2s_data_reg;

  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1__3 
       (.I0(counter_reg[2]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .O(\counter[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[3]_i_1 
       (.I0(counter_reg[3]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .I3(counter_reg[2]),
        .O(p_0_in__1[3]));
  LUT6 #(
    .INIT(64'h00D000F000F000D0)) 
    \counter[4]_i_1 
       (.I0(counter_reg[4]),
        .I1(\counter[4]_i_3_n_0 ),
        .I2(last_s_clk_state_reg_0),
        .I3(last_s_clk_state),
        .I4(last_lr_state_reg_0),
        .I5(last_lr_state),
        .O(counter));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter[4]_i_2 
       (.I0(counter_reg[4]),
        .I1(counter_reg[3]),
        .I2(counter_reg[0]),
        .I3(counter_reg[1]),
        .I4(counter_reg[2]),
        .O(p_0_in__1[4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[4]_i_3 
       (.I0(counter_reg[2]),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .I3(counter_reg[3]),
        .O(\counter[4]_i_3_n_0 ));
  FDCE \counter_reg[0] 
       (.C(m00_axis_aclk),
        .CE(counter),
        .CLR(rst_0),
        .D(p_0_in__1[0]),
        .Q(counter_reg[0]));
  FDCE \counter_reg[1] 
       (.C(m00_axis_aclk),
        .CE(counter),
        .CLR(rst_0),
        .D(p_0_in__1[1]),
        .Q(counter_reg[1]));
  FDCE \counter_reg[2] 
       (.C(m00_axis_aclk),
        .CE(counter),
        .CLR(rst_0),
        .D(\counter[2]_i_1__3_n_0 ),
        .Q(counter_reg[2]));
  FDCE \counter_reg[3] 
       (.C(m00_axis_aclk),
        .CE(counter),
        .CLR(rst_0),
        .D(p_0_in__1[3]),
        .Q(counter_reg[3]));
  FDCE \counter_reg[4] 
       (.C(m00_axis_aclk),
        .CE(counter),
        .CLR(rst_0),
        .D(p_0_in__1[4]),
        .Q(counter_reg[4]));
  LUT6 #(
    .INIT(64'h4040400000004000)) 
    data_valid_i_1
       (.I0(data_valid_i_2_n_0),
        .I1(counter_reg[3]),
        .I2(counter_reg[4]),
        .I3(\input_right_channel_reg[23]_0 ),
        .I4(last_lr_state),
        .I5(data_valid_i_4_n_0),
        .O(data_valid2_out));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    data_valid_i_2
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(counter_reg[2]),
        .O(data_valid_i_2_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    data_valid_i_4
       (.I0(last_s_clk_state),
        .I1(last_s_clk_state_reg_0),
        .I2(last_lr_state_reg_0),
        .O(data_valid_i_4_n_0));
  FDCE data_valid_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(rst_0),
        .D(data_valid2_out),
        .Q(data_valid));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \input_left_channel[0]_i_1 
       (.I0(rx_i2s_data),
        .I1(data_valid_i_4_n_0),
        .I2(\input_left_channel[16]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_left_channel[0]),
        .O(\input_left_channel[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_left_channel[10]_i_1 
       (.I0(rx_i2s_data),
        .I1(data_valid_i_4_n_0),
        .I2(\input_left_channel[18]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_left_channel[10]),
        .O(\input_left_channel[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_left_channel[11]_i_1 
       (.I0(rx_i2s_data),
        .I1(data_valid_i_4_n_0),
        .I2(\input_left_channel[19]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_left_channel[11]),
        .O(\input_left_channel[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_left_channel[12]_i_1 
       (.I0(rx_i2s_data),
        .I1(data_valid_i_4_n_0),
        .I2(\input_left_channel[20]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_left_channel[12]),
        .O(\input_left_channel[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_left_channel[13]_i_1 
       (.I0(rx_i2s_data),
        .I1(data_valid_i_4_n_0),
        .I2(\input_left_channel[21]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_left_channel[13]),
        .O(\input_left_channel[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_left_channel[14]_i_1 
       (.I0(rx_i2s_data),
        .I1(data_valid_i_4_n_0),
        .I2(\input_left_channel[22]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_left_channel[14]),
        .O(\input_left_channel[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \input_left_channel[15]_i_1 
       (.I0(rx_i2s_data),
        .I1(data_valid_i_4_n_0),
        .I2(counter_reg[4]),
        .I3(counter_reg[3]),
        .I4(data_valid_i_2_n_0),
        .I5(input_left_channel[15]),
        .O(\input_left_channel[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_left_channel[16]_i_1 
       (.I0(rx_i2s_data),
        .I1(data_valid_i_4_n_0),
        .I2(\input_left_channel[16]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_left_channel[16]),
        .O(\input_left_channel[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \input_left_channel[16]_i_2 
       (.I0(counter_reg[2]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .O(\input_left_channel[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_left_channel[17]_i_1 
       (.I0(rx_i2s_data),
        .I1(data_valid_i_4_n_0),
        .I2(\input_left_channel[17]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_left_channel[17]),
        .O(\input_left_channel[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \input_left_channel[17]_i_2 
       (.I0(counter_reg[2]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .O(\input_left_channel[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_left_channel[18]_i_1 
       (.I0(rx_i2s_data),
        .I1(data_valid_i_4_n_0),
        .I2(\input_left_channel[18]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_left_channel[18]),
        .O(\input_left_channel[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \input_left_channel[18]_i_2 
       (.I0(counter_reg[2]),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .O(\input_left_channel[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \input_left_channel[19]_i_1 
       (.I0(rx_i2s_data),
        .I1(data_valid_i_4_n_0),
        .I2(counter_reg[3]),
        .I3(counter_reg[4]),
        .I4(\input_left_channel[19]_i_2_n_0 ),
        .I5(input_left_channel[19]),
        .O(\input_left_channel[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \input_left_channel[19]_i_2 
       (.I0(counter_reg[2]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .O(\input_left_channel[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \input_left_channel[1]_i_1 
       (.I0(rx_i2s_data),
        .I1(data_valid_i_4_n_0),
        .I2(\input_left_channel[17]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_left_channel[1]),
        .O(\input_left_channel[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_left_channel[20]_i_1 
       (.I0(rx_i2s_data),
        .I1(data_valid_i_4_n_0),
        .I2(\input_left_channel[20]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_left_channel[20]),
        .O(\input_left_channel[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \input_left_channel[20]_i_2 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(counter_reg[2]),
        .O(\input_left_channel[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_left_channel[21]_i_1 
       (.I0(rx_i2s_data),
        .I1(data_valid_i_4_n_0),
        .I2(\input_left_channel[21]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_left_channel[21]),
        .O(\input_left_channel[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \input_left_channel[21]_i_2 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(counter_reg[2]),
        .O(\input_left_channel[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_left_channel[22]_i_1 
       (.I0(rx_i2s_data),
        .I1(data_valid_i_4_n_0),
        .I2(\input_left_channel[22]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_left_channel[22]),
        .O(\input_left_channel[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \input_left_channel[22]_i_2 
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .I2(counter_reg[2]),
        .O(\input_left_channel[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \input_left_channel[23]_i_1 
       (.I0(rx_i2s_data),
        .I1(data_valid_i_4_n_0),
        .I2(counter_reg[3]),
        .I3(counter_reg[4]),
        .I4(data_valid_i_2_n_0),
        .I5(input_left_channel[23]),
        .O(\input_left_channel[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \input_left_channel[2]_i_1 
       (.I0(rx_i2s_data),
        .I1(data_valid_i_4_n_0),
        .I2(\input_left_channel[18]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_left_channel[2]),
        .O(\input_left_channel[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \input_left_channel[3]_i_1 
       (.I0(rx_i2s_data),
        .I1(data_valid_i_4_n_0),
        .I2(counter_reg[3]),
        .I3(counter_reg[4]),
        .I4(\input_left_channel[19]_i_2_n_0 ),
        .I5(input_left_channel[3]),
        .O(\input_left_channel[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \input_left_channel[4]_i_1 
       (.I0(rx_i2s_data),
        .I1(data_valid_i_4_n_0),
        .I2(\input_left_channel[20]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_left_channel[4]),
        .O(\input_left_channel[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \input_left_channel[5]_i_1 
       (.I0(rx_i2s_data),
        .I1(data_valid_i_4_n_0),
        .I2(\input_left_channel[21]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_left_channel[5]),
        .O(\input_left_channel[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \input_left_channel[6]_i_1 
       (.I0(rx_i2s_data),
        .I1(data_valid_i_4_n_0),
        .I2(\input_left_channel[22]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_left_channel[6]),
        .O(\input_left_channel[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \input_left_channel[7]_i_1 
       (.I0(rx_i2s_data),
        .I1(data_valid_i_4_n_0),
        .I2(counter_reg[3]),
        .I3(counter_reg[4]),
        .I4(data_valid_i_2_n_0),
        .I5(input_left_channel[7]),
        .O(\input_left_channel[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_left_channel[8]_i_1 
       (.I0(rx_i2s_data),
        .I1(data_valid_i_4_n_0),
        .I2(\input_left_channel[16]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_left_channel[8]),
        .O(\input_left_channel[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_left_channel[9]_i_1 
       (.I0(rx_i2s_data),
        .I1(data_valid_i_4_n_0),
        .I2(\input_left_channel[17]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_left_channel[9]),
        .O(\input_left_channel[9]_i_1_n_0 ));
  FDPE \input_left_channel_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_left_channel[0]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_left_channel[0]));
  FDPE \input_left_channel_reg[10] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_left_channel[10]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_left_channel[10]));
  FDPE \input_left_channel_reg[11] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_left_channel[11]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_left_channel[11]));
  FDPE \input_left_channel_reg[12] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_left_channel[12]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_left_channel[12]));
  FDPE \input_left_channel_reg[13] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_left_channel[13]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_left_channel[13]));
  FDPE \input_left_channel_reg[14] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_left_channel[14]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_left_channel[14]));
  FDPE \input_left_channel_reg[15] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_left_channel[15]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_left_channel[15]));
  FDPE \input_left_channel_reg[16] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_left_channel[16]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_left_channel[16]));
  FDPE \input_left_channel_reg[17] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_left_channel[17]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_left_channel[17]));
  FDPE \input_left_channel_reg[18] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_left_channel[18]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_left_channel[18]));
  FDPE \input_left_channel_reg[19] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_left_channel[19]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_left_channel[19]));
  FDPE \input_left_channel_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_left_channel[1]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_left_channel[1]));
  FDPE \input_left_channel_reg[20] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_left_channel[20]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_left_channel[20]));
  FDPE \input_left_channel_reg[21] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_left_channel[21]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_left_channel[21]));
  FDPE \input_left_channel_reg[22] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_left_channel[22]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_left_channel[22]));
  FDPE \input_left_channel_reg[23] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_left_channel[23]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_left_channel[23]));
  FDPE \input_left_channel_reg[2] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_left_channel[2]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_left_channel[2]));
  FDPE \input_left_channel_reg[3] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_left_channel[3]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_left_channel[3]));
  FDPE \input_left_channel_reg[4] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_left_channel[4]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_left_channel[4]));
  FDPE \input_left_channel_reg[5] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_left_channel[5]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_left_channel[5]));
  FDPE \input_left_channel_reg[6] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_left_channel[6]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_left_channel[6]));
  FDPE \input_left_channel_reg[7] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_left_channel[7]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_left_channel[7]));
  FDPE \input_left_channel_reg[8] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_left_channel[8]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_left_channel[8]));
  FDPE \input_left_channel_reg[9] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_left_channel[9]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_left_channel[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \input_right_channel[0]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_right_channel_reg[23]_0 ),
        .I2(\input_left_channel[16]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_right_channel[0]),
        .O(\input_right_channel[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[10]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_right_channel_reg[23]_0 ),
        .I2(\input_left_channel[18]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_right_channel[10]),
        .O(\input_right_channel[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[11]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_right_channel_reg[23]_0 ),
        .I2(\input_left_channel[19]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_right_channel[11]),
        .O(\input_right_channel[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[12]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_right_channel_reg[23]_0 ),
        .I2(\input_left_channel[20]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_right_channel[12]),
        .O(\input_right_channel[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[13]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_right_channel_reg[23]_0 ),
        .I2(\input_left_channel[21]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_right_channel[13]),
        .O(\input_right_channel[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[14]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_right_channel_reg[23]_0 ),
        .I2(\input_left_channel[22]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_right_channel[14]),
        .O(\input_right_channel[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \input_right_channel[15]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_right_channel_reg[23]_0 ),
        .I2(counter_reg[4]),
        .I3(counter_reg[3]),
        .I4(data_valid_i_2_n_0),
        .I5(input_right_channel[15]),
        .O(\input_right_channel[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[16]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_right_channel_reg[23]_0 ),
        .I2(\input_left_channel[16]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_right_channel[16]),
        .O(\input_right_channel[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[17]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_right_channel_reg[23]_0 ),
        .I2(\input_left_channel[17]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_right_channel[17]),
        .O(\input_right_channel[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[18]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_right_channel_reg[23]_0 ),
        .I2(\input_left_channel[18]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_right_channel[18]),
        .O(\input_right_channel[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \input_right_channel[19]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_right_channel_reg[23]_0 ),
        .I2(counter_reg[3]),
        .I3(counter_reg[4]),
        .I4(\input_left_channel[19]_i_2_n_0 ),
        .I5(input_right_channel[19]),
        .O(\input_right_channel[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \input_right_channel[1]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_right_channel_reg[23]_0 ),
        .I2(\input_left_channel[17]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_right_channel[1]),
        .O(\input_right_channel[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[20]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_right_channel_reg[23]_0 ),
        .I2(\input_left_channel[20]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_right_channel[20]),
        .O(\input_right_channel[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[21]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_right_channel_reg[23]_0 ),
        .I2(\input_left_channel[21]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_right_channel[21]),
        .O(\input_right_channel[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[22]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_right_channel_reg[23]_0 ),
        .I2(\input_left_channel[22]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_right_channel[22]),
        .O(\input_right_channel[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \input_right_channel[23]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_right_channel_reg[23]_0 ),
        .I2(counter_reg[3]),
        .I3(counter_reg[4]),
        .I4(data_valid_i_2_n_0),
        .I5(input_right_channel[23]),
        .O(\input_right_channel[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \input_right_channel[2]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_right_channel_reg[23]_0 ),
        .I2(\input_left_channel[18]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_right_channel[2]),
        .O(\input_right_channel[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \input_right_channel[3]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_right_channel_reg[23]_0 ),
        .I2(counter_reg[3]),
        .I3(counter_reg[4]),
        .I4(\input_left_channel[19]_i_2_n_0 ),
        .I5(input_right_channel[3]),
        .O(\input_right_channel[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \input_right_channel[4]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_right_channel_reg[23]_0 ),
        .I2(\input_left_channel[20]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_right_channel[4]),
        .O(\input_right_channel[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \input_right_channel[5]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_right_channel_reg[23]_0 ),
        .I2(\input_left_channel[21]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_right_channel[5]),
        .O(\input_right_channel[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \input_right_channel[6]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_right_channel_reg[23]_0 ),
        .I2(\input_left_channel[22]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_right_channel[6]),
        .O(\input_right_channel[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \input_right_channel[7]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_right_channel_reg[23]_0 ),
        .I2(counter_reg[3]),
        .I3(counter_reg[4]),
        .I4(data_valid_i_2_n_0),
        .I5(input_right_channel[7]),
        .O(\input_right_channel[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[8]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_right_channel_reg[23]_0 ),
        .I2(\input_left_channel[16]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_right_channel[8]),
        .O(\input_right_channel[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[9]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_right_channel_reg[23]_0 ),
        .I2(\input_left_channel[17]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_right_channel[9]),
        .O(\input_right_channel[9]_i_1_n_0 ));
  FDPE \input_right_channel_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_right_channel[0]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_right_channel[0]));
  FDPE \input_right_channel_reg[10] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_right_channel[10]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_right_channel[10]));
  FDPE \input_right_channel_reg[11] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_right_channel[11]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_right_channel[11]));
  FDPE \input_right_channel_reg[12] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_right_channel[12]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_right_channel[12]));
  FDPE \input_right_channel_reg[13] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_right_channel[13]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_right_channel[13]));
  FDPE \input_right_channel_reg[14] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_right_channel[14]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_right_channel[14]));
  FDPE \input_right_channel_reg[15] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_right_channel[15]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_right_channel[15]));
  FDPE \input_right_channel_reg[16] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_right_channel[16]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_right_channel[16]));
  FDPE \input_right_channel_reg[17] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_right_channel[17]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_right_channel[17]));
  FDPE \input_right_channel_reg[18] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_right_channel[18]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_right_channel[18]));
  FDPE \input_right_channel_reg[19] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_right_channel[19]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_right_channel[19]));
  FDPE \input_right_channel_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_right_channel[1]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_right_channel[1]));
  FDPE \input_right_channel_reg[20] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_right_channel[20]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_right_channel[20]));
  FDPE \input_right_channel_reg[21] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_right_channel[21]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_right_channel[21]));
  FDPE \input_right_channel_reg[22] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_right_channel[22]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_right_channel[22]));
  FDPE \input_right_channel_reg[23] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_right_channel[23]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_right_channel[23]));
  FDPE \input_right_channel_reg[2] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_right_channel[2]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_right_channel[2]));
  FDPE \input_right_channel_reg[3] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_right_channel[3]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_right_channel[3]));
  FDPE \input_right_channel_reg[4] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_right_channel[4]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_right_channel[4]));
  FDPE \input_right_channel_reg[5] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_right_channel[5]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_right_channel[5]));
  FDPE \input_right_channel_reg[6] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_right_channel[6]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_right_channel[6]));
  FDPE \input_right_channel_reg[7] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_right_channel[7]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_right_channel[7]));
  FDPE \input_right_channel_reg[8] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_right_channel[8]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_right_channel[8]));
  FDPE \input_right_channel_reg[9] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\input_right_channel[9]_i_1_n_0 ),
        .PRE(rst_0),
        .Q(input_right_channel[9]));
  LUT6 #(
    .INIT(64'hEFFFEFEF20002020)) 
    last_lr_state_i_1
       (.I0(last_lr_state_reg_0),
        .I1(last_s_clk_state),
        .I2(last_s_clk_state_reg_0),
        .I3(\counter[4]_i_3_n_0 ),
        .I4(counter_reg[4]),
        .I5(last_lr_state),
        .O(last_lr_state_i_1_n_0));
  FDCE last_lr_state_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(rst_0),
        .D(last_lr_state_i_1_n_0),
        .Q(last_lr_state));
  FDCE last_s_clk_state_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .CLR(rst_0),
        .D(last_s_clk_state_reg_0),
        .Q(last_s_clk_state));
  LUT1 #(
    .INIT(2'h1)) 
    out_buf_i_2__1
       (.I0(rst),
        .O(rst_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_i2s_data_reg[0]_i_1 
       (.I0(input_left_channel[0]),
        .I1(last_lr_state),
        .I2(input_right_channel[0]),
        .O(rx_i2s_data_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_i2s_data_reg[10]_i_1 
       (.I0(input_left_channel[10]),
        .I1(last_lr_state),
        .I2(input_right_channel[10]),
        .O(rx_i2s_data_reg[10]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_i2s_data_reg[11]_i_1 
       (.I0(input_left_channel[11]),
        .I1(last_lr_state),
        .I2(input_right_channel[11]),
        .O(rx_i2s_data_reg[11]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_i2s_data_reg[12]_i_1 
       (.I0(input_left_channel[12]),
        .I1(last_lr_state),
        .I2(input_right_channel[12]),
        .O(rx_i2s_data_reg[12]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_i2s_data_reg[13]_i_1 
       (.I0(input_left_channel[13]),
        .I1(last_lr_state),
        .I2(input_right_channel[13]),
        .O(rx_i2s_data_reg[13]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_i2s_data_reg[14]_i_1 
       (.I0(input_left_channel[14]),
        .I1(last_lr_state),
        .I2(input_right_channel[14]),
        .O(rx_i2s_data_reg[14]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_i2s_data_reg[15]_i_1 
       (.I0(input_left_channel[15]),
        .I1(last_lr_state),
        .I2(input_right_channel[15]),
        .O(rx_i2s_data_reg[15]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_i2s_data_reg[16]_i_1 
       (.I0(input_left_channel[16]),
        .I1(last_lr_state),
        .I2(input_right_channel[16]),
        .O(rx_i2s_data_reg[16]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_i2s_data_reg[17]_i_1 
       (.I0(input_left_channel[17]),
        .I1(last_lr_state),
        .I2(input_right_channel[17]),
        .O(rx_i2s_data_reg[17]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_i2s_data_reg[18]_i_1 
       (.I0(input_left_channel[18]),
        .I1(last_lr_state),
        .I2(input_right_channel[18]),
        .O(rx_i2s_data_reg[18]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_i2s_data_reg[19]_i_1 
       (.I0(input_left_channel[19]),
        .I1(last_lr_state),
        .I2(input_right_channel[19]),
        .O(rx_i2s_data_reg[19]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_i2s_data_reg[1]_i_1 
       (.I0(input_left_channel[1]),
        .I1(last_lr_state),
        .I2(input_right_channel[1]),
        .O(rx_i2s_data_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_i2s_data_reg[20]_i_1 
       (.I0(input_left_channel[20]),
        .I1(last_lr_state),
        .I2(input_right_channel[20]),
        .O(rx_i2s_data_reg[20]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_i2s_data_reg[21]_i_1 
       (.I0(input_left_channel[21]),
        .I1(last_lr_state),
        .I2(input_right_channel[21]),
        .O(rx_i2s_data_reg[21]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_i2s_data_reg[22]_i_1 
       (.I0(input_left_channel[22]),
        .I1(last_lr_state),
        .I2(input_right_channel[22]),
        .O(rx_i2s_data_reg[22]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_i2s_data_reg[23]_i_1 
       (.I0(input_left_channel[23]),
        .I1(last_lr_state),
        .I2(input_right_channel[23]),
        .O(rx_i2s_data_reg[23]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_i2s_data_reg[2]_i_1 
       (.I0(input_left_channel[2]),
        .I1(last_lr_state),
        .I2(input_right_channel[2]),
        .O(rx_i2s_data_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_i2s_data_reg[3]_i_1 
       (.I0(input_left_channel[3]),
        .I1(last_lr_state),
        .I2(input_right_channel[3]),
        .O(rx_i2s_data_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_i2s_data_reg[4]_i_1 
       (.I0(input_left_channel[4]),
        .I1(last_lr_state),
        .I2(input_right_channel[4]),
        .O(rx_i2s_data_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_i2s_data_reg[5]_i_1 
       (.I0(input_left_channel[5]),
        .I1(last_lr_state),
        .I2(input_right_channel[5]),
        .O(rx_i2s_data_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_i2s_data_reg[6]_i_1 
       (.I0(input_left_channel[6]),
        .I1(last_lr_state),
        .I2(input_right_channel[6]),
        .O(rx_i2s_data_reg[6]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_i2s_data_reg[7]_i_1 
       (.I0(input_left_channel[7]),
        .I1(last_lr_state),
        .I2(input_right_channel[7]),
        .O(rx_i2s_data_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_i2s_data_reg[8]_i_1 
       (.I0(input_left_channel[8]),
        .I1(last_lr_state),
        .I2(input_right_channel[8]),
        .O(rx_i2s_data_reg[8]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_i2s_data_reg[9]_i_1 
       (.I0(input_left_channel[9]),
        .I1(last_lr_state),
        .I2(input_right_channel[9]),
        .O(rx_i2s_data_reg[9]));
  FDCE \rx_i2s_data_reg_reg[0] 
       (.C(m00_axis_aclk),
        .CE(data_valid2_out),
        .CLR(rst_0),
        .D(rx_i2s_data_reg[0]),
        .Q(Q[0]));
  FDCE \rx_i2s_data_reg_reg[10] 
       (.C(m00_axis_aclk),
        .CE(data_valid2_out),
        .CLR(rst_0),
        .D(rx_i2s_data_reg[10]),
        .Q(Q[10]));
  FDCE \rx_i2s_data_reg_reg[11] 
       (.C(m00_axis_aclk),
        .CE(data_valid2_out),
        .CLR(rst_0),
        .D(rx_i2s_data_reg[11]),
        .Q(Q[11]));
  FDCE \rx_i2s_data_reg_reg[12] 
       (.C(m00_axis_aclk),
        .CE(data_valid2_out),
        .CLR(rst_0),
        .D(rx_i2s_data_reg[12]),
        .Q(Q[12]));
  FDCE \rx_i2s_data_reg_reg[13] 
       (.C(m00_axis_aclk),
        .CE(data_valid2_out),
        .CLR(rst_0),
        .D(rx_i2s_data_reg[13]),
        .Q(Q[13]));
  FDCE \rx_i2s_data_reg_reg[14] 
       (.C(m00_axis_aclk),
        .CE(data_valid2_out),
        .CLR(rst_0),
        .D(rx_i2s_data_reg[14]),
        .Q(Q[14]));
  FDCE \rx_i2s_data_reg_reg[15] 
       (.C(m00_axis_aclk),
        .CE(data_valid2_out),
        .CLR(rst_0),
        .D(rx_i2s_data_reg[15]),
        .Q(Q[15]));
  FDCE \rx_i2s_data_reg_reg[16] 
       (.C(m00_axis_aclk),
        .CE(data_valid2_out),
        .CLR(rst_0),
        .D(rx_i2s_data_reg[16]),
        .Q(Q[16]));
  FDCE \rx_i2s_data_reg_reg[17] 
       (.C(m00_axis_aclk),
        .CE(data_valid2_out),
        .CLR(rst_0),
        .D(rx_i2s_data_reg[17]),
        .Q(Q[17]));
  FDCE \rx_i2s_data_reg_reg[18] 
       (.C(m00_axis_aclk),
        .CE(data_valid2_out),
        .CLR(rst_0),
        .D(rx_i2s_data_reg[18]),
        .Q(Q[18]));
  FDCE \rx_i2s_data_reg_reg[19] 
       (.C(m00_axis_aclk),
        .CE(data_valid2_out),
        .CLR(rst_0),
        .D(rx_i2s_data_reg[19]),
        .Q(Q[19]));
  FDCE \rx_i2s_data_reg_reg[1] 
       (.C(m00_axis_aclk),
        .CE(data_valid2_out),
        .CLR(rst_0),
        .D(rx_i2s_data_reg[1]),
        .Q(Q[1]));
  FDCE \rx_i2s_data_reg_reg[20] 
       (.C(m00_axis_aclk),
        .CE(data_valid2_out),
        .CLR(rst_0),
        .D(rx_i2s_data_reg[20]),
        .Q(Q[20]));
  FDCE \rx_i2s_data_reg_reg[21] 
       (.C(m00_axis_aclk),
        .CE(data_valid2_out),
        .CLR(rst_0),
        .D(rx_i2s_data_reg[21]),
        .Q(Q[21]));
  FDCE \rx_i2s_data_reg_reg[22] 
       (.C(m00_axis_aclk),
        .CE(data_valid2_out),
        .CLR(rst_0),
        .D(rx_i2s_data_reg[22]),
        .Q(Q[22]));
  FDCE \rx_i2s_data_reg_reg[23] 
       (.C(m00_axis_aclk),
        .CE(data_valid2_out),
        .CLR(rst_0),
        .D(rx_i2s_data_reg[23]),
        .Q(Q[23]));
  FDCE \rx_i2s_data_reg_reg[2] 
       (.C(m00_axis_aclk),
        .CE(data_valid2_out),
        .CLR(rst_0),
        .D(rx_i2s_data_reg[2]),
        .Q(Q[2]));
  FDCE \rx_i2s_data_reg_reg[3] 
       (.C(m00_axis_aclk),
        .CE(data_valid2_out),
        .CLR(rst_0),
        .D(rx_i2s_data_reg[3]),
        .Q(Q[3]));
  FDCE \rx_i2s_data_reg_reg[4] 
       (.C(m00_axis_aclk),
        .CE(data_valid2_out),
        .CLR(rst_0),
        .D(rx_i2s_data_reg[4]),
        .Q(Q[4]));
  FDCE \rx_i2s_data_reg_reg[5] 
       (.C(m00_axis_aclk),
        .CE(data_valid2_out),
        .CLR(rst_0),
        .D(rx_i2s_data_reg[5]),
        .Q(Q[5]));
  FDCE \rx_i2s_data_reg_reg[6] 
       (.C(m00_axis_aclk),
        .CE(data_valid2_out),
        .CLR(rst_0),
        .D(rx_i2s_data_reg[6]),
        .Q(Q[6]));
  FDCE \rx_i2s_data_reg_reg[7] 
       (.C(m00_axis_aclk),
        .CE(data_valid2_out),
        .CLR(rst_0),
        .D(rx_i2s_data_reg[7]),
        .Q(Q[7]));
  FDCE \rx_i2s_data_reg_reg[8] 
       (.C(m00_axis_aclk),
        .CE(data_valid2_out),
        .CLR(rst_0),
        .D(rx_i2s_data_reg[8]),
        .Q(Q[8]));
  FDCE \rx_i2s_data_reg_reg[9] 
       (.C(m00_axis_aclk),
        .CE(data_valid2_out),
        .CLR(rst_0),
        .D(rx_i2s_data_reg[9]),
        .Q(Q[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
