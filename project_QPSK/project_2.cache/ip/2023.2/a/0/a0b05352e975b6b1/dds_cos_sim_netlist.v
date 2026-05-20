// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Dec 29 21:26:00 2025
// Host        : LAPTOP-VAJ3GCQ0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dds_cos_sim_netlist.v
// Design      : dds_cos
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds_cos,dds_compiler_v6_0_23,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_23,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    m_axis_data_tvalid,
    m_axis_data_tdata,
    m_axis_phase_tvalid,
    m_axis_phase_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_PHASE:S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_PHASE, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [7:0]m_axis_data_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_PHASE, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_phase_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TDATA" *) output [31:0]m_axis_phase_tdata;

  wire aclk;
  wire [7:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire [31:0]m_axis_phase_tdata;
  wire m_axis_phase_tvalid;
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
  wire NLW_U0_s_axis_config_tready_UNCONNECTED;
  wire NLW_U0_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_U0_debug_axi_chan_in_UNCONNECTED;
  wire [24:0]NLW_U0_debug_axi_pinc_in_UNCONNECTED;
  wire [24:0]NLW_U0_debug_axi_poff_in_UNCONNECTED;
  wire [24:0]NLW_U0_debug_phase_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tuser_UNCONNECTED;

  (* C_ACCUMULATOR_WIDTH = "25" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "1" *) 
  (* C_HAS_PHASEGEN = "1" *) 
  (* C_HAS_PHASE_OUT = "1" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "0" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "4" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "8" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "32" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "1" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "8" *) 
  (* C_PHASE_ANGLE_WIDTH = "8" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "10000000000000000000000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "2" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_compiler_v6_0_23 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .debug_axi_chan_in(NLW_U0_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_U0_debug_axi_pinc_in_UNCONNECTED[24:0]),
        .debug_axi_poff_in(NLW_U0_debug_axi_poff_in_UNCONNECTED[24:0]),
        .debug_axi_resync_in(NLW_U0_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_U0_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_U0_debug_phase_UNCONNECTED[24:0]),
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
        .m_axis_phase_tdata(m_axis_phase_tdata),
        .m_axis_phase_tlast(NLW_U0_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_U0_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(m_axis_phase_tvalid),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_U0_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata(1'b0),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_U0_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jzWYQCACe6HduwgzTtFLiAYiYj4y71FUXqrW6cJGHhBTqYDBMvr8Xs4l4+6/vZ4c+ZrSX3Z7p1QA
eY08qV1aetKvD0vpQJESsdAcxoYLDN6lFDCWc0du598GFj2kykq8hlCeGm+LoacXndGGXEQXq/6M
/S4B7NckIcTvPciWWMk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
t3hsk/kb1ItcnP21WJFTpUEpQfL2gY3LpAlnq/hbnUVvCRyGkUcKqxwiNKhcnNhwPoqjKFgtu1mt
rbU0H0zuBj9lJZNYKZjY/lJRGPuE1/7zfl3umfX7HoSwSmvlebg+mQbvl6yevPEeahfWaLFSOFfK
lONUWQzumGmYZne4eHuIy9Vb/GxYCEVVshUaUc/glRve9yXFE3ct2dMLM4ljdmptQVQsp25+CPzW
PypY5NB1+NyWFQW6OMdwSYD9X4o5pfVsFk+s+c8QIC5xZQI4vZetScvq2/UwlClD3gJYrFBK8a9R
0cyNmT44sFkbUkHCning7iSoEKnvhNWB3+nwxw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
QGFq1FsKD05tPHUXW5EOz3+rUIodtHDWsF7MElGbvbCqr1e/S3JCZrytU/Fw+WMeC4hmq+CbSHxl
s7dgM0k5VKRVe/Q+pIU8KpnwFuez0LVlDlkCAqSg2YdAkaFoXvMfgMSKlk8zqNXlSSF+IcSyhsbs
qo0immK3SqkumsO0eCw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TvmhkHhnWvPdxoRBrbGLtG7+oV2Ua3j2p8CNiZ05covT6auqNwnrPkj1az5UNf1RL11H2mWNO+le
EwyF48i7taKFOS8UzyGzJooflslmKSF0y5bubL+nX3mPXXvohU54ezyeIIG/BYnv0obwTdzeZQDa
hYh07b0wknuai8EAJxY8e75olKgY9BCkrJDIkub2LlZvQ9WRbcnKYEfxb94hmnIWlTJ49dmtdD8g
Li2sU4upHihD1a9n5rf/UMxzIUGwBOiFcPtNHTPLUftSajsBaqjhkR0/EJvd+zT0T2gBF82W44/e
mzbAJUvRJxkavidZTQC1nq8xFkdiTLjJDrUZVw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
roR5J+hs8+o8B2gUDTy2N8sVyEVrhyEBAwwG/JSVxHbbfGIfUVSPxDqjYVeNoz1AVu6KDvFEVFCr
LmZQoiCCc2VUtMVRHaWcyRUjxZXOcVDoqbN+8jiOPQE3knMz0u26t1osiog1sRiVEFX+J9as6oW6
7pAPMPGY1JN9f5J2HPBNRNnIHDas4Kr6jE+rVofzJiI1oNV7a6z1pGDZM5nnGtbKSG9cuiNQPGoq
rhtmf13h9MXqpJyuF5/oPZer7c4YH/qBM2m2yY0CPtFbI7Cjytv6NEdtSd5MogFAQGnxNKcPyG4k
VFWFDWOi7XpiDXfoemZwk6uWHUfvcrNifxcv1w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jSfOEYEsr7vhbayIEtL899dqDqbUDyjb5KVELVI3Cl8pl2XyzNIGNP2UWtdS7UkshvRbiAENSxTJ
gisALqqqL6YoFOj5DNUxGamqU20m5N4YQ/spON9nfIItWoRFrtAJ6OmpEIxDtXuYJJJiS2Ua/Ycs
wyujThjjQ46a1anSDZZpjwVo0kg7n7OoaD6Hg28kkWNxwPgS21f5DnKAdi7UwQXWZVeSlHe6ODNC
+NBGqt97jyquqLEZNVhxYjxEjbY1O8SZquvweCQVaQj8Mmow+Sl6dyEYSkOy0ZfuRoY7iweoOUOd
2Axw2wRvQ1xsKZStF6BJp/VCNbYWLg00FmfnZg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lXB2t/yPvdVsVoTpojfv9NuypL+4e/woZnzYl8f7VVQNVVOF+/IeNEWyeUSsS2MT4HZzeDpnwrLg
27lBw0KA8u5Gr+6UH30YY4/z2c+b7YqzmfqnjxtGhn2tiRIDVOB1zguoE5IW5tEhfhs/iHEsbtGr
X8TJ/LSaEinsVmK8e800Uxz/1MGjGulqiTOVrUTN6BLRbxdirt9n5yVhEX2f1BQvJKExehITESc7
KUozMH/Jd76NHz8ds+ij1YaWoclsVb0qDywLlkrt2dBpxoYJZ/Bo1HI5HWYWjS6qonJ9WjGlDAre
Fws9IOFe7m7GFHNLypQueq/0Q9LSkxJ8aZl8NQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
kgMTHfWAbixmjwZhmRxs8k+3oO9jxh9jmJkQ6ytdso6i6hkr04AGJxKRfNbLSEdSY+yg1M+1YAOK
9C4Bbm9tyBAWY7iapgbumDyzmsrnARW/n/WQVrmCxNPM2Wn716ILClIfv3JOinEVn1RO3PuGOBzy
wE5Lp3qZ5E0Shjdh0W9yTh8P+EMNodAAhXlLAlGjDWXOZ0sWz+DLoxXRADQCU8f+VhZAotNC4S7n
cjAD2dwafswmEXHW6qmEKUY8VQGjtCtkyH+gl1De7dtgIV7KBe0ZAeqgsuzKePXF8eE1w7P6fF5A
RAfTdLFrUWORMoiymInyJf8mTRHiAo42mbqyBtSv8mgXjzgBdtiP76pZSVZMgwckDtaUeZ4xIBgg
uSqVifKXjby1H+ADRwjbvqjS827Fp31u7q+nY876Hq6jMYGVaf5tukzCipwlvhI2SBJ4nCZsGiH+
BB9WJxeKGl9UHzTNNVgG8wHlwVlRfDob7oiMUdUcjleORps0u+9qNOqc

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZDP5RgBB3ZswS+PlrrLrQ0rx5sAk9CzrGAQvThjVUGZ9C4fEj3T5Eis2l+MFG5LUmcZZojkbBhkB
m5RaoeSxSQeXBFvSgvmceSFmHfChbCTxFDI9wnxw2RLfQZ/fPoNuJgxi9FJ3qzw8WML1GBQBrdxx
qoyWhoewWPSHEpfzwr/J3ih1QwOPyCCUijwGUd+8BMMNNsDasn357uhpeA2eWvWcwWg4dmj4ZsiI
/gpWlXl34s3h4j5wB0CH5559zxywg2z39PeJfZUBZ3yNVgXVhGn+6iLszYdymBCgo86qvlbpKd8z
gC6aGFFxV0oiCJ0d7RJCh0ly8JTeSOdOArnzBQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13104)
`pragma protect data_block
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
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jzWYQCACe6HduwgzTtFLiAYiYj4y71FUXqrW6cJGHhBTqYDBMvr8Xs4l4+6/vZ4c+ZrSX3Z7p1QA
eY08qV1aetKvD0vpQJESsdAcxoYLDN6lFDCWc0du598GFj2kykq8hlCeGm+LoacXndGGXEQXq/6M
/S4B7NckIcTvPciWWMk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
t3hsk/kb1ItcnP21WJFTpUEpQfL2gY3LpAlnq/hbnUVvCRyGkUcKqxwiNKhcnNhwPoqjKFgtu1mt
rbU0H0zuBj9lJZNYKZjY/lJRGPuE1/7zfl3umfX7HoSwSmvlebg+mQbvl6yevPEeahfWaLFSOFfK
lONUWQzumGmYZne4eHuIy9Vb/GxYCEVVshUaUc/glRve9yXFE3ct2dMLM4ljdmptQVQsp25+CPzW
PypY5NB1+NyWFQW6OMdwSYD9X4o5pfVsFk+s+c8QIC5xZQI4vZetScvq2/UwlClD3gJYrFBK8a9R
0cyNmT44sFkbUkHCning7iSoEKnvhNWB3+nwxw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
QGFq1FsKD05tPHUXW5EOz3+rUIodtHDWsF7MElGbvbCqr1e/S3JCZrytU/Fw+WMeC4hmq+CbSHxl
s7dgM0k5VKRVe/Q+pIU8KpnwFuez0LVlDlkCAqSg2YdAkaFoXvMfgMSKlk8zqNXlSSF+IcSyhsbs
qo0immK3SqkumsO0eCw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TvmhkHhnWvPdxoRBrbGLtG7+oV2Ua3j2p8CNiZ05covT6auqNwnrPkj1az5UNf1RL11H2mWNO+le
EwyF48i7taKFOS8UzyGzJooflslmKSF0y5bubL+nX3mPXXvohU54ezyeIIG/BYnv0obwTdzeZQDa
hYh07b0wknuai8EAJxY8e75olKgY9BCkrJDIkub2LlZvQ9WRbcnKYEfxb94hmnIWlTJ49dmtdD8g
Li2sU4upHihD1a9n5rf/UMxzIUGwBOiFcPtNHTPLUftSajsBaqjhkR0/EJvd+zT0T2gBF82W44/e
mzbAJUvRJxkavidZTQC1nq8xFkdiTLjJDrUZVw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
roR5J+hs8+o8B2gUDTy2N8sVyEVrhyEBAwwG/JSVxHbbfGIfUVSPxDqjYVeNoz1AVu6KDvFEVFCr
LmZQoiCCc2VUtMVRHaWcyRUjxZXOcVDoqbN+8jiOPQE3knMz0u26t1osiog1sRiVEFX+J9as6oW6
7pAPMPGY1JN9f5J2HPBNRNnIHDas4Kr6jE+rVofzJiI1oNV7a6z1pGDZM5nnGtbKSG9cuiNQPGoq
rhtmf13h9MXqpJyuF5/oPZer7c4YH/qBM2m2yY0CPtFbI7Cjytv6NEdtSd5MogFAQGnxNKcPyG4k
VFWFDWOi7XpiDXfoemZwk6uWHUfvcrNifxcv1w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jSfOEYEsr7vhbayIEtL899dqDqbUDyjb5KVELVI3Cl8pl2XyzNIGNP2UWtdS7UkshvRbiAENSxTJ
gisALqqqL6YoFOj5DNUxGamqU20m5N4YQ/spON9nfIItWoRFrtAJ6OmpEIxDtXuYJJJiS2Ua/Ycs
wyujThjjQ46a1anSDZZpjwVo0kg7n7OoaD6Hg28kkWNxwPgS21f5DnKAdi7UwQXWZVeSlHe6ODNC
+NBGqt97jyquqLEZNVhxYjxEjbY1O8SZquvweCQVaQj8Mmow+Sl6dyEYSkOy0ZfuRoY7iweoOUOd
2Axw2wRvQ1xsKZStF6BJp/VCNbYWLg00FmfnZg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lXB2t/yPvdVsVoTpojfv9NuypL+4e/woZnzYl8f7VVQNVVOF+/IeNEWyeUSsS2MT4HZzeDpnwrLg
27lBw0KA8u5Gr+6UH30YY4/z2c+b7YqzmfqnjxtGhn2tiRIDVOB1zguoE5IW5tEhfhs/iHEsbtGr
X8TJ/LSaEinsVmK8e800Uxz/1MGjGulqiTOVrUTN6BLRbxdirt9n5yVhEX2f1BQvJKExehITESc7
KUozMH/Jd76NHz8ds+ij1YaWoclsVb0qDywLlkrt2dBpxoYJZ/Bo1HI5HWYWjS6qonJ9WjGlDAre
Fws9IOFe7m7GFHNLypQueq/0Q9LSkxJ8aZl8NQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
kgMTHfWAbixmjwZhmRxs8k+3oO9jxh9jmJkQ6ytdso6i6hkr04AGJxKRfNbLSEdSY+yg1M+1YAOK
9C4Bbm9tyBAWY7iapgbumDyzmsrnARW/n/WQVrmCxNPM2Wn716ILClIfv3JOinEVn1RO3PuGOBzy
wE5Lp3qZ5E0Shjdh0W9yTh8P+EMNodAAhXlLAlGjDWXOZ0sWz+DLoxXRADQCU8f+VhZAotNC4S7n
cjAD2dwafswmEXHW6qmEKUY8VQGjtCtkyH+gl1De7dtgIV7KBe0ZAeqgsuzKePXF8eE1w7P6fF5A
RAfTdLFrUWORMoiymInyJf8mTRHiAo42mbqyBtSv8mgXjzgBdtiP76pZSVZMgwckDtaUeZ4xIBgg
uSqVifKXjby1H+ADRwjbvqjS827Fp31u7q+nY876Hq6jMYGVaf5tukzCipwlvhI2SBJ4nCZsGiH+
BB9WJxeKGl9UHzTNNVgG8wHlwVlRfDob7oiMUdUcjleORps0u+9qNOqc

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZDP5RgBB3ZswS+PlrrLrQ0rx5sAk9CzrGAQvThjVUGZ9C4fEj3T5Eis2l+MFG5LUmcZZojkbBhkB
m5RaoeSxSQeXBFvSgvmceSFmHfChbCTxFDI9wnxw2RLfQZ/fPoNuJgxi9FJ3qzw8WML1GBQBrdxx
qoyWhoewWPSHEpfzwr/J3ih1QwOPyCCUijwGUd+8BMMNNsDasn357uhpeA2eWvWcwWg4dmj4ZsiI
/gpWlXl34s3h4j5wB0CH5559zxywg2z39PeJfZUBZ3yNVgXVhGn+6iLszYdymBCgo86qvlbpKd8z
gC6aGFFxV0oiCJ0d7RJCh0ly8JTeSOdOArnzBQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BzwOppJhU2HS4TSdsYZzoFlh6wSjAin5XtHqYVzVL8ssntFgvYlbYvQDTq+vE4lDKZsSOAhSuK9V
jAP559FC0tMkc4UUVH8U9sx850L6CippSKQaiPrpS2EdCbm/3haJWq5IbqR4e5EKh94Nrdb3UAb7
KGPGYfTPVybz1PNoNQxMQNApfps+32opxVPFq7KpHMwhUrMbRmlvHOsBM/vnW4WgQw8dZej1frgw
zpe31rJHDWZ6QStcRyoEusJqi4//CEAenMdRWBdZd7UxHFq4QUDxlQuIx3AW/4yHdzWezTd9xnsX
bRg4EpVlZtzcN8rHswc7AJEhj3M9u/4YuC+9Lw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
5K2LmVL1yNCHM+hD3RqGpUn02Gwo52O9rE702iRkUVNSwt1tXccuLzPNbKwoo3+N6idPqIabmrcH
YLlQnY6vRrmkdv+/pSq0XzBl/bY8db8H7gIvpGqzzK6CAAMhhwdKDEVJn1y5IO7gGFL7mcGzM0XR
wva7eHd63jINAnbhQjJa9UrUECa/o6bNagF4LJIxHlRFMfePa984/+zXaBbjfiXdNCgaTxOBbfvK
YSzSXYG+weK+ugAJxnxggOpkX6n3CjvwfnKUE5nFV2SwgFAntGBMbjrVOe7wB/4aVVDKpSVREyXe
VkaD5l6klUMeBFPspbyCrK+VwuS1jzlO7NkiFw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 47856)
`pragma protect data_block
HovhYSJBYO0rvmaBSe9G6qa9pHGfl42Q20yTrnlQ6GZPmmVSvOj6dcLZRJ/UZfyRok+fYzWlSx3o
iUgnkQM7X36QVCtbb623ama7Yg9W60xthN93C9lM22zAEeERlc94VmmcHcArvuWkEuHQhm3bYtJg
swG0/ExR5A6q1u2QBbiPHVe6H6NVOmskj7t5LbYAIHW/sXzeRETF4WgSCU+6h9mhEfLy+R+1wmES
HcKo4pPPoZQKSw9rdi5vhekRGHPsvrXWz4g21j6bHhQ1r5n8R2XoNbN0Vn4Vk80+0j3MKUjAnRLG
16vpZjJbywNC3AMy8nz7C63jXoti5eagwR6DqndrsAe9t1X1/scrbnPkgvcpD7G/f/2zn3gALRe0
76/xLSjY89kMp2krZMgFgSo6+czmU4N+viNX5BNM+8LuA4qGA3B7NtWTdz5aswczhua//mWWbWJ5
YhPK8EwwVfXC+7G4rMbmeVkKcjkFqFFaeSlVLMaAPs5gEgK2Tvp7AoFkhczHN+FFTz4bYhMirxx7
gvMN3d9W9y3T3Rj4IbmFiZUkE7ngZkIvml5kU8xmkP6SeY6U/EINUVrUOapqFsQZcY6IsA9VBHfu
KTeLfyE+ixwfw47oejlkoTmeiPlsrcS9MQlY1cj3aqLayaFh38KJ8gyQyeDGr+9RTG0q1VC7+Ld1
nLx4X/Xc6xe99sm+dmEQIEeEJBVCuRHYlKxGjInczGIaZiNAouF4ZFqvAs1ZJ4toVYsnQngoSKPG
7O48FWj0DdD6lr93450AFQaJRm/kIKLKoATbQlsaFeU/u3rVflpENQeyoXPnNzlPXZX1pXH3wtXO
pIiz6uldAkf4kOvVxV+2pXqrcSM0IsfcG5xO3GvJkQEM9+qijh1qHFX63CSZglhTIB2kMy+aSkIx
UZ1awdD96R/IOoA3QMPFwYyi5WzwDm56NKCj6SUL8stpoMECZcNmH5Nsq7tcOB/m+L+/4QG8Xbvz
uXc4hcQZFuvtTHOIcpwSRhOo8jlPPpcD8Cfrf+p7Vkkdwihf3bQ+2nI437h9eQ0EckAT2HQfskV0
rGbtUUvrUhGh/OLPec/sD0nmS1IS8VVlnTdnGxzGfVq7QDPn2Uf2p6Ja7hpZjzxuOrvNfO3qyRu6
QO+zJQGgh/K7mTrlYTNHrjGRKTS5S0Rn4QJJRr9/+cdqdpPUy27DwJtezZH8Oohw2S+zRnnp42Sy
ykEesTdjTHKqv5ZClwLniJOOmvw1lHPcvSqYmKCUTT9ngyhJrFNv6QyxukLffBsFzvFDAyvKzY0V
2xpMQaN8ZCAg9RDC1u0GnXViO6zhaUTvxMX7R8UJfOHv+tyK/Wc/OrAdRZ7GbF6ATjEPynrZns3B
574XyCED3bAR3mDlRDOZ3y0Aa7NZGe/wYHRWncSIBiSLxHeNuUGT+60QjMmnsNH3C1RBxIzs4DmS
ki8U1Y/w0dQrJtLFgEdLzjOGWLLWr2Os6Uudi0zxbtwwmQNvPsz/VfCjHjg8QTema+rtmVTJadea
aCITNIV3Yz5nbQ8NpRA7z1t0C/8L88NsjZKvjRrbym1ZFYW+aj2uQ4xQJQBRjRlA8LEOQx2UKGS5
drmZuQU2TZkGRLG/incokTOVignGYgf3UqZHRivWnNQaoKI2jZWwgAIqLQk2U3yjVEiafL7Ktamm
QH34HY1SamdR9Z+ZMseZHb3b27KlN3KZ3tIoqV3Q17yVSMvymesbwXmPbO/4rrEwv/p1JUG0QJ+z
jmz1QEHHWpP375UMMX6/ZO7/Z3JKudi83taiNgafoYFvkwH9Uo5qFrXKhQ+t9SSktK37oQF+niIB
hhbps90xRIaIkfO5x+cxuuFgNWv/FrC7ZmssumojaSuI06K+FlAs22xh+Lvh12+33BJ+I7JTHqZV
yzbJGwVdXigr58qkAlBSonbjjZCuFOS9il5gQbMU2IjWjP9TIiJZS5ULwMIwwLNi6LtRUjHGUamO
lxtHxUzl1b42gBNOaNfLRg+P/lELOXZeMAsYrMU3fhrgjQKjyziQnRjzCz4G3v5bXJxw/EcxKC5x
xlLwN3tBdDu/h9jaZAH5jCbF0OBxJd+O066z1aSR6Acu9ISBTiRP8e+++mGvoUukatw7KSkePAGt
TpAGwkUIdRJbw3CYf+Zys1XJ7/+vPa2uXJY49zamWjCPHSW1yA4iOWnze1ZS+UWjH5WQVr1JaQsV
a5T8gPEo6zchCAELZED06+LSCjlM6zXPqIR/IaYjbb0rzpJXFB97/wC4fWrZ6J6rY+El3ZzIrRCH
sDeTV7rK08pA216/zbbiAcLSTgih8a+AGyLPpM2IIsdgyi2Abt1py37H2aXhEeyCZxR02vmT20z9
6xiDMWM9ZRlj2JYX+KzXst1d+lPXo7kt9HUF9WopgaEuB2ZbhdPw4n/hPJ5k+HARe64hfRa5gEMX
Q4GLldwspJhhKidJgFJgSHaRAyUrQAvtYl1KhgQ50Z44fC0UmDjNtZ6iNndylZCNzXzwsrwh6GZm
tksIKm66qUak7XUzOKPlKMKH3ojF6Q3HtVVl2TPjphYO9dhOV4YI0W5I+kMk/NxRbRruPLFH/tHu
MtY6QgHzG20x5EMXcRI3QjWxTsDR6F90UN/z81knoYcYXsr4a3ma+HDJFs++BGKycyBHD/KUmyJ4
9EhUDPkvT7kgFLqbMbCDmEPm2COUreHyA/gnc7QKJynmKKZ6Ug9T7Ggz/bRhnJ6GjE99C1jdSRwA
upjCJAWnbWrkpHg0zRRwaq21aXXeWoNUOjDKIMEz4oc49EBhIn7rgBONBq8SCfrYoE0SQirCbYZS
g8aCmxq9RF9rPC+hmt3FdMyGNcr8YTqXYbQHqKEwLVtEsftR9Ot0khJU/SE7QRYpEAAsNhBViK5y
4HaPvWRDfvHCRYYYVGcnxrPFZJyx26m96XfBZ8a2nioSSHWzvVI6YxkcYFk+DanY50LqClwrBGgS
6IzUryRT4CuoG/fcZxIxlwvBgioN2fhoxCi0Fip/gEnE5GInqBy5rgSJX6D7yYzJ9+5gnn8EGHPW
QxSa5+DCYeJibcgmPhjLs8EWR/5FVBRMK0Kiiy/58XwuZ/Ctv2OQ/CpxkkAXsng05xyH+kwhYLEX
bBs1ZiicxS81vNCVGcYfaqDfOujCAXI+x7fl67kky9WxFpkymknnkTDJBK7g05j6iV3I5YXYMBak
evhaAukRyuE1P1YHYjIqywb6p0AYlTcQWYqbKCEt/yMwPrFKjngghV0El7GH6ZHL+7jXNswfY3Dm
6DBiqsG4b5nq7GuZlHy3BR+Wz5FYhA5BvmCYVk1bqiAxiflKin2f4spCxb6Cp6vlXLfzgQl1yzJe
pq7AyfvTDuVD2gYij0xmHjGwDhGlrXqMcEOwfCX4N5IGRJCyxvz/OL9oLken17GEV6LWH9Y6XuP6
evhRxMxy2kb25W98wkWrMs10XkXWI14OyWv4uGo+5em6R/K85vyJ82I1v1/7CywUxrVqgwairoV9
TENI+mp442TRdyCfq+0QdAtE1FpOYH2Lvp4nSK1IGGsbM/oBoZc+mhtRL9zyFa8FS9WmeAWhiD6F
CFfYI/OIiKp73m6SBE40/4UeyBuD+t3p+uZlwvKp3m3+fWoIFdmHp/dSrFExN7drMimo8VC8aG+2
ZFmdRfQDp2+xpT0SnIS4Iw6ttnDAu/lz4VplpD1ljI6EM0WE0uzA71FKYz4EcVmJYxnd0oHiJj1E
6cS+kds1vppuywnX+AgA1lvuFKEhyu0zTB0g66eGO1xIvZ2o7TOrar01RmGu1NIIwryIFpwD1D4U
XkybZincmKD0HqCxJ0cCo5joKNvsOYIZ8tUx9GhDzjnylqO7pMmHiCRAM/MxZOTt32ILT/vlxtgZ
CL6z5J+xrAfOkBGTQHO+VkElu1nrWGpA0Uw80DPMv6Btvt7zEAWAgkDbT7DDz3+ebBosfOIIX0bN
AL4hreW4C6HIhap/AU/W8sVDBmHwKbJ7Wq5oEX4ouEEy646mJqJ7w9NBqN/pYC2qulCxEsDSJm5N
ir3VuU0qcsuOz/NRZF9sSeAIK1JT7B14gZO7Or9avx+TaGePlAlkw2uxwa0CGZhy6ThBouNfjEi2
cQ01WOTqfLseMRQreNFxIT0HFQUQwuD7pYS6G9UOkEsUVxetqoWIna4MiUcoB5IeYV+VmPawH172
M86n57torFRX693iYgJRkLYcg4Bf/uZGrtJYDJfdF5lqmNWrwomKSJh34GJmOxnzNFEnSvJw/iL+
bhzCr+frOs+nqyy3k5Qz/fKi5Se/Y3cpeTKql20pxnS++x+QrpTXsaKblkgKWOwtTr61RdNKkXph
YcJ6e5gltuHmctA25QPFc3fAQhE0Y4T8Eosa2YIfR5Pnpwq/LZRqyO2ti6Iz0/t7nFwldVZOyoWY
tLgyRfBNmaibEKeTvt57T7HpAHHyRE1OfiMU6xnRQhawtZqO4wlC5I48o1pvzdwW3xjBtzhk/qCA
7UtqEtBYdYeZIYllSWXoOWwN24B2ssUFZwR56JXyOGjaIFBUB7okJfq++an4CkW22J0ljG7wrNrx
/knvcw4OblvarfyB1/37BhmY50CL7AczhfG+qWon5F3vWqDYK52+8g5LtaZuR3J7haOBk6WEp4hE
GW8zJLDikxcUcsXADb46XCW3KrPMRaBSJEos7MCvt38qhWJV79VFLmeWE9VtRVfPCoRwFtixPS/A
sUTrv+zWu2baLK1NUmCDkioBI6Xk6mzZFbRsJjOZV4PjjsMP5N0eu4hLijxXHC1vNk1IVxtlv0E3
sYP1Yw1v4yZLE4RdwCvKVWgRx0vNXF42FIGfeYS5xUmzDzgKicecikP22NGsoeQv5uNBidDQxEw7
ZaW59E1grUzxfhXij6BlG+ig/ZsQnybcVCJycv+CNL8HbgaLfkbU7tJpPmFhBZfRgzAEd3SDk/9m
WXMDp7TskR70VWHza6gJxgtLtKZqrU2XLhWIBFz3cPRUQ2Il8bWWUUckfebccssQ+dM9S2/GBTe5
JxWGxP2DYP0Upo5LQ2r1SyrCRGR39e5C89HJic2BTnvACwcFWXzYOHRucZISID1o6Mceb7UzRiur
lYl/eWg4TJzihCOOBYFcsUrXiwjQyaDRVGMyWSAg61AofygpMCTHoBCly6DFqhxTEkkFeH5kmYYE
urPRAl2g9TAfdXUrP7OLeeMeUhtoyf7888soKVxPlFp0ffdxcFT+qWeSZmi17MKzl2dYampEp9e2
oSqdjSpHbMWX1KHJCLCR+FLmQ3eV8XzzasgpAg4vzlx96CLPkPNuu35ABa2/tDSRF0nkw8BO2SAm
QfyDvqgMJG/KfqdtSMXtjXKgzPXl78P6cnFkyBa2C60ngso8S8DlDV9cJPnXGapBr90weW15HIWS
p2PUQNFIYTLHFyPtJIlnPM7K1sc6DFwEz/zqerotYP0LS6XkWmEacVYdpFrQyyY9+O83VX77vmUd
VJ6tIqPH4Lgx5g6wASBYeE5UA7vo/rgPi46PkSk2wpK/7VcvxzAreqP607zdg/Qd4dvFDE5oWKJV
o4LgT/0VWy/ztTFCp41ZlMNBaE4HK39XhBnc4A2pKMJMphPr+qgjDQFVmIpKKTR9sT5tj9Oj+lyK
hyffgkF3Oy2BNPZnDknqXcCIgLj6Qd0nwXnNbBzFxJFUmN3x/SMPxZnWZjQNRwCejDQehXLzl1Ft
7neN9FKtXkh2qBccDAvpcXx3jfuTuMA7o0Ch56UNDY3fWSRQDEnXJpvZjLutefg02ZZHJBvhwSdf
Hkd4vaJFGsWl/wU747YnFEMUSaH1ZZfdFPJ/DV7FP2b2FTllvUqYVEq5zpKSrJHq2Ff3eK/uwf1U
+GsVozMtImI82534Xm/HcZxL6h4VTAeiX3lMFqEWy0zdswtT4xHctII/yN0LnG/rT7Eq0NVXhd8H
fqeasc7yNNXY0j8es32XPjjLOgH5HVQeIVuXTjlEiB6PyhVIoEAujqMVMWYYMd0a9CkklZQImruL
t214HCwkXgGWu8ssk1tkyUDKmGJUYavlnmyPKw77sQccytPaYN6Odqusq3wjxUIKGpueU8KfPyCq
wNwqkMVB+f6Cdt9cSANkxKo3tulewW4pL+nGRvSeAJe1fgsuYVlvnPE2X+t+QsA0ES0tSWVds9c7
qpdFkOqa+Ugw7DAPCNbp1lSNO2Z+kHUWnFvIeQ+KQOxdszoGHzft4PemB3XUPnLq7WYpLt3nr+yB
F5uD0jORJyoPD2saiwEHlJgKRAJPYlOhxyRX1TRBNVZh2RuAK2oN6jiaIpB157JKsKTjpw0OE9ra
2p4GSRhlt9L6VWnC6bTzRe1TokSpVa4dR9no9UwkyTxpf2Th/FOdxNheifW0SwR3aD4IBg5xIhiK
pJiDJQ1uwvn2b2tkywGgihbRes0zqCm7lot/qcgb1gQuf3IPFH+hEGsCW+EEhYCGw2Ot8NtGyH55
cL40YJhx8DxDXYbIzsQa2/G3ISkDmuvkfjd0hRR9cmViRQh0k2rYvAiLMO10z48qLITwSzrswgPx
uNP+Zl+y3Mq2IpL3JNuldhzVy4ZfWTUgp6LnvArVRLuJfG+VWRlZmLGTcvzJy/Xgd8O7fo8ws1Bl
XF8P0+bNM6tjEFjXUWjxY30fi2JF6ai7LnoPBu5NJIJCzzqDKtnwIMwYY2AclhYKENv5ETgSgz83
KRk68Hnd8EMHuxZ9tg1eG0lAvTLbiTJQ49KJSjfHmobEdTh0nHMPfpFg8jjspbBszww1bALVl/xB
DWUCaXtpaqJEodIdxWCPmIZ62LMp5+vmouu0A9l0J03K8h2VyrLoFNBMINvg0nV/y0ZoK4HHcUMq
bKoTzXCvoS3qYEqoE+nN/XxWb2/SD5gXexdwi4mpMXUQISc79f+lAFFk8nYIObQD8QXUIn7toRGM
lojeJXo5RSa+DarYy9BTEi4oEEaz/Hd8exVhgJMYDNmOK0vkZs2LPXHmDrmBoreU7ha9ZR1qd1hX
WPY2XXxfLv+b2gSQJfF2M8ATA6tWAyW/tYctOzLe6iC+2D8fkJjWLEmvYiPaA2MeDsrceg+zMqon
ccJHu+SBSjX06ONK6y0rcW4NuUCCIAQDmrF4xFTQebKEtkhZMpiR1GPIzlr/zMkB/kQ4ys/ZthB2
djBsTFRw1pk/05JIm9ctGsVxgEbhwlmaHxj6X4SbMn/jQzEnH+oRINBkmaoa4X+85eo+oOkbB4Wt
YM7FXalGRNYXPQFjgT9rVWPfagBn6yfqrqsFTa4m/3Z54n1cVSfBmdPs5PTzjPVGn46cMaj7wNxV
w2arF6062R20WGHCmBA03Kh977rBlvkszdGCaNh/OIQtDFNeu6uwZJD3x1I4gH9S64Uq0Fkj8Vej
+NlGPBOL7QafqnC7t/PiN2S7eWJA/b51H7ePDQ/+bvIy/oiw8RdwyIajPbuSn2jEeBqVPAbd+dGN
7hvidKnrUslEoEeNPKZI97gT7kXxBRc4F9rHltAvHZOHtBO5LXQII/mG7YYcPf3gWrNR3ifNPB+d
lIHD1ZXi9NDntJM1pQFcFIxRbgbojIkqo/7hV46prVYWCNFPQgvTR99AePwWhle4QMiROSuODjBL
sSjJ8hflzEthhijDsuHWX2Z/xNr6qHQH55cT3se4/lnk3vrVdqNtl4t0hff6i5O5UsCU6lzxrthW
kUIIpQoqVojzcw6wm7Pow0K03bYQ8FwD+Nb9NKbM6x3D67glwH+FptMnVtlbAV+81sKevRTRzIn9
E+UndOBjBvLsedoG0utJPbqxqLZZCrcVZvq2sVzrX3CNWVjYnnLof8HH1+kZs7WK5OoMKLx0sMq3
twemz8a20GeJ1lzD6L+ImbBJRZYi/SW2Sg2sJT/QA9xJi1dhhOEaAIorAKLRoeiEho3xTfBPT+JQ
AYJlQHXdHsbQV/8ehsbbd7fzEKvX74oeItTfg1sGjbWHlEJY5TudEU7klbNVVIF4k9qRqSWnZ6Jx
63tJPzVKONNvggV5ktMoEP+CTT+WDEZ/ZFka9rQV9FFUIppgQ0PMB1d130cBrYNXpypSb+iaFA34
BUJqhpswn6VIERb03jcdQZsSKyhG4gnhpbySF+KoYQ9VyNKsm4defDRq4U8cdhXPo9QGQHLic4Ek
+eefCAICYDWsYxNCh2ikZ1yWdJzePQArtGVxjjvtsKkNi+GE12vTkH2OCrVoj3wLmrXtl8aBd4/s
9F1i9d6kZA7i9Zxc9ewP6fUaFN+AX9TthBJLaXURzPc+9frIxQqcv3d49bttfGTv1ZKK/4aOfcSs
w+BarLnZKM7QjsLjtEP67pLZNMkOTadOHBHXwQUNGw9xxzsIUr9I8weMcBiQL1MU8CtSirhBwwb6
WbAj/isIYr17klVhz8yGr6lA4XsSboxbfFLl/SN6eoO4TezjmT4Okxh/uRsOatfiSTCADBWEpdBt
5rCWhk8RuGxLRaOQbno8GcV5ON28WGRNN1rnPlEanbQ5m4UvTpY11Uh+yx+ZLAbztYmq91Q0Pn5z
/OwCYKU9SH7vbYy8eMnX4awrz9Xt/Q1GavYp6qvEeQbWBWDjYZOgT/DOp88flMdMGZxSiPnKjIZE
iA6qiPFAFHwT0qynUeP/me8lVMMXojsfgSKXtrDIVMZvLhNuISjeGUlkzRgo8Zg4Fi2+fN0Ch2ym
f194cCs+FGpc5LbheQSdtwyP2qii2RN9hiBma5d325+VrLenFZT2ntxpj5VdV02TFh+iQa3ZmX3V
Vx1wgzGl59rhnr5FQ/qCtcWUnR6egYv+VnJ7czPRg4hhG6MTvPpu7Rz47L8tSvIDZ2CRSsjV72uV
R6IZnzcnFbGrbJl5x5N3clx/k1oCJcFw+9VgkeBMvnLhqRiqr9mgV1HI3uMld7ISg9ZV9iihSFip
duc7hLy7Yvy4FyvW6ArUYCC81NgeCV7L71B2mlWaNI4aB+qY+bvPY9CwTTdeiAHltmr9jk3XQCZD
cDal/RpMbaZSSvtHwYuWb8aQ3MenCniGgDRSvlfVfdczGOO+DBaL/RMEWUrpCUgp21jaJ3VOVMdG
IUHyy8HKujQGgJ3hXBkeCCAaGADbAFo4u7azh/oZyhasY+gh4SuibycLSp5fW3g+GqhCooQ+FrFj
+1846UKz5t7QzijJ++joGK/SgSx+IecLeeFVSVyyrfgXNJNB1jJ26qj70YGeLtPUGqJVk4XUOR0u
/jrypTdXcrxX4Oxvgj/b0PK3dItA6a7uyxTLLzMqhkhhdY8jacoX+oOUG/NMlfTRVN++Pt6HlzYg
XGBxBw90xCHwNzPIlN5DP1zqQEO4Lyua/fz+IGsA5lAmhEItc1pormcr0cy/psVm9ibiBbWHZMbA
GQzRC3xIa+gILTWZKA9XhcFNJQBJSqOPpoO2aVAhVf5dQ6hTRa8ZLDrSJP/9BaFAvPL1Ojtl+Pp+
/+llersZclET3WZGItDahcKfLZz3yHiq6ighm+01oi8k00Wach3vlFKjrCH/dP8zy6PVqcb3FGw7
6otvVPWA6XbL1DCPnEdPmQlebcIIsK6DuXmYR7M8q76YSdxLShJl1IHcl7cFwdIq7HIBbaWfYclE
nWD0EDq0LwbfCk/08LhXxG849qA254KZ+U1UQzHfb8Yt8iTBK6/yB5XEka5xG2iT3ipF1Im3nIHu
n8ZcacxbucupnvQgkng4iQPRvRA3DbmbAt1Nb19FL7OzXkb8vlLAIbTv9eFhjpSTtaLmdUlF0Sl3
iT0oVBfif/fqM5I7XDmZwHX3FbFNQvnUQYOQ2szBH3OQ8JJEqSTtuNC0nJ33jafAmwOjIsHMXZXZ
Ru4RZ16pAvx9t7f2RK59Wb85dsThRbza233Z9u+tUTtJVPfSjyk4VY4CZptgAmDcZK8rm5eRBIPr
wNv9baHl42IMT4K5itp8vjSxI9Li9yQiFXyQ6hrHnI4ttc3FScwTg/2c9+iegyTEYRex0k3s7m0n
8C9fn1FpJkuizBxYLgG1w26cDjqgK5H0FFH7BncztNytuTynPZvPze/4No9LihfRjparYX38QBOi
cD4AMKWdKFn5z6mbgcmWzpDAuQ3bXWHZMSWZkS25bJXtX3wmfG72s/gqojFqNoimPZhYIomLgRnH
SQmQLlIcAcgH9fUWKDOWsExbXcHx2wqL0pU+Kq4Y74ktHzbLbqcuUKJxlS+X4khkOC5E8EB8WuKe
jG1EgT0A7TqOhuKvYa4Di/KDS9j2nEhzMs8yb9Jdf6eYmuQSh6yC1AdfCmsbTWfacO+IkxSGkAap
jkPoZM/shDMyjBSPEtv0plaAQFxs9QQoXUodOEF6QixU8OnBJkTvNRrNb2a4rKaRSkScAMDajOOe
W2j1diSs2GQefTSqXflRcALDr9O0ZaepCfHMBTJfzWtKAT8VS9Ojzx2TIrvv7aHdf8xSwV/yCJyS
nEwTbGSPkSEYJDizCkLFgL+VE5XKvjuIMqU792dIFW9eAFHnaLmfkYaPuTnrLVXoZPId5vMRAKzl
0UYKY4uFEJA2EnutDb7RSKimU69LCW9x2EOG+78IUMOVv2XwBcJPbVBcs1G9uzYXM8rsL+ql7LLC
zPL5XfJf8RrY7KpwAJUMRKGZR6XPScLCiqNZBPqxsRk1sW7mZWrgVn16j6ZzLHZCPHqVjR1GA7lf
thvwYqAGRmnI2OcG5qCmU68EQX2S885Z7WPS/rJJXwBB9W7DUSlii291F4pT1XdPPodfEJMRdw0c
PnSHoMwG82HURDJxCr0ZCs/y9P6y3LRO61fH2g+Icmpj3werYDq59yL6Bw/UYf5G80uGzTIBfiF4
ZRUOlhoJAh5qltNbupY7wTuDeR9FwxJHjme+k8ImPpGYRovCJ5s7dV8JAda77Wr07r7NyQZ2tNiu
FvvBMgPhSYIDI3dK21QkgiGZtQo0muJHr5mSit46SzaaHF724FsLB4L/s393AOe9t7LAnep/oNuw
42XEX053TG6osa3wUwXO0UzaEwybS4z0cJL04x6z5YjGWhchAXl3ZWRPgYfFmfk3GypGWl/VnS2p
JDgRmLTv8NgS9hYoQyvtgpHS8d8XzPuuUKiHdh0xLZJ20Y7gvt7yF5VsOpgPfIsTqPKfM1VhZ4YC
H+8Um+MsaBYtxL6D7OfFWDvI3pc3dP9X3LUD/LWT7ZjLXRs1xugH8W7YFGCnD6IRf7qtjQv6RXDT
9dmbTLjktsHueegt/4KuyA4dzvgrb2nE6TCo+7/7z8YJSbRMH5ZBSWk6tbkm4UnvFjsadcy874dq
ghFgLlTsA7OSLUI8VVa8LDsFjqYEwIWZyEoW2vYfC75enbRqbu/3cKCpyIMF3UfFtue7jw+pyYov
nsUBJuaCL7EPBtF5/NJXMuXwFf1FeBCpwoY4qFEVYdjlzCyPB41sdYI7QxIKBKKPGNKOTm527g3m
sp4C2p/WHaBQy6AlzG1UvAbl+PzCKN0cGe8/ncBtZZE+TxOsMTL1AB2yH+nH6jQzFld3sDX6JdAx
glpM/UZlNKHJM3y1XojnQHDsOvOlInXpPrMuhv2MSmMQIc1QbxfIibi99u4771HHACIVTZnJomNM
k5Wnw5WyHw40mnJe8Ud0toHtF+0SU75fcTexjzzS1EMW3n5ZSC9I3vYo/cq12DfK4RhCA+ydlEKw
0ois5raT2DEI13wi5/K7931AFuNQk8wEguOhoFlF8fsbz38Ip95Dl3/FEApKfLBTlH0F9i/LOgYJ
BdzGvURm34fFqBWfAA4aamI7oEJiNUew4qE53BcR6v5R3BtlwYoPZA11s+GMeHT+5kSLdace35C5
5uHIs+gQ1UPhVK15pa5/nk4/DzpxIWaRivgdgQ/O01vPfZcYJgMP2jYvyrwkJM3q/SbDg6powHaa
A4ik6BFHB4IKcMs4+k1ClmzMAwxaswX2o/zT34N5LahkUIYVJoAQNTH/v+WXR0yU571SqQg/RnKr
cAC17WKrgcV9AuBw1w2crASyJ+xDNkrtAb2m9ExhtvArm3tcQgJH4zH+WnVVK9Ph2VlhlKOP8pE/
+evXE1u5CbdXs4S/lvNLqO8IePP5fBrqouJ53MGjlLNI5AM8hRONylGl/veyKfLrYs+6NdbB+Tzo
mz/PUwgzOxbq69bCTRsOLeT9ne7KZN1p7neWEiHqPOQGUJkqb8jnc+jXQ/fAhPMhylKp+MosRBo5
2Ahibwc6L5wBB/wXAwJg3MPbL15DmR751xZdAPOs5EvI9gQ92+y8MEten1TGdpne99PuIT52zZQJ
rdOI4SKWP+9oIHv+DhqXYr7flHSW/vexaLXxtAPywxob6GHxOaCB8l6OFGBL4ksEd1g64sambKnc
wnLp4twMrEv6IrBlxF82KXtyrRuJGUdf94hwyyD2ZGbs06kTWPF5ruOmZOrz09a07ePwFIgV3g7x
vnNVoENOBump7r8qeCRY5fnhd06C8Cr/rUlBK8HdRmFgbgaPBp7dSKz1/2qCjReFzrWznI9C8uLJ
CyodXOPZIe/axxVNFhuN94zn54n09CcUEXAyCKxNaijIWv3npqxPy7InZEbDhaB02Q0zAuFUJnNh
EvUpsI3r95p59aDd8tBaCjciCZbsSPYVCov9nOlE2xznWolF3yjj9kiXpYuCXWekGJnk+s5pmd5W
HO+7LQbs909oD3OrG76RfrTTDo5JD0S5Pt36nmxJvdqenVCZfZZC3bgE1NQ/1h53YLqtyUCUrDA/
QIwaaCadc/HJ2InC/QQ9Ad+Zbr/EgpH81LRuu2tWwxpxE/x+SrXC9FaXTw4TjQhCyMF20oAQFUIc
4PXEHqnVofP1xs4fz6vX7UD5FCnceWQLfQOx7tHZ+E973OGkSzJIS1qe31ER01mB9pDtldO2Kpy9
6/tvUGOQT9dAx/qIIqg4HZjKB9aw8RR+IkaiBDFqe/yPfeU6t5FM+qM+buF1ZioUi7NZYF3QoQtO
lr6VnV4NuvH0Ivzgnz7LynKw0Q3+JJ94FYS9E3qWymPbVNKiDK4FJQ+vFzJ0wAyW1cR6lxbbkeBJ
XiN++g8nIFztYB9it9EglAhsm6btYEubr6mSq4gD2gzRx39Pe9/PEM5vWo9Sh0WjX0E/Md2jXBxj
jtNEBlIdt4yb/rxZbdYc2ZmsvJOF8auJpNUdA9aOlz5l7mME17pbDfUmLoBCldvtMiD2p7ZYA0nB
3n6GmpmdoeG3nADeWPo/8w9Y/ldpwA1XoTavvDKrhKgfwfTuqmnUgizhIuy2qLP+mxaeT+NBhBKh
udfuJveqtVtzpDo9M0ZeW5cKQ5Wzz+c9GhKQ8lUfF0KFOzbXFc0Lbd7jIfdwRLeOKhxicPp1Awi6
ieKcoK2FbnryAIifyMyxKL9RkEu6+1QBFe9ujNVGY/fYYWyjQpTXvPsyKEBIVHeI548JassFYzAR
n8/r8Pk20QdCIcMFl+MViu4T0DpRq0dG7IA6Q4CH5O7yS6yYpo5tj+VCwSJBvaxhF45fCXcog9Nw
ohqaaDZUg519L/gbAizRPxv/bWta7py9lBj4lHDyCI0VAq5DBFYnmHDNK9GUTZcag/KV2TZy/q5c
DLYlaeWoWuWtXdFgSpvFWqRNzTzyAuDUWk1AkKbg/UAXHAWoDkpwLfehd+UHLojR98cT+rAEZDSO
B4mbCudX/pFY8K9K0pDWXfOzmSGZ0gI1J4EPC/iDKRns3eZprUpOuJzSMQ55eloWkQDWtCwDp7ID
PIf5Rw8vsBh7ZShyh2FTzUzh9l6vJHj4qhhBB6uxuaTXqS6zWBDn3hKyzVkrCqPUCswpPZYrTv4f
hD0d2rtEj9n+JWVv7IbMnV/1mRgUiBnstUUxaSCZL3SPYawQdznHye8W5iGq2va/WxyIXlNq5BJ5
de64fLoOjMQEg/meeF8E5ONJDHLMeba+pynk1v0zASRpRLzfbSDUu78ONDeLw7wyGJ990wNRwgDz
ZcwQ6wvdJJhDlQnTAha3CR8/X+10KXsgWwXSxJPAUTgz7mkHtzP1D9cGg7LgTBybJ3vtdYnohoeA
HdPo9VkgFs6M/m5e3FGI7OTOeb6faiZxbrz+pCc0cJUp2sNXZbY2DV6mtqKSwtLMsgEHSPHFHifj
hnSPqYQ8zPQk194scaM3HGJisZECFLg4fFgFKUO3EL+P1jmh9ia9kMVIyMG6h6ZgpNEedD3zvqen
4UjiDIwp+hBCewxVRtXXMMlNCWZSqtQqPIFrQQSMk1MFTYeB26/zIvXVq3q1Y67u9mEg8GzyeFtg
+uOJObIROiIc6WnuIgj72OKqQjujiBHHXnlWLcq/hS8F6/i9TAzKZ102Pr0JpNWic3XvHroj8AAN
isDiL7vQA+gH8w2ScdjcVIaC5O65D0vVcBIqA2moRZDHgI3fFVu+ogR9WzdTgP96t7AwQq5pB3Az
yNuedG3HKSk1MfDT2jdMI5400LzXhOWXtL0ERa77Cm/uO8cidGBYOdBNRo+6MhnyaPO0lt5Bkpix
B+ywN0gYxBvdne2CT5AD5Lna1YDuD32v4+q+U2itKfRjSOVrj29MYeU4PCuFbmc+sspBgRODRUnT
35RYb6AZM9rmMIhAXHj+VfeJaxIaRTIg98AD19cquSJTjF/VCoHCAIlcVPlF4hIJeIDoLojkMyg0
TKMHjuhVScVnkK11mLZWOy0lojEFilmr7A7sv3a9TLGswmgJs/ftNf2K/BaCd2nlMw7f0AazP5UO
ChUUxEM6dSIxqoFswAkr0y/Ootbfx81wY60dQdkI3OpgOhVMmlBRCSPgM5lPCZ2ODKVjzdXMlhI0
0IJHo+fLjCb+LYLt8/+gb55oLkf/ZJotzbJjjCt7qxh1JsnQDh11wFh5W1tGy96vimGE9p9kQhq+
DvhdrJULXg12nUqX2OV6wmFpMlDrXQNHuXe7xAwWCrTWV8fBn3rW1/zTa1zeKkXAr/agxsknubhN
n669l2EVnrahngupfRdM2EKsvBM4AJ6CxVGev7FO3u7Tj1tQ6i0uZNmQUVaB0rqT6CVMssTlh06H
z2qP3O3Vpuq/nXy9hWQfiDdfL2vHqMrIgozA2qfXuroer0TlszPlzUMNnXd450AftbcBnTQ56p1e
Kg4j7QEW9wVIDZ4rPun2+h0voluPmJcT1BxJBV51e0NDKfG4HRgYejVCbLuva4manXt2a93leuwn
kLg/Lhe+o3bEyuH3h+l8LG/0Sh+JterQ7eDQE9LRLgDE3fmPpQvwL04fW1TZNgTpL9qYfkm4KdGl
ZUwusUc9nYkwF67jwPT8Wqa2rkFvvTGa6vuc6dKacwual85gomg8PapKxsgHkocI2rFwr/tMCLKA
4jz0Cmkxac5ZYXR0QhFt+8zJ+ObifL6pctR0ZT2cfr+IwJruBH4Ug9Tvcsg06wamhHsV7zf1wU+g
/LK5OOKe7gmV9v7N1+z5KtX9GxHB5uFli0azpCw+Vvc7udzYObf+PhuO21389JKclPdmYpgkv+pV
qPX/YQE/oe1gQPhLenlSdgvZq/EME4bD8MNgZvcXC2MjeaEl2esYKF7MAW1BxnBYrE05zDFdQWkf
/b1ly1I6heWD2HLsX7mej5n9F9mpbeV4w7nS0uHu/TuVcU9vCUmVSBTjK404glHy9kkB7bD7aRZ8
urzFcSsuSnq7ivFDtIN7FFq+ggqgDantPBTHamY9jo+7S1OGQtRZtRX73w+CG98XPMTi4oFUr16Y
k9/83pQbVfRcY00X7SoTHyMpxq+Z2jMRpxZ9UWBilrW186oaPy14Kk6Uo/NwYZKPY5PBQqgCKN0Z
tW36B8/Nbvk7+TOEWdkInXgHCLZ1os6WDjdHxofgfLH0OEXyE4WuKpf6egvuVssz41XC0+90FWmQ
89afhLH+TzPiEuk7PaG7HcxsDPJVKkIsj1sG58IGLry78Ty8a7wiHq0HqeVfz49KeCdrwDtCqSdM
ZBA+Hw4mlQp8KB6eNSYFUGcw7IEyi3gY3jZ3Df1S2ZIcG9inF4D12SPo6U4zRdkmLueQtjML6Kjg
ZTboLPTb1PLvFg1duxWdbo9hAKotFVB5DKouMss9o+8veN1b3GwheDfNEanL9nhpwL4nPnJupvrY
aXFhpQo+W/tiMLCzNjW+AokLacbI5EpZAk9l2z/oBqQ89hcM6FL/PRK0eAWaugXl7Sz59VcvO/L+
MGde+vemjkInBMpACzNCxsRuzHyaqfKKoi6ex+Xj+r+n3v6JxrgAqAhvFgxtLEGColer5rXe4GSK
1+SDHywOk7eIaEuheGjx4n3WeA2sY3U/Yz46PPxii223HnSJdC8+vfVbrUpfQb1tb9bCweK7T6CD
4BK1xEIGviC26ZXuoeXtaiB0sqX6D73BQErNsLk6UuPrqYgcC9wlfoCAFaVpnrUUvcHAQbz7vWLv
nKNKYubXObtZUhfAsihjklThE00ddP2Y7EuL//iC1gHzEkOSt7vxJ5g8J1k6ztR3nQUb8fCWW2Sn
MUVH+jet3dH3UWKFS8B6rfniym8i/r353FnMCNjf7Lj0D+PA7HosZbgTDNIfUA6M9kbRgkpDT3Xc
uuAQLQM4druO/2unfyHvc6nGW+UP34EkQ0g2FQDCxg0qHeICnm+XdGXPSJtConZPgC7woWyRnszZ
B8AA0/KhRjPfv7Q+qFXerkIcTZk9ZdbX5SW3Euu1jlrULW0ncq0an+JbjQkj5ZmRFSyTjYgFr7Cz
1RZHDFj5Q29Ic7CSZ5EBcTuN6430deGJiUecFzHcTf/UFrtn3K9TuiPGbguYgneGszt5TTblgtAl
lG2qTB/KRLrN6FWld8OvSnv3gYOmbvSATaqpGJLaMxi9qcFUuev79kX5Ak3gM2MQOprhiGx58tTw
gdnt3v52jstb9FkogKExfem6Kh9CctEGXOM0WLoFpCK8x9EKH+AwcCuu5XclZtVPBSIIBY1GLaI8
bXEEJ2gDgpRMllES2Y8m5PM5X85vdkDLWaoRu1C3/mefp0EHslSic1fDoZSBCLBPeCv3oAkzgvDn
Fp10fqFz9xucDYc7suvnDmuEPybBJbb1KtnBvCd3R9ShSr0vJzJcpVtjbP4Bpu8ttu9/14LEhgqd
ssnyqBwa2qOAlCbNev/M1USpsutiNSldCnpjAkHpt1Uma7v50hujY/E3C5/IFqsZIiVt//TdXned
PcQn7srDUfvdbgjJ4FuEwjsNF8soJgyuoLSTszXKJ7wCxEz61FHOnB/QuVP4Qcs4fLsnRC8CuQbi
AwALJ2MfeOc2ibvi/KJTz6xGcVeZ3wwI3ENZuqOzqQK0DYGaSAfkbhYrP/OFudDoxC2oMQoPC4fK
tP0kE0IuRV0uK2fLkoThvdWERKH132yE0cNZgP+ltUGMjsCAK/pPWtyHzxeYenLeKbrWsX26vZWh
dP5x9Aix506JasLKE1jbsDlPRd9BFT4x7RumkdpPjyGoisTASVJ1Mfq7ltBnvSmbBjyeRcuuNGUI
ifGjSeTrqHZc1dv7ZGVie9+BMASS2LM2x7KIvwhmUckkuxv0aQEK6SHKd3y53ZtQjuzNL6VUjEYh
EgO4LnTa5B5d6d2DG2tk947bb6kOOuERtgJy6tJ2gB1Pt/xcU1WWkBZKtbIecSFxUTe9HbVIOTSH
E7mKwnzYBAZo8ZuYQoI3FNEDPXgSYpTc9YiDCPsSrKmMv/UITGhFe6MkImQhFKaT/8V+MqQTIDzS
s9FEC4LFMn9b7h9pXz6EtLyxVboJhDfurYkGbXCYkZWv4XDfefvy66DnlAk06xu+jwvEgNEJ6Cw9
8RTW9394Up0UFb5DPvzfMgI+wJQ2nRZP2ZsyrGYkSApt4W+mdVlErttUdRQxX2oxCShvrJGe25MX
mmkecVu1MjgUSTo1ooly5IEzrnyQZBI/qevnlAvgjjBFjR02G1gBlMHPxYxHED0riBMLydfgaKtm
jffN+Msu7fhCvr7U6GTmGmq83qoqG2QNdILlk6XodEIKCo5jOwc86JFlvpH+DAQ5iiwUBiiIYuXA
6NIVFD+58m1/WubMbIXmRqITmEe0WyfvRd0WitgSiAY4AJrxx/f8mLfT9jl3QgjUyzfP3ytvarOW
0vpDMoDRkAqPeFi3Xt9mTuZ/vCOw7tAU0a9F+Ikcvq37PcNdEfx7TwxsKBUm/dXMaKLD4YmOE6pT
nEGuKnjL2dYYo5491u8lWtmTjSr4F3XZAyL2TEbeMeGuKi4kJmBw1CN3Tt7W2GM0qCMHhI9G2Mft
Fkp8UAxZpe8H+z/VlGqtSD8eBsPcFRnhtdJs+jcjhor6LdXXqlKf1+eKRadEv/K7WsBw/L1W4JHR
N3FZpYWwOoh26LSkrmxah1QLFPCRQQF+9Srsr5lpm9bKxa/6Ika0xdUo2JH4OkEj+RZKVd41dWKw
LCnz1nxIjhFBoy4JlazizkPo6a47iWcN0X7RQ1sR3+sfW2UpUeMBq8yJ60XWRjBWTOrQpPqfwC6N
ddfjRgCBJ/+xxWLUGG2Exbtzp5TJ+MUY+KrjTeCTupvRmZSp8mWExmJnpMv3jyp9DUhQk0hP5Xvq
TpU+QCMrNs//B7DOTUtORgT7vUaNsKqm5li3ZZWiPV/eXUN7CAygbVR7FNqWz+V/iXhmlkuqDIBX
6okMzyK1FiIYipmbhha3612SyyeQ8k9FwMqAzAlrnP98U0aWnmMsO8Qss5OaBdkpQoT50wo7FMuk
+QGtVBrgoAKi3mMFPWFmqnNKxcvmSNUXjevwYHgqnXK/oeo5pDI2Smclq9QX8VCXftjTIolNriyF
p3WKgkMvAdXGk5dywha51aLiCE9NjYJfgS4hDfVfS6IZevZSFz2ByodVrZhtb6DtCJm8203YNUS/
k5fg9iD+01CEsjvjtp2EHTgoHEh6NNoQzbg/M8cHiYMtSGj2XHUhQuB0VAEJ0Eqp9jNTdcV8N7VH
DvaNZoAmjp8i2vOuIZgphBCt/LGnIlLFFVvro7oH+onMaf89yz3TMuIs9ZOoq/Izzm8HFuKcsQvn
SSUUq8j/fn3eqLkUA0rotFLzhdbywBvHTSCruoZWRMdt1syBe12cndRbe4jAnK+ycV5SLNW9sU5l
InO9ur7ghXCaACXK/myrvbSjNISD04Iu49D0+azNmcO2ppzqieHuA+TJkLdRXpcnRPf04hXYJ5j4
j5q0uf9fSAJGDzv1lC6o1VovSCuoZAG2aaBXeeE/V2m4jXNr5J+GuJc8PwqPIlh8dMVgsxAxnwhV
vWoHNYjpbRKkGv9hNinP/6bShVGZqBmN9cxFRADMcBjRuRd1vzr7A6DgJlWiJayB7Fz6HU/4s0nc
Q6F3DsGKF0k43KN9PMAb01VdNPldQcvZ36qwmCesUzab3eDOiIsRdpsj9P/K1xQvppIQsNx19jIF
gUohuiS2NTvuN7D55GU6W049FOmzHkemWf7MomJC7YbiisCPluSV5urkGtQ1QnVmhLlIF+cPaCXv
0pLkW1BWhdgYvHr6eaeAC63++MHaPZ4vOIea844qvw6khGNJwwE9tDDIuYK8UjYvcHzCxlqP8SkK
vWS4qezPZlIGyMbo91BnGptcuxKLLznU/ogT7oYSfOswtfX1ht8ZXtZ6PSO7vYoprafm8DspFhpz
I13aKgREHgd50t945kY37Q6mX3zEd8rcdg/FiO2OnmnPHOOBvq+VcnodJlkHLv+1iDX98L5QwGbS
jES/IsbFpsRbX/GtB1X4A5yPCJZVgJyiTpaEuV02v3gkmk/hAUW846Sq2mFYP9dxnQPAnQ//CRbw
LPSQBH8JA0zKy6YBETIwVyAFVktiGi984xnJvtK7lRDEa7MlCDb61dgziA/71YdA7Qy2T1GVGmmD
QnxTXK39Iw31WOtIGoheiVGMqHzvHfzkY3sjxFUDRgAv1FDLX+KrGzXHzOFZHvY5y48yWtIm1x8U
xHaKFq3fe2vtCxdUQ5vzgjSj6FbMnRTEh2DpfVclkzxL0Lr7ayb5lgDTLleYYm1XG5gavedX5bOu
uNSJgoKRdW0Y1vvQydm4iD7qf7D4eoffRyj3QlbXvOHZtRK38SKY5fRlsnksbGo83+4TkUbEMaf8
G57+WWHTZ0TjRNBx2LJZR2BZTe/V0Y8+4SVFkm05bzj+VBycAm7gJPVGJYn5UUHBgWj7qlhDF3VN
yiFU6rE0KvWcrL5VDere52rXTW2PoPmrJePV/PazkDk+Vr9aKtidvWzpT3asHiJXsvrzQ0D/VRRq
SoWN7gzVpilVOdYVSeo7ZJQavlB2FqYaSzWyug6p35jqUOOGTHa5MvlcvPYyWSGUlHSdJfEA+9gj
dnRsFcs4TWUnwTuOuKeNSi5CmkEsR+i13D9f9U9HGxUk9oU6uiWQpH3/ML/0+OlGDlA1sZTtdZ4Y
ZkXr7OOOSZst9zP+mIkZ4gPbHs+ERfvUOZDFjTq464R4INDuHbsXJA0haPuo3zUqGGrCJLmHGSu5
s4mWFYGlwwfLhbGzTCd4oVwPqFOEiqERCcQsFaeqUKjvjHX2BuLZSnXMHKv/5k2K1cAyWzxCU8S8
3ysVMwIvlfQO6HVnsqWHTjuZSH9RGVz48T0g8MJtyBMiXuOMG6+Syri0vO329tEcbB0KeIG2HfjH
v8wWyCiNzJwVh6VEdGpTp/2MLO7xAb3GgaZwef98S+4pmHcdU+sQg/Q8OpW9JUZENxmCh/wi9NHH
xNqvK41MWzUpfqU8LCHO/i7ZVzZYnKpH1wrzpHgcZCZt7WdVeLCpnGLThGqHpwhDqB4+ttWkct2B
r/ObRczPT91jdXZ1Ev08L6+k5ysJq6j1bwqA6O2/C7tIoHq2gG8kdFGZrqcM6pc4CD5tnTLwjNY/
dbyJB+wYSBt9AK2BS0fip3aJm93+1FR0GTBVR8rVzOP85bWU1i8tlluQpZ06XE2Oea5iPpA17+2X
4hohgN4yosLT2p28I8sjTpftn9dTv+9sVEGAxmi+foztOecMAx28lrSKMpN42hHij0L0LV3EkuYH
ZR+b8yej6F97gDHO1/yM0a5K1y+TTWvkHwCZVFEp/xASAHx5eZokB6go2F05s03k/6rRTrHoOeLR
4PsAZw1fUTmp9w7ApMsYdgWU351oc8RbVJXohS01u/xfHKtbkz7ZoSLsp9WQo/kmQdUnNiWiPiQY
lpOTTXPDJ7/D0PjqTImnIm/0qPxMkMbixnKdRXDtFvl2TEp+dzeWUBK83fP/FLWiAOaw0fBuaFbm
njrHjdQapKK6JnjGTwXLE2m/NNYSqzKvofPmp5h3aEURxjC5XqL3k+liRb16oHxEzsB3EyNMd+Os
kpd+IXDXo86j0NEpajr5bPes4nLqeqLjFq7isJ8aAyJyeoL/kHsClJL7eukgy8ZzMJZvuUzgg/qI
oy3VlgaEx+veu2AYPMtJLUJ2qE9ZDsEfghlFfgw2Y4WL2uxQH1yeiAAqf5LwAzefZJLR6GMyHBHG
LX3oUCCLiY6gXqn/NbjtkNkCmpwa4subC3Dfvy77s4YNNnw7NmF51ckjnahPw35L1t71HYrUnES5
Z4FvSI7UbHIAvBViTJ8CDlCnpNpvNx1OEPah/tLBHehCYLkfBC5lCxFMVaLwv3lO2kbPab2QcKI1
n2/o9XFueQ/WmMGuKr++MEWJPsoT05NCBoal5xQKSQxNbSJPYproGTDNyCkiBes8Qg6wAJhTfWmu
ITtCSqlJTFvixaaXXXm6apOQDmbd3zruD5kxGbhCU8HsArZucXe0ck+lM63LidPpcD+a4sbwRtKR
sy/UF7+2AwnR/QFUhH/YgkyQs4MQzHvGTInPABtU4a5oYsNV/uqvQVT/xQMH+vWtEsOtSj2hZ2/R
K6XVuO9TossXyiLPH+2+BtlUKO+dx1SXcrzktP++BXMZVoqKKBeZkxEpa/CAmD/K3u0k5GVW6lER
Hb0syhOKjR7QaIt557w6JnZh/q4sPMsU3tIh03CrznttSkbYPZ4vxoiXKE5GularA5Z1vPH2EEsv
FQxj24k+js5ZXOt4NdYgA9rv0kTEycBMXGwGLk8DumfxIaFDggR4dBiesI+7v+ktR1/wdNh6laQZ
ppSby4fPoBg6UUbjtuyttkl1d8LMoxd6L9rNBaa52ZYuIJ9bsZ8ZtR2+SukDQYMehs+ywRUxqYZN
6CkR+sNkHdomS2XZjvmZ1tIn1mwgppl2jTACdTF4AahJKDVBNqw8QtHdjY4pSpSkLgMna0ZiN9zD
vZKVEpc48vaUmbjRkRFNsqz6wLsxZmuLDm4QYQAhV++q6tNLMDOC7revpoH6o1rAHHYwn16Ks6sx
Tu6Hg9hWwOx1PjNrTckkpLw7cpT52eMuEO39iXXs9CpcB5ESzRKpBQpDTtuC7ZqpUCYbE3OmLxO5
GodzVVLIlb0u1xw3U22o1XALfgZ5/MRuXc9DKasS0pqaACmu/MR3S/ftnwCUIWRWZClr5mQ6R+nH
Q5vux0AYPCEFRZEBkdQhNb8vlWDMtvQ9E5Ip1+84nI9jDxZVqcDX4aRa1k6zfiuqp3Tz7SNW/FZH
/3tEAmyZOBCjbvaFfye95wOfjow5P/3/6iZ8xdEXNih3XPmbZaMr2kffc04rgFyyOl1IU+44RV2K
q2pMBPDkJGNGO3TtU835bsuGqdbZTz0nPpEIQPCfIdpNTidfOk1zrdomqufakIDs1B+Q3aL+qbXu
rPlApUA5x6urhmdF8jJ7V1KJrrgzkScG8N1wyXyctt47ip49snkV70O/hdQvGdPmPLc7yaPLpe/h
mH8KuuDg/0gtYE4BH04KWHJh4CnHSl2ZehoJFxSsobdjqO7uQLc11D9mnf3OT2FW6EV4WngRuQpT
2yaRS9POYNsSD+TlP9Psv8RzWy4JtQkosG+AKmj6E4hhem9KwlUUQ+n8Tyr/mANsSy0GJ/qRMWSp
KJsekS6dzT3zxbgxAR1WmSOSyNksr9HBZKgRxxPUW4c9cx6G9fNpHZYDxE8YVGf7tzsE8GtE2S1p
rjS/hbArGZT0ma7GiiqHFe5RNyaTMeG22YLQi9l8kmwdfMPgeMkeBuc3PscuRrtGIAkdBzvesNPG
HHJmtHaqouXZrYVP4ldpyTOCkfeiC+JBOA8CtvvKgoSn86gKJs0L+Ox4//ugRZo+IBZptmp/izv3
msl5DTdHVaKzIeNXi6NqbTyGbtosRUH/WyHadcx33md870G3fIsYuCUCsBxq39CLX/0lg1kcz/bD
1R7aI/w+s88nlg7dw/jXZwnmMUCy1fog6Sdw2TE1N0IGA+ax8wVbwPqf5D1f7e2VQYKudTA56EpJ
5gNQBxsByOSuiuh36lmNz34qTA6Oigb5eB0N1H4hmUNZt0BcX6dkbj4geEFkN2sCsO6iFzcL0fKS
BxfoyNFj4NXyvgQri/LMPJRLRvyaTDrhlhvS7DjmrdxHNiwmqdB773gHYUmi3c9o3J8C4m05j4GZ
nr3VTQ5R2Zz8YUZbVJ9HNfA9SU2LXceylRPmRuxCN1Wy/aUvnuzKm6IMvdTCYYggvvQ2FTRbFexh
C9CrXmfSLDJXhbe8JFFFpiWWV/BOsMmegTwnhmRfzW12YbN7RMf3eDm9hP4PJoEkABGg4F3bGUOP
/2C6wJs2xIlif0B2mwkPOA/5HE5tfp40OdysXhNOcn8r01p4VBJlRnX4KjpCoX6fCFq9Mn0OSWMu
bhjCH9k/t9blxzOJGWw97uJ7xwbXmee2cSVMbZIlVudRc0SCVK+ywalvm5UXOobXSEF+Aqk0kxNZ
hsd3VtdT+VM26HDbiiVtfybGkTowPXxqCCiGcQbuEr09MIB7vOvW68pNgNX4qGo32Pzx8ghsiGcv
OmSe1hefr3T2Yqzht/En1dbVQiZmCNnlwVUy7uYFV6beMRUyzvy01xY/KspJ7mDFrsUNG7XjN/2O
it4PWAnVNP5ypoKZZRYVXjBHCGY1MpehpkdC9OQ/D473WO0NxEKHcEIhCjIHcFfppwPfn/X3GQfa
MpdX6QWyEWGps71+zXgpeMbS6wX0vGwU09q1JcM3mBvYyKk6f8cCLLEH/t4q6LhCadP5UxiThr/G
/GZAHd6gqhfzHSGxbsneaBeXT6EKstAULp4mbV9GCGHPwtXodiLU8Yl2W2ByPgdLAFjuayJMroMa
efvx2mNTg6tpZPNUc85Ts5wUUH1RXwY6a/fBtf8kR9mTD7FinZB70xsuxMv9bwH63ofOoV0Edi75
G8yWrDpQDTPpgFU+15aEMEtuFFdNa9+0uIZe2mwtaMeLf2X782Zcreg0CAbMl4iLiQhd2wWukrEs
fG2XXoYC5HViiLr8aOICYZtVfsskpO6cz1tXXbOIKGrpm9F3wU/UEqbKGCYw3NqdpDsIWadgvbLc
mnzVjRs4ni7EzEQf/wH4mUN6hgs3WMAhelAJqGeXZw3Qj/6o+mfrp9lXuPfPH9Zlto4riQczi40L
skcOC4dhfh/FjzNyTNr7rNylHIpy/yQcyLkM+R+PSnc5H6RaskJtkXQt9MdLKmzbAAsbc3RBBaWw
tBFxQbCEKzVuJV3hQ8cp51FQNzi+RDWMWjD1DNOt33w7VRWUYTj8LQjpmZ7BmJxc9QC6C9EUSmZC
Op++p6CLu0gWH3OMukv1P8X3pO1CndS6dQGVrya2aPdXCeWRfjPcSpfK3YNk/bimXGWmZ8JFy8Nr
kApM77hwKAIy3Eib/5+NG5gJ77ZJbAGfboEOcjMlSxdBTme0LbLWMGO0M8naZYzrWNkmfd0E6uAh
MhvQb7fb03xKMGj/GLYrb6T4lMlpwqnHRCDE1T7CNxsPgmtXdAlMgai7STg3lapf/rdW6+aiZhH7
W0V3rgBU7/XBLvCdy0EkVgifdGpb/lWsNFvMRRAchUA6fwjwIIg9BFYZSbfMgUu/LrH3oC0E3DnH
rjGPyg9VE17bmFWr0Zn2iIhQ4dXdVEze2FaVPA45WPL9evtCaku/0G1NXmat/CngyMoNQMSrCcgM
KodxZP0oaChqMiowFtRdrYZoqw0st3K3NcfMFdjTWpaeWWEfsAHGSjxvyG/ghm14clxx3NxvW9yH
0KwMOSitaz0cK1Tdj+DxalVRC/oO7JDwHCbeEZvGEMoNRaNS4zO5AIApzrwYRLbWPYBIsKvLROed
UBGpQ1nPwYm/Wm1woD7Z0Kdw00RhHW2bYdGyI4MxkTjOnTP6HG61EUaGXbI2EhRqV0IjH6uW84NG
CtnQU2fvWZcTKxCC/Y0I0My9ECs+VIg5C5zkbDJ6+i4VLD/6f1ViH+ow1LyPuyKy6n1tzfFQSP5d
iCDcLeKptNF3QzdI/imiyOGbcJmO31jNVkQ0LTCQXxwjGM/+CVF2u8dmXg+D28YdF21cjzwk+BqH
QoFAaFHyZv+0uYFlrT+8eAzmwAnwSMJ2C7jkcUdaPGJhR6jsxvyOysP14VKWdaFz3HiaZZMGbFDf
93OJRHWZE/5iLgiULkNUJGqpwRJlVFxjT+4eQ5TkXIbO8EevRJbO6MCdW9mWzSYTKYrL50WIN8r4
8IULMfHJoHU2npAibPsjO+bci0F/jZ3nBjDbtQyqf2B1UMH4wpvy2dYv9DfkVZcrkCnlve5MabZD
LLWVmrJADsoyFxvrfqK/p7SjaiTjYL59Fafu5YpBpZIwakluXi6fagRm37Jy2FByd9iFUEp6VLxI
Wp+5VbK2GWBpBv+aZivUUhOS4uKrYcWRKH7fTPm5IZLf0GKPurrcQ7+UZBAKUWUEtFUp93fY4K+e
8CxoSjS9UPQVtkuiVmPm0z+FGSkuCxvkopQ31rMlOKHv9kVAmYTQO+pFxq/1/fvotDhdKwgo+GVu
2exERGc8cqT6D3wap5BXgNc4fN2ZGA0hb4L7FeVHkhOAyaqT1NwhEQid85G5JFz5qPJHPxYhxyDZ
u7itrU/8Doco7Gqrx8VN8P/1F4M3tIZatttjF2vTupRmOljfnGAJi4rgyuJN0pPM2I66L+j0MA/E
D4NzzYY5qWmweYy5C3z0XpzgiQJgpdXGHkr2J4MM3kEpv27rBbtrC/t5TOmo7V+2wsIOtXAv5xTQ
MSSBFZcjGnY3PeVlnaahX1YUJid5afRk27tSUyP5w2dtir14GG8kPPQzM0+ZJCHbCFldmW6iRZGk
uwX63SW6yeEqy4dchULXkeVCpQnJP6UtnJcWi9Hzd70dP4FG0pFWUbs2u5nU7ONnRgK3TARVWB2r
YRjrO+4YLpzdyHgAIdXJXEru6Ey+AMcVih9Lpxsl2nVxWBl2KTRg8EyPWM0zRC2dZfcuenWO5XCW
+Qr/B+GHB5mYHp0G7Z6A6h2F+NDSYmEM4ybaUnSO4gxD1wwSCcj3nHEp170d3M7O0ucWzJSWamZV
nU1v0WblhPl4ePPkBj5heBRXNZt4TZGpa3x1XQXigEQi9Jt6o6vRZVDAC/Sqet43PiB8X4eBsD5V
kZu4l0YPuvfWgWPrWqTOHvc0EVU3D+M5gC/AhQ/JSNIhk3ZEWTCurug0pp1kIunqwN8KNx5oUGvf
zLV0JVvmex//5bDgdu5h8tQiTAWUmZsrzA+5MBx+K9aeYIndpfR3hxjp+0DPMH3m4MzkPi2s1Dgm
iHIAmv1r4fhb5DtJ+vkcAkChcykK5EbD3D/MqlJtME1G+QxKSWhr7mWIihjyFmF+IV+mcosX7hcq
hcIyPSxzsXCFQL7GW6qXFhuCKsszwUrradUNnwEq8Tn5JT5eLAxrlcV691Xa2JDX/38PQu1rd4x0
/9ozTFuuFyITOZDIrCt60DSNI6oST+daHTtsv6mhMaS7jAkiNVCeU41TGPwNvjttW/0mFBkErfGH
uZo6PaVxm81MNrd8CW+ZYf85XJSnQtpA4oFlQwfBGIB0j/kRgiFaTFUNEKDPOL6/jOJVgVi++You
u4DKaa0FaqMJS/bz10uUQ26FZouG/fz9T/OvDoEvvr+PMxiLljRU4TTl5CwTY4z5dKeOhob7/tqg
etRm+D78rx3wwGEpLH6n8Rr/QxI9wFtR8bOIa+5vahFrxQdnJ/I3ReHSfsLqHXDYNXG2rT+Q16Kb
B0xeBcFpWQbiY8mzThhj+fcpszthkak1iurNkUe5jqMAf0nffNiTCHdF/zLl93nhKoPfuTM+C/Yp
ZDNjhR0lv6k3Li8tGzpAQJk7v7xbZjcqpobrX1D/yXLrDthcN1WKajUj0rXYETZszKuZedGDEbbB
CyyDCuYpN6o2ae5LUruvMYdPXWsWtnkz3yIxx/gBcxqXB5XYmONFn0gZSu6pw9bB1jCbobhrBfW5
2l0EwU28y9bYsenFZORAt41Y/n6d8QdT4FSrN3fjfhpyMNKo5d5mMMoqFpLJca2NtgeG0E2OVq+Y
OV4L81Zyy04c/BaoYc3+/AFO1s/Izba4b66b3lZPfFMs2t/o2VG/H4eBBz81+ViE/NQIP/16JYsl
yRkLJOveK3Cp3QQCmr2LZ6+lBO/dMWpQJ0qWS3AnE7Qj7tPmnRbVL6mkdudiKNkIAvGcxfHDZF4O
HKl8Iaxq/aYnnQ6d9usSGdruDQcIJTrE9ZbUFWrw5roq7wzIgwJ5ZQ+bTJoX5+vgFd2RFkRcRlu0
H1laAjBtygTc5FBA6g6ws5wiEwYcAl4D71utvi+q3hCSaKc3H++5T78eLN5gSYa1xhVX2NuoHxbg
tQyg9uw30fuTjd6I5gRvlE2Y/1i1hBWCIDVIHIlEWS4ui3LDh9ATDi39AFNNystDvqlDi1xtp9TH
/XtcE96kMFzFIEAsMstYEuasnkjc1vxE+XNsKMX4lrJUtrq8EdjnnLaZhNG6FliYb80A21XziJp8
MMYkDMJ/k+IQonlS7MCCl5IkB6bjxEJqSbygZWgSEFJHfi/r1jgwAbjmAGkCxCyGnb2n4YUaVDo+
cJPvOyo8Z/1cPFI25LLfdmQUI4iR0Izf6OdA52ktvd5cUc0SX9vYILTEiivWZ92KdH0RLNUGpN0l
S0EITpsYgvbH1ri17vVnB44PE0QuH6Qd4Uiqtao090EmxOp63T6EpsvvtNn5SYlPXW6CJ0t8rOMj
3QbbuOLb/Nf8zJ3jDC1ZnSkpbnnDKXIswK6/w1d97SM+Prj6rclky5EAoKkuSfxqdVPXAr0EML2Z
Af4n2IeIkJfU+0yv0Kn2fddHoqIfH5ls/s/WOJixJx5hUhcvFqrtMy/BrHDjVN8pnFFcjSUogPBT
KX011/fhuXUgJapiX1m4y4bP98KdGdY1FFpOMyOZlROFbfMvu2ftu4PVlj3KDIy6abAtbAqozajI
kSTDYdbn80EXayGW2l3y5WggeXyUh7LZVNQfO/B/VeS7GMnCqOpeK0mUO/1sH62KV78X3crgkUAo
z4hGbdvgm8Sw73Gy9cxdpM72F9s53B8er82UO/LHn6JVZ31V/QiogHUzTJPjYXKNS7yhS0V+zDpO
FtTRyxRSdnX/Gg493MQ3BUdHytY7pdWT+gM5MviNwCJD5yxPLnoSP4dn0dVSLoQZfKu6ALPB1Kpk
hoY+KiqLDZIqxzvuAOxndrucSH1SMO5NwK5/GttgnV5IfiGJFjRlUBOHAUxGGQnGO9+TRj47qj8Z
/dNKT+QHc2BLfMpTYwk6qwIwebGdjNQ5Q0rHZogiKGAzOIRJ6I2ZqIBH3WCBz4v0LFJ5Tw2/BJoT
ywvwIok2sI4DrSGZVcpUvc7+XgdGegcgmtsM4PO9Dv4pOXlWGzarQAq4o9oIXT6nMC9lksegsDG8
nN/18K6inkeODG/TWM6sWqOkbXlouVJ0YSZGWz4fpCEqhr1+bYH2gnlbmv1lSi5mnU+oH8b5vl4x
L6/IQ8fE8+Q5CaWL6ramIac6SwkYrud9qkn2uCK5NFeIf0GJCM5xOmDIJ24edBytF8mjfRsKl+Py
qvVNwWvm8B1ivvruHBirozo86CqGTK0g3yA3EteNtBEwqjXuctrJ8AFt9Z70cz0y3jE79Z4pDk4l
h3e3dDAJ4+1jCdSwVydB3G0iRTARupmapTMkNJndSS15pe773n0NFFM7SoujtEXugSyhDvvfcjcK
o596GjMBGIMP4wMWoDtsNS5sa5ZS6jOisJavM7AC2pTCYuAvld6o4nDsWmG88N9L4v8wbi7vADs2
25hmnhb0mh3iDoOk/ME9Xi4t4xSbGICE0T3IDI4Fo2Gc+Y4O0m3hQcdqzuk/4JlDMEOg6zRBahZc
L0rc+Z7Sf69KYc4V7PdWOIx0RPeJokSCbCfYDK5mQUil7AKZajcBzBnssSjD1i+41QVIyyBRkH+D
+kzqq4EyTHVMzrgja6GDEwOfKymndLBu8QtqOQs2RrOHw7Tep/KoW7lmHT5WgYR2H6krbVN/nYDV
3wzkqVVq0WewXFNr5C0huBhB9VIabuAX+Gqeilnm+80q2Yj1ko98WFSG6ECrSGigGdlt7vabJgik
2ie4fK4DVckkMsKfODzN3jiJDfjgGdAxJF+4WgAHsensNFroVTKkPI91w7SGJT6LAfcqPl6u/23V
hIj0pGVwavf4skEgJXV7hIA+EUbykv7TGplKGzMsUPHLAOMo/1FlICKPadu3psqjMAlgRIazG4aQ
8kKjF9VrVBgFJZtASt1bvoY3IExgI6Eebb34MgM+ilt5rfNSa+gzwp2KfBeupNCBYG6/0hRRRmjE
JMPKQdVWno1ZtnsQJ4GQqTKjlE3NXOVS0sYaYqNrNWiXPVNUhBm/mHi/sEO6q2covjeqbwY9WCTB
W/JsuymwIZr+VakawZ5jg73cFtvlDNZBq/dc5X3El0GC131iFOJ1fXF99zlmtO8ns5HEVZ31o3OK
CQqq1iIB3rCgX3taed/De/L7TyY3hfLsd1L/qXVS2kl1CfAlp4ryGWSeN89b0U0T17jvYpAojTXf
p54QkHjxg0usHRvO3nRGHdJ7lpsGMsdFiIyBmlBcUNinO7k/k1GLc8qBMbyp4ufuLdbTthgqCwES
FSh91tN417zRHXLUeIvGSJ8hhxSp5ry2okp8+qPxJKzowgjlXiA1Ru4SS7ZkowgTKR4LsN4CnVDr
twoIyk3ySU7vugaTUOnGBzZqOYpkLFR3H/0qFN3FC6ZQMpguLZzlU8RLhTsGWmYPXVGSKMfig7cY
EJPcEOU5j9AH21vrj8qfsnEURL9gBhImSL7JxTk3XovegW8AR65T24d6jLTKT/nxlxD0uZ7QLLwf
zgajpnz9XDBQMUIqLB4LkiUEusBVEt0DdmU8TmB7IPR29+/OZJKl3gRdODoUObC46soRYO+VcCn7
CcokkVdLi84xXuIUqblTc2G+mbuwk1PLgwJp9AoYjvkY+app8Q+9DQyRjJgQah4W2nUHIRffQo84
LrmtEb6qlbaZqTb78tItYFbqZTl2GFVlO0jq1LEJ90eltlxjElRLEKDnprzQ28Cz3wpoGhRALCuX
DSvovj0xYIpj2aMS6kngsXjdVPx4ZZCkyT7eV17jrziYSKsMAeRq6EDdR4TjBBiwnUAAPTdRZWql
s86PDKQw0kGCD9svt9G+oyKmOV98eaqwRfcui6WpTb5R9kNgigP/OCj8Ph8m1VWFzaqiBWcepLWt
ld9EwOENW7pW/57nEMumlTf4P7YRgXZPgBmU4TzQyJXYpKt0CN9iZsuzLO6zVOoLCggouee1lIBu
uwXW7WVoNoyDJPbtSjALrK1aeK9JAFJijseEbRtjOhN0EZJtZvtHKP46zjcPfVs3oRCZl/vWvIBz
Q7kSezIv2AOC9LSBGxUf2Ai1yxXCHHRRbclv7kE2Ym2PveE/87/7yOGd6F8efs3sh6PJPX/AKvmT
TmZrKhRiHh5v3HK7xlN7ouonsLgXws/J+TJUKM5P/YFMjKOo0P8oF/YEypmqJnXCBuP5s3ajPmwa
pV1bGuzG4HqDlLR3uAHbPnnO66fHHQvF065dZ7HKTobS0qQDqzkaJm6AZ2Dh44/KjUYuyHUFK5yu
UpiVnnyADxmVx+EMZrOkzIHr5lG604tLAWUMm+d2f41UADX7Hh96LL4/UOnFAGDHrNyGMpNARP/i
AWLXZmndHMVa+36JAxXm5r5gelrDQsaKzPKy+XM9HWqjjwpUZ/vWVt0U+hFeawfTw113w39Vf9ao
R1Tpe46tcIsIXLKptFyWA/OHHnHtKyFHinmXlWy4LAD7cljmHn1xQuLUYLyTHxZpJZKP83nk2eGK
8REg87wIfv9328Gk4zlLNAOBWY8r9Wb/lIOGoh5GbOloroXw/J89/kZop1paZ6WWaiA5Ev+PqNGD
jscaCws8mPFfUXdiA7lhjinRt9VqSOLhOBzkZdglq9ehkXvUQ8WWmJvUqEC5dyDPDgFgs8+T/KR1
6rM1T90EtrxCI2hmnLCbdJ8twPTpH6pckSm4EPzCoZchOx1XL5jmhRWVTmUERK0ZYYwhoQBQHtm5
AccxSb7nhi6wP2jHs5srGU83qYZQwPrHL6SgsWhqf2L3cHVUpGB9kD3ChCWY3GrlwIkaIWPIP5mH
Mj7XbfnIHEs6+L0apfvdY4zYjTyvrejSph1i4exQN8reyQkbU/MPzRq/flquOvk1gZMMLuO0RICm
g+MrclWxdC6kt6TOvHycSdrkqnYpTNBlkwQx0ZJqmcQA/Bj93RTFp9iue4BM+V7pqGqNXKR5ix0m
ODOTVK7iRA40I2MsgH0/DCBpVyzw+dbA2fa3sGZgV14kacOpPdO86xJBM6JsdAgm3hhOj5pCliFc
l51sgsEtx6dDsLsca7XdxCHsLGGrZlZ/OpGpDNgrYgy3/6g7PLB1ouLxsu5kyWma8853UgY4cfCH
3Bx6SbRPFRAFUsQYop6nv3e+EcicVNpQ2Z+Kon8D86mKEKALenDDwsJcrhHkNpPstQgm76zTOOFQ
M5h7EPXXvVH53z1xQnq7PQg2Nwe5dLUmBVjdr0aeAeOeQjUj1Jc91qWOUdTsWmGybm6BFuBzkTjo
+vBgZVKS0m0X2Wdazdoqgolu9UpdYMbsGmzRhL37BdbMvrsv9V73N2YXUR3d88ZWgKNSGaIg3rsY
FWZueXlliOrpYRtOhxEPwgUW+rwpijlzFzdh8RqABoR8GkQfOTvIfbXrM6vQsQOjV7h4WTVBaEzs
MkJYvGDw/9/uNuNpLSCLI1SYHUxs3W1zU3K0dlaDlxSneY7NxMCxU7FmiOjfO0VxZBkYBSD2npCH
IWJYM6mrqYiGsTEpMkd2Axj+jwZvKALMJiLRcz25dA4sizZWgkr/mKnGn6Tt4NzV25ZrbhmHyHMI
1WpiPGichk7j2OrhowLjd0Ey2VyeIoU4wKiZZPj8MbSoLnBgCt+kEK+FwjMpsi7WJpMRRSdfl08Q
kexDZzL+ul2A1CpbXIaWbrMjjXwj5fmPm1OKdhXIKwOZAN7ljokuxg/Qe0SdLkxeuHne6uOhUdCk
wtes3Cqauw8gRY4iUcq90GZK7o/1i+G7VJU4kfCXhLBInfbNdmbCDgTyvm2GXk7c7IQz5tX9HyR1
hsmKW8ezCA3RwT1RWFVdXdy6K+8z6iK+DYiytJ0YnWGLUxpu/J115hsNBPsYlx/DkEhnDbRK4m36
OVEpeVFkt4hgDh7/RCS9ArE6pHg0ciNvlyanulBzW61yv9nurEyTA2iTTg6FYiNCfZAy/0C7i/En
pJbpousAfWmIV3b9QHI7EQJodDbRhDrxOpQe1W56Q0ZtmxVaY1FqPU2BD/PRFKR6dNzqN62K9m7V
PAAjGxOxTdbRkIS56SmOOdvzuKOsFn8koduz6QrZ/DO42aKzyImkqnNvAWAf6lWye1IPVq6c61O/
TIpY9hTnB5tV39BDgU7eDp6izkd5HCcM0ZpMwyq1vy11cIHTmgaCL+pqU1lI+SOrUwNzOReNW8YJ
slwljXP/vGai1K0qnVqT5qrr1mIywUBFDek0k52BbT1oxlpRRdDjqa7lecynak7lF522eRNgMoY6
VzF2T0kvgrPh0AAyZLc46y1w9PyWNmgMLENdahzGLFuKHZ409kWaYRzRBa+xcoIiHDtXpysK4Akc
WBbu+bM6TkQodhGag3O1GceJTVmfuygZczVJjGVNHgtAuaMfAFcWfDxGzQ8mnjUkGVfviUa3skNQ
mCBKDtL2akVGIr31huP9XjDp/7B/5h/bTVUK3Aiz9t3W95YzmQPMbr8IfdY7jDOEzVwJQqDUXt9A
MQIVjZ6SateBDq/2iyQAbx09B/ooH13zmjLuEmHBr9FPjonB6KT8Q3kPfaHVQLT6U6GX6C1tl2+J
4sLIf1+VIgKgsFfEaIMN/kfG0bS8BDj9REMkCkzd+r/BbaWasj3DWJxSGY7pbS/ZlIrDlVIqlSih
rjwWpqJkPjIsfKHGuMD/Cfn7h+4xt/y+aCdrwGSpOQCcoXltrQgBDikQKRcYQWlckFcvt9HLiNTk
cf3uATrNIYsQ6Pgmf27V3mbLt2lockAZMPTUfgbcLFXSXMzIcFNfW1Rf+moHBBTb7VyIX44ejqp0
cxQ5ljcZ6D0rsspWr/A7l/biIO09dRWyjByMrAXyo0fcrWzhZOi10oCs2XeDfwiDmAXpb1ywMMgx
dgtaMwhWGKnh61SvRK0pYuqsazsJq0IA9QpSFDGZ6gphWcDyThLLMQz9YGrSXeqH1q9L4PtmdxVX
486Gs+xQtEGQANluYmIRIOuKB4Fyrza13sXHwuAoFvDp8GYLtbZXHj36W9Jt/uWyGx7OGZ0Erk8k
bfxV8IVTYHzZbudJMqCirh0rT/6sRxMj/LCtQehnEVL0RR0maO1k4XZUoxRDRwSsmiFkx6pDf0H9
tAALYOEXC3g1x0WwNBJhFo6JwVsEzObJuGGUfMUqUunsiyc8Fq201QMMO8Ok5g62vzJ5PfQGf2qu
xYB1nnWKu+mIz4nAET48bhsqwMKXbBnCOJQOQUUw0IUv6yyvQ54FawuqAzJfGcvghq3FXKWTbnWQ
i/eHkWbyljYXmhH3nwwu8V1W8WVXV+EoEurmfM8q9aS5ddl0spogYJ+ExfIHt77MpCoAg/NhMp/B
qwz7ovZ1nTU2NwEJmJeAWGxXtEHX3hDJsBCUeKCUiVtzmqJdIIRuSlAnHuI2V14rmfeC1Nqx2Nox
nDxreoIN6fcDyChyj1Uo7C73FwyXfkF7brxWdpGU1JdR0BW7PJfBF+/eiHmJFLppbnHIIo09FV7h
qOtUpjyaRcdncMBVSJ8Jzg1cYAf3e/xkxQBZAnFY/15PC6kzxN/HxpBrMVOATXMW6PstwmBGILaR
v/ESBwJBXlz3MBTPF+PM4AoZF6xdafNIowjiBkimE55goYWiTGJgpNm/4aaSxc1gjx274JbDzK/q
BuX6RS+2JrrQAryHqjwFLXtIf4sClvkmoZxyU3oIBhq68B6t61aDOhIUcDE7ELj/Ktg8IYFhYue8
Na2KTem1rWgKkMDUhDhFUQ9GUG1d0WZJ0fii1yD8Pj/nIAdIkxcb0H4YC+pedeBqaZpjLUt1feWb
+TRGlKLzwhBqrj5OB4P9AXgY3NZgkElQZUKmtfVgCGlZe1mJH7Vrzm6YflK8Oz6vqYgeQfP404uj
d4dzEEhmiSklt34Qku5fKotjzUHPO1ttP9k393Xq2l5wZXw5GPiLWrJIIhn095m9XUvUH4YrWXjv
BH6+KMAxTG20A2O8YLJK8GW4cFWyGXBgJJ6L3nBHYmpDsHiIEwiSPndCnwMCx+ZwKIO5JiUZLliY
JLf+qeZROFpH+un49/CW1o4UA2jXlRtOmUBnpohMBYpQnqw2EXPunmfLyUpKF7a3LFfwDRWY2WO7
ogZyM85xQFLBhf3BnQpPoyNKwimnCYYOP4WWdTVpG3+NcBgmON3tBK8hkfOV3gauHPLODoJdHDEj
zgwfP0Ff5h1+eiFUOvDR2CXWB61gBM4ioMf0/B+cRp5KeaXSQX7FdgU2iAYjflkIl5DDsqEbd+h8
7KLgC/ybiwTGuZlG2k4SlVtg9BOGekEFQAEaXg8wQMwg3vhGNevWp4/1ps5hG03uzVqw2MuqO3yU
MopS3XG7tm42dmGH5XJaWCCRv+6wMoyZBA6hDRi4w1yZYXnrw8Qq1a3BRBO5On1En2FRfJVArrtc
zeFw/TzVJkzSgAN/9m8DulTWl1R58VYLtZ+hJRvbwCZN8zEssVrRh4IxRr/WyZ+lT4i9UpYw07ZL
9Bon9xEOvleDB7ZQpYbqBm/M772b+IHr+u1zCHVdxnUzXKuSPPYrulWLpkJxRAkz6qR7EK0W0gQu
f+O/c2eahLEhUKLZNIQpFsq2L6sTv/5Tc9wsxLleCBzuh74hzpotQ1ded4unlO44zMeQowX+nJhH
AwvhbIXkhksMDSS20rF2aCRCTTdTmgF5LlEE447eiKt8iSiTKLEL0B1ItWMcROSdSENnLZZSK+cv
faW837S4sFWS7Ml3Esj8cZAyWt2PjjQmEkrBB7tTyLHIrx2Mb/csR04YmFucSUDnN9ReCKuweUzX
ze9vaomwW1PXicZ/u2TN7Q94DfOYGQV3xCcypu8eYe31/QX1Cj9/sTBvAGYSRVX+4NiNdRAEsgfe
m9q/B/47qps2wv1A3t9oxcYyAY6HmrZsLkfCyG9TtLS8DZJAN3IWkIHh9a+Zpa5eZhb7b0wsmRz8
k8ycxGV9GX6zEs6GCGRLeUTxIgDUTnhs5g7EHAwo8m2W0qv2IoKhxAlhloPB/sAnx74kNk/D9jal
py56ToWank4tKjmiCYOo49M5zI1Qdku/zS35VmbO4oL+XvRRc6L7/8upvYo4qBZzZqz4U55HVajZ
3MRIkjyzOu5/l1KKxhcqZFFXhQWoktd7K14jTT3+a5MTgsgvPnBnmsAmX5/OSm9fUjPNUNZCxxcy
SD5IFjdMzdjgw8wjGwAKpbWa+UFoJ0mB+bKsPWsvtJRds4G2e5L1d4h46Vdf1Jg8RA5XDwBhjQid
xje22sG0wzHxxTPejeBEOrJ8QXB3CAPWvU1AdVCdDxIYv8iux0iTPj1vPBf06s2yoZ3TEhgfnLB3
CjsEAJFGuFnChhzxccxR3ENecXmFiAW/7axtQjDzVfexPHhBj/WLDeqoEk3rZAAYRQBJOUVzoVX5
/fibAp1m09j+3ViiBtwmQtZX2whZSI7hWnbTmBVjDpIm+9fxnxlVWaaFmFOUjDG784fjCCrMd+A8
Z70cfmpB4COA9WMcS/uRKwN8F9SZk243zznlThzWZ6A0oHszWQNOje3+7T+8ZyPSAte16UTibWqm
QIvlq9lHZdF+ggv699kSp8HuYq98ajZaVMjdgL9gpgstcIQ+wnQikca5pK4Z0yESAT/+GJcz2wgY
zf0jTdbwPMWsp6HWYA/wbhq8q5gwiSrODmaA58vrvovAd0Duh7RJX+Us+VT1M4H6BirByKTmDEq+
v39GY2QxUTgLMbLrTHVw0in1JBzY9ZuPY7n4AC+8B/JhCRKGvleGUv3BJsIkE/4vw7UL3swLeCJo
uiS+KHyfgIPaWIWKnnXKBBoVlBFNT9Pn/hELlA5o3CaW31HMqX5x9CphP/NuV17uAnxystxUM2dl
Xy9thkXvBz8Oi3GJV8Z6Ywxp6zPXF0QyETWpCos6Vi6oqFhCwXej9rqznmB1zmVsPgoyDmzADyfq
Qrtff7T0vNRICM2DBAWk3Rz+PQ+hU5MtEetg3M4UirSzyhZipLWUrnVNhfDhandxb7yeN0BzekqK
s362CvJXOUSrTt6EavazHPbVyDGLkdBxWEYf7VN7u9FLrZwoTCAURL/zzoKt1tbyPZJ/8PVZiIk1
0fR+dE527DjNK0x7GOOSTPBfJt/xYtMUsvg9OWDt/X2Ay4Szp5zKq9pMTTNswnd0WAzKsr551I9C
robcQV1TVUndqNJBeZq0o3x1eFSGTVOmE/1a1M4H1g0Y451UnV/ftiKbyNkEcQRkGWZrdjCaSqlW
2fzCCtzHT3MefBgrVaKqZfhvztkjfzRtgQgugTq27BWzvl5fUSuplHFrgz26Twnmv5/bW5zYsvyX
EylI0VtN8AesvGpXLCAE+SSBa+rISK2WBnRKbtGxGSS7p/XFkSYiqOeh4KE0zzk+8voHRWQ3m/Kt
pEEVd5t8i+9ak5vhdYyLvM3D6sgZY4DI7jssoDNabd2VMKrObWzuvJSoyw9wmwgEssfb2eXFsqKg
yO5+peSkvC4TholpHzTVH0T0I9U4yrE2i/t+E0JRs6o2p1HQ3gP3KSTWnuh/cnsYVjJw2LDULtNs
kgo+rSZpA8JQAjDPRQnFNd6HmA3OnSx+DS6ASZ88yIEm210sacrjl1MnSMMWipCFtisZ88zI8tYU
x4K+WwkJ/hqi//9iC0TAEvOoeQWVaf57EeTaj8jEyd2LDh4/upuIUjN+WG8wCK4HEGUq4fUoXEuw
Sniq9wt2TGCtalV2KrUQLLJVbMjaR0+KushjbGCqEd9i+6/P/p4BhVpHPbWySEHN/G0JVJYdFt/w
gfZS4kiNSG9jgKoxR27KyiUyJYsTbi2gwooAaSDMcq7Euo9BunbZYoCE9Avqi+42D3dalkcP09bw
8eWzV8h8jT6JUfVGP+0RuhhpYgnumAhdBAUF7wJJBDyAKkiMVeU76LREWawqT1bnYSLfl35vH8KO
kN4ZL/IEisms00sMkeJ3nduG51/KohU6eRsCMDaQ6DEcpoTNFSq5xPTf+bQpKW/2uMNWGc4PHbdJ
HzIK0a5FjP6iZu0sSQ0cfIcHJ3zyAfyMRK2uRXVXZzeQJ+sBYWZmiFJTEt5m9RT9ct0Pjtx3gUP1
KIc3hSRfJOBu1KhxLQ3J5Bc4x6wQ1GF/XKFc0U1wOTjbafr7L/HofwHlNN9OqcxfGeoFVRSDH0gO
RD+vxalRhqHwOV0Nlee9xyrDseJnGh0DZ4y1dF6qRTyh5gfJKKwa+z5gYONktJCvTJno2oJO5H4W
06TuKp5LFYqG7Xt3T9UmtsfWCeLOZ4Z8Wy7/hBtLpckXHTI5ttbUNKyOSE+4wU0bfsmQWULaCnlR
pqI98hY9XkNLDQ4bCoTAxWYgG0vv3t9kwNDz+bvtNiETlY5GA0tYL/wBM4WkWpsXdx5tYosXBFj9
55sUV4KKLVZdlsKm7/fZDT+Q6PuBh8/Zt1XjY6PShlzpN/G4f/Mbel8RMooWuHk8alzFk+P5orkF
ydEcvYNghgM8iA9sfaBVz/ra41QPLStML1FLrfXs9aMnyzXGyvIVIbL7NQ/xDm7zDXR20Sj8bH+l
lfXsy4XJOZHslwGhepeaejomQ5aCC3UJCxcpqBGJclrl0scbdTPFpbGHBnV6MsYo0EFzHN7jdEek
cCvvKd6TFdCcpu1LYgf4Je6WvehSbbEbLy1JeXRLW2X4LQOohKQIRGQYxXb1SXQOnknY7o1BM9cp
s8ftOsUcQ/fyz4det24A8TSnJPMXnqzFwtnsRLyMzLyPwjVRZe/IMfQUxwe2lEmiH27yaOYmgd4o
sqFVbzflbLQUEvZxLVBxasVzkAZH5xl56L6rWcS8/ExkVUH77g/jBcLd+mFyvnrFz8o93w2yj41W
2eEtz23t1Vl2wbVcWi1sgn7yfypnCkVui2t94awsWy3b2ZABFKgtV5XMv7Ry+Q8n+/jie7+eWs8q
ETxcbNA9rJTX7iRwybKlcHSYn/55Y3uC0XhSrjpNT+AZeCU/zLfhASC7ayistPnNld0fcvqMDkvy
V2zjPDfT2Z8Ik1TbC8p4enFo7jE7j7I3dosZ7S4XTj9nvS1FXDrM/SEzdaP+zPUEUKHuwiuqz2Ku
wMCSEBCLFLV/wGWBPG+/7sefdI9wMxpnoAOmkLD/9/hkq9Av+kMmS4c6B7xcLKq9kbq84wNoB4se
pj2SeCOJjSwu5C+XgrowiJ7jy5pKs54mJ0GQpovFnpvoD19HV46D5sMvPt4GlizTASYeNs3gzK7y
vlcsj086FbXm2WjqmSbnmnkC7GMg83esozRBmKolGE4zfKrXl2PxZbM+0kCXhS8i8Q+vtbi1Xyl9
QOk8ZovoKe3NlfTBYR20CDA0PdmFvssmnEqD/YSyNM2Cvpklu5SBZYRH78hAXuvthE3DJdoddsD7
8XwInamtUfNmpeOJAe3WYRmXy5ER+3a6H+BjTY+7am5e9lV4NX0sXI4JJKC/VEVj4qP25Ry90YMs
5WwLzZxuv65SF+kS4nYPWe9TeUhf/ehMO14NuJWGnpBqd0ZEgTjQ1KsIHQ5LErLrDgKN1LxXfKXu
xaDOmhk9l+qUG1VyTpi3psZWbIcn1AjoB8mlFiF0p1zzqYlwSKC5iGMtvAlBrlbRK1gS7o2xVTVA
a5RrCWctMbL/MeObqM/ZzxIogve2jOBD1Zy9Tfg2aJTiGvk9NOivCMyGDXq6tM/emAWXM5zTkLy/
XubjM889ELw3NW6ivr46ct9N8mabfSdHM8GT2nfwZ8j2RHQx85kXL1YN/1pwbibHXah2cgvBJhsp
SgakGsmBCbSRZHjl4q31WXr/XPhrD+l6qi8klm20CtQaMi6mtmpyEkq0rOtZXQl/fGvnQhDzjXwg
StGme6LtFMlxhU0yqifgwol4BJiF80eZdZMByet4IB4L++ZmrVTpWvIjT9jH760r2GOXXAHGI5oc
RxkZC2fPWG/yOTqGLIG3sgVg7Sd4BAr+ONRgrzXG7mUtayYIrZ3mdIrU+rvdKuBgXhzCRvibddAH
zYNNIzuucvmd40Ymtz9pwQWMnJCw/atgQMylRBWEOiBCp51e4UA6f+E2kfRfBQXcn5isaxt1bcm2
hhNi/SQfPwtxMgGvMp2hDAfFMRrqKSjAoKrhfohMzWqg8BlLUF4Q9kywDKRevXHXYtRrr3myrXTm
Wx9Xpg61yCroV6kPSAuv1AexB6kSuZ1cXdL3gDuNwEDiP+WCc/pP9a8gXTXZMBUIDzZ4Q0A5CAck
wdtl5YPBLvw/UAnM54J++FA+z6oiBC3hFTU2bpGaNOQcVakgs0SUcAXzxyuyimLYpDs4TRw9XoWt
AbMGySpcJiOHMQOGtgHR2lyIvG3vLAJpv8hc8AJihpchIHH7RrJ9tNZ64UCnqW5/HjW3X95ECpjX
6cUoExPaf4bwd9TQEyTPINIyisHHvIJsensnM+XrdIogPDGJVIBlsd9pnPg+ABgP9zOFyWlayU5q
Kf2vjJEB8YDUqzGaDettOIqi4mZeM55xhcl80AP4M1oM4COorOesEhDoH53mypRU85+UDr4W/Uwo
DKmcVO4mN58Y03LWvcc7gMadeDIRfLWslaHGkF37VTL2xjw8me6GjPCT6+3I7iHXqtYJXBc5up3J
+Og8lvRICxOp1QpowMwhw++LBVC1qdGd8R99xWsoDLPnsOpADevLOpGL1eqlpickLbTzEAgMRATK
hwQOz6KfWgCeNiCExIQn5q1pZ3AcWnOekA9zwYLXewyiJj07Jgclse57OjwTmb+gsEoLYu9eLGbG
xaUDiO6g40LywTns7HBEv4iw2jRbOdUn/tIrTWhAqh6lArY2fnmVnJupzL/R0UoxEKa6w/3XzqXV
s/IcWCbZOsxU8zER4+l8F03pNJeWA4ChA/1k7V2UB/411unb50wgAGFsmkbOY2DX6wQ+NRHXYGkh
zr9ZYFzKCd51YmqJy7ia+tSUNKnt0kOV8kbyJFSAD3PKTajFkeSUL/+7UM2MOccjTLeU/bzwyJfc
f1oz+1OJPorMfv2mQM4ONXk0VKgS91bQqjUh//5GA33LloqH7Q2ImGtk+627OfC+D5Qns8q5hhV1
Erts5RGMseawr8I12NNEfIWfGuz8SgB+ozhwzgllTMJXAYeN/qUI1IsJU5c9OkeYJOvDFM5WPJva
P91ZpxnvNMNI2u3SZzA7XZyDYoDe1LuhOQbSknEUXCPAe3bDw8kf8LP/W6lImYnjaH7tFOw/6k3T
bm+Az47XKf1Vx3PyuK/gRf8Sp67wB05Y/ah4HMplYtmgWxpOtE6a/Wp8tgyb2MpIpZIud+nPZ3FQ
XcV74t7TiXMVwfojaOH8i0SFeFgwj/+FUBORG7TuHlK8toy5C5F1isn6aDVFsbU2lVoR8aYunp4g
UEl5q91jBN404Jsd2EdPJO535aTPrKqt1hqAaN2x6Ddlt40+s0BVSFHx+akdnZob0wd2FJz6zCSU
vBimJTApkmxPZ1AjUJnx00jQTx6EHX7QpzGhfKvQWKvc2Kt/HRrPTqVCccyAXGX601YwdOGdsYdp
zs6wQI64M7vqPpHDDB90RK0s/pnYRr7mjzppYGJe5Zt+ixjrjc9pzyhzd8v7NNwVeL4ANOe2Rzn7
nE+GiCZs1d6Y9sWyaDss04GFHBwDwU6Lk8xpAekyBKEKIEPHQ6v7ObdeoWKzj0Qx5U5DIfLY5cSo
7Pguasc0pmRSiLqg0H4/81QXvq09VB2vuLADc46Sm17XlsiueHC00qpeqmEKJn0c1skn0GlxaALq
9mSbn9Zdxj7qsZXzj7KP2G6lwrqUGx/u6ie7dqj3wtf3SBLH/qNepWMHgGiVSugaqJ/R+ntVucst
THLdWk+3oLF2TCkdTn7vpbEftZd+Q6GlsXdt8aWZWu91ikQ15v5F7cXI5GIkZBhGywImyMlagsg5
zVFzu1wORIBmT3HadfRfJ1eugUHABVuZzOHhvou5bzcoljzMFt2uYVGPPiq42tAjgL9zZUJ1nWEy
b/2a/0SFhvn46qs46SNOpitU12vD3EYHAQhLapdzccuSYqfWMeW/q0Sq+Jygl66/u8X7rMepvLeI
7P34c7elhbVl9h8DUQRSWHFrekYBDJrloxRn1dl+YVbfKj7T9lG8L/spmPMPsuipG+qExWfRsngk
oiinruygqtRWjLI5FQB0g7HVsLrXsGPoWLDOWI6oVjJtwPrMSOCJjaVpNSDB7qypDoC0VUY8lmB4
dkyfnHeqWDKVV0lN1/7RnSw64tb/tyYiI39IHXDL43/feH0dPPnDKkQDGP0B188gn/qOFrG/M5Gi
RZ50d3wC4zTCW7bxuEQbLnlJhocbxgi4UVIxHdI7k3VY6fzATI/xtCwUaBI1qcgep3NLULGbqI5T
6tsq8e6Fal71TjQOBTDDB+bi+WAzkNPyhuV+9jKbBgaNgJrwOU+UY4ioMN9h45K+3/Ao86V7E0ir
eLMKjAv3AzmgwBj3bVKwSWtn3Zs6uY0VyGe/8eJkPzdkp60DLZ8D4e2dLMf3dx0aXWm0PPrZnaLT
RDPewfJeDEP/swVB0y7vxKoRpFCs0Ah8Xu9dJnvlmfV131yr8xh1UUCQA1Nd0tIMY2wjasmwTT9y
n231SrTb/EQm/TirN9m2AwYw7CWrFY+tigpeqdkTo8fWC0STyB4HUUeoZkPk98Z3RtQg3oBinT2T
R+mfbFoSSWGhobzkrqeG04ao2imethl/GXcwyizGNSTjYwLarccYDyc14Np8MZPH0F9XvsIBwXCv
zasnpsyUrWsB7PMGfivL3wl43rxCR2PcMClSbSnOIA4fu5NgBCEeTntVpiMl4AUyvCJ+R811ArPN
+tjtORZUM+pqxrxT4QH6XmLsMHbNi+j4ph22k244tq5gchT1yc8x7Aih83W72fqqctJ+CADUiXva
OrHoJSDW+yIpQczUL+gsxS0TDQAS0jDdd4aYo5yGyLwHDewgVjRBtNAovRhOy0htj8tBN39E/CBZ
bapN3sHv4y1rgDOZtsZnNem7n3xvMk2SKXSzGFD3OOUTJVgg4QAzAtKgGI5vRn9PYExgBFzJmpaS
a8wtgYAIIzywqouvQH3IeNITOCknmS9mnhThl9A0jThpqxAdD4JdWuDefE290a5d62bol2tg7UaQ
5rFQDr2v10uzkx6DobRq5OUAwoa1dz3vKGR0CWV5uUWW6+Rij9764RdWOd7eXkWYM15QfeGUEafJ
N9bi2jJDwnlzQhWQYTR6t2tSR5Dr+L7ErlRD+H1PVzH14bQ0GjOzfEq1XhylGhLsVr+nESr3orVI
Df19fQ/YHp5HPentTo4D13HlMBYoQPEzm1k6Yg/1lscryp49sTsY27VSmLDwwwOtgUae35Oeg1n6
Fi1oGE3sHzHoDMSF7yZGUk79jZ96T42Zqqy6wuTrrfv8+RqH3RTDwolo3T2bN81Pz2o+hSKZOqo5
gOsA9lBfy8ZOXc88WjCkslceO6m6XO50GzQ8gfjW+L2V/RbOI+aCI+lPRC4xP74M361cOOeS7hhn
eKXieMgeHqDGP+cm0moROQWHHlKZmcHjDaLf+0YAEfGuHCvLt9M/oPzKidfDlTiob/E2ryD04PQ5
/om+HRjX+et/780l0iFj6YEItAoEU28rSTNAtiA8o5zx6wDsGaw3iYCHMwbuMupYIKWVr7fDs/nt
mOkfqeOtQeRGkd3Fi0DnqHOBQCcyDWaCB0qDnGDev7s7oqYUAX1lNlRApIKEAwBZgOwpdIAMC9Ae
jc+J8jrCmn4TaStm5O4kGslB5f4odoH0jTmQF+wnwCMSTKw8zFm6Ei4/UL1K3cLwVqNK9HrUnLG3
+kzFrGVMAmUthPSMZIOLKlCbwm6XyydwdhyvJiiKEGFyIjaQKuhLQrX9nUdn3hkLoEtH4FQ2Ctta
QKPGnmiI6sAYTC/kAdceAAR7kcevCPBTS4uoTw88EemRZCpkvfuctoBTptt9+IBwZI2OUadzncMG
STzRO9yFKYlUgEJG2YYAHtSPxwYiKtx7v1QGReej3rv+7dKQ480J+sEsO4VxXJEH4ROlmMPa1D25
hMa2kQTFxFHPNG4R6MDdIXv8Zk/sj48kUgPGK6O30IeViE/nWcw+6BqoH2MGcFEtMKdH9ruN01vH
XXglI5qwcCgNmAFCMUCUc1arHQEC8MMEyssrdU5A1yK+9Uz7BY0K3i9L6SS3PNoiBJ2gxw0lQAmG
t6huRLgThB+YoOgNBtDljcdSyatlJOKikpuNPvDzSmmw2XKgkNFN0JMGX8vXY6FH+xRX3+ged9JI
51XAetr8tuFk6nV996wynemg4BeRu+mX13VIuZbYLvU4494O/eo+EYQmTeEM91TYdCZyZ/NNgN7n
bui6ZyHC6fgJSZiHqNprVdl5Z8980WuPmyHxepA7JgF/sAzXimDlfxKkbYIN0VwOVakbGWB62wzx
fXmZJqTgae2oQ6tT21VBn3BA0EOuyUek9FYFsgxPLgKSjRg8QAJloY2vCQbwb4jnJ+HYmSp1LBMa
Fy1iQ7G2L7ZHorwl78gsjMuS0sBDZ6dF0likJt9RdsMF7gQKkVMpl1DKaontt9QAzt22idSYynnx
jKECUE2tGdK8Cgx7W29rBI9FA/CciG0M6N6idAHn8lesLPyWLlyKkGGDU6T/8snyy01hn+wi+vRN
8yKfgLK/4PurdJ0AgP58nE9ybu2ZB01Gmij1SXNx+5o4QG3eTwhNaW4+0YJsvu40fMnW87GlIMWO
jsfoQbqm65EEwX+IXG3E1Powni6cFeaR3GSzSwrNStCvoQmjdV4JdV9U9V1u9awGlPo7TJUx8RSi
JgIPkAd094EUylS4aPoyjS1Re1r1TabU0xnVExYRUgOvdMZi5VnoPPC5zlklJ0HrCsmN7eWY2vRJ
7Z1Fb3Pgo5d8G3CsnesQCI/E1iJ4o2xU8uWAUl+jdtCWYe1MzhMDeRfOMzWQ5K2Shcry7hOi6TKJ
yC5t1XNldZ6MWjlBoLuspOh9nX7LftkOpIWnOZcw/fIQcYSVePrF+RfyrAkKXzGFi1WtPWwckSLX
rei60iISoRlg5vKQW3b0psRkfq+Oq1ncPW+zqD2U33eS2om8ItaSGYIRTtp648dpp4tt880BaUZQ
h5M971o8b3hAshjgBX4hLPGDO+SZZff7dSA8h1AoV8OS47lC01DB/gmYJ5k7YN0wAZbuzzbrycoY
q/khV+tWNblNq4urlntrCpQuaD0drXn5bPYthwT6t9ibow9nRGLcFSshBd2Yb4CAbW39v1egrv0F
yNqe4t6KAIjMU0lW6HKfZY65uj7kG2PgajZM25DiSQeIxEfhP4ulAG3jL7kk089vfqarSFfPAOqD
TZaDm6pKFCGxzcCxRB/Ao/ATnKhHYP6zdVzO6eCJIE9Cj9eQhX3zXEfsqu6+ddXvmWq8Ks/jwkwC
XYCjsLLq8lgQXYt8gSkEOhsyNSVJ3Ov48iL/faY33xpqL4NEAFmYEoAiWEwCcBqUistQ23L9h/du
/eOpx6eAYFA6NbuwR9Ou8yYV+CSDRJrG0NIh0/cHDIyAlwXPlsCADLxsdsal/1VrdqZuGvDN+1Yb
doQl5uq91M51B+JolkdTt5QZWccWG/GEY5gB3jdSU5RhudvxSnmg+7kmU54Uani1RIEdkSXs9INg
7mbxGb5X2fGfH4Um8C7B8fWK/CUsnGX15tvpogljESPZUE4ImD19Jz9NAh1CH38hwOo2QMkFUCP6
qRd5eYkSmn7ASTzWUH9fi9R3i4QdhzjZtYOt7HRrH2AvTSCQSPP1aCKttefRwRldvW9C8+GCI5ts
eDF//hzZdgE0zl391hwyOn4FrKgXmPB9p/l0iuWK1Lt+uB8/qi8XYJiDwugh6DnbISQD0B53Btri
s7xGEzPvM8nR0TUkyHXKCOIZfyVaIClXw/z5vH3YlwOquv6V84siSiJlngY8GYYlnMgeBgxKnJwT
dS9inoAgJj4GwMXaz2nweuHROAS+DECpa/ts+E4UybMG3DStcf2QVQngPcDVNcpJxOnZRU9i6p2h
EMAwhuqnPOE6hOaHfSWeGdkn54bZ2jENpdSDpAg8px/OQoWnO/1MHAm9HisR+SCqK/l/YArMmRM1
ExCAHHLo9aHtQjVOjMKZUo8670laPjqqoJyzGqKa3yKRJ/WW70yKCSYUKeKIK6OcbsRJohMGhLAv
rOdrrLNNWZvaJ+rc9zIN2X1SzUPwotfrPVR2JtG/fI3hx+GLMI1Zb64DRO5OHDTN/5Ylgu09QqYV
P9mp2WUq0sayIhiE4oDdgUWnXpuA/9+1zBbK2ibCr+TRgfb+Kvg1VrU6Lwt/X21AWgfGW/usaAT+
W3Z1/zVr4yjGw7jKgwXbvjonV/C1bEqr9Y/DTivEYvjINR8aQYU6+HpNhxHWwqbKkZBm/kslXhGu
3B2MF7EMkUBMoMncau7pYCvuwhdujRYXmepQBsAhSkHdrgH7G5oJHwSAGLTOvEA8dEvsycqyG+wt
7kwvFO9SzTGyrka7bdsu89/C+SJ7cLOIX+2DX9jUV+tbBDjJ/FVHeZthbj5u0erRP6YJzUhVpcId
0O6rDtvFi/hVc3YAb9DtnTo0JNC2YRn2g0kajKtW/2VD2M6/uxDdS+eOcn87LPBYK3fUCfU32A9p
bjRHiMsY2ZnPv0KAouwnphEnKi2sPa3o1NZhDFK8ATIUYhPf4TL29rRpdhrn4YVyVZ4ldPPbvMfn
E2rFEbaAUiMOT3BnjxK9xWDbkLbikWe/9mDDkvrX80A0xsmT9E4Eg2r0K1JZtMz0cjIUKQ41GyNE
xar/FrNBVDn0TOPhSR2AGcBL3md5KLvRna1fgB8DhcC8k9V7PmVM3MXdshtjp0HRFHB2/tNccf/d
8GZNyD7fh5NbYMtGw94FiNDK3Gd0jooX6rpY3e0s3wnAVjDnEEf/fiZoKvnSw0o2gZMaNBNZb5SF
bO1rpxRYQekf+ahoyarR3G3RuKzuP3OX8H/tZH01xlPxm9bozL3z5zOAUYSIH1HPprNg0b274eR8
5MENWvb+m686TG19NFPCJNj+GpBU3Ak9Mblz9rTMDgSGZmvyrwg4y92M08qJU+h3b7Y9VYvPChfo
5vHQg+EPXLF8uMUvW7cIXd88gdLOYrSUk7i1UuWcvm7iIPE0iV6WaRKSJTm2c0MMr6fatMN0V2lS
Ct5+lRKlutuXv0y7gzxKCRwwm93XHEmH5IYTAgUEkJLdPptS3PZ0mUWk+D5WJyO7AFbgMn8mxJqo
EIj3hNHDcYfyXI1wxxr3bYbbV8LdTgRIskbnADomFA1acoOEMpfVL3ZP7HY98Xub2bwKXRM/NLiE
sovLSzoRApxeVzGEW+t27FEef3N9c0DNc4wOOhnfhfJZ1QgruGOb4VCj1RqibkzvLTcmiMr07ojk
QRxxpNehGPWPXzdlkMUvJRPf7sd12xJfky1+9GD9YwEYpjFtJ6wkLz56RWJxl1jqpDq/22/BH+Mb
roiQuWXOKy6MBU5tUoUVoREnYa4zy5Jx8OkC6uaW2vzD/oTe8oXMOu2Shb0RyfiO9SXGwiGahz1S
T6uAEfUhKxWlVkYClnS4WKDLm+lTfbSo+BcjyhFXd16boslQnYw6CUgn8SLWPZBV1MYn5Sea9/yZ
+BRMOgta19XEQeZ/6XdG5khNu8KBS/Ho++hTssRl/Lm7e4EagS4NhW7+UmCF1BZjrAqzxoYHVYWy
wa4MBVGQPuoxC/ncK/WVCmf6YoPPHUGvNnpoDoPglwFGr3Qnyx82nGVYA9Wid3SViOkl8UY/JmpZ
ofKVUGDFq/Lx73ty/TTZvnDH9XEXNQvtLvcZQ785hPJFQoeL0yef3leMoqQCDPBxWecfZXT+G/XX
N2QPU+y2pM5T1kVtRyVDvXHaG6u9Sfkbdwq70x98SalmfB6PGNZTpi7RRFS0WfrYsHuOrb0X2SRN
aG1CE0fAQJ7oTdCuTUMyiqt943/S6reTs1RSAWCmXjEdUk+vdTc5plgfG5t4+jPaXNxpmggf64i0
ernbeT6u8GY8UgSUyH+u0nOlYAcBlnBIi6znnZWmimkcUgp1xw3ppA+H31tbK8gYg90tHNdOL5Vv
u0GSh2EmNQr3CiJTEeLk3YlGfGYff79Sh7+Lu9mvpYGuqatEDqhXx+A1pZ0gK7G2z+Fi+Jlj+mr1
cCwRqK4wzTSfEvfVAEu5xfN8zSCMe0t3C3TXi5SEHxT3wnm7TufbH/GqplaYMLXmlPW+/auHyvcy
jAQ28KL/amS5H1uLrMvuoUhhpvc/IK//i+KYXWLOCkj8K3swrTWcYmO+1MzWi28Q4GIxBFyFexiU
xtnM97RAhK8WvHxuAnwKxr0L6NXu1FOHNLDf2qBwQwOfhiaoIMQpdtJZoDeivqIplZ9QRIJeY2XH
nAoEs5pQS7PCCZJqzi2f0WeyRN3bjIzIyQ7dbbIhC/BLDGoQQ28TyaimATcVHSYwHRZMS1GHPyQZ
kNDtDHzwrUYcFUZwxRFghtu95r4tF9yt3KO3ZtvO2ENNBhwoEtt1dyj+jVO6YMtkdmpviKE//Tuf
XyU9127p5/m3nyIc5s6YtUlIOMa6Iz1JBut1gucSCCLRqDvDdj4CXcm5+w3cuKmRjp6/QcFJzyTC
K/mRVyTfpNZA4ASMpWRbZgCtjjuZT6/+cr9+oYSIikS+hsocGY4LT3ecOoMpcts/SX4w3LB8388E
gwxlJeyd2hG4O55QOsQuWHLuNoiq+WWJl0Tk3TJgQVF0PP+nyFi8sYVn4JLkFVXVk+9XlJ/laDSn
um/8h9QXoiJ4Z1HGhJl6mz+YrxsmjYkv+50VOr/PViRaj+ntUgac/fnDg1IbxNWm5FZKp9VXjhce
YcxF58P/FaNXQGelk1PjWnAGSg95IQ4lhgP3kTv0GQrynzZMiX//Ty2CMGU++/SUH92exjwrmKs3
9m39LBgvkkHP0NsO0FoYAqfzacyzGRCSLowyBRDoPiSHDolw/o6Hlo6iaAs2lTAS0NC2KdWkqczu
FTDHB42EqcW5/06rI3pu1qG1fOrvup03HulN1sONMb/JBCioQBxGpE5ZAQxQUuFtpQ4FRsRT7v8m
oXqBdID7vbIXRmOK6BOqV1inT1S4KFWTTR4N37gG2DacKgtSWF1Iq2rZ1uVhaVU6vSPextevqjXe
Capt7E/EbJFYUeXXu749Qj2j8poEIWbK/QvlO8nr2Iaa/pQFRPOllE0yE28kg2BEHDqBZQLmtmTh
n2rJ8AQCatY2rPOlqv7K0jzEh/ObQ98yAOvkviLVn7JgvLUtk2iQa7itOeAekvC+Wvmde5Ddh0kS
+y+cBUamuS915VI+dWmMdWua807P0C7kk7V7xoje3vtmJwJJbUGRzq2yISKC7mLb51QiLVr/kib0
GrA29y7/kJQWSYKpAkGNx/gOsmCfHTz7h8Vm3JKMVKD9vUXLou3biqrcqjEKb07/atVM1UXodLTN
LofqvHS+jrAfdKBC83XX0XxIfJqdwIBJ8tA5RwjcUbGV4r8R0ZIk2yzv4fYB4nBMciDSq6LECvKc
GU8krIPwgeAU3/jt2zaV3rt5AEz+YKUAt5/Y43LKU02JRD618aRgWRDZInSAtj6tL8aNLzTnPkaB
NkvUD3uHae6y0dol4DNOQGGI2ps0w0R6zn0iUhn2tqJQMpfJMWMzHKzcT8nrshYFtq5xN64I0inK
jc/VIXHvjjWabpu7mHNGOrpxburJzJ/TJ25VmA6kEfwE9kJwnHBC94EaBN1V7uhFz5gyEh846Vqb
88k6EFlbOF/xqJ4rhPj6xmgJvJoO/aRG0xJEkfXYVDsoutGBDipaqk+6cb3YP0iX7BdSMS6d6pBI
FWYMhnwo8HAqRXkPFCkNbP0VfrsbV2mLTInjAqMsdZCx2njCz88Ag59Dslu4ITGzRkxtN2AG50UO
M9sx4OR7Kw6Lg7+C/UuIJLX4xmMNlyaIK+4jxeahPKbT/fRXoP71gRDxJHUHobB5ddDBPil/rtRy
ElFlSxpEtAs9uuusP5+mO3B3ojo8ffI2128y0nlZSuAQ08mhqhEMe2H6o49ObIaV96rkYcPoV0E9
LhSIFo5ShNzvPIcfhQ+gDofHP9Nz9/fRc9sI60uNoMxLW3+56okWZIlHSqyGCjfE7cybCwPZdylL
JAkjl/TfT8v+ri2eS/i3xa9zh6POCXboC53zOWcAF93VnnPcssWZj2GD/5fKITE2fBVCsWaZtneQ
dosXS6c8QX5adm79J61uXscffarzyVYasBYAqwXJtI+uHrOGVABuchW49hUDlrJZ2M915efZOaE9
2mc2pRGMV6+Kgo0mcPuMT9ITjaikDQBEKvmHMfbPu121AcPn7XE/DjLQlj29V63gjSONBdx40oyP
GKKd+ZfDo8ViezG914IunHBK9Leh0rYBTGAhSa9I1yjMft9OvDrcnhTmnQQqqP9Jp0aNHo9cwyyb
4zNjjhjfWQVup23AH16wcLWt9J7CzKklQqovCGm6VQY4P09L2246f9qtzZhTm+LOOCg6FdsnU9My
4THtfXTtRkHq6bwMhj1Wp2sq9mMWyt5cHpJfz7Vkit931P96+5YuiJ+FjZRqeLLpJEZBnMr53KJF
a4P/VjYj0B2A67Py6z+2TPb0/ucgzJpFe2keeFiW0/rjZJl/W8/fVKYIXh94rCpAXvT5BEtWmVH1
wk+QZXsLtxMf8AaXhxnCbrT0fb2N+tiBP+F6+Xw5+VjguKhbTtUrOyqyQZSB4iGdXruh4AUb/iwU
ZUOCPfwK36zzQmNUe3LqEiHSQJe6IGrBKz0Q3kXDzZHnmP2ktkeJEjWtXTHhYfBtPsFOif1gsP2X
xOa9IeuyTZEdBNneuQ/YEDF9iMiT+IwUWOQLUmtn73PcP8QjpHo3BGgXJgce+ENQ64x5+fjo2jLW
gfZfZmca+ETyFCN4iFURX+4Y4uHRgkPA/X5fR1esb/45BlVrHjxbhIY10xdkcr2Gwr723SRyooVg
YW0qKz008ZyMN4ArLAIh2gfvo2DnAOB6PzkUDicMNym+c+mmbjUevX0XqdDOoZJJJe7c2wM4zsHw
0b020vY8qyFSd+wkzRpUEg5twQqslgGZA4Vpt96QyCoU6+NPUg1geTVpsqwrmDn1yjw+iucjA1JQ
4i0YOARVeDyxCfoNm63K4URmAKcmZx/2vsMVp2db+ELWNLRC6yLoRiTFVDPM3rHvPQVWvnBrtTJ6
rAL0mh+BokvXk2pmvgE8vQqSzcLa8KhIgNA42kK5AD7DSOgOx3XcfTgTJZroZDtxy1oU/0fbgLJx
h8PG/zsDpldz3tkLBTB0AZhOx40OF9Kzd6kZX1ZeQiBvOvw1sVFJbt7mpnz2lW7QLipASBraZhJH
u7M+WFUq2D7bk0wkxVe3J9JMSBdIGvhZusVvX3IQK0mMUTFN+BsoFKw/X1RDlFFSTqXjGOoRGvrm
JQDSXvupcx3BbUnBrujM5n6f36f0UzssXg8tTej3ucAk3UqpVZi74OI5KY/MX7qeidU0VaVxMCrC
0m6C9Qj0b3C6rlCYH4yQjq2k0yt5UEb4I/zZiZ1C8SMg4R8d54CI97dzUMCBquai8eEl1oCJNjR4
TLl+kTJSYSishSuts7XuqzFo6ZKbEEdr0onnAOM+ndv4x1oEoAWgUZphSfdfW2HKbivJyRCjsOp3
NOAb1R5SOMnF3Nyrx4zzmOoCwFilPSsfElnFmScSWqK2+kTsFvv0Mjh2xlWQtiaZdyCHL0xwSjRb
vzZaelmh1V3hFYOVJoNJpAK0n/EY+eQXLoW1zNYAvcvaXhacXGIXyvDraSpr9eMZist9nUmwrV5r
hyd/E4LpP39INZInsBaD1huZpw3P4A93McB4EqyKRgYCZCqPDDDMAouAaYyBZhBIqB/uP/jCqpv2
XWXWE2NWJGNNh/1wNqB5B66E7w4j0WIUGl9V/ns4v7mQE1d1ZHuz5oBIi2JenWJSbkWh6X7IxDHM
N/4dVUUSg24pkqMllE6EbJvrARldvdyPyuDyvGJOWFhV+LegbYOAeNiHNWCyB6G564jfHSMtOINq
L4Ix3oJEy4d4nSgWNfA93yXsOsyRxM/0/7cXXZCZnIIW8ALlhpJR8XKyCoAczBuPRmO8Dfd2vNWL
r80rq365gapItABvGqs0MThP91Ca0bZkBy5D1HyHxpulegpTJNnuQDxmOFOdXguTmlWYev6QkQMA
gFfJDmHTuZH17fJum7TtRlOeh24VlzPSAtEHfYC0p22bf+EJbEdt7kw2ZyFsfwmP3X9laa0M5WBQ
IyncKhbmLRCssWNl865Y4OIDzTLXX0O7yXXC9IKwu7sAYbwWjedVoD6CceCnjK2oEWLeK4dtSxt8
rkN5QOpVPzFcGoyjMhOSwEVZJZZPSAwCG0Kyzaiyb6m+ApBoFT9gPgaqsY0jPU/gOqWTr77+4oPt
rjPZyZALyxrXMjNU/j66Wh9Y+FvzGobcwVCQmse87b9Ygu8FBNB60YDOklK/QS1ac+sWX44wWSUK
YOcf/gs9JP7G9FXiOQ+rNtxFmoeRftYJGzmT6XbTUpH85vqPldmAF4hOEGoDLJyT0spaOdngOble
BuQplI8JXQgc6G1oI74NNOytGCoI9q+m1bQdgs/RZ287+4Oy5rASFjBBwOtvkLR+CeKhWypijryy
udETokrajuX8+stdu2S+ep69htuuqBsShDemVRVeu4LVj0hYyUzeONkctmlXNR1mfUmYjGMvc3Za
kQRGu2kJEKmUaX+y9V86/+xeaBNZLjNxgUGFEZtJavissI0ffq/PvtZpLXDAZCXxh9VjtBXBZDot
WfYT/SuUYzgywnx+7Tm407K2jlOnrGX0Gg5PlST2OYrvQxS5Ya33dq5ggbz7ateaGku9jSNxuKmF
CGC5n6CEHsWFQYw8wDNH3bko+kptVSQcZ8Rq8cDA+eJrf6qrlfJY8i5E4t9md2pF3JK7AjolPWP6
b7ogPYwX5zosPVAKznLyzMA7aZVuEPv8EE4GtC0ACQifh4XvVQ5v/vDSanf6TzAiNAEB+PcceLBo
3bQ0GlVZCyF/cvyoEF/cWrWZWzSJRf0c9AdN9wcApu/P/UHC5ZJIS8PY0my7qmAagBf/xaptWsXm
cKW5Wp7CjnCRTSmfvVMA5jVd77ZzoOEUe0NHxPAtYJWds/t5K9pW8tCXBGZ6P6/tvMFxQtOlaS0l
zjCYzc0ia/Ckzn+gmorKSr229BbsBJ2YCBkGGgs5KJXoPwUjgHrzWXnRs7hckWF/IWGz/29JnIyz
GIGpSrRiBsr/dW8hSQ18sAFdwnexWIsQfL/vF5eEbZS0hZ+UePWr0wB+Jv0OODuV2joNYQVvuffk
NS3bFpOZpexU2XxU5aFLOnOf8DezBdeOhdzYMWDNTI5RdaCSucP0dKiAKpPZoMQ+7RPK1b2+cOMN
Up/b8R0XREdQLR02usjDZC/0UfsIdxbHo7QBHoWiXpq54Nes2noKoNY6RuBAHGtXYdQLBPmABCn4
goQz/VNIngsMyLCpbH1A0/ha6XW8xUf80AgGqmJ05EElv95WBoASDCbBp6ui6p9O1PUFXXDbIDh6
ZP+VhElCW9TjsObjlCcpBjZ4im7yNQ/8OPLpYxfy/6uZE3b641F3SZOEWZtCH5N7uxHdEof+NPYG
nLSfMKBldVAoL7ocabvuoHVgtyk/LXm+vPHxyW6EKgyG5sNVWZ2ap31fNHWvXMwdx4+q1f45BgCi
p7iEUKe8IUogT1N9xARbmsgsVfks4NTWRQ2pfusVXbx4IbO6EbxVWp1O8mfYUzn+PENtyYFkzrzT
Qtm6GjDtKyubl4/0XDsuoSsLDZ4HqKTkLhuqD9r7WDmp2v+GdHxyCeyHJN4VhLFw7NtsvcOSce7m
RbdVp2HfFzv9j3HIvvuLplwlwJoxYl35R5yPzxLAplHp6qVXWTVpuMQWPRt66o+hUHvhLH2dshfU
7bInYA/mU1dNyzOCBS38Xah2HHqi9DYzk84TZkKXTg07TtQi8zHjdb+33s+46YkroPj+akvbbZOf
/Upi9o/RTKsTxGZdVSj+w4fR/mlBUtiw8BO/ljFQ2ISeRA0E5LWoLK58sIjodbqDJWAWmemAvTx6
KJ1kC7GR8koBFxoh+1LHpeju3UDHAtwGDN1H+ySWA7O/Y0QOqE6DFqPg6omiDuHZ4Yx/8IAqFBq5
UXwTn0YdyLKnuaKzKIF3PF6oa8N+QYmebSPiIvukfYiym/JNix4K84IKournxYP8Rjwk+zlIP5iB
leBGzRkU+DcESpNsAni2+JD7LozUMjWzcmPtU3M/oAjKnPZ7mUVvBRCs+wjNewGSrHVnkRT8GcwJ
s56JURtLDh0Nsj901myN2sFSwAcngysOnb2172H859CI+BflVTp7SITeM88vmKeWiVgTpN6ZhHN7
E2Bs/OhfTsLqKASwASj83uC77DTvGBqIsfaA4u8x/t8FNo/tMQB/0jd978Iw9MLzBIKwSXgSF6aC
Y8TeWPG+WVMT06X0BqYVRRZeEpfdS8rXiNaDaZqfGMzySk3iNYbX0yjeEzjY0WNrXsergBiL70Gb
t/Bv6UDby38YiexgANXz4lXsdW1NKb5ErIWA3l7NFc0n9lknOmw3Ww2jozahmnb/3TrD7ldrSkmO
uE6OsvuWhKTXVhKeR2x9uGo3ZMckOL1EJ3+EIlCrgFmIwaCUqo2vzi9pFcmpOELBeOWjyDo+QAXu
d68yF7nC4a1PFs5nIgYGatzj3BsY72MB8Dz84MxqGQmf0RGDD+EIiobMAbOuUkXIzRdfGJrT6DCo
Jql8QhqyiBqzYRex0+2OuITUI5fuiKa7w3+lWizrhwjLquvNHCSjGtwLxzNe2gMRgdwZ6mIOafLS
F3jZ8679oGMuv38tkIRyYpQO4Q5H1x5auVeNwNdfyOOV87wGYGd9HvCBeDx6JeHS5OtiMZMsgMEp
B0feMsto3ltMtQAX+stnyHcwQVtmYnT9I93teatsDPki/D7ckXyQf8BTZhLU8Py/qAxw1hKR+S21
+YJF+XZx7X6srw9wL15AsJvwzbifeU+yprYFEGTOzbhAsbSgjIQM69YXLbkEzcdqwV9aRXSKmrA4
W1SUZRsgVd/ORxUOfRW8LTE7Bvc0W2dV7ddPkgJIK6+0tvWUe9D+4EUWON961UPqD1i35z62+Y7A
O7uKSduEMqgctA73102MgT8BDnIlNNhmXQ3+J0FriYR55qHoNuhKFDkL7Z1arJdXJ7/w56zTDdcU
Ul/yvtCfZyP8G7KZXP6V6gf6ts/4kC/+VwhApnT7FyBkwEkdDW0imPW9s//C64xKTFKMUjYiO5H2
uXjz/AeVtmQEqXLcLpCYRd40lS/ZTv/qHOXnwdMXHa0XZY24lA8WlH4BUYNfGRjVgOE3yA64NdA5
9/PSFvataSSlwZGG7waOwZngw+nPiqiHGK4uc4Ge6HRrobpHJdGfTU94teDxdO5j2hBRjC9AwXR4
7Uwly5B46Wmc3eGoizTqR0oTmnZUSx7RoeiErwnXhETAcQsZtwbQLosNnYz8N0gP6bF3Lm+yUnt+
5X9cCQHpzO5/pQ77J6cVEL+XopjYRJccEzQVfKpWjCenvaUcb9nZtOhKZQKcjJhn3UXp6StSwrlD
TvM5RCUbXv9gb6GZYhkxnrdacsKmHupjLJNZiQVNES8WNWNtUyjZCvUFwaHRsamnuEYKdNp8yk+j
ZUM3jXMQ9TajfBkeCR5SCZXQK2C+hkHGuu55DNQRUnQFyMo/0oiwp6L5rBTDeI2oTw+N2NJMJOJS
q7B5lC2V/wSUhZCQvD661W7Y42KqiHvraL5tvYTb4Q0FmHeyMN+dSVz1dQFCw5gEIhBu8ON4BSmS
TyTKXMwGL0t0Hc5LdKAPAkMZydiVLwa9V8N+GmXVXBLHMpI+qozMLm+z8VAuyepqUtJ+mAQ+xnly
CGwP1hFqjQzqJVd3tY3n+rGF1RFZe5CUL/OPOirzOWOBMrXaGJWI9j53SX4qDpopEmPYgD4i1QdC
xT6pqp+omj1lmmCFJXM7+wTHnXknWvz07oKi/a1eSj5uNy+aOSqw/QIIOn69gTPegk0bXj6W6oRs
J1WR7qRZRisTEgV/WWaoNx6UjN7tBX3Ar1pqpslD1LNHy/eYA/Ys6htVHcDg95woPjFnhQlfR3Ur
nYI/Qj8lNPXvp+3Gvkue7VO96K4Surj/txx6JHpj2Uk+QW/zoHTyiWM09W2BVIO0I7Uip27fhW4W
gA0r4VQMBvcFzj+zol7gIWGUMvz/TC+PTrZNbdjTvtjgb/dA823XPId+fBIQNyTgpm1IrCcXI1Mt
cWnbmPyn9rB/1C680jdiqTjtSmLnJiDdx9p+PNDJSxXuFPMx0eOC5XTxUv+BO0AmaXUUElv753Lw
5t1dPhfKuapl/g7JM2H5p2RmvJ7g3wo9ggx+sjM2RmLugdASgHVY15kYn4iLHqkBBUdNb2+ddnet
L2VFR9WqLJy4A7XgdQg3KtquBG4Y7mwjHytd/TRS+v1SbGom1dvSrlseyq3O266rlCllP5nekE2/
ZyxGih1SwZrOE8uD4YlU19O4Y1BaEp7n/Z3SZ6LvRv5n8R6eiVV7uK58h1HE4fj/9sowvNWUJo18
41EHzvIUMNbEoDTLHT02+5NDp0VtJZUtQUskOfs+7pEGJo9I6py5GdpHUwJDV2eJtb+8fs081SYs
bkTVNGuFZuIcUtlW1wMr7NcVM4kLzNA6m8ajsQHzi0IsS7zNCNEdJOEqY0AVJmebx3q5cvErLuTO
Ll0vcJC5KNklhebg8pKEziNJPhkQJ7x2c+CV1Nsi+Fl6lw3XkctlaztmfHRRVxiNfSG7sMt0ZMVT
KEMuhK+1Zj7qD4jxIdVSqq9YrDPCk1G2BvTfY9VjcCLSdi7wY+J6xpncLNz2Jdcx/+9scnOd3Txx
7JwTxWNoy0JiQyLjmTVpx7YR+bGaE0BfZSg+SkC8K4eI5UL5xpx9nPPUjWe77rxaAP8UERGLVJp2
7g2ZsiiM7Es6+k+nkep7ABaFp//kHm7Y5k8BxD45dLesM4xCx/FFu1CqeuXu2BXWt2qvMANKfE89
EIBYCl5aphFvy4jHQr8WbqIHoZb2FT4z/epPx3+gFYyXofmUN0MxDQVThuTvhZOyTpbxABp+hsum
3KtDKoV63ToVQIXTpODY8cIPxyHdAemukOEt6h19LJSXPcwnKd5rSRLUWCGz1N4VpwvGwGLxtPci
lqFuB/46OFgb25b3uoqB+3mxQP+82d6N537pCiRY1SzePHks2nvQ0wSrejRy6sW2ohsNX4vIW2VS
eo7KnmX08dN3ugBHe6NcO6SHXWaNNTWo5hCAJRZxA8rR9n9p+mzO8B/oOpH3HXInR0pkdytlbjGt
rBhf9UAE8XtF4LN5GywcwDK7ODenhu8FC0yj9h9JoQ37hvdSs4HVDhDt/nRWZK4SlvLWtNkvbt87
vZgoQH5OJZ9Y69mpaxuaKmvIUN+tfmUeWnJMsRX29VjqHP7UI5mBEoOOB3YAWrexUwsaKpzt9rxe
fWG6wcVGLH41yae+0Wyh0Cbhm3dxA03BzWR7eP5UOtoHBtUZ3CNv0sE6jgE+i6F2Jfx6uXYIJPwk
M5cRGys9YXi7XREAn7+iaNQjyei/5+DktYLlulDYrK2It2NT/SB68WoV7zhiislXPOZkEi2fnqwf
1IiDv7NZriYqKL91qU6rbhTf+g0S1wcdt0BFAmQGcDQuQRy1eVRPCj118ssfpsBqlgezLXIwnJJf
4DbCCck8/X0hue/JtoVJGFl9nkyPLQjER3BnALY1lbAwQI4B+51lIQKCCCBjISL1S1vTBz9gT9ip
EAcz3xDITVzXjMPrCBYimt9mnMuN3Ce55MCqh2chThuD1znAvzFC3VYrFJw1yrF/YRSpp9Ah4Udq
izuCrPG78jRbIV+ddkqBydnlUGiCi7g4SjdDy73pt2Je4hdOz6EOSM1p2wfq5RwY9yiUNqmAhLun
r4g0eCwCXMuqJ+a46PuQ5J4P9nBHxLYs/0t/OoVohSqQuMW0kc3+gMNF0CIXMjtHb28HrNNDVZC7
1jnRZxeg/t0iLg2N78oo4y4QoEVwSTvL5f25rZV26T2q/hNaWfg3lXUp3QZqvHHjg0gCQHaGWTMV
mnxqWkaUxsK+WQGj3x/hZRreCBW8Pc8qqCVvadYLnJu5VO9n+DC9mO1niLPgLLdIzFCS/GybNgy0
fk7wuX4ZhN1SnDL7r1Suesq/T8iY6K2DpBPxtgajejnyT8UodLBpDrQlAKQJj5JU5JZcz6bCp0Cn
1tZCAc+ZCA4N5AGgYeuCVIUBeX00u9CXJvQqbnR4Fp3pRQ/lBKl1YoIo9q5OpQZ4Y5STvTCHmf/t
F3C0hFVwHlA58UsQuqwzqbx0VjiBO8KiWcMCRIviS/GQqq13gh7otbrnZ+UYlFMYDV0+lWB7J/c4
m0/gAxWCzUT2xytPxqpfhajj9iRBIG1WbNwFTo/hVjn9gKgBpWzHdgQLZsN9XU7RuxT3gqTq1o8U
OvtaNxS9wTeTdZnnC8poqc/pDHK8a5w4rJRgWd7iYm3ClSeuRgqXGhxaYHMfFJTqUgDnDTrEiCP4
ma3OdP0jwusWzyrYIsE5o7NwXpMAua0SEqvtIpu89Z4k+pNWbJzZHQ75bG2L0OPyR8RRkcB0gkIw
+iuA4BJwnRSXhd/4UGvEuoh6R3i2/MGo72wnMIdNUkoP7gOFuV8X3DsjW0mlqzFPpMTAzbnnN+nz
ZWhBewzRCThOaDRM6gM3/c0z+5Z/RgcR2M/vizMCAP1Kdl2nZ/BB6b3Ov1A10OwTcWmjegnp36gr
DTN7srZxnTXgUZhxmuu2dZ0CnMJ88gAqYaYcM57ny9il2fRxRm9Vk+qOGtGqfqw+KVpa39I0H6K8
6icSpusl/WwA2fp3LImpgvAGaS+Ib55bRNu811UUTs8PAMyz28vqCM1K1lyMeGBHDsxrP5ypCSNi
iOnHmDHVgJttbg2SVKG3H2Sz5Q6qRrxdPt4X39C213ahpVD3aLCIvW65/Xwqabw/I1HqgDZ2KLzB
XnfpxrUJBSmO7E6CAvjDSpH+eO0CV0vqRyHCigtyBPOjhCl2AD+hkpI0eFEXodkiM7sapGYLJnCI
a2QnKSgxVFOXYy0QsAJgCNCf6DvCZRn2TLU7UNF/KzccZuGw+k2ASmFnBNFr+7h2Ty+9MM1gYmVz
b1LcmoqWhNBACDM3+GBu5kjEYkGk5hBCGLw82y+eZetsvIEqy+0I16fi5VrnpcDXOOu6FaG45pCd
zh9BEqwoB6q0YyhvIdnskcYvatBCu/l/1cZqByKSMlN6/KH+4OWQLbIzGJWf8F/9KfuSp8eGpzuZ
xM2wnr7ZEZ78OhSeXyYdz6PSN6/yCGWQ0PBOwnHEbcE79vxmiiAG5tIWTtJUiZbY/7cbW7lMR30Z
Fui2AWPNGxW5P2GiUuR5kK1KbbnvxpWwgdqlhUzCNFYTlKkmKx9ac1cuk+KpjwRh00sZNIjX45nO
frkM6uhOWdCGGMiZ507Mw32JxssF5ICfb8ASJW1+8mmkN6Q9cr4vZ9gw98FayTX3Z9ig6KOC0QK9
IwkeX3HW6BJv7cwqsgHML5aiEM2Z/i6rToHnIPDKWzN0fyXKSJnKEGIStyUvgeE4FDJfZzUomzE8
TqbR+w6BZtxnO+/dorkHLqeYFHLlOpgk9ZHwE954HnWozKSkwa6Z18KuC3GjVdSMoJX2JcX6Isca
aOy8Ig7xWy+9mdJvi1g/M7vOr0gKlqSaX3K3rwXUX2LMFgLM1JzhrPAXVxvMhFjrt7iFfZPX8+sb
AcSraB5CFmxkE5C69dXf8/QzGNSzJjbIIj3pPR9aaBESVmA7r5hpnB+LVvSRvlgotS6ASu0VR4z6
AeqSMXZkcrOiyHQsccsqkamHFNXoShbjV5W7lh7HE4EUFwa4GeFgr5b/NLg7ptiDIm6p3YLCkpeT
tjeAO8tsQvSRgGKHH24S+xzMYB8WRhLtBYGDt5Yayc+edtZ+O5c38+c4tFFKzs4wey8okRaf/42B
BeEDZgBiCqem6bIuJH0Pa1Ey5IEhetU3I41Vva3/LXw7HCrIxRfvBVs0pnEUmbsWtURvFY86NtmG
Fkc6TBwME/7K9jyYpHqbIrMRAFqxdnOR4hHsU9kDZzP16KJCRHvWAzTI3RX+BtJ8XD+H18QC0RKy
22ccsDT/zXaeG0qnhymU1xJDibtNtgEOFWtyYoUugm98oaNPwO8xcWvUGF/ehz/wzjOCqeWCDoH8
N3HRayYeH+Z1dFFwbE6dJ3gwPeHYpNVCix+KofsZFdqWZSnvw53GeBXv0iZeblKu6RDnvSs1lFyX
X1vWNY9l8aqbr4xeG8Yy0y1GKEnK4NeB2Ny+Z28+XkaQc4FONp3cv26KlJLGrDuINUkVuQ0yQujJ
vQMr9xHiNha7Hdp8R4GqBijKUkSyLTPCVyJ5PWds/KWELtfQDb96E/zIg1ZtjHvrPwNLmcpdE7Gf
NluWCAZniUaebW4+zMPtF7qXT/m7vwhthIn0IBAabAXsB3M1UCRjarLS90N8SJdUwjGgNsZsht3y
lRswQNvZPJnn3HaqBTc74ciWDGQW9BF9OMTg/7zHJFw/h2HxUeWdDIAiDTX0kfJ3gUAUInIljvFH
Td6c/WA3pR5i6HS6R4ePmHZBg4C3LNPlwcoD9NE3E52cxj6afKFodJqgg2RyJFZOjs8KmQgYjH3i
xFiVsrW5CVuJEER6tkgcFlbNemSHK949OLA630OBKSzQXDXZPl/cHKi4kKy7LHwafYjg2ToPJ2o+
Ef4BHencIYY2XDUL0POv3VDnQMbPV2auyFlTzwpa4JDxfFXImS8TMzRODoHmNHQycvbsXJVbeZBO
z3uxH01pNvRyl/RbsfkflRStkV8tlFmaDcekHCMJWOCYnNTAWWadEozND/1hUTdJaFC3+HjyKwST
5r+xKKYpVoJpBYjELsXZ019x4rKaat4kBL3cCxmk6+J4nSpY3ay3trnrpj1G+5AjKB6YiAeAfL+y
qskZ3zH98vqqe6vTMdQKZK6molF9OuMMh7c1YCnM7EasC3Its8Ax8v18smXPkZqse1fFJ7kV7qVk
6KuGHcPj9UVkv2g7jDBIN0Zcuwsbf6iP62h9CL3HRhWm5OV7AX7D+N1tZBJdBxv8agHqmvJghRXY
l9/J9D+xNiNgQ+cbfKuJfE/e0yTSo6pw4xNoxKEMUFPBMB6e9iO1zS6evLbNsyu0IHdFNXoYrJ75
ZE5col4dU5F+T6lO2GCOj0NPxFuY4UQ5KrN5flQTp4eku2Xm7k0vZwqsI/VjRLDstHHpVw8paN9x
oTUwLumDc3okoPdhFhVphCJ62RAaeein2x7+9ZZ3nXU3R3LkV8H4+Z/ONnzxgYwirSXyXCWS1i16
gavX7PWFeJjO5nih0g/gHiouOlDd5bRZ+WjrzmYK8+qEq6tYGJlBZs8Lbckl2gbYWT170mfvab7L
G0mB9W/NnqHkWvwM4epUg030eEDCZZAylOcigZAHVnOsKkGHyMnWxvKsTK4hUoLCFxKXQ7PafciN
zvCnIFb5zu5sLVtgzsxlUhPMhKDIpbjoklfhfEHc1yS/5iu0wqwy2hREHuScnO0KOEavLiL8jLM0
JUnVKYHlJgsbIplbL/oWjyd9bJgdu5zGtZRAhaYVH/ZIhZUUq3XnaOG0Wjzz4BvEaCH0Ojj8hBP0
cmJ0uz4G5gi/ySYiNoocbVw1cCoVIZZhiKp6M2/trax7OVLcJmaV+D5Z/kxjxjsB/LrvFCYfmtxm
qtwEtfl9K1T8tz9GwcmrL8dyAb9p0xGV7mULn5PtKxdwOAUlxRlrRpXHLsJM5U/B/Wc/yPU+26Ad
zweR+a7P52dcBEZnKwY1TzLcT2O1t1uki/oGdvXBC3gqDb046gleMJ7KQTUETUbJd0CJOuEpxA61
VBhZ9JqchzVnyqLBXE25JugmaMTxkCEIlN4w3Q4/Mx1l4SlvHNRLeT9cuVxXqcJ2qy0NYkBYyOAS
WNgclDc8nqnnTmb3b8RPHGqkQT9JPOjAZLgMKoEYb9Yqv52uqRcM8maHZO4zI/yin0A99bM9NR7e
L3rzdVl3KZWud/K6Tz3m27pXqKGhu/28cX59phqxLyFP4j836MehjdeV+bKfTlvi2ZmRLdtXOy/Y
1rItr48jMibLSH9xriwJYKI/VOBkgTb3DFv9qvLe0Wroi/32hhIDf7XOlUfTdxGeR2TaLU/T7VCv
hoGLG4l4oJ5LBOd43p45RwafUioE4mCwqL4fgJoyikyYJQnW9dhOqst7O7lCipMARUs5LzNVC+Px
awe9f80ZnYqR9fPHG7g+Lp2sWd4jln9p3VwYMkmtW9LszKoIAAAigfi57H/iKhZdNCu2D9tCTd7O
U5jUc3iRXL/JEC4wdMeYLIEFN1PY2jocAxIHGwSVqm7/PmQM6EGKckTeVN1QUl1dyB3NRZj+y9av
FHVJW2Kx9RuImCrYg0p9u5BYsoFBLBsL3b+b5ne5PA2Tv8eNwV+mU6xJKd/7kFBFoRrkwz+VkJQN
uLugkM2qPQ8oERGvfgNg3uMtSbEb2ysFMiwn2kLP4S+uDUgm8OdWFfHaZgovJn4/e95iXKoO4An0
35weSu1Nddt8qkbBQ562P3gerVrbXplhZ8YyeLENPfVwUKDiaakqlCMo9EAjqupEfyVE05/t3fen
Tpt2wIruCO/0ejPseNwxZQm5HqBoUFqExfdiiVD+YF/0l1KS2wgXsl6tTf7xdwJKoZX1sSDqTbc/
Jy6rJv56p3aAe9MjKA/bt4YJkYTdWpsuZYTteXN3FiBTEw0gNPPkbtSciIY5Ya8OT72u//BuvPqX
++qUW0tMDi35dhuna4fPT3NrQl+eSXkzWbppwBvAU41XcYrwnANacfvQSRf1ActqJXrb9lN3sAKt
SDMuQVtoEpyDb+LEQV35vlH0qypTrPlSmPLh/JMfsuasgDE/fZ0MeT0lq9kNpCKs97Y1czJZlj3e
JkSRGQltCtMIHRY7SmTaFn/24BRi41HaU73Jfu2EnVvsCB6Pr9VnfYTL56kgUtDEsDC0L53n73aT
G9mdBVTLhWPtY33AdBNC2vDbj5WOzIj4yfv2uIwSoaqJp7cRVtx0C8dUfDCsNVLommW1KzZnFaI0
iD5K3fxO4l2XMXk6iRsvhoxslmKAwrXF8cEV1cH0vR6aRtjU78LI+jMeDwauHxondW+aaNWlvbII
kyz+UMb50n9Z3BBPt7u0rJ5+jy3WccZxC2X7n8dJBVkD97hxzHQPEnNzFh2zgujE4odeRAgo2oS0
DvSJwpSllaUnbfXxS1QTs8DWwYGF/rmhwR7SORZ/zTumz0rWKYuQ6P2sPPINaCKiy799FVKGWLoO
72I/GEe5ssA1gtAzoqj1dsEKDyIqRlUmX4Ld4CXF1E5lU/bP0zDZh3phdrf2cK0CpSEs3BoKrgn7
Yq4Uj5LIQ4ydrzrOEH5tA6gTPcQi8kAhkKHmW8JkiG8JbwH6/K1zWZmrnfXNW65DzTE+01sIvVsp
D+bNDmQNLLCUT70ESi8qDHaAMvir4+69P0qyqGFC2oCymSGmbj81jT2jRLNKeL/z6uSp5VrJEz3I
71PDSc4NgrZB5gueLQvnOa0TmUmr8DVQgKf76kn+wBJwW1TFeOxHICRUv9SbUm1WnTwuR5kEcCRj
AmjKTYdXYTwk8YC912Hxa/2wGv4BjymtGLb5uxikL/L7PCIWZrZ1PGY2KKAyibxQKJU+iLZrpwCx
5kxl94e3VrQYK28b5fUXT79hxGYHB8EzTZyMhzjWm8JEZhDCoAVu3dslrF4xsGmJmJesq63g7jkB
2EUi6HkmkTj5Q/9LZtdL+5swbzcCwK6P7xnMNxZdhchrXZKU1cxsXa/x8elFSgUMFuS8/fGMdQA4
C+sseqgHmr9NTPn44oTAAG6GSBtVMv6HsOYpABLPwkIl+B91CEcng/7Ld8ScMKxFwy8/wjCnWfsu
CYxHAXKfCXUi2ZTDT/0NcDP/iOzrFV5kfIxhMMdhqSn7Oq/zwkrNMFmL4E01Ojvk3NAHEh7SrJQA
y2FUGySF0X+b5i+5EEnvzSnNILcmYLdaFOnzBFSa7kGcSFI1RE34CYpoWvXKOSCuUceHMXdTbmiX
rGetq7yc2iY/w93NSgqKi7VlNAGt6KIG6PBfUSyPIcorRt0wohtmByXFzZCqZSxdgV6cRheimVo7
hS1bfXpmw4TsAO+bCQjtTt6OvXjlyKf4cAyHc6aqaamLSq2xLfcWwC1FCRoRhIXWCg3MjMeAgfMG
qinhzToNjD/vhsY5Z1WxtbLxHgIjtcXEa4shvDqrnFGQCwbbOvU+DMlhkB8eQTR2Quj7OLHbtCtL
fzQCO3nuDKEVFwQlfe08rNvl1z6zIu+gRwKN26KIPCXn
`pragma protect end_protected
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
