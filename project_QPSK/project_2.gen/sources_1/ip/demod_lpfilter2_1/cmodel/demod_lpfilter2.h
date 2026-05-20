
//------------------------------------------------------------------------------
// (c) Copyright 2014 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//------------------------------------------------------------------------------ 
//
// C Model configuration for the "demod_lpfilter2" instance.
//
//------------------------------------------------------------------------------
//
// coefficients: 4,3,4,5,7,8,10,12,14,16,18,20,22,24,26,27,28,29,29,28,27,24,21,17,11,5,-3,-12,-23,-34,-47,-61,-75,-91,-107,-124,-141,-157,-174,-189,-204,-217,-229,-238,-245,-249,-250,-247,-241,-230,-215,-195,-170,-140,-106,-66,-22,27,81,138,200,265,332,403,475,548,621,695,767,838,906,971,1033,1090,1141,1188,1228,1261,1287,1307,1318,1322,1318,1307,1287,1261,1228,1188,1141,1090,1033,971,906,838,767,695,621,548,475,403,332,265,200,138,81,27,-22,-66,-106,-140,-170,-195,-215,-230,-241,-247,-250,-249,-245,-238,-229,-217,-204,-189,-174,-157,-141,-124,-107,-91,-75,-61,-47,-34,-23,-12,-3,5,11,17,21,24,27,28,29,29,28,27,26,24,22,20,18,16,14,12,10,8,7,5,4,3,4
// chanpats: 173
// name: demod_lpfilter2
// filter_type: 0
// rate_change: 0
// interp_rate: 1
// decim_rate: 1
// zero_pack_factor: 1
// coeff_padding: 0
// num_coeffs: 163
// coeff_sets: 1
// reloadable: 0
// is_halfband: 0
// quantization: 0
// coeff_width: 16
// coeff_fract_width: 0
// chan_seq: 0
// num_channels: 1
// num_paths: 1
// data_width: 27
// data_fract_width: 0
// output_rounding_mode: 0
// output_width: 43
// output_fract_width: 0
// config_method: 0

const double demod_lpfilter2_coefficients[163] = {4,3,4,5,7,8,10,12,14,16,18,20,22,24,26,27,28,29,29,28,27,24,21,17,11,5,-3,-12,-23,-34,-47,-61,-75,-91,-107,-124,-141,-157,-174,-189,-204,-217,-229,-238,-245,-249,-250,-247,-241,-230,-215,-195,-170,-140,-106,-66,-22,27,81,138,200,265,332,403,475,548,621,695,767,838,906,971,1033,1090,1141,1188,1228,1261,1287,1307,1318,1322,1318,1307,1287,1261,1228,1188,1141,1090,1033,971,906,838,767,695,621,548,475,403,332,265,200,138,81,27,-22,-66,-106,-140,-170,-195,-215,-230,-241,-247,-250,-249,-245,-238,-229,-217,-204,-189,-174,-157,-141,-124,-107,-91,-75,-61,-47,-34,-23,-12,-3,5,11,17,21,24,27,28,29,29,28,27,26,24,22,20,18,16,14,12,10,8,7,5,4,3,4};

const xip_fir_v7_2_pattern demod_lpfilter2_chanpats[1] = {P_BASIC};

static xip_fir_v7_2_config gen_demod_lpfilter2_config() {
  xip_fir_v7_2_config config;
  config.name                = "demod_lpfilter2";
  config.filter_type         = 0;
  config.rate_change         = XIP_FIR_INTEGER_RATE;
  config.interp_rate         = 1;
  config.decim_rate          = 1;
  config.zero_pack_factor    = 1;
  config.coeff               = &demod_lpfilter2_coefficients[0];
  config.coeff_padding       = 0;
  config.num_coeffs          = 163;
  config.coeff_sets          = 1;
  config.reloadable          = 0;
  config.is_halfband         = 0;
  config.quantization        = XIP_FIR_INTEGER_COEFF;
  config.coeff_width         = 16;
  config.coeff_fract_width   = 0;
  config.chan_seq            = XIP_FIR_BASIC_CHAN_SEQ;
  config.num_channels        = 1;
  config.init_pattern        = demod_lpfilter2_chanpats[0];
  config.num_paths           = 1;
  config.data_width          = 27;
  config.data_fract_width    = 0;
  config.output_rounding_mode= XIP_FIR_FULL_PRECISION;
  config.output_width        = 43;
  config.output_fract_width  = 0,
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config demod_lpfilter2_config = gen_demod_lpfilter2_config();

