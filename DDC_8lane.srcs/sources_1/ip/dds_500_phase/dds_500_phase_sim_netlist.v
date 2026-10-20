// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Oct 20 16:47:09 2026
// Host        : LAPTOP-P782ARKR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/project/DDC_8lane/DDC_8lane.srcs/sources_1/ip/dds_500_phase/dds_500_phase_sim_netlist.v
// Design      : dds_500_phase
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z030ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds_500_phase,dds_compiler_v6_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_17,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module dds_500_phase
   (aclk,
    aclken,
    aresetn,
    s_axis_phase_tvalid,
    s_axis_phase_tdata,
    m_axis_data_tvalid,
    m_axis_data_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_PHASE:S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_PHASE, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 aclken_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME aclken_intf, POLARITY ACTIVE_LOW" *) input aclken;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_PHASE TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_PHASE, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_phase_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_PHASE TDATA" *) input [7:0]s_axis_phase_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [31:0]m_axis_data_tdata;

  wire aclk;
  wire aclken;
  wire aresetn;
  wire [31:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire [7:0]s_axis_phase_tdata;
  wire s_axis_phase_tvalid;
  wire NLW_U0_debug_axi_resync_in_UNCONNECTED;
  wire NLW_U0_debug_core_nd_UNCONNECTED;
  wire NLW_U0_debug_phase_nd_UNCONNECTED;
  wire NLW_U0_event_phase_in_invalid_UNCONNECTED;
  wire NLW_U0_event_pinc_invalid_UNCONNECTED;
  wire NLW_U0_event_poff_invalid_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_m_axis_data_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tvalid_UNCONNECTED;
  wire NLW_U0_s_axis_config_tready_UNCONNECTED;
  wire NLW_U0_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_U0_debug_axi_chan_in_UNCONNECTED;
  wire [3:0]NLW_U0_debug_axi_pinc_in_UNCONNECTED;
  wire [3:0]NLW_U0_debug_axi_poff_in_UNCONNECTED;
  wire [3:0]NLW_U0_debug_phase_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tuser_UNCONNECTED;

  (* C_ACCUMULATOR_WIDTH = "4" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "1" *) 
  (* C_HAS_ARESETN = "1" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "0" *) 
  (* C_HAS_PHASEGEN = "0" *) 
  (* C_HAS_PHASE_OUT = "0" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "1" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "2" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "32" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "1" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "2" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "16" *) 
  (* C_PHASE_ANGLE_WIDTH = "4" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "8" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dds_500_phase_dds_compiler_v6_0_17 U0
       (.aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .debug_axi_chan_in(NLW_U0_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_U0_debug_axi_pinc_in_UNCONNECTED[3:0]),
        .debug_axi_poff_in(NLW_U0_debug_axi_poff_in_UNCONNECTED[3:0]),
        .debug_axi_resync_in(NLW_U0_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_U0_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_U0_debug_phase_UNCONNECTED[3:0]),
        .debug_phase_nd(NLW_U0_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_U0_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_U0_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_U0_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_U0_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_U0_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_U0_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_U0_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(NLW_U0_m_axis_phase_tdata_UNCONNECTED[0]),
        .m_axis_phase_tlast(NLW_U0_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_U0_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(NLW_U0_m_axis_phase_tvalid_UNCONNECTED),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_U0_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata(s_axis_phase_tdata),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_U0_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(s_axis_phase_tvalid));
endmodule

(* C_ACCUMULATOR_WIDTH = "4" *) (* C_AMPLITUDE = "0" *) (* C_CHANNELS = "1" *) 
(* C_CHAN_WIDTH = "1" *) (* C_DEBUG_INTERFACE = "0" *) (* C_HAS_ACLKEN = "1" *) 
(* C_HAS_ARESETN = "1" *) (* C_HAS_M_DATA = "1" *) (* C_HAS_M_PHASE = "0" *) 
(* C_HAS_PHASEGEN = "0" *) (* C_HAS_PHASE_OUT = "0" *) (* C_HAS_SINCOS = "1" *) 
(* C_HAS_S_CONFIG = "0" *) (* C_HAS_S_PHASE = "1" *) (* C_HAS_TLAST = "0" *) 
(* C_HAS_TREADY = "0" *) (* C_LATENCY = "2" *) (* C_MEM_TYPE = "2" *) 
(* C_MODE_OF_OPERATION = "0" *) (* C_MODULUS = "9" *) (* C_M_DATA_HAS_TUSER = "0" *) 
(* C_M_DATA_TDATA_WIDTH = "32" *) (* C_M_DATA_TUSER_WIDTH = "1" *) (* C_M_PHASE_HAS_TUSER = "0" *) 
(* C_M_PHASE_TDATA_WIDTH = "1" *) (* C_M_PHASE_TUSER_WIDTH = "1" *) (* C_NEGATIVE_COSINE = "0" *) 
(* C_NEGATIVE_SINE = "0" *) (* C_NOISE_SHAPING = "0" *) (* C_OPTIMISE_GOAL = "0" *) 
(* C_OUTPUTS_REQUIRED = "2" *) (* C_OUTPUT_FORM = "0" *) (* C_OUTPUT_WIDTH = "16" *) 
(* C_PHASE_ANGLE_WIDTH = "4" *) (* C_PHASE_INCREMENT = "2" *) (* C_PHASE_INCREMENT_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
(* C_PHASE_OFFSET = "0" *) (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) (* C_POR_MODE = "0" *) 
(* C_RESYNC = "0" *) (* C_S_CONFIG_SYNC_MODE = "0" *) (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
(* C_S_PHASE_HAS_TUSER = "0" *) (* C_S_PHASE_TDATA_WIDTH = "8" *) (* C_S_PHASE_TUSER_WIDTH = "1" *) 
(* C_USE_DSP48 = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "dds_compiler_v6_0_17" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module dds_500_phase_dds_compiler_v6_0_17
   (aclk,
    aclken,
    aresetn,
    s_axis_phase_tvalid,
    s_axis_phase_tready,
    s_axis_phase_tdata,
    s_axis_phase_tlast,
    s_axis_phase_tuser,
    s_axis_config_tvalid,
    s_axis_config_tready,
    s_axis_config_tdata,
    s_axis_config_tlast,
    m_axis_data_tvalid,
    m_axis_data_tready,
    m_axis_data_tdata,
    m_axis_data_tlast,
    m_axis_data_tuser,
    m_axis_phase_tvalid,
    m_axis_phase_tready,
    m_axis_phase_tdata,
    m_axis_phase_tlast,
    m_axis_phase_tuser,
    event_pinc_invalid,
    event_poff_invalid,
    event_phase_in_invalid,
    event_s_phase_tlast_missing,
    event_s_phase_tlast_unexpected,
    event_s_phase_chanid_incorrect,
    event_s_config_tlast_missing,
    event_s_config_tlast_unexpected,
    debug_axi_pinc_in,
    debug_axi_poff_in,
    debug_axi_resync_in,
    debug_axi_chan_in,
    debug_core_nd,
    debug_phase,
    debug_phase_nd);
  input aclk;
  input aclken;
  input aresetn;
  input s_axis_phase_tvalid;
  output s_axis_phase_tready;
  input [7:0]s_axis_phase_tdata;
  input s_axis_phase_tlast;
  input [0:0]s_axis_phase_tuser;
  input s_axis_config_tvalid;
  output s_axis_config_tready;
  input [0:0]s_axis_config_tdata;
  input s_axis_config_tlast;
  output m_axis_data_tvalid;
  input m_axis_data_tready;
  output [31:0]m_axis_data_tdata;
  output m_axis_data_tlast;
  output [0:0]m_axis_data_tuser;
  output m_axis_phase_tvalid;
  input m_axis_phase_tready;
  output [0:0]m_axis_phase_tdata;
  output m_axis_phase_tlast;
  output [0:0]m_axis_phase_tuser;
  output event_pinc_invalid;
  output event_poff_invalid;
  output event_phase_in_invalid;
  output event_s_phase_tlast_missing;
  output event_s_phase_tlast_unexpected;
  output event_s_phase_chanid_incorrect;
  output event_s_config_tlast_missing;
  output event_s_config_tlast_unexpected;
  output [3:0]debug_axi_pinc_in;
  output [3:0]debug_axi_poff_in;
  output debug_axi_resync_in;
  output [0:0]debug_axi_chan_in;
  output debug_core_nd;
  output [3:0]debug_phase;
  output debug_phase_nd;

  wire \<const0> ;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire event_s_phase_tlast_missing;
  wire [31:0]\^m_axis_data_tdata ;
  wire m_axis_data_tvalid;
  wire [7:0]s_axis_phase_tdata;
  wire s_axis_phase_tvalid;
  wire NLW_i_synth_debug_axi_resync_in_UNCONNECTED;
  wire NLW_i_synth_debug_core_nd_UNCONNECTED;
  wire NLW_i_synth_debug_phase_nd_UNCONNECTED;
  wire NLW_i_synth_event_phase_in_invalid_UNCONNECTED;
  wire NLW_i_synth_event_pinc_invalid_UNCONNECTED;
  wire NLW_i_synth_event_poff_invalid_UNCONNECTED;
  wire NLW_i_synth_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_i_synth_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_i_synth_m_axis_data_tlast_UNCONNECTED;
  wire NLW_i_synth_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_i_synth_m_axis_phase_tvalid_UNCONNECTED;
  wire NLW_i_synth_s_axis_config_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_i_synth_debug_axi_chan_in_UNCONNECTED;
  wire [3:0]NLW_i_synth_debug_axi_pinc_in_UNCONNECTED;
  wire [3:0]NLW_i_synth_debug_axi_poff_in_UNCONNECTED;
  wire [3:0]NLW_i_synth_debug_phase_UNCONNECTED;
  wire [25:3]NLW_i_synth_m_axis_data_tdata_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_phase_tdata_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_phase_tuser_UNCONNECTED;

  assign debug_axi_chan_in[0] = \<const0> ;
  assign debug_axi_pinc_in[3] = \<const0> ;
  assign debug_axi_pinc_in[2] = \<const0> ;
  assign debug_axi_pinc_in[1] = \<const0> ;
  assign debug_axi_pinc_in[0] = \<const0> ;
  assign debug_axi_poff_in[3] = \<const0> ;
  assign debug_axi_poff_in[2] = \<const0> ;
  assign debug_axi_poff_in[1] = \<const0> ;
  assign debug_axi_poff_in[0] = \<const0> ;
  assign debug_axi_resync_in = \<const0> ;
  assign debug_core_nd = \<const0> ;
  assign debug_phase[3] = \<const0> ;
  assign debug_phase[2] = \<const0> ;
  assign debug_phase[1] = \<const0> ;
  assign debug_phase[0] = \<const0> ;
  assign debug_phase_nd = \<const0> ;
  assign event_phase_in_invalid = \<const0> ;
  assign event_pinc_invalid = \<const0> ;
  assign event_poff_invalid = \<const0> ;
  assign event_s_config_tlast_missing = \<const0> ;
  assign event_s_config_tlast_unexpected = \<const0> ;
  assign event_s_phase_chanid_incorrect = \<const0> ;
  assign event_s_phase_tlast_unexpected = \<const0> ;
  assign m_axis_data_tdata[31] = \^m_axis_data_tdata [31];
  assign m_axis_data_tdata[30] = \^m_axis_data_tdata [25];
  assign m_axis_data_tdata[29:22] = \^m_axis_data_tdata [29:22];
  assign m_axis_data_tdata[21] = \^m_axis_data_tdata [19];
  assign m_axis_data_tdata[20] = \^m_axis_data_tdata [19];
  assign m_axis_data_tdata[19:15] = \^m_axis_data_tdata [19:15];
  assign m_axis_data_tdata[14] = \^m_axis_data_tdata [9];
  assign m_axis_data_tdata[13:6] = \^m_axis_data_tdata [13:6];
  assign m_axis_data_tdata[5] = \^m_axis_data_tdata [3];
  assign m_axis_data_tdata[4] = \^m_axis_data_tdata [3];
  assign m_axis_data_tdata[3:0] = \^m_axis_data_tdata [3:0];
  assign m_axis_data_tlast = \<const0> ;
  assign m_axis_data_tuser[0] = \<const0> ;
  assign m_axis_phase_tdata[0] = \<const0> ;
  assign m_axis_phase_tlast = \<const0> ;
  assign m_axis_phase_tuser[0] = \<const0> ;
  assign m_axis_phase_tvalid = \<const0> ;
  assign s_axis_config_tready = \<const0> ;
  assign s_axis_phase_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ACCUMULATOR_WIDTH = "4" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "1" *) 
  (* C_HAS_ARESETN = "1" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "0" *) 
  (* C_HAS_PHASEGEN = "0" *) 
  (* C_HAS_PHASE_OUT = "0" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "1" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "2" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "32" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "1" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "2" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "16" *) 
  (* C_PHASE_ANGLE_WIDTH = "4" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "8" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dds_500_phase_dds_compiler_v6_0_17_viv i_synth
       (.aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .debug_axi_chan_in(NLW_i_synth_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_i_synth_debug_axi_pinc_in_UNCONNECTED[3:0]),
        .debug_axi_poff_in(NLW_i_synth_debug_axi_poff_in_UNCONNECTED[3:0]),
        .debug_axi_resync_in(NLW_i_synth_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_i_synth_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_i_synth_debug_phase_UNCONNECTED[3:0]),
        .debug_phase_nd(NLW_i_synth_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_i_synth_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_i_synth_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_i_synth_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_i_synth_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_i_synth_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(event_s_phase_tlast_missing),
        .event_s_phase_tlast_unexpected(NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata({\^m_axis_data_tdata [31],\^m_axis_data_tdata [25],\^m_axis_data_tdata [29:26],NLW_i_synth_m_axis_data_tdata_UNCONNECTED[25],\^m_axis_data_tdata [24:22],\^m_axis_data_tdata [19],NLW_i_synth_m_axis_data_tdata_UNCONNECTED[20:19],\^m_axis_data_tdata [18:15],\^m_axis_data_tdata [9],\^m_axis_data_tdata [13:10],NLW_i_synth_m_axis_data_tdata_UNCONNECTED[9],\^m_axis_data_tdata [8:6],\^m_axis_data_tdata [3],NLW_i_synth_m_axis_data_tdata_UNCONNECTED[4:3],\^m_axis_data_tdata [2:0]}),
        .m_axis_data_tlast(NLW_i_synth_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_i_synth_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(NLW_i_synth_m_axis_phase_tdata_UNCONNECTED[0]),
        .m_axis_phase_tlast(NLW_i_synth_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_i_synth_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(NLW_i_synth_m_axis_phase_tvalid_UNCONNECTED),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_i_synth_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata({1'b0,1'b0,1'b0,1'b0,s_axis_phase_tdata[3:0]}),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_i_synth_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(s_axis_phase_tvalid));
endmodule

(* ORIG_REF_NAME = "dds_compiler_v6_0_17_core" *) 
module dds_500_phase_dds_compiler_v6_0_17_core
   (E,
    sel,
    m_axis_data_tdata,
    SR,
    aclk,
    Q,
    s_axis_phase_tdata,
    s_axis_phase_tvalid,
    aclken);
  output [0:0]E;
  output [1:0]sel;
  output [25:0]m_axis_data_tdata;
  input [0:0]SR;
  input aclk;
  input [3:0]Q;
  input [3:0]s_axis_phase_tdata;
  input s_axis_phase_tvalid;
  input aclken;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aclken;
  wire [25:0]m_axis_data_tdata;
  wire [3:0]s_axis_phase_tdata;
  wire s_axis_phase_tvalid;
  wire [1:0]sel;

  dds_500_phase_sin_cos \I_SINCOS.i_std_rom.i_rom 
       (.E(E),
        .Q(Q),
        .aclk(aclk),
        .aclken(aclken),
        .m_axis_data_tdata(m_axis_data_tdata),
        .s_axis_phase_tdata(s_axis_phase_tdata),
        .s_axis_phase_tdata_2_sp_1(sel[0]),
        .s_axis_phase_tdata_3_sp_1(sel[1]),
        .s_axis_phase_tvalid(s_axis_phase_tvalid));
  dds_500_phase_dds_compiler_v6_0_17_rdy \i_rdy.rdy_logic 
       (.E(E),
        .SR(SR),
        .aclk(aclk),
        .aclken(aclken),
        .s_axis_phase_tvalid(s_axis_phase_tvalid));
endmodule

(* ORIG_REF_NAME = "dds_compiler_v6_0_17_rdy" *) 
module dds_500_phase_dds_compiler_v6_0_17_rdy
   (SR,
    E,
    aclk,
    aclken,
    s_axis_phase_tvalid);
  input [0:0]SR;
  input [0:0]E;
  input aclk;
  input aclken;
  input s_axis_phase_tvalid;

  wire [0:0]E;
  wire [0:0]SR;
  wire aclk;
  wire aclken;
  wire \mutant_x_op[0]_i_1_n_0 ;
  wire pre_rdy2;
  wire s_axis_phase_tvalid;

  dds_500_phase_xbip_pipe_v3_0_5_viv__parameterized2 \i_single_channel.i_non_trivial_lat.i_rdy 
       (.E(E),
        .SR(SR),
        .aclk(aclk),
        .pre_rdy2(pre_rdy2));
  LUT4 #(
    .INIT(16'hFF2A)) 
    \mutant_x_op[0]_i_1 
       (.I0(pre_rdy2),
        .I1(aclken),
        .I2(s_axis_phase_tvalid),
        .I3(SR),
        .O(\mutant_x_op[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \mutant_x_op_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\mutant_x_op[0]_i_1_n_0 ),
        .Q(pre_rdy2),
        .R(1'b0));
endmodule

(* C_ACCUMULATOR_WIDTH = "4" *) (* C_AMPLITUDE = "0" *) (* C_CHANNELS = "1" *) 
(* C_CHAN_WIDTH = "1" *) (* C_DEBUG_INTERFACE = "0" *) (* C_HAS_ACLKEN = "1" *) 
(* C_HAS_ARESETN = "1" *) (* C_HAS_M_DATA = "1" *) (* C_HAS_M_PHASE = "0" *) 
(* C_HAS_PHASEGEN = "0" *) (* C_HAS_PHASE_OUT = "0" *) (* C_HAS_SINCOS = "1" *) 
(* C_HAS_S_CONFIG = "0" *) (* C_HAS_S_PHASE = "1" *) (* C_HAS_TLAST = "0" *) 
(* C_HAS_TREADY = "0" *) (* C_LATENCY = "2" *) (* C_MEM_TYPE = "2" *) 
(* C_MODE_OF_OPERATION = "0" *) (* C_MODULUS = "9" *) (* C_M_DATA_HAS_TUSER = "0" *) 
(* C_M_DATA_TDATA_WIDTH = "32" *) (* C_M_DATA_TUSER_WIDTH = "1" *) (* C_M_PHASE_HAS_TUSER = "0" *) 
(* C_M_PHASE_TDATA_WIDTH = "1" *) (* C_M_PHASE_TUSER_WIDTH = "1" *) (* C_NEGATIVE_COSINE = "0" *) 
(* C_NEGATIVE_SINE = "0" *) (* C_NOISE_SHAPING = "0" *) (* C_OPTIMISE_GOAL = "0" *) 
(* C_OUTPUTS_REQUIRED = "2" *) (* C_OUTPUT_FORM = "0" *) (* C_OUTPUT_WIDTH = "16" *) 
(* C_PHASE_ANGLE_WIDTH = "4" *) (* C_PHASE_INCREMENT = "2" *) (* C_PHASE_INCREMENT_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
(* C_PHASE_OFFSET = "0" *) (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) (* C_POR_MODE = "0" *) 
(* C_RESYNC = "0" *) (* C_S_CONFIG_SYNC_MODE = "0" *) (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
(* C_S_PHASE_HAS_TUSER = "0" *) (* C_S_PHASE_TDATA_WIDTH = "8" *) (* C_S_PHASE_TUSER_WIDTH = "1" *) 
(* C_USE_DSP48 = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "dds_compiler_v6_0_17_viv" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module dds_500_phase_dds_compiler_v6_0_17_viv
   (aclk,
    aclken,
    aresetn,
    s_axis_phase_tvalid,
    s_axis_phase_tready,
    s_axis_phase_tdata,
    s_axis_phase_tlast,
    s_axis_phase_tuser,
    s_axis_config_tvalid,
    s_axis_config_tready,
    s_axis_config_tdata,
    s_axis_config_tlast,
    m_axis_data_tvalid,
    m_axis_data_tready,
    m_axis_data_tdata,
    m_axis_data_tlast,
    m_axis_data_tuser,
    m_axis_phase_tvalid,
    m_axis_phase_tready,
    m_axis_phase_tdata,
    m_axis_phase_tlast,
    m_axis_phase_tuser,
    event_pinc_invalid,
    event_poff_invalid,
    event_phase_in_invalid,
    event_s_phase_tlast_missing,
    event_s_phase_tlast_unexpected,
    event_s_phase_chanid_incorrect,
    event_s_config_tlast_missing,
    event_s_config_tlast_unexpected,
    debug_axi_pinc_in,
    debug_axi_poff_in,
    debug_axi_resync_in,
    debug_axi_chan_in,
    debug_core_nd,
    debug_phase,
    debug_phase_nd);
  input aclk;
  input aclken;
  input aresetn;
  input s_axis_phase_tvalid;
  output s_axis_phase_tready;
  input [7:0]s_axis_phase_tdata;
  input s_axis_phase_tlast;
  input [0:0]s_axis_phase_tuser;
  input s_axis_config_tvalid;
  output s_axis_config_tready;
  input [0:0]s_axis_config_tdata;
  input s_axis_config_tlast;
  output m_axis_data_tvalid;
  input m_axis_data_tready;
  output [31:0]m_axis_data_tdata;
  output m_axis_data_tlast;
  output [0:0]m_axis_data_tuser;
  output m_axis_phase_tvalid;
  input m_axis_phase_tready;
  output [0:0]m_axis_phase_tdata;
  output m_axis_phase_tlast;
  output [0:0]m_axis_phase_tuser;
  output event_pinc_invalid;
  output event_poff_invalid;
  output event_phase_in_invalid;
  output event_s_phase_tlast_missing;
  output event_s_phase_tlast_unexpected;
  output event_s_phase_chanid_incorrect;
  output event_s_config_tlast_missing;
  output event_s_config_tlast_unexpected;
  output [3:0]debug_axi_pinc_in;
  output [3:0]debug_axi_poff_in;
  output debug_axi_resync_in;
  output [0:0]debug_axi_chan_in;
  output debug_core_nd;
  output [3:0]debug_phase;
  output debug_phase_nd;

  wire \<const0> ;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire ce_core;
  wire event_s_phase_tlast_missing;
  wire \has_aresetn.sclr_i_i_1_n_0 ;
  wire [31:0]\^m_axis_data_tdata ;
  wire m_axis_data_tvalid;
  wire [3:0]reg_s_phase_fifo_din;
  wire [7:0]s_axis_phase_tdata;
  wire s_axis_phase_tvalid;
  wire sclr_i;
  wire [3:0]sel;

  assign debug_axi_chan_in[0] = \<const0> ;
  assign debug_axi_pinc_in[3] = \<const0> ;
  assign debug_axi_pinc_in[2] = \<const0> ;
  assign debug_axi_pinc_in[1] = \<const0> ;
  assign debug_axi_pinc_in[0] = \<const0> ;
  assign debug_axi_poff_in[3] = \<const0> ;
  assign debug_axi_poff_in[2] = \<const0> ;
  assign debug_axi_poff_in[1] = \<const0> ;
  assign debug_axi_poff_in[0] = \<const0> ;
  assign debug_axi_resync_in = \<const0> ;
  assign debug_core_nd = \<const0> ;
  assign debug_phase[3] = \<const0> ;
  assign debug_phase[2] = \<const0> ;
  assign debug_phase[1] = \<const0> ;
  assign debug_phase[0] = \<const0> ;
  assign debug_phase_nd = \<const0> ;
  assign event_phase_in_invalid = \<const0> ;
  assign event_pinc_invalid = \<const0> ;
  assign event_poff_invalid = \<const0> ;
  assign event_s_config_tlast_missing = \<const0> ;
  assign event_s_config_tlast_unexpected = \<const0> ;
  assign event_s_phase_chanid_incorrect = \<const0> ;
  assign event_s_phase_tlast_unexpected = \<const0> ;
  assign m_axis_data_tdata[31:26] = \^m_axis_data_tdata [31:26];
  assign m_axis_data_tdata[25] = \<const0> ;
  assign m_axis_data_tdata[24:21] = \^m_axis_data_tdata [24:21];
  assign m_axis_data_tdata[20] = \<const0> ;
  assign m_axis_data_tdata[19] = \<const0> ;
  assign m_axis_data_tdata[18:10] = \^m_axis_data_tdata [18:10];
  assign m_axis_data_tdata[9] = \<const0> ;
  assign m_axis_data_tdata[8:5] = \^m_axis_data_tdata [8:5];
  assign m_axis_data_tdata[4] = \<const0> ;
  assign m_axis_data_tdata[3] = \<const0> ;
  assign m_axis_data_tdata[2:0] = \^m_axis_data_tdata [2:0];
  assign m_axis_data_tlast = \<const0> ;
  assign m_axis_data_tuser[0] = \<const0> ;
  assign m_axis_phase_tdata[0] = \<const0> ;
  assign m_axis_phase_tlast = \<const0> ;
  assign m_axis_phase_tuser[0] = \<const0> ;
  assign m_axis_phase_tvalid = \<const0> ;
  assign s_axis_config_tready = \<const0> ;
  assign s_axis_phase_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \has_aresetn.sclr_i_i_1 
       (.I0(aresetn),
        .O(\has_aresetn.sclr_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \has_aresetn.sclr_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\has_aresetn.sclr_i_i_1_n_0 ),
        .Q(sclr_i),
        .R(1'b0));
  dds_500_phase_xbip_pipe_v3_0_5_viv__parameterized0 \has_s_phase.ce_i_delay 
       (.SR(sclr_i),
        .aclk(aclk),
        .aclken(aclken));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \has_s_phase.i_has_no_tready.reg_s_phase_fifo_din[0]_i_1 
       (.I0(s_axis_phase_tdata[0]),
        .I1(reg_s_phase_fifo_din[0]),
        .I2(s_axis_phase_tvalid),
        .O(sel[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \has_s_phase.i_has_no_tready.reg_s_phase_fifo_din[1]_i_1 
       (.I0(s_axis_phase_tdata[1]),
        .I1(reg_s_phase_fifo_din[1]),
        .I2(s_axis_phase_tvalid),
        .O(sel[1]));
  FDRE #(
    .INIT(1'b0)) 
    \has_s_phase.i_has_no_tready.reg_s_phase_fifo_din_reg[0] 
       (.C(aclk),
        .CE(aclken),
        .D(sel[0]),
        .Q(reg_s_phase_fifo_din[0]),
        .R(sclr_i));
  FDRE #(
    .INIT(1'b0)) 
    \has_s_phase.i_has_no_tready.reg_s_phase_fifo_din_reg[1] 
       (.C(aclk),
        .CE(aclken),
        .D(sel[1]),
        .Q(reg_s_phase_fifo_din[1]),
        .R(sclr_i));
  FDRE #(
    .INIT(1'b0)) 
    \has_s_phase.i_has_no_tready.reg_s_phase_fifo_din_reg[2] 
       (.C(aclk),
        .CE(aclken),
        .D(sel[2]),
        .Q(reg_s_phase_fifo_din[2]),
        .R(sclr_i));
  FDRE #(
    .INIT(1'b0)) 
    \has_s_phase.i_has_no_tready.reg_s_phase_fifo_din_reg[3] 
       (.C(aclk),
        .CE(aclken),
        .D(sel[3]),
        .Q(reg_s_phase_fifo_din[3]),
        .R(sclr_i));
  FDRE #(
    .INIT(1'b0)) 
    \has_s_phase.s_phase_tlast_checks.event_s_phase_tlast_missing_reg 
       (.C(aclk),
        .CE(ce_core),
        .D(1'b1),
        .Q(event_s_phase_tlast_missing),
        .R(1'b0));
  dds_500_phase_dds_compiler_v6_0_17_core i_dds
       (.E(ce_core),
        .Q(reg_s_phase_fifo_din),
        .SR(sclr_i),
        .aclk(aclk),
        .aclken(aclken),
        .m_axis_data_tdata({\^m_axis_data_tdata [31:26],\^m_axis_data_tdata [24:21],\^m_axis_data_tdata [18:10],\^m_axis_data_tdata [8:5],\^m_axis_data_tdata [2:0]}),
        .s_axis_phase_tdata(s_axis_phase_tdata[3:0]),
        .s_axis_phase_tvalid(s_axis_phase_tvalid),
        .sel(sel[3:2]));
  dds_500_phase_xbip_pipe_v3_0_5_viv \i_has_nd_rdy_pipe.channel_pipe 
       (.E(ce_core),
        .SR(sclr_i),
        .aclk(aclk));
  dds_500_phase_xbip_pipe_v3_0_5_viv_0 \i_has_nd_rdy_pipe.valid_phase_read_del 
       (.E(ce_core),
        .SR(sclr_i),
        .aclk(aclk),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .s_axis_phase_tvalid(s_axis_phase_tvalid));
endmodule

(* ORIG_REF_NAME = "sin_cos" *) 
module dds_500_phase_sin_cos
   (E,
    s_axis_phase_tdata_2_sp_1,
    s_axis_phase_tdata_3_sp_1,
    m_axis_data_tdata,
    Q,
    s_axis_phase_tdata,
    s_axis_phase_tvalid,
    aclken,
    aclk);
  output [0:0]E;
  output s_axis_phase_tdata_2_sp_1;
  output s_axis_phase_tdata_3_sp_1;
  output [25:0]m_axis_data_tdata;
  input [3:0]Q;
  input [3:0]s_axis_phase_tdata;
  input s_axis_phase_tvalid;
  input aclken;
  input aclk;

  wire [0:0]E;
  wire [3:0]Q;
  wire aclk;
  wire aclken;
  wire \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[0]_i_1_n_0 ;
  wire \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[10]_i_1_n_0 ;
  wire \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[11]_i_1_n_0 ;
  wire \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[12]_i_1_n_0 ;
  wire \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[13]_i_1_n_0 ;
  wire \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[14]_i_1_n_0 ;
  wire \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_1_n_0 ;
  wire \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_2_n_0 ;
  wire \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[1]_i_1_n_0 ;
  wire \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[2]_i_1_n_0 ;
  wire \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[5]_i_1_n_0 ;
  wire \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[6]_i_1_n_0 ;
  wire \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[7]_i_1_n_0 ;
  wire \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[8]_i_1_n_0 ;
  wire \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[12]_i_1_n_0 ;
  wire [25:0]m_axis_data_tdata;
  wire [15:0]p_0_out;
  wire [15:0]pre_asyn_cos_RAM_op;
  wire [15:0]pre_asyn_sin_RAM_op;
  wire [3:0]s_axis_phase_tdata;
  wire s_axis_phase_tdata_2_sn_1;
  wire s_axis_phase_tdata_3_sn_1;
  wire s_axis_phase_tvalid;

  assign s_axis_phase_tdata_2_sp_1 = s_axis_phase_tdata_2_sn_1;
  assign s_axis_phase_tdata_3_sp_1 = s_axis_phase_tdata_3_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \has_s_phase.i_has_no_tready.reg_s_phase_fifo_din[2]_i_1 
       (.I0(s_axis_phase_tdata[2]),
        .I1(Q[2]),
        .I2(s_axis_phase_tvalid),
        .O(s_axis_phase_tdata_2_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \has_s_phase.i_has_no_tready.reg_s_phase_fifo_din[3]_i_1 
       (.I0(s_axis_phase_tdata[3]),
        .I1(Q[3]),
        .I2(s_axis_phase_tvalid),
        .O(s_axis_phase_tdata_3_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[0]_i_1 
       (.I0(s_axis_phase_tdata[0]),
        .I1(s_axis_phase_tdata_2_sn_1),
        .I2(s_axis_phase_tdata[1]),
        .O(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACAC535300ACAC53)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[10]_i_1 
       (.I0(s_axis_phase_tdata[1]),
        .I1(Q[1]),
        .I2(s_axis_phase_tvalid),
        .I3(s_axis_phase_tdata_2_sn_1),
        .I4(s_axis_phase_tdata_3_sn_1),
        .I5(s_axis_phase_tdata[0]),
        .O(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h53ACAC5300ACAC53)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[11]_i_1 
       (.I0(s_axis_phase_tdata[0]),
        .I1(Q[0]),
        .I2(s_axis_phase_tvalid),
        .I3(s_axis_phase_tdata_2_sn_1),
        .I4(s_axis_phase_tdata_3_sn_1),
        .I5(s_axis_phase_tdata[1]),
        .O(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h83)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[12]_i_1 
       (.I0(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_2_n_0 ),
        .I1(s_axis_phase_tdata[3]),
        .I2(s_axis_phase_tdata[2]),
        .O(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAC5353ACAC0000FF)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[13]_i_1 
       (.I0(s_axis_phase_tdata[0]),
        .I1(Q[0]),
        .I2(s_axis_phase_tvalid),
        .I3(s_axis_phase_tdata_2_sn_1),
        .I4(s_axis_phase_tdata_3_sn_1),
        .I5(s_axis_phase_tdata[1]),
        .O(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACAC5353AC0000FF)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[14]_i_1 
       (.I0(s_axis_phase_tdata[1]),
        .I1(Q[1]),
        .I2(s_axis_phase_tvalid),
        .I3(s_axis_phase_tdata_2_sn_1),
        .I4(s_axis_phase_tdata_3_sn_1),
        .I5(s_axis_phase_tdata[0]),
        .O(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_1 
       (.I0(s_axis_phase_tdata[3]),
        .I1(s_axis_phase_tdata[2]),
        .I2(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_2_n_0 ),
        .O(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACFCA)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_2 
       (.I0(Q[1]),
        .I1(s_axis_phase_tdata[1]),
        .I2(s_axis_phase_tvalid),
        .I3(Q[0]),
        .I4(s_axis_phase_tdata[0]),
        .O(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h005353ACAC530053)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[1]_i_1 
       (.I0(s_axis_phase_tdata[0]),
        .I1(Q[0]),
        .I2(s_axis_phase_tvalid),
        .I3(s_axis_phase_tdata_2_sn_1),
        .I4(s_axis_phase_tdata_3_sn_1),
        .I5(s_axis_phase_tdata[1]),
        .O(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF53000000AC53)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[2]_i_1 
       (.I0(s_axis_phase_tdata[0]),
        .I1(Q[0]),
        .I2(s_axis_phase_tvalid),
        .I3(s_axis_phase_tdata_2_sn_1),
        .I4(s_axis_phase_tdata_3_sn_1),
        .I5(s_axis_phase_tdata[1]),
        .O(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h005353ACAC000053)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[5]_i_1 
       (.I0(s_axis_phase_tdata[0]),
        .I1(Q[0]),
        .I2(s_axis_phase_tvalid),
        .I3(s_axis_phase_tdata_2_sn_1),
        .I4(s_axis_phase_tdata_3_sn_1),
        .I5(s_axis_phase_tdata[1]),
        .O(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAC53FFACACAC00FF)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[6]_i_1 
       (.I0(s_axis_phase_tdata[0]),
        .I1(Q[0]),
        .I2(s_axis_phase_tvalid),
        .I3(s_axis_phase_tdata_2_sn_1),
        .I4(s_axis_phase_tdata_3_sn_1),
        .I5(s_axis_phase_tdata[1]),
        .O(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5353ACACAC0000FF)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[7]_i_1 
       (.I0(s_axis_phase_tdata[1]),
        .I1(Q[1]),
        .I2(s_axis_phase_tvalid),
        .I3(s_axis_phase_tdata_2_sn_1),
        .I4(s_axis_phase_tdata_3_sn_1),
        .I5(s_axis_phase_tdata[0]),
        .O(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h61)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[8]_i_1 
       (.I0(s_axis_phase_tdata[2]),
        .I1(s_axis_phase_tdata[3]),
        .I2(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_2_n_0 ),
        .O(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[0]_i_1_n_0 ),
        .Q(pre_asyn_cos_RAM_op[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[10]_i_1_n_0 ),
        .Q(pre_asyn_cos_RAM_op[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[11]_i_1_n_0 ),
        .Q(pre_asyn_cos_RAM_op[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[12]_i_1_n_0 ),
        .Q(pre_asyn_cos_RAM_op[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[13]_i_1_n_0 ),
        .Q(pre_asyn_cos_RAM_op[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[14]_i_1_n_0 ),
        .Q(pre_asyn_cos_RAM_op[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_1_n_0 ),
        .Q(pre_asyn_cos_RAM_op[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[1]_i_1_n_0 ),
        .Q(pre_asyn_cos_RAM_op[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[2]_i_1_n_0 ),
        .Q(pre_asyn_cos_RAM_op[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[5]_i_1_n_0 ),
        .Q(pre_asyn_cos_RAM_op[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[6]_i_1_n_0 ),
        .Q(pre_asyn_cos_RAM_op[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[7]_i_1_n_0 ),
        .Q(pre_asyn_cos_RAM_op[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[8]_i_1_n_0 ),
        .Q(pre_asyn_cos_RAM_op[8]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h9C)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[0]_i_1 
       (.I0(s_axis_phase_tdata_2_sn_1),
        .I1(s_axis_phase_tdata[1]),
        .I2(s_axis_phase_tdata[0]),
        .O(p_0_out[0]));
  LUT6 #(
    .INIT(64'hAC5353ACAC53AC00)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[10]_i_1 
       (.I0(s_axis_phase_tdata[1]),
        .I1(Q[1]),
        .I2(s_axis_phase_tvalid),
        .I3(s_axis_phase_tdata_3_sn_1),
        .I4(s_axis_phase_tdata_2_sn_1),
        .I5(s_axis_phase_tdata[0]),
        .O(p_0_out[10]));
  LUT6 #(
    .INIT(64'hAC53AC53AC53AC00)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[11]_i_1 
       (.I0(s_axis_phase_tdata[0]),
        .I1(Q[0]),
        .I2(s_axis_phase_tvalid),
        .I3(s_axis_phase_tdata_3_sn_1),
        .I4(s_axis_phase_tdata_2_sn_1),
        .I5(s_axis_phase_tdata[1]),
        .O(p_0_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[12]_i_1 
       (.I0(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_2_n_0 ),
        .I1(s_axis_phase_tdata[2]),
        .I2(s_axis_phase_tdata[3]),
        .O(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h53AC00FF53AC00AC)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[13]_i_1 
       (.I0(s_axis_phase_tdata[0]),
        .I1(Q[0]),
        .I2(s_axis_phase_tvalid),
        .I3(s_axis_phase_tdata_3_sn_1),
        .I4(s_axis_phase_tdata[1]),
        .I5(s_axis_phase_tdata_2_sn_1),
        .O(p_0_out[13]));
  LUT6 #(
    .INIT(64'hAC5300FF53AC00AC)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[14]_i_1 
       (.I0(s_axis_phase_tdata[1]),
        .I1(Q[1]),
        .I2(s_axis_phase_tvalid),
        .I3(s_axis_phase_tdata_3_sn_1),
        .I4(s_axis_phase_tdata[0]),
        .I5(s_axis_phase_tdata_2_sn_1),
        .O(p_0_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[15]_i_1 
       (.I0(s_axis_phase_tdata[3]),
        .I1(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_2_n_0 ),
        .I2(s_axis_phase_tdata[2]),
        .O(p_0_out[15]));
  LUT6 #(
    .INIT(64'h00AC0053FF53AC00)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[1]_i_1 
       (.I0(s_axis_phase_tdata[1]),
        .I1(Q[1]),
        .I2(s_axis_phase_tvalid),
        .I3(s_axis_phase_tdata_3_sn_1),
        .I4(s_axis_phase_tdata_2_sn_1),
        .I5(s_axis_phase_tdata[0]),
        .O(p_0_out[1]));
  LUT6 #(
    .INIT(64'hFF0053000053AC00)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[2]_i_1 
       (.I0(s_axis_phase_tdata[0]),
        .I1(Q[0]),
        .I2(s_axis_phase_tvalid),
        .I3(s_axis_phase_tdata_3_sn_1),
        .I4(s_axis_phase_tdata_2_sn_1),
        .I5(s_axis_phase_tdata[1]),
        .O(p_0_out[2]));
  LUT6 #(
    .INIT(64'h00AC0053AC53AC00)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[5]_i_1 
       (.I0(s_axis_phase_tdata[1]),
        .I1(Q[1]),
        .I2(s_axis_phase_tvalid),
        .I3(s_axis_phase_tdata_3_sn_1),
        .I4(s_axis_phase_tdata_2_sn_1),
        .I5(s_axis_phase_tdata[0]),
        .O(p_0_out[5]));
  LUT6 #(
    .INIT(64'h53ACACFFFFAC00AC)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[6]_i_1 
       (.I0(s_axis_phase_tdata[0]),
        .I1(Q[0]),
        .I2(s_axis_phase_tvalid),
        .I3(s_axis_phase_tdata_3_sn_1),
        .I4(s_axis_phase_tdata[1]),
        .I5(s_axis_phase_tdata_2_sn_1),
        .O(p_0_out[6]));
  LUT6 #(
    .INIT(64'h00FFAC53AC5300AC)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[7]_i_1 
       (.I0(s_axis_phase_tdata[0]),
        .I1(Q[0]),
        .I2(s_axis_phase_tvalid),
        .I3(s_axis_phase_tdata_3_sn_1),
        .I4(s_axis_phase_tdata_2_sn_1),
        .I5(s_axis_phase_tdata[1]),
        .O(p_0_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[8]_i_1 
       (.I0(s_axis_phase_tdata[3]),
        .I1(s_axis_phase_tdata[2]),
        .I2(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_2_n_0 ),
        .O(p_0_out[8]));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(p_0_out[0]),
        .Q(pre_asyn_sin_RAM_op[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(p_0_out[10]),
        .Q(pre_asyn_sin_RAM_op[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(p_0_out[11]),
        .Q(pre_asyn_sin_RAM_op[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[12]_i_1_n_0 ),
        .Q(pre_asyn_sin_RAM_op[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(p_0_out[13]),
        .Q(pre_asyn_sin_RAM_op[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(p_0_out[14]),
        .Q(pre_asyn_sin_RAM_op[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(p_0_out[15]),
        .Q(pre_asyn_sin_RAM_op[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(p_0_out[1]),
        .Q(pre_asyn_sin_RAM_op[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(p_0_out[2]),
        .Q(pre_asyn_sin_RAM_op[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(p_0_out[5]),
        .Q(pre_asyn_sin_RAM_op[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(p_0_out[6]),
        .Q(pre_asyn_sin_RAM_op[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(p_0_out[7]),
        .Q(pre_asyn_sin_RAM_op[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(p_0_out[8]),
        .Q(pre_asyn_sin_RAM_op[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_cos_RAM_op_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(pre_asyn_cos_RAM_op[0]),
        .Q(m_axis_data_tdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_cos_RAM_op_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(pre_asyn_cos_RAM_op[10]),
        .Q(m_axis_data_tdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_cos_RAM_op_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(pre_asyn_cos_RAM_op[11]),
        .Q(m_axis_data_tdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_cos_RAM_op_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(pre_asyn_cos_RAM_op[12]),
        .Q(m_axis_data_tdata[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_cos_RAM_op_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(pre_asyn_cos_RAM_op[13]),
        .Q(m_axis_data_tdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_cos_RAM_op_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(pre_asyn_cos_RAM_op[14]),
        .Q(m_axis_data_tdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_cos_RAM_op_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(pre_asyn_cos_RAM_op[15]),
        .Q(m_axis_data_tdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_cos_RAM_op_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(pre_asyn_cos_RAM_op[1]),
        .Q(m_axis_data_tdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_cos_RAM_op_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(pre_asyn_cos_RAM_op[2]),
        .Q(m_axis_data_tdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_cos_RAM_op_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(pre_asyn_cos_RAM_op[5]),
        .Q(m_axis_data_tdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_cos_RAM_op_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(pre_asyn_cos_RAM_op[6]),
        .Q(m_axis_data_tdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_cos_RAM_op_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(pre_asyn_cos_RAM_op[7]),
        .Q(m_axis_data_tdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_cos_RAM_op_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(pre_asyn_cos_RAM_op[8]),
        .Q(m_axis_data_tdata[6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op[15]_i_1 
       (.I0(aclken),
        .I1(s_axis_phase_tvalid),
        .O(E));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(pre_asyn_sin_RAM_op[0]),
        .Q(m_axis_data_tdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(pre_asyn_sin_RAM_op[10]),
        .Q(m_axis_data_tdata[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(pre_asyn_sin_RAM_op[11]),
        .Q(m_axis_data_tdata[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(pre_asyn_sin_RAM_op[12]),
        .Q(m_axis_data_tdata[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(pre_asyn_sin_RAM_op[13]),
        .Q(m_axis_data_tdata[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(pre_asyn_sin_RAM_op[14]),
        .Q(m_axis_data_tdata[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(pre_asyn_sin_RAM_op[15]),
        .Q(m_axis_data_tdata[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(pre_asyn_sin_RAM_op[1]),
        .Q(m_axis_data_tdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(pre_asyn_sin_RAM_op[2]),
        .Q(m_axis_data_tdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(pre_asyn_sin_RAM_op[5]),
        .Q(m_axis_data_tdata[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(pre_asyn_sin_RAM_op[6]),
        .Q(m_axis_data_tdata[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(pre_asyn_sin_RAM_op[7]),
        .Q(m_axis_data_tdata[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(pre_asyn_sin_RAM_op[8]),
        .Q(m_axis_data_tdata[19]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module dds_500_phase_xbip_pipe_v3_0_5_viv
   (SR,
    E,
    aclk);
  input [0:0]SR;
  input [0:0]E;
  input aclk;

  wire [0:0]E;
  wire [0:0]SR;
  wire aclk;
  (* RTL_KEEP = "true" *) wire first_q;

  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(1'b0),
        .Q(first_q),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module dds_500_phase_xbip_pipe_v3_0_5_viv_0
   (m_axis_data_tvalid,
    SR,
    E,
    aclk,
    s_axis_phase_tvalid);
  output m_axis_data_tvalid;
  input [0:0]SR;
  input [0:0]E;
  input aclk;
  input s_axis_phase_tvalid;

  wire [0:0]E;
  wire [0:0]SR;
  wire aclk;
  (* RTL_KEEP = "true" *) wire first_q;
  wire m_axis_data_tvalid;
  wire p_0_in;
  wire s_axis_phase_tvalid;

  LUT2 #(
    .INIT(4'h8)) 
    m_axis_data_tvalid_INST_0
       (.I0(p_0_in),
        .I1(s_axis_phase_tvalid),
        .O(m_axis_data_tvalid));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(1'b1),
        .Q(first_q),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.i_pipe[2].pipe_reg[2][0] 
       (.C(aclk),
        .CE(E),
        .D(first_q),
        .Q(p_0_in),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module dds_500_phase_xbip_pipe_v3_0_5_viv__parameterized0
   (aclk,
    aclken,
    SR);
  input aclk;
  input aclken;
  input [0:0]SR;

  wire [0:0]SR;
  wire aclk;
  wire aclken;
  (* RTL_KEEP = "true" *) wire first_q;
  wire \opt_has_pipe.first_q[0]_i_1__0_n_0 ;

  LUT2 #(
    .INIT(4'h2)) 
    \opt_has_pipe.first_q[0]_i_1__0 
       (.I0(aclken),
        .I1(SR),
        .O(\opt_has_pipe.first_q[0]_i_1__0_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q[0]_i_1__0_n_0 ),
        .Q(first_q),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module dds_500_phase_xbip_pipe_v3_0_5_viv__parameterized2
   (SR,
    E,
    aclk,
    pre_rdy2);
  input [0:0]SR;
  input [0:0]E;
  input aclk;
  input pre_rdy2;

  wire [0:0]E;
  wire [0:0]SR;
  wire aclk;
  (* RTL_KEEP = "true" *) wire first_q;
  wire pre_rdy;
  wire pre_rdy2;

  LUT1 #(
    .INIT(2'h1)) 
    \opt_has_pipe.first_q[0]_i_1 
       (.I0(pre_rdy2),
        .O(pre_rdy));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(pre_rdy),
        .Q(first_q),
        .R(SR));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
