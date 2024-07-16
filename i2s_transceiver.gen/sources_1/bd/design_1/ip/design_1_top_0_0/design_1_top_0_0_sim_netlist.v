// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat Jul  6 15:37:36 2024
// Host        : DESKTOP-TP558OF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/AMD/vivdoWS/i2s_transceiver/i2s_transceiver.gen/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_sim_netlist.v
// Design      : design_1_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_top_0_0,top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "top,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module design_1_top_0_0
   (CLK_IN,
    rst,
    rx_i2s_data,
    tx_i2s_data,
    s_clk_adc,
    s_clk_dac,
    m_clk_adc,
    m_clk_dac,
    lr_clk_adc,
    lr_clk_dac);
  input CLK_IN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input rx_i2s_data;
  output tx_i2s_data;
  output s_clk_adc;
  output s_clk_dac;
  output m_clk_adc;
  output m_clk_dac;
  output lr_clk_adc;
  output lr_clk_dac;

  wire CLK_IN;
  wire lr_clk_dac;
  wire m_clk_dac;
  wire rst;
  wire rx_i2s_data;
  wire s_clk_adc;
  wire tx_i2s_data;

  assign lr_clk_adc = lr_clk_dac;
  assign m_clk_adc = m_clk_dac;
  assign s_clk_dac = s_clk_adc;
  design_1_top_0_0_top inst
       (.CLK_IN(CLK_IN),
        .m_clk_dac(m_clk_dac),
        .out_buf_reg(lr_clk_dac),
        .out_buf_reg_0(s_clk_adc),
        .rst(rst),
        .rx_i2s_data(rx_i2s_data),
        .tx_i2s_data(tx_i2s_data));
endmodule

(* ORIG_REF_NAME = "clk_divider" *) 
module design_1_top_0_0_clk_divider
   (m_clk_dac,
    CLK_IN,
    rst);
  output m_clk_dac;
  input CLK_IN;
  input rst;

  wire CLK_IN;
  wire [11:0]counter;
  wire [11:0]counter_0;
  wire \counter_reg[11]_i_2__0_n_2 ;
  wire \counter_reg[11]_i_2__0_n_3 ;
  wire \counter_reg[4]_i_2__0_n_0 ;
  wire \counter_reg[4]_i_2__0_n_1 ;
  wire \counter_reg[4]_i_2__0_n_2 ;
  wire \counter_reg[4]_i_2__0_n_3 ;
  wire \counter_reg[8]_i_2__0_n_0 ;
  wire \counter_reg[8]_i_2__0_n_1 ;
  wire \counter_reg[8]_i_2__0_n_2 ;
  wire \counter_reg[8]_i_2__0_n_3 ;
  wire [11:1]data0;
  wire m_clk_dac;
  wire out_buf_i_1__1_n_0;
  wire out_buf_i_2__1_n_0;
  wire out_buf_i_3__1_n_0;
  wire out_buf_i_4__1_n_0;
  wire rst;
  wire [3:2]\NLW_counter_reg[11]_i_2__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[11]_i_2__0_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__1 
       (.I0(counter[0]),
        .O(counter_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[10]_i_1__1 
       (.I0(out_buf_i_2__1_n_0),
        .I1(data0[10]),
        .O(counter_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[11]_i_1__1 
       (.I0(out_buf_i_2__1_n_0),
        .I1(data0[11]),
        .O(counter_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[1]_i_1__2 
       (.I0(out_buf_i_2__1_n_0),
        .I1(data0[1]),
        .O(counter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[2]_i_1__2 
       (.I0(out_buf_i_2__1_n_0),
        .I1(data0[2]),
        .O(counter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[3]_i_1__2 
       (.I0(out_buf_i_2__1_n_0),
        .I1(data0[3]),
        .O(counter_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[4]_i_1__1 
       (.I0(out_buf_i_2__1_n_0),
        .I1(data0[4]),
        .O(counter_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[5]_i_1__1 
       (.I0(out_buf_i_2__1_n_0),
        .I1(data0[5]),
        .O(counter_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[6]_i_1__1 
       (.I0(out_buf_i_2__1_n_0),
        .I1(data0[6]),
        .O(counter_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[7]_i_1__1 
       (.I0(out_buf_i_2__1_n_0),
        .I1(data0[7]),
        .O(counter_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[8]_i_1__1 
       (.I0(out_buf_i_2__1_n_0),
        .I1(data0[8]),
        .O(counter_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[9]_i_1__1 
       (.I0(out_buf_i_2__1_n_0),
        .I1(data0[9]),
        .O(counter_0[9]));
  FDCE \counter_reg[0] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[0]),
        .Q(counter[0]));
  FDCE \counter_reg[10] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[10]),
        .Q(counter[10]));
  FDCE \counter_reg[11] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[11]),
        .Q(counter[11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[11]_i_2__0 
       (.CI(\counter_reg[8]_i_2__0_n_0 ),
        .CO({\NLW_counter_reg[11]_i_2__0_CO_UNCONNECTED [3:2],\counter_reg[11]_i_2__0_n_2 ,\counter_reg[11]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[11]_i_2__0_O_UNCONNECTED [3],data0[11:9]}),
        .S({1'b0,counter[11:9]}));
  FDCE \counter_reg[1] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[1]),
        .Q(counter[1]));
  FDCE \counter_reg[2] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[2]),
        .Q(counter[2]));
  FDCE \counter_reg[3] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[3]),
        .Q(counter[3]));
  FDCE \counter_reg[4] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[4]),
        .Q(counter[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[4]_i_2__0 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_2__0_n_0 ,\counter_reg[4]_i_2__0_n_1 ,\counter_reg[4]_i_2__0_n_2 ,\counter_reg[4]_i_2__0_n_3 }),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(counter[4:1]));
  FDCE \counter_reg[5] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[5]),
        .Q(counter[5]));
  FDCE \counter_reg[6] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[6]),
        .Q(counter[6]));
  FDCE \counter_reg[7] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[7]),
        .Q(counter[7]));
  FDCE \counter_reg[8] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[8]),
        .Q(counter[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[8]_i_2__0 
       (.CI(\counter_reg[4]_i_2__0_n_0 ),
        .CO({\counter_reg[8]_i_2__0_n_0 ,\counter_reg[8]_i_2__0_n_1 ,\counter_reg[8]_i_2__0_n_2 ,\counter_reg[8]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(counter[8:5]));
  FDCE \counter_reg[9] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[9]),
        .Q(counter[9]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h9)) 
    out_buf_i_1__1
       (.I0(out_buf_i_2__1_n_0),
        .I1(m_clk_dac),
        .O(out_buf_i_1__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    out_buf_i_2__1
       (.I0(out_buf_i_3__1_n_0),
        .I1(counter[5]),
        .I2(counter[4]),
        .I3(counter[7]),
        .I4(counter[6]),
        .I5(out_buf_i_4__1_n_0),
        .O(out_buf_i_2__1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    out_buf_i_3__1
       (.I0(counter[9]),
        .I1(counter[8]),
        .I2(counter[11]),
        .I3(counter[10]),
        .O(out_buf_i_3__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    out_buf_i_4__1
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[3]),
        .I3(counter[2]),
        .O(out_buf_i_4__1_n_0));
  FDCE out_buf_reg
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(out_buf_i_1__1_n_0),
        .Q(m_clk_dac));
endmodule

(* ORIG_REF_NAME = "clk_divider" *) 
module design_1_top_0_0_clk_divider__parameterized0
   (out_buf_reg_0,
    CLK_IN,
    rst);
  output out_buf_reg_0;
  input CLK_IN;
  input rst;

  wire CLK_IN;
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
  wire out_buf_i_1_n_0;
  wire out_buf_i_2_n_0;
  wire out_buf_i_3_n_0;
  wire out_buf_i_4_n_0;
  wire out_buf_reg_0;
  wire rst;
  wire [3:2]\NLW_counter_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[11]_i_2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .O(counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[10]_i_1 
       (.I0(out_buf_i_2_n_0),
        .I1(\counter_reg[11]_i_2_n_6 ),
        .O(counter[10]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[11]_i_1 
       (.I0(out_buf_i_2_n_0),
        .I1(\counter_reg[11]_i_2_n_5 ),
        .O(counter[11]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[1]_i_1__0 
       (.I0(out_buf_i_2_n_0),
        .I1(\counter_reg[4]_i_2_n_7 ),
        .O(counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[2]_i_1__0 
       (.I0(out_buf_i_2_n_0),
        .I1(\counter_reg[4]_i_2_n_6 ),
        .O(counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[3]_i_1__0 
       (.I0(out_buf_i_2_n_0),
        .I1(\counter_reg[4]_i_2_n_5 ),
        .O(counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[4]_i_1 
       (.I0(out_buf_i_2_n_0),
        .I1(\counter_reg[4]_i_2_n_4 ),
        .O(counter[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[5]_i_1 
       (.I0(out_buf_i_2_n_0),
        .I1(\counter_reg[8]_i_2_n_7 ),
        .O(counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[6]_i_1 
       (.I0(out_buf_i_2_n_0),
        .I1(\counter_reg[8]_i_2_n_6 ),
        .O(counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[7]_i_1 
       (.I0(out_buf_i_2_n_0),
        .I1(\counter_reg[8]_i_2_n_5 ),
        .O(counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[8]_i_1 
       (.I0(out_buf_i_2_n_0),
        .I1(\counter_reg[8]_i_2_n_4 ),
        .O(counter[8]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[9]_i_1 
       (.I0(out_buf_i_2_n_0),
        .I1(\counter_reg[11]_i_2_n_7 ),
        .O(counter[9]));
  FDCE \counter_reg[0] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter[0]),
        .Q(\counter_reg_n_0_[0] ));
  FDCE \counter_reg[10] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter[10]),
        .Q(\counter_reg_n_0_[10] ));
  FDCE \counter_reg[11] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
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
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter[1]),
        .Q(\counter_reg_n_0_[1] ));
  FDCE \counter_reg[2] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter[2]),
        .Q(\counter_reg_n_0_[2] ));
  FDCE \counter_reg[3] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter[3]),
        .Q(\counter_reg_n_0_[3] ));
  FDCE \counter_reg[4] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
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
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter[5]),
        .Q(\counter_reg_n_0_[5] ));
  FDCE \counter_reg[6] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter[6]),
        .Q(\counter_reg_n_0_[6] ));
  FDCE \counter_reg[7] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter[7]),
        .Q(\counter_reg_n_0_[7] ));
  FDCE \counter_reg[8] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
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
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter[9]),
        .Q(\counter_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h9)) 
    out_buf_i_1
       (.I0(out_buf_i_2_n_0),
        .I1(out_buf_reg_0),
        .O(out_buf_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    out_buf_i_2
       (.I0(out_buf_i_3_n_0),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[7] ),
        .I4(\counter_reg_n_0_[6] ),
        .I5(out_buf_i_4_n_0),
        .O(out_buf_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    out_buf_i_3
       (.I0(\counter_reg_n_0_[9] ),
        .I1(\counter_reg_n_0_[8] ),
        .I2(\counter_reg_n_0_[11] ),
        .I3(\counter_reg_n_0_[10] ),
        .O(out_buf_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    out_buf_i_4
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[3] ),
        .I3(\counter_reg_n_0_[2] ),
        .O(out_buf_i_4_n_0));
  FDCE out_buf_reg
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(out_buf_i_1_n_0),
        .Q(out_buf_reg_0));
endmodule

(* ORIG_REF_NAME = "clk_divider" *) 
module design_1_top_0_0_clk_divider__parameterized1
   (out_buf_reg_0,
    CLK_IN,
    rst);
  output out_buf_reg_0;
  input CLK_IN;
  input rst;

  wire CLK_IN;
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
  wire out_buf_i_1__0_n_0;
  wire out_buf_i_2__0_n_0;
  wire out_buf_i_3__0_n_0;
  wire out_buf_i_4__0_n_0;
  wire out_buf_reg_0;
  wire rst;
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__0 
       (.I0(\counter_reg_n_0_[0] ),
        .O(counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[10]_i_1__0 
       (.I0(out_buf_i_2__0_n_0),
        .I1(counter0_carry__1_n_6),
        .O(counter[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[11]_i_1__0 
       (.I0(out_buf_i_2__0_n_0),
        .I1(counter0_carry__1_n_5),
        .O(counter[11]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[1]_i_1__1 
       (.I0(out_buf_i_2__0_n_0),
        .I1(counter0_carry_n_7),
        .O(counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[2]_i_1__1 
       (.I0(out_buf_i_2__0_n_0),
        .I1(counter0_carry_n_6),
        .O(counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[3]_i_1__1 
       (.I0(out_buf_i_2__0_n_0),
        .I1(counter0_carry_n_5),
        .O(counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[4]_i_1__0 
       (.I0(out_buf_i_2__0_n_0),
        .I1(counter0_carry_n_4),
        .O(counter[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[5]_i_1__0 
       (.I0(out_buf_i_2__0_n_0),
        .I1(counter0_carry__0_n_7),
        .O(counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[6]_i_1__0 
       (.I0(out_buf_i_2__0_n_0),
        .I1(counter0_carry__0_n_6),
        .O(counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[7]_i_1__0 
       (.I0(out_buf_i_2__0_n_0),
        .I1(counter0_carry__0_n_5),
        .O(counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[8]_i_1__0 
       (.I0(out_buf_i_2__0_n_0),
        .I1(counter0_carry__0_n_4),
        .O(counter[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[9]_i_1__0 
       (.I0(out_buf_i_2__0_n_0),
        .I1(counter0_carry__1_n_7),
        .O(counter[9]));
  FDCE \counter_reg[0] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter[0]),
        .Q(\counter_reg_n_0_[0] ));
  FDCE \counter_reg[10] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter[10]),
        .Q(\counter_reg_n_0_[10] ));
  FDCE \counter_reg[11] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter[11]),
        .Q(\counter_reg_n_0_[11] ));
  FDCE \counter_reg[1] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter[1]),
        .Q(\counter_reg_n_0_[1] ));
  FDCE \counter_reg[2] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter[2]),
        .Q(\counter_reg_n_0_[2] ));
  FDCE \counter_reg[3] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter[3]),
        .Q(\counter_reg_n_0_[3] ));
  FDCE \counter_reg[4] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter[4]),
        .Q(\counter_reg_n_0_[4] ));
  FDCE \counter_reg[5] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter[5]),
        .Q(\counter_reg_n_0_[5] ));
  FDCE \counter_reg[6] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter[6]),
        .Q(\counter_reg_n_0_[6] ));
  FDCE \counter_reg[7] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter[7]),
        .Q(\counter_reg_n_0_[7] ));
  FDCE \counter_reg[8] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter[8]),
        .Q(\counter_reg_n_0_[8] ));
  FDCE \counter_reg[9] 
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(counter[9]),
        .Q(\counter_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h9)) 
    out_buf_i_1__0
       (.I0(out_buf_i_2__0_n_0),
        .I1(out_buf_reg_0),
        .O(out_buf_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    out_buf_i_2__0
       (.I0(out_buf_i_3__0_n_0),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[7] ),
        .I4(\counter_reg_n_0_[6] ),
        .I5(out_buf_i_4__0_n_0),
        .O(out_buf_i_2__0_n_0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    out_buf_i_3__0
       (.I0(\counter_reg_n_0_[9] ),
        .I1(\counter_reg_n_0_[8] ),
        .I2(\counter_reg_n_0_[11] ),
        .I3(\counter_reg_n_0_[10] ),
        .O(out_buf_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    out_buf_i_4__0
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[3] ),
        .I3(\counter_reg_n_0_[2] ),
        .O(out_buf_i_4__0_n_0));
  FDCE out_buf_reg
       (.C(CLK_IN),
        .CE(1'b1),
        .CLR(rst),
        .D(out_buf_i_1__0_n_0),
        .Q(out_buf_reg_0));
endmodule

(* ORIG_REF_NAME = "i2s_transceiver" *) 
module design_1_top_0_0_i2s_transceiver
   (tx_i2s_data,
    \output_data_reg_reg[23]_0 ,
    rst,
    \output_data_reg_reg[23]_1 ,
    rx_i2s_data);
  output tx_i2s_data;
  input \output_data_reg_reg[23]_0 ;
  input rst;
  input \output_data_reg_reg[23]_1 ;
  input rx_i2s_data;

  wire counter1__2;
  wire \counter[0]_i_1__2_n_0 ;
  wire \counter[4]_i_1__2_n_0 ;
  wire [4:0]counter_reg;
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
  wire \input_left_channel[23]_i_2_n_0 ;
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
  wire last_lr_state;
  wire last_lr_state_i_1_n_0;
  wire [23:0]output_data_reg;
  wire \output_data_reg[0]_i_1_n_0 ;
  wire \output_data_reg[10]_i_1_n_0 ;
  wire \output_data_reg[11]_i_1_n_0 ;
  wire \output_data_reg[12]_i_1_n_0 ;
  wire \output_data_reg[13]_i_1_n_0 ;
  wire \output_data_reg[14]_i_1_n_0 ;
  wire \output_data_reg[15]_i_1_n_0 ;
  wire \output_data_reg[16]_i_1_n_0 ;
  wire \output_data_reg[17]_i_1_n_0 ;
  wire \output_data_reg[18]_i_1_n_0 ;
  wire \output_data_reg[19]_i_1_n_0 ;
  wire \output_data_reg[1]_i_1_n_0 ;
  wire \output_data_reg[20]_i_1_n_0 ;
  wire \output_data_reg[21]_i_1_n_0 ;
  wire \output_data_reg[22]_i_1_n_0 ;
  wire \output_data_reg[23]_i_1_n_0 ;
  wire \output_data_reg[23]_i_2_n_0 ;
  wire \output_data_reg[2]_i_1_n_0 ;
  wire \output_data_reg[3]_i_1_n_0 ;
  wire \output_data_reg[4]_i_1_n_0 ;
  wire \output_data_reg[5]_i_1_n_0 ;
  wire \output_data_reg[6]_i_1_n_0 ;
  wire \output_data_reg[7]_i_1_n_0 ;
  wire \output_data_reg[8]_i_1_n_0 ;
  wire \output_data_reg[9]_i_1_n_0 ;
  wire \output_data_reg_reg[23]_0 ;
  wire \output_data_reg_reg[23]_1 ;
  wire [4:1]p_0_in;
  wire rst;
  wire rx_i2s_data;
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

  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__2 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \counter[2]_i_1 
       (.I0(counter_reg[0]),
        .I1(counter_reg[2]),
        .I2(counter_reg[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \counter[3]_i_1 
       (.I0(counter_reg[0]),
        .I1(counter_reg[3]),
        .I2(counter_reg[2]),
        .I3(counter_reg[1]),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'h00F6)) 
    \counter[4]_i_1__2 
       (.I0(\output_data_reg_reg[23]_1 ),
        .I1(last_lr_state),
        .I2(counter1__2),
        .I3(\output_data_reg_reg[23]_0 ),
        .O(\counter[4]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h6CCCCCCC)) 
    \counter[4]_i_2 
       (.I0(counter_reg[0]),
        .I1(counter_reg[4]),
        .I2(counter_reg[3]),
        .I3(counter_reg[2]),
        .I4(counter_reg[1]),
        .O(p_0_in[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \counter_reg[0] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\counter[4]_i_1__2_n_0 ),
        .CLR(rst),
        .D(\counter[0]_i_1__2_n_0 ),
        .Q(counter_reg[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \counter_reg[1] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\counter[4]_i_1__2_n_0 ),
        .CLR(rst),
        .D(p_0_in[1]),
        .Q(counter_reg[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \counter_reg[2] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\counter[4]_i_1__2_n_0 ),
        .CLR(rst),
        .D(p_0_in[2]),
        .Q(counter_reg[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \counter_reg[3] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\counter[4]_i_1__2_n_0 ),
        .CLR(rst),
        .D(p_0_in[3]),
        .Q(counter_reg[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \counter_reg[4] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\counter[4]_i_1__2_n_0 ),
        .CLR(rst),
        .D(p_0_in[4]),
        .Q(counter_reg[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \input_left_channel[0]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_left_channel[16]_i_2_n_0 ),
        .I2(counter_reg[4]),
        .I3(counter_reg[3]),
        .I4(\output_data_reg_reg[23]_1 ),
        .I5(input_left_channel[0]),
        .O(\input_left_channel[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \input_left_channel[10]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_left_channel[18]_i_2_n_0 ),
        .I2(counter_reg[4]),
        .I3(counter_reg[3]),
        .I4(\output_data_reg_reg[23]_1 ),
        .I5(input_left_channel[10]),
        .O(\input_left_channel[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \input_left_channel[11]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_left_channel[19]_i_2_n_0 ),
        .I2(counter_reg[4]),
        .I3(counter_reg[3]),
        .I4(\output_data_reg_reg[23]_1 ),
        .I5(input_left_channel[11]),
        .O(\input_left_channel[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \input_left_channel[12]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_left_channel[20]_i_2_n_0 ),
        .I2(counter_reg[4]),
        .I3(counter_reg[3]),
        .I4(\output_data_reg_reg[23]_1 ),
        .I5(input_left_channel[12]),
        .O(\input_left_channel[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \input_left_channel[13]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_left_channel[21]_i_2_n_0 ),
        .I2(counter_reg[4]),
        .I3(counter_reg[3]),
        .I4(\output_data_reg_reg[23]_1 ),
        .I5(input_left_channel[13]),
        .O(\input_left_channel[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \input_left_channel[14]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_left_channel[22]_i_2_n_0 ),
        .I2(counter_reg[4]),
        .I3(counter_reg[3]),
        .I4(\output_data_reg_reg[23]_1 ),
        .I5(input_left_channel[14]),
        .O(\input_left_channel[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \input_left_channel[15]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_left_channel[23]_i_2_n_0 ),
        .I2(counter_reg[4]),
        .I3(counter_reg[3]),
        .I4(\output_data_reg_reg[23]_1 ),
        .I5(input_left_channel[15]),
        .O(\input_left_channel[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \input_left_channel[16]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_left_channel[16]_i_2_n_0 ),
        .I2(counter_reg[3]),
        .I3(counter_reg[4]),
        .I4(\output_data_reg_reg[23]_1 ),
        .I5(input_left_channel[16]),
        .O(\input_left_channel[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \input_left_channel[16]_i_2 
       (.I0(counter_reg[2]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .O(\input_left_channel[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \input_left_channel[17]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_left_channel[17]_i_2_n_0 ),
        .I2(counter_reg[3]),
        .I3(counter_reg[4]),
        .I4(\output_data_reg_reg[23]_1 ),
        .I5(input_left_channel[17]),
        .O(\input_left_channel[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \input_left_channel[17]_i_2 
       (.I0(counter_reg[2]),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .O(\input_left_channel[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \input_left_channel[18]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_left_channel[18]_i_2_n_0 ),
        .I2(counter_reg[3]),
        .I3(counter_reg[4]),
        .I4(\output_data_reg_reg[23]_1 ),
        .I5(input_left_channel[18]),
        .O(\input_left_channel[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \input_left_channel[18]_i_2 
       (.I0(counter_reg[2]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .O(\input_left_channel[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \input_left_channel[19]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_left_channel[19]_i_2_n_0 ),
        .I2(counter_reg[3]),
        .I3(counter_reg[4]),
        .I4(\output_data_reg_reg[23]_1 ),
        .I5(input_left_channel[19]),
        .O(\input_left_channel[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \input_left_channel[19]_i_2 
       (.I0(counter_reg[2]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .O(\input_left_channel[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \input_left_channel[1]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_left_channel[17]_i_2_n_0 ),
        .I2(counter_reg[4]),
        .I3(counter_reg[3]),
        .I4(\output_data_reg_reg[23]_1 ),
        .I5(input_left_channel[1]),
        .O(\input_left_channel[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \input_left_channel[20]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_left_channel[20]_i_2_n_0 ),
        .I2(counter_reg[3]),
        .I3(counter_reg[4]),
        .I4(\output_data_reg_reg[23]_1 ),
        .I5(input_left_channel[20]),
        .O(\input_left_channel[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \input_left_channel[20]_i_2 
       (.I0(counter_reg[2]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .O(\input_left_channel[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \input_left_channel[21]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_left_channel[21]_i_2_n_0 ),
        .I2(counter_reg[3]),
        .I3(counter_reg[4]),
        .I4(\output_data_reg_reg[23]_1 ),
        .I5(input_left_channel[21]),
        .O(\input_left_channel[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \input_left_channel[21]_i_2 
       (.I0(counter_reg[2]),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .O(\input_left_channel[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \input_left_channel[22]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_left_channel[22]_i_2_n_0 ),
        .I2(counter_reg[3]),
        .I3(counter_reg[4]),
        .I4(\output_data_reg_reg[23]_1 ),
        .I5(input_left_channel[22]),
        .O(\input_left_channel[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \input_left_channel[22]_i_2 
       (.I0(counter_reg[2]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .O(\input_left_channel[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \input_left_channel[23]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_left_channel[23]_i_2_n_0 ),
        .I2(counter_reg[3]),
        .I3(counter_reg[4]),
        .I4(\output_data_reg_reg[23]_1 ),
        .I5(input_left_channel[23]),
        .O(\input_left_channel[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \input_left_channel[23]_i_2 
       (.I0(counter_reg[2]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .O(\input_left_channel[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \input_left_channel[2]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_left_channel[18]_i_2_n_0 ),
        .I2(counter_reg[4]),
        .I3(counter_reg[3]),
        .I4(\output_data_reg_reg[23]_1 ),
        .I5(input_left_channel[2]),
        .O(\input_left_channel[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \input_left_channel[3]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_left_channel[19]_i_2_n_0 ),
        .I2(counter_reg[4]),
        .I3(counter_reg[3]),
        .I4(\output_data_reg_reg[23]_1 ),
        .I5(input_left_channel[3]),
        .O(\input_left_channel[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \input_left_channel[4]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_left_channel[20]_i_2_n_0 ),
        .I2(counter_reg[4]),
        .I3(counter_reg[3]),
        .I4(\output_data_reg_reg[23]_1 ),
        .I5(input_left_channel[4]),
        .O(\input_left_channel[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \input_left_channel[5]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_left_channel[21]_i_2_n_0 ),
        .I2(counter_reg[4]),
        .I3(counter_reg[3]),
        .I4(\output_data_reg_reg[23]_1 ),
        .I5(input_left_channel[5]),
        .O(\input_left_channel[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \input_left_channel[6]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_left_channel[22]_i_2_n_0 ),
        .I2(counter_reg[4]),
        .I3(counter_reg[3]),
        .I4(\output_data_reg_reg[23]_1 ),
        .I5(input_left_channel[6]),
        .O(\input_left_channel[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \input_left_channel[7]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_left_channel[23]_i_2_n_0 ),
        .I2(counter_reg[4]),
        .I3(counter_reg[3]),
        .I4(\output_data_reg_reg[23]_1 ),
        .I5(input_left_channel[7]),
        .O(\input_left_channel[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \input_left_channel[8]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_left_channel[16]_i_2_n_0 ),
        .I2(counter_reg[4]),
        .I3(counter_reg[3]),
        .I4(\output_data_reg_reg[23]_1 ),
        .I5(input_left_channel[8]),
        .O(\input_left_channel[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \input_left_channel[9]_i_1 
       (.I0(rx_i2s_data),
        .I1(\input_left_channel[17]_i_2_n_0 ),
        .I2(counter_reg[4]),
        .I3(counter_reg[3]),
        .I4(\output_data_reg_reg[23]_1 ),
        .I5(input_left_channel[9]),
        .O(\input_left_channel[9]_i_1_n_0 ));
  FDCE \input_left_channel_reg[0] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_left_channel[0]_i_1_n_0 ),
        .Q(input_left_channel[0]));
  FDCE \input_left_channel_reg[10] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_left_channel[10]_i_1_n_0 ),
        .Q(input_left_channel[10]));
  FDCE \input_left_channel_reg[11] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_left_channel[11]_i_1_n_0 ),
        .Q(input_left_channel[11]));
  FDCE \input_left_channel_reg[12] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_left_channel[12]_i_1_n_0 ),
        .Q(input_left_channel[12]));
  FDCE \input_left_channel_reg[13] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_left_channel[13]_i_1_n_0 ),
        .Q(input_left_channel[13]));
  FDCE \input_left_channel_reg[14] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_left_channel[14]_i_1_n_0 ),
        .Q(input_left_channel[14]));
  FDCE \input_left_channel_reg[15] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_left_channel[15]_i_1_n_0 ),
        .Q(input_left_channel[15]));
  FDCE \input_left_channel_reg[16] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_left_channel[16]_i_1_n_0 ),
        .Q(input_left_channel[16]));
  FDCE \input_left_channel_reg[17] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_left_channel[17]_i_1_n_0 ),
        .Q(input_left_channel[17]));
  FDCE \input_left_channel_reg[18] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_left_channel[18]_i_1_n_0 ),
        .Q(input_left_channel[18]));
  FDCE \input_left_channel_reg[19] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_left_channel[19]_i_1_n_0 ),
        .Q(input_left_channel[19]));
  FDCE \input_left_channel_reg[1] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_left_channel[1]_i_1_n_0 ),
        .Q(input_left_channel[1]));
  FDCE \input_left_channel_reg[20] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_left_channel[20]_i_1_n_0 ),
        .Q(input_left_channel[20]));
  FDCE \input_left_channel_reg[21] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_left_channel[21]_i_1_n_0 ),
        .Q(input_left_channel[21]));
  FDCE \input_left_channel_reg[22] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_left_channel[22]_i_1_n_0 ),
        .Q(input_left_channel[22]));
  FDCE \input_left_channel_reg[23] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_left_channel[23]_i_1_n_0 ),
        .Q(input_left_channel[23]));
  FDCE \input_left_channel_reg[2] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_left_channel[2]_i_1_n_0 ),
        .Q(input_left_channel[2]));
  FDCE \input_left_channel_reg[3] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_left_channel[3]_i_1_n_0 ),
        .Q(input_left_channel[3]));
  FDCE \input_left_channel_reg[4] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_left_channel[4]_i_1_n_0 ),
        .Q(input_left_channel[4]));
  FDCE \input_left_channel_reg[5] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_left_channel[5]_i_1_n_0 ),
        .Q(input_left_channel[5]));
  FDCE \input_left_channel_reg[6] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_left_channel[6]_i_1_n_0 ),
        .Q(input_left_channel[6]));
  FDCE \input_left_channel_reg[7] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_left_channel[7]_i_1_n_0 ),
        .Q(input_left_channel[7]));
  FDCE \input_left_channel_reg[8] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_left_channel[8]_i_1_n_0 ),
        .Q(input_left_channel[8]));
  FDCE \input_left_channel_reg[9] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_left_channel[9]_i_1_n_0 ),
        .Q(input_left_channel[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \input_right_channel[0]_i_1 
       (.I0(rx_i2s_data),
        .I1(\output_data_reg_reg[23]_1 ),
        .I2(\input_left_channel[16]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_right_channel[0]),
        .O(\input_right_channel[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[10]_i_1 
       (.I0(rx_i2s_data),
        .I1(\output_data_reg_reg[23]_1 ),
        .I2(\input_left_channel[18]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_right_channel[10]),
        .O(\input_right_channel[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[11]_i_1 
       (.I0(rx_i2s_data),
        .I1(\output_data_reg_reg[23]_1 ),
        .I2(\input_left_channel[19]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_right_channel[11]),
        .O(\input_right_channel[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[12]_i_1 
       (.I0(rx_i2s_data),
        .I1(\output_data_reg_reg[23]_1 ),
        .I2(\input_left_channel[20]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_right_channel[12]),
        .O(\input_right_channel[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[13]_i_1 
       (.I0(rx_i2s_data),
        .I1(\output_data_reg_reg[23]_1 ),
        .I2(\input_left_channel[21]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_right_channel[13]),
        .O(\input_right_channel[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[14]_i_1 
       (.I0(rx_i2s_data),
        .I1(\output_data_reg_reg[23]_1 ),
        .I2(\input_left_channel[22]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_right_channel[14]),
        .O(\input_right_channel[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \input_right_channel[15]_i_1 
       (.I0(rx_i2s_data),
        .I1(\output_data_reg_reg[23]_1 ),
        .I2(\input_left_channel[23]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_right_channel[15]),
        .O(\input_right_channel[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[16]_i_1 
       (.I0(rx_i2s_data),
        .I1(\output_data_reg_reg[23]_1 ),
        .I2(\input_left_channel[16]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_right_channel[16]),
        .O(\input_right_channel[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[17]_i_1 
       (.I0(rx_i2s_data),
        .I1(\output_data_reg_reg[23]_1 ),
        .I2(\input_left_channel[17]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_right_channel[17]),
        .O(\input_right_channel[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[18]_i_1 
       (.I0(rx_i2s_data),
        .I1(\output_data_reg_reg[23]_1 ),
        .I2(\input_left_channel[18]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_right_channel[18]),
        .O(\input_right_channel[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[19]_i_1 
       (.I0(rx_i2s_data),
        .I1(\output_data_reg_reg[23]_1 ),
        .I2(\input_left_channel[19]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_right_channel[19]),
        .O(\input_right_channel[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \input_right_channel[1]_i_1 
       (.I0(rx_i2s_data),
        .I1(\output_data_reg_reg[23]_1 ),
        .I2(\input_left_channel[17]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_right_channel[1]),
        .O(\input_right_channel[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[20]_i_1 
       (.I0(rx_i2s_data),
        .I1(\output_data_reg_reg[23]_1 ),
        .I2(\input_left_channel[20]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_right_channel[20]),
        .O(\input_right_channel[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[21]_i_1 
       (.I0(rx_i2s_data),
        .I1(\output_data_reg_reg[23]_1 ),
        .I2(\input_left_channel[21]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_right_channel[21]),
        .O(\input_right_channel[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[22]_i_1 
       (.I0(rx_i2s_data),
        .I1(\output_data_reg_reg[23]_1 ),
        .I2(\input_left_channel[22]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_right_channel[22]),
        .O(\input_right_channel[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \input_right_channel[23]_i_1 
       (.I0(rx_i2s_data),
        .I1(\output_data_reg_reg[23]_1 ),
        .I2(\input_left_channel[23]_i_2_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(input_right_channel[23]),
        .O(\input_right_channel[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \input_right_channel[2]_i_1 
       (.I0(rx_i2s_data),
        .I1(\output_data_reg_reg[23]_1 ),
        .I2(\input_left_channel[18]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_right_channel[2]),
        .O(\input_right_channel[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \input_right_channel[3]_i_1 
       (.I0(rx_i2s_data),
        .I1(\output_data_reg_reg[23]_1 ),
        .I2(\input_left_channel[19]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_right_channel[3]),
        .O(\input_right_channel[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \input_right_channel[4]_i_1 
       (.I0(rx_i2s_data),
        .I1(\output_data_reg_reg[23]_1 ),
        .I2(\input_left_channel[20]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_right_channel[4]),
        .O(\input_right_channel[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \input_right_channel[5]_i_1 
       (.I0(rx_i2s_data),
        .I1(\output_data_reg_reg[23]_1 ),
        .I2(\input_left_channel[21]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_right_channel[5]),
        .O(\input_right_channel[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \input_right_channel[6]_i_1 
       (.I0(rx_i2s_data),
        .I1(\output_data_reg_reg[23]_1 ),
        .I2(\input_left_channel[22]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_right_channel[6]),
        .O(\input_right_channel[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \input_right_channel[7]_i_1 
       (.I0(rx_i2s_data),
        .I1(\output_data_reg_reg[23]_1 ),
        .I2(\input_left_channel[23]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_right_channel[7]),
        .O(\input_right_channel[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[8]_i_1 
       (.I0(rx_i2s_data),
        .I1(\output_data_reg_reg[23]_1 ),
        .I2(\input_left_channel[16]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_right_channel[8]),
        .O(\input_right_channel[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \input_right_channel[9]_i_1 
       (.I0(rx_i2s_data),
        .I1(\output_data_reg_reg[23]_1 ),
        .I2(\input_left_channel[17]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .I5(input_right_channel[9]),
        .O(\input_right_channel[9]_i_1_n_0 ));
  FDCE \input_right_channel_reg[0] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_right_channel[0]_i_1_n_0 ),
        .Q(input_right_channel[0]));
  FDCE \input_right_channel_reg[10] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_right_channel[10]_i_1_n_0 ),
        .Q(input_right_channel[10]));
  FDCE \input_right_channel_reg[11] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_right_channel[11]_i_1_n_0 ),
        .Q(input_right_channel[11]));
  FDCE \input_right_channel_reg[12] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_right_channel[12]_i_1_n_0 ),
        .Q(input_right_channel[12]));
  FDCE \input_right_channel_reg[13] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_right_channel[13]_i_1_n_0 ),
        .Q(input_right_channel[13]));
  FDCE \input_right_channel_reg[14] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_right_channel[14]_i_1_n_0 ),
        .Q(input_right_channel[14]));
  FDCE \input_right_channel_reg[15] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_right_channel[15]_i_1_n_0 ),
        .Q(input_right_channel[15]));
  FDCE \input_right_channel_reg[16] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_right_channel[16]_i_1_n_0 ),
        .Q(input_right_channel[16]));
  FDCE \input_right_channel_reg[17] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_right_channel[17]_i_1_n_0 ),
        .Q(input_right_channel[17]));
  FDCE \input_right_channel_reg[18] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_right_channel[18]_i_1_n_0 ),
        .Q(input_right_channel[18]));
  FDCE \input_right_channel_reg[19] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_right_channel[19]_i_1_n_0 ),
        .Q(input_right_channel[19]));
  FDCE \input_right_channel_reg[1] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_right_channel[1]_i_1_n_0 ),
        .Q(input_right_channel[1]));
  FDCE \input_right_channel_reg[20] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_right_channel[20]_i_1_n_0 ),
        .Q(input_right_channel[20]));
  FDCE \input_right_channel_reg[21] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_right_channel[21]_i_1_n_0 ),
        .Q(input_right_channel[21]));
  FDCE \input_right_channel_reg[22] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_right_channel[22]_i_1_n_0 ),
        .Q(input_right_channel[22]));
  FDCE \input_right_channel_reg[23] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_right_channel[23]_i_1_n_0 ),
        .Q(input_right_channel[23]));
  FDCE \input_right_channel_reg[2] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_right_channel[2]_i_1_n_0 ),
        .Q(input_right_channel[2]));
  FDCE \input_right_channel_reg[3] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_right_channel[3]_i_1_n_0 ),
        .Q(input_right_channel[3]));
  FDCE \input_right_channel_reg[4] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_right_channel[4]_i_1_n_0 ),
        .Q(input_right_channel[4]));
  FDCE \input_right_channel_reg[5] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_right_channel[5]_i_1_n_0 ),
        .Q(input_right_channel[5]));
  FDCE \input_right_channel_reg[6] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_right_channel[6]_i_1_n_0 ),
        .Q(input_right_channel[6]));
  FDCE \input_right_channel_reg[7] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_right_channel[7]_i_1_n_0 ),
        .Q(input_right_channel[7]));
  FDCE \input_right_channel_reg[8] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_right_channel[8]_i_1_n_0 ),
        .Q(input_right_channel[8]));
  FDCE \input_right_channel_reg[9] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(\input_right_channel[9]_i_1_n_0 ),
        .Q(input_right_channel[9]));
  LUT4 #(
    .INIT(16'hFB08)) 
    last_lr_state_i_1
       (.I0(\output_data_reg_reg[23]_1 ),
        .I1(counter1__2),
        .I2(\output_data_reg_reg[23]_0 ),
        .I3(last_lr_state),
        .O(last_lr_state_i_1_n_0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    last_lr_state_reg
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(1'b1),
        .CLR(rst),
        .D(last_lr_state_i_1_n_0),
        .Q(last_lr_state));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_data_reg[0]_i_1 
       (.I0(input_left_channel[0]),
        .I1(input_right_channel[0]),
        .I2(last_lr_state),
        .O(\output_data_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_data_reg[10]_i_1 
       (.I0(input_left_channel[10]),
        .I1(input_right_channel[10]),
        .I2(last_lr_state),
        .O(\output_data_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_data_reg[11]_i_1 
       (.I0(input_left_channel[11]),
        .I1(input_right_channel[11]),
        .I2(last_lr_state),
        .O(\output_data_reg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_data_reg[12]_i_1 
       (.I0(input_left_channel[12]),
        .I1(input_right_channel[12]),
        .I2(last_lr_state),
        .O(\output_data_reg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_data_reg[13]_i_1 
       (.I0(input_left_channel[13]),
        .I1(input_right_channel[13]),
        .I2(last_lr_state),
        .O(\output_data_reg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_data_reg[14]_i_1 
       (.I0(input_left_channel[14]),
        .I1(input_right_channel[14]),
        .I2(last_lr_state),
        .O(\output_data_reg[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_data_reg[15]_i_1 
       (.I0(input_left_channel[15]),
        .I1(input_right_channel[15]),
        .I2(last_lr_state),
        .O(\output_data_reg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_data_reg[16]_i_1 
       (.I0(input_left_channel[16]),
        .I1(input_right_channel[16]),
        .I2(last_lr_state),
        .O(\output_data_reg[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_data_reg[17]_i_1 
       (.I0(input_left_channel[17]),
        .I1(input_right_channel[17]),
        .I2(last_lr_state),
        .O(\output_data_reg[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_data_reg[18]_i_1 
       (.I0(input_left_channel[18]),
        .I1(input_right_channel[18]),
        .I2(last_lr_state),
        .O(\output_data_reg[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_data_reg[19]_i_1 
       (.I0(input_left_channel[19]),
        .I1(input_right_channel[19]),
        .I2(last_lr_state),
        .O(\output_data_reg[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_data_reg[1]_i_1 
       (.I0(input_left_channel[1]),
        .I1(input_right_channel[1]),
        .I2(last_lr_state),
        .O(\output_data_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_data_reg[20]_i_1 
       (.I0(input_left_channel[20]),
        .I1(input_right_channel[20]),
        .I2(last_lr_state),
        .O(\output_data_reg[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_data_reg[21]_i_1 
       (.I0(input_left_channel[21]),
        .I1(input_right_channel[21]),
        .I2(last_lr_state),
        .O(\output_data_reg[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_data_reg[22]_i_1 
       (.I0(input_left_channel[22]),
        .I1(input_right_channel[22]),
        .I2(last_lr_state),
        .O(\output_data_reg[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0014)) 
    \output_data_reg[23]_i_1 
       (.I0(counter1__2),
        .I1(\output_data_reg_reg[23]_1 ),
        .I2(last_lr_state),
        .I3(\output_data_reg_reg[23]_0 ),
        .O(\output_data_reg[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_data_reg[23]_i_2 
       (.I0(input_left_channel[23]),
        .I1(input_right_channel[23]),
        .I2(last_lr_state),
        .O(\output_data_reg[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \output_data_reg[23]_i_3 
       (.I0(counter_reg[1]),
        .I1(counter_reg[2]),
        .I2(counter_reg[3]),
        .I3(counter_reg[4]),
        .I4(counter_reg[0]),
        .O(counter1__2));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_data_reg[2]_i_1 
       (.I0(input_left_channel[2]),
        .I1(input_right_channel[2]),
        .I2(last_lr_state),
        .O(\output_data_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_data_reg[3]_i_1 
       (.I0(input_left_channel[3]),
        .I1(input_right_channel[3]),
        .I2(last_lr_state),
        .O(\output_data_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_data_reg[4]_i_1 
       (.I0(input_left_channel[4]),
        .I1(input_right_channel[4]),
        .I2(last_lr_state),
        .O(\output_data_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_data_reg[5]_i_1 
       (.I0(input_left_channel[5]),
        .I1(input_right_channel[5]),
        .I2(last_lr_state),
        .O(\output_data_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_data_reg[6]_i_1 
       (.I0(input_left_channel[6]),
        .I1(input_right_channel[6]),
        .I2(last_lr_state),
        .O(\output_data_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_data_reg[7]_i_1 
       (.I0(input_left_channel[7]),
        .I1(input_right_channel[7]),
        .I2(last_lr_state),
        .O(\output_data_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_data_reg[8]_i_1 
       (.I0(input_left_channel[8]),
        .I1(input_right_channel[8]),
        .I2(last_lr_state),
        .O(\output_data_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_data_reg[9]_i_1 
       (.I0(input_left_channel[9]),
        .I1(input_right_channel[9]),
        .I2(last_lr_state),
        .O(\output_data_reg[9]_i_1_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \output_data_reg_reg[0] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\output_data_reg[23]_i_1_n_0 ),
        .CLR(rst),
        .D(\output_data_reg[0]_i_1_n_0 ),
        .Q(output_data_reg[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \output_data_reg_reg[10] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\output_data_reg[23]_i_1_n_0 ),
        .CLR(rst),
        .D(\output_data_reg[10]_i_1_n_0 ),
        .Q(output_data_reg[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \output_data_reg_reg[11] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\output_data_reg[23]_i_1_n_0 ),
        .CLR(rst),
        .D(\output_data_reg[11]_i_1_n_0 ),
        .Q(output_data_reg[11]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \output_data_reg_reg[12] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\output_data_reg[23]_i_1_n_0 ),
        .CLR(rst),
        .D(\output_data_reg[12]_i_1_n_0 ),
        .Q(output_data_reg[12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \output_data_reg_reg[13] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\output_data_reg[23]_i_1_n_0 ),
        .CLR(rst),
        .D(\output_data_reg[13]_i_1_n_0 ),
        .Q(output_data_reg[13]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \output_data_reg_reg[14] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\output_data_reg[23]_i_1_n_0 ),
        .CLR(rst),
        .D(\output_data_reg[14]_i_1_n_0 ),
        .Q(output_data_reg[14]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \output_data_reg_reg[15] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\output_data_reg[23]_i_1_n_0 ),
        .CLR(rst),
        .D(\output_data_reg[15]_i_1_n_0 ),
        .Q(output_data_reg[15]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \output_data_reg_reg[16] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\output_data_reg[23]_i_1_n_0 ),
        .CLR(rst),
        .D(\output_data_reg[16]_i_1_n_0 ),
        .Q(output_data_reg[16]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \output_data_reg_reg[17] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\output_data_reg[23]_i_1_n_0 ),
        .CLR(rst),
        .D(\output_data_reg[17]_i_1_n_0 ),
        .Q(output_data_reg[17]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \output_data_reg_reg[18] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\output_data_reg[23]_i_1_n_0 ),
        .CLR(rst),
        .D(\output_data_reg[18]_i_1_n_0 ),
        .Q(output_data_reg[18]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \output_data_reg_reg[19] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\output_data_reg[23]_i_1_n_0 ),
        .CLR(rst),
        .D(\output_data_reg[19]_i_1_n_0 ),
        .Q(output_data_reg[19]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \output_data_reg_reg[1] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\output_data_reg[23]_i_1_n_0 ),
        .CLR(rst),
        .D(\output_data_reg[1]_i_1_n_0 ),
        .Q(output_data_reg[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \output_data_reg_reg[20] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\output_data_reg[23]_i_1_n_0 ),
        .CLR(rst),
        .D(\output_data_reg[20]_i_1_n_0 ),
        .Q(output_data_reg[20]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \output_data_reg_reg[21] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\output_data_reg[23]_i_1_n_0 ),
        .CLR(rst),
        .D(\output_data_reg[21]_i_1_n_0 ),
        .Q(output_data_reg[21]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \output_data_reg_reg[22] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\output_data_reg[23]_i_1_n_0 ),
        .CLR(rst),
        .D(\output_data_reg[22]_i_1_n_0 ),
        .Q(output_data_reg[22]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \output_data_reg_reg[23] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\output_data_reg[23]_i_1_n_0 ),
        .CLR(rst),
        .D(\output_data_reg[23]_i_2_n_0 ),
        .Q(output_data_reg[23]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \output_data_reg_reg[2] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\output_data_reg[23]_i_1_n_0 ),
        .CLR(rst),
        .D(\output_data_reg[2]_i_1_n_0 ),
        .Q(output_data_reg[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \output_data_reg_reg[3] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\output_data_reg[23]_i_1_n_0 ),
        .CLR(rst),
        .D(\output_data_reg[3]_i_1_n_0 ),
        .Q(output_data_reg[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \output_data_reg_reg[4] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\output_data_reg[23]_i_1_n_0 ),
        .CLR(rst),
        .D(\output_data_reg[4]_i_1_n_0 ),
        .Q(output_data_reg[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \output_data_reg_reg[5] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\output_data_reg[23]_i_1_n_0 ),
        .CLR(rst),
        .D(\output_data_reg[5]_i_1_n_0 ),
        .Q(output_data_reg[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \output_data_reg_reg[6] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\output_data_reg[23]_i_1_n_0 ),
        .CLR(rst),
        .D(\output_data_reg[6]_i_1_n_0 ),
        .Q(output_data_reg[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \output_data_reg_reg[7] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\output_data_reg[23]_i_1_n_0 ),
        .CLR(rst),
        .D(\output_data_reg[7]_i_1_n_0 ),
        .Q(output_data_reg[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \output_data_reg_reg[8] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\output_data_reg[23]_i_1_n_0 ),
        .CLR(rst),
        .D(\output_data_reg[8]_i_1_n_0 ),
        .Q(output_data_reg[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \output_data_reg_reg[9] 
       (.C(\output_data_reg_reg[23]_0 ),
        .CE(\output_data_reg[23]_i_1_n_0 ),
        .CLR(rst),
        .D(\output_data_reg[9]_i_1_n_0 ),
        .Q(output_data_reg[9]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    tx_i2s_data_INST_0
       (.I0(tx_i2s_data_INST_0_i_1_n_0),
        .I1(tx_i2s_data_INST_0_i_2_n_0),
        .I2(tx_i2s_data_INST_0_i_3_n_0),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
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
       (.I0(output_data_reg[3]),
        .I1(output_data_reg[2]),
        .I2(counter_reg[1]),
        .I3(output_data_reg[1]),
        .I4(counter_reg[0]),
        .I5(output_data_reg[0]),
        .O(tx_i2s_data_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_i2s_data_INST_0_i_5
       (.I0(output_data_reg[7]),
        .I1(output_data_reg[6]),
        .I2(counter_reg[1]),
        .I3(output_data_reg[5]),
        .I4(counter_reg[0]),
        .I5(output_data_reg[4]),
        .O(tx_i2s_data_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_i2s_data_INST_0_i_6
       (.I0(output_data_reg[11]),
        .I1(output_data_reg[10]),
        .I2(counter_reg[1]),
        .I3(output_data_reg[9]),
        .I4(counter_reg[0]),
        .I5(output_data_reg[8]),
        .O(tx_i2s_data_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_i2s_data_INST_0_i_7
       (.I0(output_data_reg[15]),
        .I1(output_data_reg[14]),
        .I2(counter_reg[1]),
        .I3(output_data_reg[13]),
        .I4(counter_reg[0]),
        .I5(output_data_reg[12]),
        .O(tx_i2s_data_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_i2s_data_INST_0_i_8
       (.I0(output_data_reg[19]),
        .I1(output_data_reg[18]),
        .I2(counter_reg[1]),
        .I3(output_data_reg[17]),
        .I4(counter_reg[0]),
        .I5(output_data_reg[16]),
        .O(tx_i2s_data_INST_0_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_i2s_data_INST_0_i_9
       (.I0(output_data_reg[23]),
        .I1(output_data_reg[22]),
        .I2(counter_reg[1]),
        .I3(output_data_reg[21]),
        .I4(counter_reg[0]),
        .I5(output_data_reg[20]),
        .O(tx_i2s_data_INST_0_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "top" *) 
module design_1_top_0_0_top
   (out_buf_reg,
    out_buf_reg_0,
    m_clk_dac,
    tx_i2s_data,
    CLK_IN,
    rst,
    rx_i2s_data);
  output out_buf_reg;
  output out_buf_reg_0;
  output m_clk_dac;
  output tx_i2s_data;
  input CLK_IN;
  input rst;
  input rx_i2s_data;

  wire CLK_IN;
  wire m_clk_dac;
  wire out_buf_reg;
  wire out_buf_reg_0;
  wire rst;
  wire rx_i2s_data;
  wire tx_i2s_data;

  design_1_top_0_0_clk_divider__parameterized1 LRCLK
       (.CLK_IN(CLK_IN),
        .out_buf_reg_0(out_buf_reg),
        .rst(rst));
  design_1_top_0_0_clk_divider MCLK
       (.CLK_IN(CLK_IN),
        .m_clk_dac(m_clk_dac),
        .rst(rst));
  design_1_top_0_0_clk_divider__parameterized0 SCLK
       (.CLK_IN(CLK_IN),
        .out_buf_reg_0(out_buf_reg_0),
        .rst(rst));
  design_1_top_0_0_i2s_transceiver i2s_rx_tx
       (.\output_data_reg_reg[23]_0 (out_buf_reg_0),
        .\output_data_reg_reg[23]_1 (out_buf_reg),
        .rst(rst),
        .rx_i2s_data(rx_i2s_data),
        .tx_i2s_data(tx_i2s_data));
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
