// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Dec 29 21:26:50 2025
// Host        : LAPTOP-VAJ3GCQ0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dds_sin_sim_netlist.v
// Design      : dds_sin
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds_sin,dds_compiler_v6_0_23,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_23,Vivado 2023.2" *) 
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
  (* C_OUTPUTS_REQUIRED = "0" *) 
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
KK0joZa97phc1sn3wtVDWuocyHtu6ZTbF3pe8tOWO4ecZ04RrC+CGkS1x7XlNUb/JBO1ppzZZ906
gbTx4a05zR8LyW8K/SYRJOknCBK7q/Whz6I+TbKF0YOwPec/MnX3gdQc2eErHCFoThSX3oDgszTh
G7pUCkPA6vp+vyb+mv5ejsHLGMj+wfrLdn/tCYfdKvd2oFcgTdV1SpkHRjqSrn1vlKcRLzOZb+9e
ctv5NNJttk/yjx/QeKoJAMXSLKQG5OIjJggh0R6v0+cLMQPqFQBieH5lJ7gewd8zu68yDAYIpkuZ
UcKQKHZpMbLoiHqICjmNIJBTKeqYLVGBrjyvzuB5Afz9+wx2rshWMqAf0R+g0HKTvIjAe23U57oV
nkt7QPeQK+X3AqkQHTh3vSDEO3BvJJvYHMzc8/CLb826BA6iO9RT5abWWHPnLbYur8Pi18GONsBC
XnfiO3BLsp66buM/BliKsyntsKXImE8LVotSh7Rjle/8I2MdLyWiNRWRzJKXERtyj6SY7+4u7FWc
aG/7wPKWOOteKJi657KTnnE0HvnLg/SiEVl6KlAOiX0DKvLVvK1w0no9WHJN4XjmfyL5x/iuDaYS
5Ho6M+Jt4eglufyf3HoBHBK36xbJe3DUa0Jm10R6d38MrXy5pmj39S9/j4S3evXH1HMc3+FM2JHp
GJfDe0c40P4fiRe7LXKD8JinSLWl9Ub4E/6k25UVFVNbpVDC6koWSMtCKAF3LMs1gZXLZl7pYW6u
EiACrDEyD1Xyfs5nttBOF1MnUnM16GgFKjAxHKm+L/AD8yo1sON7sAj86fCFB2nWKffAzbJ5hUKl
cSdr0eDEvs9bcmdc/OFAs4etqnjNDzglhEIFFfBVeB9gpZrL+EzIpNPLEI8tJhJClgIE8cfSC/Fv
Nt3Lcvc4MHejO9E0/paeqkeWXyNhYfiKHUgXTL88HuxiBCujmpGZXHEb8KjcNMUDneTtxGXUg/4Z
J67r79NHnU21z24I4RMo6ARkD9PdwfEmfPxQFPbz1IBmwiS1Zay1cVbAPqb4RuEDugGfA1UxAGlt
/9KRuBQH/HTo8XeJUhvDZw0GIuMWUzUpypSUO9lFVEGazXKBCQ9mchJQrRsmd8SZ57y0A3mi476/
/5j197fdbnAbVaart3Wo/BtrF+x9Dhbnii2TMt79Opp129bZ2xF649nEw6kDsgy8B+R7mVDWnUF+
6EMICbtklbrChseqHYrAhuN6CToz2tE5pRQM4hfpsIJJE87TOo0/blrf2NniK8wtjC1tzkCHTzoF
qTuxbOhH6boI2ga/1udmL/Jc+tgcLUtEDPEjv7Sv5wqKk328zvt2rvnXqsdOlvWCYd+vPBV7NCdc
K/V1Apk5u/8SKTmZlBUSEmH/VmiyFd43c3IS+nW+peObgZZerkIqzl5Bh8o0Vrzfi/2lX610KHDR
0Q9evwR+njBl4vF/ISVzfP2ZfJuAnl1Ve+vvkauxiRl7yK28DdOgHDEnvfaF+mfTkEiyEAPaz96m
2cfMk4oVhUP06VcDmd4mXjXGB5VG0S6M+vq9i7MKoMg6mofuXBQVBo+Zr7ooKLHY5jvtga6V5D0A
7f6/5k8VcwcsM0KjWOJTJ0eFylM8tk8K9N5BIaKqK1m3TPiZC60hoC8JvOzXGYQHf4RyqxALsn/y
/7ECW8NkR5kZhuCjAdHY806UsbTDX1F5Iq4TKbcOw4Q0YR6hIfyCb3Za3Ne7lu9z/1JvjsX4/bdt
pDE3dMxM9SREeEHyxAkaKqjPmhQJLcT/fbyxDTKtyc4dLjvwT6usYWH8S7mgfX7jKwyZxGNkzXiB
/qsRPhVWWroo8IgUIUTbPrMgAjnvnPA8KKhC2R72nAuirK7KUEiryrau3LRSYD75w2TRKScKZvRb
weMNqyvNWZqOkb1z3afEH3MT0YHiq3yr2LhFJUHZNwrReP43TqDb//MAiz/9mY3a8kjW8qJWNcKQ
W/L+P4NNnu8d7RktV3Vwa5ROu52BKBghgvdLNbOFYDHiQc/IcS38czpQJqDSw4r33cgAplDM9KMo
PGz2O26jfir3V50TxdfeRK1kyVKMzhjW7ESpdDvIMH+y0t8XXne7aD/U/ELDxONxRl1cl/6juCed
o1DocupVugDdPjeLtkcjtOlLZMtMKur1g/knqkWeLwpJNKsozOrXyTcrLhfrogqY31r2hJ38/dSe
NszfBwE6fd7RWv1Mu5gry329xCPFFW3qEyIEHga95KQRJ3EzzHIzu0V+2x6itfKrO6qHDHixiYMv
j1FA3ZjrUBVa+C6TB+yT2nfyBIE/Sb7aFeFTz5R6k/CQMPUBizUt6Y+0WinZmxGUODzdmy2+/1DD
6bUVHVHTpzkZE69KrIdxih38thWEu7h8gjc5O//7TuLg7HXdfFBIZZTL7Zr8hSJTVerVTxLTYcWI
rWAcrEXmSstQFdjuYOchaSt6gXh+gLGqb4FCec45bl78DBrfXGfvSSt1pftgjWgqYe3wumUsIILN
sEV7TLOXiuAaTn03VTrzzF+AH43TTuvJDEZffQm+fpY7GTcHkNU6GykbM/mDgjmcTkefr9qZr0kD
mpEFMBiH2DhQjqP3ni6jjy5mhb49nFibiI3TJ/gX615zUfI/jnmxP1FTS2qvh8tZTyqaLQUpQ+Ly
GquEc/lhSGlxWx2S1WV9rsCe6e50/Xov42e5ncOeku86CGUfogx9kbXWQPZ+6tjyqCpj2xMHoHyE
AQjrDh9ReKvZtWBDq11mWZ+4RIyEQmhyGS1D0ZpTGGdrHVjNZCq6ukanE6KXW2qw7dUxbw8sfM3J
Ok1Fggpp1fUV+1nqHtqISRI+JxK+N099efZef3mzLbrZ0HyKTiky6D+u89SfNqBYyZhoyxsmc5uG
rSz5IMarTfcE/5TyklJGRU7cDcI5CQu8rxOge3QF7fdlNekV1ngmv8QeVIM331cWQimhIci4sktk
Er2oKxldanqBKnmgn31bdUmPLCVT95sDcWHAY5/VcMsbiaBfNhgMOs34ozoX3IaOPJcuVWXChsgs
vfwM2ZyDoBIxbgJJKsmG0jCQyCNhNR21KtHKvdrabhx+rc9jIprEuE2xGQGUxQ+69oLLWkYAn9Q8
cj15a0ugm3PfrsPH3bSJmK2ucnycQFZOMT5Y3vrlkQB9GEuMc8UqfHRLCKQa2M1/mmzek0f8GFZt
mP+jlSSoYMp7Y4CPbk5HbEnT6ecnEqrUa5rhjKirXxtHTkGzCSrpOgvf7yubVxRxt4+eXuK3ks+z
QJ7wFrGvG55m6+2ZKjA7k4lR57qiJc4et+4+266HuZ+5eC6/8+BSvvBOCS8g9sSkjyYSK57Wop/K
FXa1IgIXaGkxRg21EvuxTiygzRWqR25b/e3wJM4sjHmkMjxnVH1TWAklJe+CCTRhEbXVPbnDK/LK
GdyxQcFCK5e2mAKogw/tDQXi5XW4GD4KdHoyLOFcabyoaNrwAHzxcTrBeVLSB/B6dvuFl2KAKva8
/NFVW/hzzQeZxwBi0ovaq/F8xhdtIMd2dvtfIBuFCruhNTFqBb2PG7oTrFQVRy82AESmiYAfF5Ft
UfwxOz5fBQy64TU4jgR4eZTOp9W6uZYjHWWgUkHxm6b1Yx7Ql+ic7Fo1ObokFnPi/fYULQpdhfts
NLKSyTDK7k6us2wuTQd4qYPruAFcMld5E1Bj9mdPWt9bGdKDYnzAmkjx71TBv4MHlJVknbRvyxXB
pGkzHW3wBt1MDvXFF5rAdbBX+cRjI2Ehqff84pkLZi9IB9T8/DJ6W4hvTzV3mXae3EhceuuZL2Zu
rOyNzCA8E7LHNAw1uMfVBwwpDY99mK7ycDiLvQmVn8AwbL0SZVJDj2pbmBItu6BOalP8ymjnvPS1
7SmE/IJAPH/PW/T984Ep+5SNDQXid/ROGnoSHEugFZdaU/XJutegC8rFRymVeHe8gr3CvHWaX8Q+
WCWMDmhMVy3BdcfCTTrrSYRqj6ZLlakerTqB1WIo12F77T5JQQmKPTkrx0KTNLghZtosNWlX29ep
QgBvO+W9xR5cwviLfuHWh15IXnztPoJsUPzDemN2InM5GO0ne7QC00dIZs2fbf6fEqiIF7ZQsj4G
cIOodizTq8uGAcTOqt2QnpR01pZQGFEMIIEeEYb5FuMg6wzsf57Epj8fJCpq5Qx2LmsYuUsitpe+
9NUnby04cQc3cTvIi32F20JG0u4bYuFxZszpMqRaXby6VHJ9Lj5bWTKYsgSnMJTQE3vClsDdpvYV
1UGJHNnk5VJ9RAOZlO4sMgBykmHFLUBzlAiiUMvqrZxctJNTC2g+0x0YDXzUssjxWOq73jeNalaD
/RnV4qhaML9RMCm7f5O+tyUj0dKLz6QHjcef8daQTq3hfqOZXQ4Aez97f6EbeeO2x8KLmj1UvDHV
Ya8jUgfdo/L7Dmy1Rs1i8FFMtz0yy6a4Xs2XE8htbl06N2LhZ5bp0fSgpcRubGrBuxL6cNXPh0MF
p1csjA1I7j8H3Ggt7PTG74Dwyv7VOjKHd8XRVFZiOxupjW2s4LlKu4qx4uvQa0DdSq7CO3T2RXJi
NXVz2JunmwxAFuChhda85LZHj/Xobow44X3hTuVlj7yB91wFcnY1VuJEt72sDK7BvGlKFEk+qGil
fvPnTd6iz+8rQMEuGyR3eZ0h3F7U9RvImgbnSxjxS62HaDiRwV5UsWgK1WDlWr5gIqMKI261tOn5
/7CDofSTeLeB2uskQFI9xHsLu6xJiUAurQt3l5h8DX80SFHfQ7ykwzfUzig5C7wpKBxsPATzWB9N
lq3LWDqdeSGMXYXv4hTskyGgzJjph2lrgm9HzKDFQUlA56NaTMcrX1rL4cJmTbxOigp8tSxR3TCO
OoFfJEU/1HkhzxKg58LO+RczVebSEd5ifRKyouHmnjwc5+CxUfVoPB7c1IFTEIN/WxWpg2nQZK17
qDvQaon4X5tLRMskO5QA0v5MAPKpRvcQcfc0oq/vEZLIzyLVevSKAU6NDwmNLT058wjA80gMVnup
7JveHbF4qFPWGbCKYtUkGCG39qzAup6+K3qNHbnBBJrT7wDMXFqvVE/dw5cNU7UBUnyDLbZt+P0D
pCho9zJBhqsGJOe7/k4PHwIOtPEFhZtd2kAu2OR8hnIlFsHkfq72QOwNM2af3n0OVKKRrbz5Ub8i
YLoJ6ZReUI80mS617N9EDarsQxAofoi+zNHAiSB473BHHQwsmEBl/h0FFjGv0Tbvbzfhw2W2884B
t69zfF4rgFWJSjiy2euwmZnYG0UluXRAsI/2TWwtWHWgMjjvn9bCfkXI0jSTVzOeq6+XlqLVxx0v
Tlu0JdX7Viyc7TJ/acm6Gk9acW0CJsXQNQAn9mLIH6lmvQjGqACrDePZVX9jYon3J9uAQhtG5Ucy
LXfsKmgXJ+uJTzUeF4MdbJ3slApbue1Mk2U/Q3ObboFjBGALY+2O4LeBR3jyTchYNOkmPRTESSmV
xVvG8kStHyEbHyCd/tko8P2fHVSmga3ahrDZFIcvK9fLt7a+tgEV8S3YkKAY9xkNmLje8no32xj9
svN8v6d907RwX2dKGNKj6rGD/PpRjeOTl+JB3YOvHzw/z3mS5KHPU08D7wZaX3hsJ7fYo6vMdjOI
yDnaqSWStxipzyWJ3dDqVo/laxJa99NAE+ZdgaCr/eB5ivfQCwMxZVHVrvgxTpxT1jAeqX7cDLHO
UNIyEvY7LLpsxqcMIudlD726JIgtH733Ah6vj4u62x5tOScBo8OfC0OqB9TrXSKcUtpCRq2hKFEz
niehkdOoY+T3NNLlTG+pcgsICZ3O5VXFKm3OuYTbcgik6CUNkhWt6dBCRPbIEoWQIHW8e3I5ZX8Z
4xd3CGhmfmh6tbKrl5cVkfeRjtbMyouBluTQqzUHRf3xoZ9bRkheRvYNcw5c4yLix85I1pTHCc58
ozp64Y4uo27ApWEsBu2pgMibZn6EzFoBKq8jW8gohhdsnfGbJnjatTXGXO0lOaPqPqZzLYiAXX8T
c18ulGB+mdC6bS9aNXJ+/sRFUD4MyisN8fV2sKyElbBl6Fh8LodLXOmW7xFL+/O02wK4T1Du3mzy
v+3+cX81apGeDyNRNvVV7+nLfA/Yb/fB/tQKTCzK0M1TAAGpWJ+CI3SdrkNe+S7+SkMqz422iydU
IIiZevNk63NCoGyM0VJzLgTrHxHMUWh1qy8JnOGwrMqr1NfEf9tahQ3eG96Oe75LNd8U+kw2PKUJ
oD64TMTf4om+DhZOMbf1CDjVPn2b5uRA6HTkc5mZElKgEkf19SXNHqg3BuxO6w8L80vyb1L8E+j0
aV0a/d5Tb/t+IBKJ8Opi6utgY83q4hh4/vtYRZkwVwKiGvBpT85oBd5ouD1sDdtMRZIqIo6Nak6w
iZ5dIHe02Zlu2jBGLzUZqZofH2SGmngLsMHwfjMutxBfooOGgIgKC+U2DAASfw0AWLZJS8mtRhiu
AkgO0xNOzPjN9MNpcfn2Bm8abDZITchbDSdWs1ekl28fhBHe8Ya3pjtg86wo2jfbuVn/wZu9cHR3
tXIpiJxf4uEm0OO7jy+89xlq21ucBhbbLSvbo9l1jFAlbGYkW6o/6uXy73ppZ+Gjd27oJmh46J8f
nsk80y87rx4WKQ1cg4L2Hi/VLeeTbDSHNvb10R6LpM7mAMOG+fWSH7lZfYGXveRlBvyaEmgTI9hx
4D/QTb6PznHFa18DsKnzRqXH5USJJhymNwnJDz2hvDc72HoyYnlR3hG+e+V6R2Jj10SaT9USKcrS
6yrXh3fL+M5Ba1eXiQCuDqu0wjvB2Z4GkTH/5YD7Yi4/N9eSAi0eBGIOXbeDGrFEmkS4WnW8byUE
r5OsOnK5VvM0iJg0sIaBL2K0E5lCmBBwnuBrQlmc3Fqrj93rWGvHgV4jnhVAWHabibkkXrJGxUbX
4Co4VammzJiAeQSibyX+v6WRW5bHeoDcgfb1kMqvj7z8trNAj9feUmG3j+QKsnqZyhvdDsVQIm9X
ygsyeitjbEdQXLrbxC2oOTRyPIZ+dkshM7z/Q8OJoboknbyrzwPAOG+WkGSIM12yym4KmrWHMmV7
p042L7b7/nu0wd0c814sgApsWAwKjiADRFQy4W3iyESSpA/gEx+XbPz3UCRBdtn8ayEOfnotAG6A
1zYwjCS6bx0OSkotMhVUp4SNsduEslqh8Epb5n5xi5z22DbCByy9D61Sg4okSvq42oogCVrdbvnO
tH5j/6yJZNbN9/6YwOHLHfh3+Ig87gZTxEplf70ZnKGogVy/ZZU5TcDzfY7PUIheQFejYyk8WUpU
xZdSEUPFSpijN7flNPi5LEpMtYA7JPIkxoK3H5ANx7G0ENKk/U8XRiAEWhS63FcvUgxVa4lBb/gX
qvoQeyFgOAE9gPAim+Xmap3frFwEXSkusKf7bVq6V+25uNoMT8en/v4gfBYWgylUtMBC6mUAfFL2
TdYU4kK3D+QSYmx6/HU6jrH0VdYIk3ZxaPcSx0sGUpP1rGseIo7xB8gIEH4VxrTiLJJDvPTMF3GU
qMxIWBEv0SXPfph1HoEnNWMiMfJQniL3atrsGxSNObh/WevR/cTVr2XcXsgf49x6mSVxcu46JLgn
9e1xsVpcTZF5hjmxXYjG2raFKZWMcI1tmh5ic5aW7CKHhNgIaeL3XHKwvfSaPqzWgiuc0fCJetJ6
PxuC+wrvFDsiV7jPCM7XSbuDcs2S5vNbIAcfR1yPGihVVMMLDGBmVPQUNZ7ZZ76WFZfktrXAl5oj
kfeN7RoBBz8RvxvZnhzyswGEMDA5+hVPXmE2dzEvFAW1McFZ91Ef1luGSAQGhDC8ecoskfZ7+Cyn
29Ll1k/F+Wk7de567qeRtXUporg7wi6ictP1n1YGXXnig4jnlu7aJPfuJOm3u5+3i12PLsJmp43A
0glfLZw8H9E7jrDNOOHedpjbuQ9eXMkRCdkxOdADHPx4/JWAINW7t5NZ3YbFCbdfxuVW+lRU2sP/
JT8C4wQnuv8Xj+oAQfsN3LPkvMpETXmDrFYSZgPj0CUOcWGz8aL7Rr5Yao0Q20JdbbBaZyKCDbyt
wRljhQXZYd/i7qzbnjfqQfy6mLs6H6ynhsRvUXjNjxe8ewjbRaLJRitt3XGdGXZRxgulsFyw4mie
+VQ9ae/hfbUGAMs6yoYiTDmXklM0CZMhRObF+OG0KA6k51TCDyKlpHbo/WM8ZRGIrcO2F+TsyjE+
FPlLZAXgmuBNz9mdlf3mlyOtUK0R9Gb73DhX1ysLxOWK8gBCG3DWcjmJDEAtDcNqyZ0lrsdoIXJv
OBpJNZhNiyUGLwkws4hwbGCtGwYWUDTv+j718mJl8Q2ThhaD3iYqndNunoQSfjvNrTAbQ2w9qgjS
1xearLa9x2LsUgP6bnct7iQuscbzi97JRoHjw0AJWUuMJfZEjVL4yRdQgwdHGSt/t4gQDBaWCefS
au9luhkeBKAr53QZck+FfkkFMOJ/HyVN7+EwhnkEHeNVZN+bp4CC5RmtGF98mEXYfHQSmdlA78i6
nrCo0wtoAUeRNIO6yaBWVOsJEAoh9gHfeiW7gRVHcYp7cywJOzvB8BODhtACtH/dtpLvWDbTp6xi
KzlbGlnw0V2kHQroUMiQ0K5b0Ej/ahnSKgPcMBSKW58m+XLrWcF8UvAHHyUy99qUcaH42UZxbE49
LXZktTpC4gbj/sZ8RuJ5TF6GdFdAGqNRx0cLkNLZXxWkrRfgYh2rmv+QHNntKH7UIhLWDqbAy6H6
3fgICWElN46HIyIjaLSj29QGPMAtevJAZUrApxWYl/4ZC4VXlD9hdAxXQCTQ95jZa99+OQPqsGqz
9gj+/dXdszxKw4xvPOSCK6OIzLvkOVKvIftKHzgvJCWbE3j6iQ0QzfIXXQ6eDbOvfRdVI2M6JtTc
EZjBOu5yCeA6bAr8ZEoTx5n7dLslzoSsmuw5qWzkzNiijB5gmIZnExx1qGrLiveZ3p4X1UXjKi6M
XD0wVXRpp04tFyRGaPSrnIK0sK4XB3529PoRF6f9iprF7l82NiKo3fuxboLvl/l4uR1N/0Yc73wx
nKOt/070F4Rwm6o7p+bTWtJVyhjSmP8D57vQmO2HvBa2fmvTfTgEnR4/KVSg7vY3HKy53gUV5ntc
dD0WIeh15H/QDtMSFGuzUuvQTjZDRQHv4+46+lI9u0BbqESKMDjSS5eDo7l8adfWbK7YjlnPnjPw
WVaAU6Y7XvAHFSsg0vr+ohE32/mOLkzrh6p4XqHZQfUSNdA+li44QI2vy4kKcvutpbvawnEZAE53
juPCmXs3yzSKdde2KT72XTqO7LB1qjRcJQ8df9GVQSJXYU+6cs7KFw2ERGvEvWF7p9RuxtLllMbk
bblNWWyDIy+9MuBFn33eJok696R+GR4X+pseCbPlhaYIxpA/QEZe+Y/qpv0ElOpIm7CWTjMEzXSt
ErKvu4kgw8gYQl9M+0H1JtW4i/M+y9gIZsc+1OxB2dSRRhBC2/+VRJpyqGaK7+MRHCWZ2VWx8ygB
C9M+0k6p6+bzYJcYkiP8WdGNJkdW5ktW6SM4Mfr40KV5XapcG7RiwEfRjbutH74zyHsyijiq31Rk
vzHBtKvc/2k26JxC8ZiNmuCVtAAlD5VQ2uL2oifSmV7b3KSIN69560us4Pfsf6FQtCD7Nsg0jUxx
mCMqmZT5ncQ56WD41Kt+I/BvbgH+KuhybpBMyIdXP3YeidjcpdJOpyjg6xX+aaBS8FTc7scTMBL2
yOSGYhuM1xZCawnG7pO78YD2Sa7TZkxpuypG0vbL76LX2viXjD710ziNzKIUqcm80N2CoDnWEtRO
2UnW2tD48zeiJRX5PQIT27e5gz1W8QIwv1EkQicY6BTaPcHGJjQEg6VHmXbTj82vdTZpZ4MHlxrT
RkWG5AkvBjA1x9MDZo9MrnwU/D9ai04PEZ1WGas9W0Y1DyOE+VjA1gWxKXsrRlr643SmTYKx1KP3
E28/HA4SrQCA/8o43UuVocDg0c73O78JTXjn2SrxpaeXZ2nEopf4ghkgDDKXgsVwkNQvMWtAEMLl
EmwMtlAGzinv7mM2Jg3BqAFWkgbFeYvsr8alXGfICA4ZyffNbevDqmiz7+RWAFK7VJBF+w7kW74M
HKwBjT4XiWPPoucgSz1Mw6zgBpw3ZFghyPIZaki6hGKCYVBr7aFNaeLmqE/9Sue/xfZCeuHWiWMx
BZwBDH5yw+NPpLVnn99AccH1upylMjurAaGtGs79UC50tThuJQaJWSw0XE+q8iUpzO/vYYK+ksFw
jakt2oqsOvLbHw+pXldm6k5vSiq8ogRf8CWiL3Knm7n/mh0mI/eZWKRYZfKwLgV55ziElbI8biD/
0kOi3b+pv+S8vN0Il8IzJrrdxRSB2gXbvQdev1jV92KpjbMjZXJZbBUHa+kwVe0KpVs9SDdPDSmQ
WUy18dHLnOBSitnO1ZkXpYzEnuk0LZ/KY0HhJ+2RzFJWpZ6pP7fh3hMM5TTR9aVFvQi5x3bcu2u3
p+2+OrFymy5zKuAX2MPCYdkZtLXXirxB0AA1mMRSLG6xYsqLn4yEwVdX08OptXh8tdWVJUvPAXd4
aWxwnTmhf4N6I8aZssMTvCcn/G0+1phffg40EPYVSf0c5M1FK6NKInwzpHICZGXenUxQsY+tM95Q
gCzlQyvI9buzn5/jSvut6I3HkJQ7LaFyaA5Fck/ZhzcG4PKdQlqjyGzkMcG5N4Bhp0yBVCWgnR4L
5SW9xD70iLXmsUldUL9RFOW4v84JTgAjS3OCynWZeJJV64/XHGzwSvlmhCJ+p0seSGiUxfXV/7Qq
vvFNN0AA+JFtCYD4hz83hXD9Fu9jMreOx3o84VJfs4uxZoRCPcD8wqFVk7sXwcys6yTJB4JUNOSd
rs2oFnsgoohahoj448lmELL0giJt10BBU+2sHaVps4PRqKHLsaHD8xplxox9MzKcaJ0zhIoJOmMX
Nqtt6TY6vshYPlVgKcxp+nilQQhlF0Xckh9K2P1o1zQ7sg6Iy+i/j6aCMzuzssTDd6Wn5caBJQEL
dW0BQMagDS3rSIeBBFs2CrODEKU993M935u3KG6dMIps+CYe+5I957OJceUya54x+KIPmbuOC0SR
hvvnNGM7+UO92bv2DvaqwjMSdiZsRzNm75vQOUJUI9vPJSxh1e1CHelPEjTWYklmaasyOsbKBw0w
Q7gblxyAuyW39nbs0V0m4mXqzrQgFoob5kiqoTbNyRoDRnMKs4IsUOS/Sh5pvcOBeHyn7liuQ+t8
cFlbOC6oL96y+7cYo1p468VFwVjdelUCw55X1V4HQVT0Bk47SOHF6FkM2544EnnGLde5BP3WmL07
iOEk4/CdswmCn1mTyloFTo2gyloSosXi7DZAOT+skF/vxO1R986h2MKQ+0EE+V6VXz4JSheUQf4A
zPWsESi0DA/5h8E5uKmathKkawmuhhAOObzJVmJHgopZqBcNedEw3kBeAbfA8KCRHJd+5PlskxR5
/2mJcOckRXfk60rTCRhPWnHSDkxQ1L0HxefwZbDHqfO5YfwV8IfJ0L6VNdSgNyMggolU8+VyPLY0
WcEKVOeOqByV/ubZnK+q3Toci2OtCKM2U9t8nDBEQqrXUubHag6ClrMi62wdLmF7voudw01YtHjc
jrNRQBI98+LWneLLgpK/keY5ljCfTBPlxof5C+ScPLFiK0Tg8cV79P7IfRFVaWAcHSuqzljxmMo9
bGSnvc4ncgmBxAsaYrbhNzLpveb68tMJqC1N6Ax/ZvRnKG4LKnuTMFg3uy3lNpmkgC+qMU7OzwOY
c1TNqKepaOmdMSwgrQ5o2izWbe7TnPIq1Qf484irKd2NV4NKSN68ErfQioTtG0EpyvP8V0UvDRaE
NB7m/sp76X3tzxG6RSZQRiUQa3dQSjhbhLD0+DXz335ms7KQDaHekRNNeQZDy+Gq43JPHtATCzYo
0/0WgGhiGC4De84XoEpPgPjN+z78ORp4ge2gMjJRv2DdDZXYNE6MuZEqGukinYKRbvYQLdbyCE7Q
d4owI3K/nvfQw7LEBKgxqxxnnniU/4pkFNVHstm2oSHBnaN6Xwz3GXaN7A3gFfIJ2QO9wPmTjj/i
fHwdzGzL9XYFC5gglMn5VCHDDkTQUc3qo/ZgD7dGh435SWip0oVymW3Rcyw0Zhzk2GV/OJxhAUwT
mkNc5Q64dEMHNVdx5Vaa07IaFBX63usj/jRSLOXWVFpBkhK9oOLnWH+/h0KGWuAiQpObW36SAE+b
HqTPobtTMfDSlZ2/ADrD1iKv+zcvisTtYPmBJZQxySk/mxlY4PlqgjOE+wTQMQfGEhql6nPXd5x7
F5+HniVQNlrqHtbuHwJe4lbKc29cBuq4udrgoVTcqYHMu2I9SAxnybK/ayUUaCkJcBYWX4Cbkb+A
kvlKD4i9XFskDgZ3t+Mp2BrAUX3hZBMiwvf3j5psTZeUK6/vFl4KsUMFjnSnkss/LggH1MDmYnkj
euVONxiVfG+OpxEs0V2UtTsTHTndcAmHrcyPc+FNb4Aj5OVzT/aHXblTe6I2ePgTagcEyuF4Gk6R
bukNSJmztAzCUzO3xB/MkcpnvAWtGFikFuaY5/uSOhz4qWCldbs8d81KOovpGCELxp+xPc3BEiOI
Z8TC7Rg1+dc3EkK+MR7ABCge9LN9M4JmNVUqgR34zQww7iZ+jP0oVPKVRgHynf0t4uvOrnrPbVmH
p/sJLOio739hR5Fe2NCVKjp6VzI20f9PlBSwTurdvmkDYDRuN6Ax7hTaVlE1UIScbKvaVch69L5Z
w2yZPkWR/JgSME81Cb0xgGqEOjmGJKB+QY/wlFP2alfImr6sQNMeAllH2TBcoDtw4pG+pYXwe41i
eDkNDpmQDaC5axv2XWCw2ZAm47RYXixHHZO3wkHUvGglNu8c/KA/jyCODt7Pz4pLHBccI0mUYJm3
PUX+tMOhf2Rzf+bpi9ptp5x1fksrhBVSSn1RlG1P+SL5keM8vCX8SHTFa2A8A/R3lVuoXgjy+o+4
ZcmgCwwE4WcT6u7Vee9Omm30SgYjhLjB8iwawoGLDJzicUwuNlG7fG2zZFPoQJwTEaxDf2aGmRQY
77TFELuzsQHzvbFQ7Ecg5IXz9GIdnn//ClzAqsxfF4d4/I2Z0A8FnLPYt8lI9AglrZSpZwjJxK8Q
wwO3duhVT/9tTd/P96vvIwBcPxisgfgLfJyCeVocWdvW/GNPJ6pmUQLXvXATYrXkwUu+1s2hnama
JyeVO9OL2CitRtGEadeTrYQ6RJlFhGk8shc3+eLo/vUW5q6e6SwGG6CyyR0HztGVSwRn9xNOXK7I
keMe2KiWQ47DXDEltogIIWto9cbfFNHaBf69OmbnIVrLgW27mjtSYRJb4v1x/W79Xqh8Z+1BuVKJ
55sf8C6K4zZ8qSEuYDLrrc6y5caIhv80dxek21SZQfIRb68bArnD47W0JYsZljOE7ArTOFPhXOuh
CSF3vu86H6MdClD0nHonyJvJG2qjnV3WcMmYLBqbXidHECHiCgllxwrQqOLZXPZ9/ynKChO14fPM
4aLVaCePQw4ymTCS3s0JPXvTah8423EGN0eAPnbKl/nU+hllQvC53+Gfk8MockGrA4B8zQQfTlaX
sKVlFYeKzP6mF0oZ4eMzFs6BXLF2FOuYKZdfSegBsp1Ui40OCtMKx5a76unKYNKQJwu2n/a75WaE
ReEk3AsAv/TcjJAh/UOQ2ZJ4xy9mYgJYboyxEdrKUh/4iC+QUG8/MzKevuPoRcewK5AY6YuE3p6C
v4LiHtCA3pJjJlGBqU0Iby77htuHq9S/2rgkzc7m85t42gzmVJfeHAWojKZOFKhwYfhdW7TtAY+V
An1QV94EgknZEntBFS5B2S8opCq47wj3zRTXv5TZx24Lz86Vt94P5XTSvdhMcpw+mxTCDMAdo85r
rARcHXjGTU8b8Ug8oOxfGcRAs6BLHmuIPZXs6x6WVJCMooGN5Lqmt/uNh/jExHg9laZZIKv0RdkW
pBWWH0wKl6fzJiW6sBpI/qj1pLMW1TohpIQBuWHngOGsQaUdq/ijcij0DxB3hX9wvyXimGiC1n34
H4uOlI64dwV+Me5YyWGcN6C+KdtFJ1Az6IF8xTojJICoKBq3jI6U7QjGI9gcfBnXOyt7dnSa1a30
XsEetkvxnr+1dJsWiwgYHU+T8n2RDqo3B9DJP4PRsaUzOwETUu4hu0MbLDyEv/sYMbEINgxfLHzt
mbmo0Z5IT8KBeHlaHR32UJR2+YGOHcZdwjBv+BpundI4w6wStw5IRiaUQLls7e9ub92aPv2Blovx
7dlpC2tk0I66PorynvCf0TMHBi9sWOPC1WAQSfxcSoryC6gPOF4tQllWCQCg2DJwbK7S76eJZi7/
1f+OymzUIyiIcEU+uaA67rwOECFH50B59oLzK0avDgzzy01/oBhjX5XHEKDDG1MeIN2RIiWYCe2I
iyxIOAMQFClYCfNmPGn9+VDoWD77OKOqqHRC0hGkpNxVfpAb/KpqFkc0oRTH8Uk2CYx4KY6TMUvB
+tgAh6DED7b0lY+yf+gzUiItyltPf+xI9lqnDNP4Gk+kdZXUl0BMT343HBmLvs2D+I4kHak56oEz
h5HdhpRd1M3uFiu554Nawje43iKKCSVNLA8DEGOk04gh+RedSTmHny2QdLDHzY9ugKtNRDna9J7l
8d8FzJMNXx+U2xYVzF698P1KNWUPzOFDrDZVVFIJ+0WsXHpCARRohOfSZ76OjVP/ossCBY3hC0x0
QEBPctpND2iQvDhBgm4e8w0+B6FCJ3ghZU5HAP4UttgkvAbQVdJ5IMHHkP8eOKBrfsCqjNVSv2cr
Ef66mqiMH58WPhFsTdyuXpczwxuBJwAbW17h+4SSqFAXvE0r8pBBlKsKRSo0jI6C2ERt0hJkTaMH
uxpxA+D8tsmXbAdKJ99HKDv7hIbFqCYz+XsDoQZUTdA3rnBOyV4Hf9zzlHw0inY17JuujxgvmkSz
LzxsFXJmyBYyPWunsQUII/bk4FVZ9h/4b67sr7heKQNfOGx5JmiP0m/AwYjw9c3nsFyVDapXLdr9
JDZwqiPoTlM9moYOWbmqZYQRUxR22LBaK6K6j2vD+iCx2b4bQ9TQynrihJY6LsoapWZIOqlTGTWT
E46ovf0+Jtz6ZP9DpDWmmpgVSbWp8udag3ikIvEvNcC/oPkpANOj/dxegGgFIFlx/fzsLf5IafJP
VgfVDD/4NUoDHcNlRARXyiGWYDbcOr12mHQGOh4/KK7+gv5GJ230xjXlLaTj9yaNRkj+jY737yCI
bh2FBHSPIeTEtRxXsVY7aXVZJATfdkY0Ym3LeRFj5Bn5TueoQcq/dpK8UbLzsUADqC2RM7DjTVHp
Es9UWHPwZwrM90121mtXaRWMkdCtTTEcXR7cmrhqUpqzZDYV7DX10kuKVewgQWtO/K7/kezJ0t56
Viiaeet99N5iXi1tEhcBBfVwUTcKaPSzJ2kckBLBA5xvwzkTwKsmrPU0sojjZgWaoCd57MtEftI+
U8SpAEZ4KUxvvLiXCTdUnbNjI9E65FxDbKsQmYimNDpI8nlQUzgjpd02zQq1bRM5Srq/8zNT9gZ/
UnAfdNB6qAN9dwE3q30JUWYzhiwRZ8DI3ULCNNVP8GgNpRBKJfAKSMxVVQHIq1mJGeICOjhsXV+b
EplfTxhDDtgP5y7IOQNgnkRKNOdxYtm93uSuUWbw9mMpP8fQtKyA+RjDr6dDggiqcUxK7059F2W4
VodYkzhF3XROYesnVCfYo7XpLdDoAwaEqFT2maw8pPcxXMv/uWaS+djT7AAWgI7kcj+zSXifwDCz
pMGpyKEWB9pZlKfUW9k9BDAiyufvH2url+hm5g0rtrsF4fn6rsClACqpt3myBazAcI0Y9k5nhPE6
s8r6h0CHTOOkR47uO7p1pD84pc1H8FJ66i+F0RfwMPkXnnc4LvfIga2xWBzjV9XKCx4nNDsK7UdH
TpewJeV55j9wKLp1IEVP2xl2PEyXPMgSfVts+vmVfoIMGCNKcH1buvKe156KYECIxEacNuPypff/
2oVsCmG0vaYhfT4eHBEAnY/EcNiEfZlXTuFTuxPRbipih9Po7CkwXhiWrVtNTUQgwS/oSLInnIeh
QP5BzLHUNZ8vjjnubU4Hr52s5umjj0s85n/ku63prC6WyxDUdG9RJlOtSZ/wOlCy1IaygK9EVw7j
vw/Yhhuv5COImEiTxgm3hVxCQYdmY1v8Hwp8fKx+Cg9NypXdznMgcN5rHZ4hGx1dlvOZa1GYaEnp
K/PAVphQrHD/kZPCCd9KodCgFbjxddphS+gWornOxq+zqO9iecIIdqyUThRPegmMgL6T8cdlCC+a
BrzzX8UjzC02BYf/m/kYIjRfhZS7sj6Xf98ZVo7ltfmls0FZ2b2MfdgwT2ZlvCg+TkEwOIq3nicz
R4nfGrZivO36puyFUBTYmfRy7Pg6/AtLLzWtQNNM1Qnysj9tK18msq4F5+keojvF4GKONjj/onNy
colFsprNOKr4lprxq2mbBItLSzm0QvX2w3TUiKGaUZwHpH9cNminpI7LnAG/doRPVIJguYOgI8Qk
hQp02TRAl/XeOcrxXPygCxiVNqZLqs0YisoNsd2qxBua/UnOdMPns3ZHz1WEmwmZHJoBmVe92MhK
W3jKpi8MekxHTEFY+pLf47rVxuN+tmU9Z+ObHVB1FVr759fbBeOFfIjNNfB4MCMZWsJq481tA/dl
fc0GOBGdB+BaInlq4+29c19j4oqkz248IxRBgW2mt7PBqqTlDehDCEqDc68QLVmRolnaLDJoSYeR
SG2mDH+BwGkXdSrNRqJ/cYKl28bbZmsicrse96Ipw5aQCuFMDqanYkDcXQ7ZbbxKPjz8vsFd8dUk
N75OQA0y9ZLTkLKbpO5tmHkYXxaD8asHIOp1TsWSI/5Zh0zySyhSLoHTEEsKWwlhmpxTKL6u9+mN
neOpwrwecL4n6+x9Cj/eql4HqmYD4/mEjFGWlDUWSf9ZGK7uuIeU00+uQI3F0KVB7W+g8sy8Nhtc
MQXCN0cOcJ/qebrvDCGUWhqYxvsGlpdYywkxyClcj0r68XWhqRg0JrEQsQLNj0D435mo+0mft1Fy
64gGiA3RaFjk4gbCdmBQ9/8vCs02H/gcwnM4qBVCgZHeoOOdsRt2ykrInJNaU89eq7KCyABmGjuk
7wvEo4PVFIvcdccduztxrooHS6DkciDksW513oaDdw7J5U0HBY6I0oOJdGNud0GO3Jiec22dMNx+
GMQIrKjFTEc5OGsazPLn+iD23V4MtJXc7jZxwLwOx795G/yGJR2K7cmY43POo5PcD6bocZEg6dzx
AoGcD+8Omxb4F9I3ZL18sXQkjkyt07u3o9fM69ErzujRimE5+BFpAsIdrqVulIOrYUVmOaFK4RA7
x52YipGgVUQTqu4kDHkj9cNTRuNHvd4dCnPKv630vSeFMiGcka7+I1hIuiJ53LMJaUBj
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
LjWoJZs1R7EhR8vVU88xe719w88772uO8TVwniJ3d297QqP9O4RYlxVUM7pVQ8QR1kR2kUKiSUxo
zP/3kqN4lvtWnW3/DGaL3e+PveCh9rUsqaxkafHcxHudcBxhEi4tUh5xrEAAVrda+B9dXAuWkTa0
WHHEgkq9zlkc0VkQOmHaikkByBPpemwECvCnQ1NH124JCj46nufCF5KDd4KhDH3KzxQvQKCqOoTC
ApAFSp0lTImmkRawVGcsLwX0i353EqNPnc9rbbwgE/7GjqqQbq1wp6Gk5YhGYDc3xB+WJGkGL5iT
3YMQ3bRITGVTIdppM3PgUBZpEKY0++/4xqYLRg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
flfKTLHYpZgaqcy3HTsQk7OcIWzWzI/DlkVDIamzLlq4O1CyOl4CoMvxcalQIJaqyI4UA4ppb4zV
Ds34k5qRhooTvsk4dr1OTcnlxMI8xXKw8z1I2LxYaikDDBQL+fqQuWryXgbFaa/oiA/5+b7Lo8W9
MRjMIkYN1Oaa5loL5tAgZ/eyaE1t86+GfbdduQGzA7PrUT7e61AZ3GLUR2gX2QJktaa5XKPSrW0f
HZ3yJrtrtz9Lai+XkD384S0BF00Q/as0gzivUr79Kw4WDwmBmSBkkYNDLXL79jysviAYesiS2Oi0
XfgO+YHsLJsEszJAuIwerDYxAWOaupHZyjBQDg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 47856)
`pragma protect data_block
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
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
