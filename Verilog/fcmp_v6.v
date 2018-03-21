////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: fcmp_v6.v
// /___/   /\     Timestamp: Fri Apr 11 11:51:15 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog C:/Users/Bita/Desktop/ETHERNET/HW_Example_13_2_ML605/tmp/_cg/fcmp_v6.ngc C:/Users/Bita/Desktop/ETHERNET/HW_Example_13_2_ML605/tmp/_cg/fcmp_v6.v 
// Device	: 6vlx240tff1156-1
// Input file	: C:/Users/Bita/Desktop/ETHERNET/HW_Example_13_2_ML605/tmp/_cg/fcmp_v6.ngc
// Output file	: C:/Users/Bita/Desktop/ETHERNET/HW_Example_13_2_ML605/tmp/_cg/fcmp_v6.v
// # of Modules	: 1
// Design Name	: fcmp_v6
// Xilinx        : C:\Xilinx\14.6\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module fcmp_v6 (
  aclk, aclken, s_axis_a_tvalid, s_axis_b_tvalid, s_axis_operation_tvalid, m_axis_result_tvalid, s_axis_a_tdata, s_axis_b_tdata, 
s_axis_operation_tdata, m_axis_result_tdata
)/* synthesis syn_black_box syn_noprune=1 */;
  input aclk;
  input aclken;
  input s_axis_a_tvalid;
  input s_axis_b_tvalid;
  input s_axis_operation_tvalid;
  output m_axis_result_tvalid;
  input [31 : 0] s_axis_a_tdata;
  input [31 : 0] s_axis_b_tdata;
  input [7 : 0] s_axis_operation_tdata;
  output [7 : 0] m_axis_result_tdata;
  
  // synthesis translate_off
  
  wire \U0/i_synth/i_nd_to_rdy/opt_has_pipe.pipe<2>_0 ;
  wire sig00000001;
  wire sig00000002;
  wire \U0/i_synth/result_ud ;
  wire sig00000003;
  wire sig00000004;
  wire sig00000005;
  wire sig00000006;
  wire sig00000007;
  wire sig00000008;
  wire sig00000009;
  wire sig0000000a;
  wire sig0000000b;
  wire sig0000000c;
  wire sig0000000d;
  wire sig0000000e;
  wire sig0000000f;
  wire sig00000010;
  wire sig00000011;
  wire sig00000012;
  wire sig00000013;
  wire sig00000014;
  wire sig00000015;
  wire sig00000016;
  wire sig00000017;
  wire sig00000018;
  wire sig00000019;
  wire sig0000001a;
  wire sig0000001b;
  wire sig0000001c;
  wire sig0000001d;
  wire sig0000001e;
  wire sig0000001f;
  wire sig00000020;
  wire sig00000021;
  wire sig00000022;
  wire sig00000023;
  wire sig00000024;
  wire sig00000025;
  wire sig00000026;
  wire sig00000027;
  wire sig00000028;
  wire sig00000029;
  wire sig0000002a;
  wire sig0000002b;
  wire sig0000002c;
  wire sig0000002d;
  wire sig0000002e;
  wire sig0000002f;
  wire sig00000030;
  wire sig00000031;
  wire sig00000032;
  wire sig00000033;
  wire sig00000034;
  wire sig00000035;
  wire sig00000036;
  wire sig00000037;
  wire sig00000038;
  wire sig00000039;
  wire sig0000003a;
  wire sig0000003b;
  wire sig0000003c;
  wire sig0000003d;
  wire sig0000003e;
  wire sig0000003f;
  wire sig00000040;
  wire sig00000041;
  wire sig00000042;
  wire sig00000043;
  wire sig00000044;
  wire sig00000045;
  wire sig00000046;
  wire sig00000047;
  wire sig00000048;
  wire sig00000049;
  wire sig0000004a;
  wire sig0000004b;
  wire sig0000004c;
  wire sig0000004d;
  wire sig0000004e;
  wire sig0000004f;
  wire sig00000050;
  wire sig00000051;
  wire sig00000052;
  wire sig00000053;
  wire sig00000054;
  wire sig00000055;
  wire sig00000056;
  wire sig00000057;
  wire sig00000058;
  wire sig00000059;
  wire sig0000005a;
  wire sig0000005b;
  wire sig0000005c;
  wire sig0000005d;
  wire sig0000005e;
  wire sig0000005f;
  wire sig00000060;
  wire sig00000061;
  wire sig00000062;
  wire sig00000063;
  wire sig00000064;
  wire sig00000065;
  wire sig00000066;
  wire sig00000067;
  wire sig00000068;
  wire sig00000069;
  wire sig0000006a;
  wire sig0000006b;
  wire sig0000006c;
  wire sig0000006d;
  wire sig0000006e;
  wire sig0000006f;
  wire sig00000070;
  wire sig00000071;
  wire sig00000072;
  wire sig00000073;
  wire sig00000074;
  wire sig00000075;
  wire [1 : 1] NlwRenamedSig_OI_m_axis_result_tdata;
  assign
    m_axis_result_tdata[7] = NlwRenamedSig_OI_m_axis_result_tdata[1],
    m_axis_result_tdata[6] = NlwRenamedSig_OI_m_axis_result_tdata[1],
    m_axis_result_tdata[5] = NlwRenamedSig_OI_m_axis_result_tdata[1],
    m_axis_result_tdata[4] = NlwRenamedSig_OI_m_axis_result_tdata[1],
    m_axis_result_tdata[3] = NlwRenamedSig_OI_m_axis_result_tdata[1],
    m_axis_result_tdata[2] = NlwRenamedSig_OI_m_axis_result_tdata[1],
    m_axis_result_tdata[1] = NlwRenamedSig_OI_m_axis_result_tdata[1],
    m_axis_result_tdata[0] = \U0/i_synth/result_ud ,
    m_axis_result_tvalid = \U0/i_synth/i_nd_to_rdy/opt_has_pipe.pipe<2>_0 ;
  VCC   blk00000001 (
    .P(sig00000001)
  );
  GND   blk00000002 (
    .G(NlwRenamedSig_OI_m_axis_result_tdata[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000003 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000003),
    .Q(\U0/i_synth/i_nd_to_rdy/opt_has_pipe.pipe<2>_0 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000004 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000002),
    .Q(sig00000003)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000005 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000007),
    .Q(sig0000001a)
  );
  MUXCY   blk00000006 (
    .CI(sig00000008),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(sig00000004),
    .O(sig00000007)
  );
  MUXCY   blk00000007 (
    .CI(sig00000009),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(sig00000006),
    .O(sig00000008)
  );
  MUXCY   blk00000008 (
    .CI(sig00000001),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(sig00000005),
    .O(sig00000009)
  );
  MUXCY   blk00000009 (
    .CI(sig00000017),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(sig00000011),
    .O(sig0000000a)
  );
  MUXCY   blk0000000a (
    .CI(sig0000000a),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(sig00000010),
    .O(sig0000000b)
  );
  MUXCY   blk0000000b (
    .CI(sig00000019),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(sig0000000f),
    .O(sig0000000c)
  );
  MUXCY   blk0000000c (
    .CI(sig0000000c),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(sig0000000e),
    .O(sig0000000d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000d (
    .C(aclk),
    .CE(aclken),
    .D(sig00000012),
    .Q(\U0/i_synth/result_ud )
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000e (
    .C(aclk),
    .CE(aclken),
    .D(sig00000013),
    .Q(sig00000014)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000f (
    .C(aclk),
    .CE(aclken),
    .D(sig0000000b),
    .Q(sig00000016)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000010 (
    .C(aclk),
    .CE(aclken),
    .D(sig0000000d),
    .Q(sig00000018)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000011 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_operation_tdata[3]),
    .Q(sig0000001b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000012 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_operation_tdata[4]),
    .Q(sig0000001c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000013 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_operation_tdata[5]),
    .Q(sig0000001d)
  );
  MUXCY   blk00000014 (
    .CI(sig0000002b),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(sig0000001f),
    .O(sig0000002a)
  );
  MUXCY   blk00000015 (
    .CI(sig0000002c),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(sig00000020),
    .O(sig0000002b)
  );
  MUXCY   blk00000016 (
    .CI(sig0000002d),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(sig00000021),
    .O(sig0000002c)
  );
  MUXCY   blk00000017 (
    .CI(sig0000002e),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(sig00000022),
    .O(sig0000002d)
  );
  MUXCY   blk00000018 (
    .CI(sig0000002f),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(sig00000023),
    .O(sig0000002e)
  );
  MUXCY   blk00000019 (
    .CI(sig00000030),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(sig00000024),
    .O(sig0000002f)
  );
  MUXCY   blk0000001a (
    .CI(sig00000031),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(sig00000025),
    .O(sig00000030)
  );
  MUXCY   blk0000001b (
    .CI(sig00000032),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(sig00000026),
    .O(sig00000031)
  );
  MUXCY   blk0000001c (
    .CI(sig00000033),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(sig00000027),
    .O(sig00000032)
  );
  MUXCY   blk0000001d (
    .CI(sig00000034),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(sig00000028),
    .O(sig00000033)
  );
  MUXCY   blk0000001e (
    .CI(sig00000001),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(sig00000029),
    .O(sig00000034)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000001f (
    .C(aclk),
    .CE(aclken),
    .D(sig0000002a),
    .Q(sig0000001e)
  );
  MUXCY   blk00000020 (
    .CI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .DI(sig00000001),
    .S(sig0000003a),
    .O(sig00000035)
  );
  MUXCY   blk00000021 (
    .CI(sig00000035),
    .DI(sig00000001),
    .S(sig00000039),
    .O(sig00000036)
  );
  MUXCY   blk00000022 (
    .CI(sig00000036),
    .DI(sig00000001),
    .S(sig00000038),
    .O(sig00000037)
  );
  MUXCY   blk00000023 (
    .CI(sig00000037),
    .DI(sig00000001),
    .S(sig0000003b),
    .O(sig00000017)
  );
  MUXCY   blk00000024 (
    .CI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .DI(sig00000001),
    .S(sig00000041),
    .O(sig0000003c)
  );
  MUXCY   blk00000025 (
    .CI(sig0000003c),
    .DI(sig00000001),
    .S(sig00000040),
    .O(sig0000003d)
  );
  MUXCY   blk00000026 (
    .CI(sig0000003d),
    .DI(sig00000001),
    .S(sig0000003f),
    .O(sig0000003e)
  );
  MUXCY   blk00000027 (
    .CI(sig0000003e),
    .DI(sig00000001),
    .S(sig00000042),
    .O(sig00000019)
  );
  MUXCY   blk00000028 (
    .CI(sig00000064),
    .DI(sig00000043),
    .S(sig00000044),
    .O(sig00000063)
  );
  MUXCY   blk00000029 (
    .CI(sig00000065),
    .DI(sig00000045),
    .S(sig00000046),
    .O(sig00000064)
  );
  MUXCY   blk0000002a (
    .CI(sig00000066),
    .DI(sig00000047),
    .S(sig00000048),
    .O(sig00000065)
  );
  MUXCY   blk0000002b (
    .CI(sig00000067),
    .DI(sig00000049),
    .S(sig0000004a),
    .O(sig00000066)
  );
  MUXCY   blk0000002c (
    .CI(sig00000068),
    .DI(sig0000004b),
    .S(sig0000004c),
    .O(sig00000067)
  );
  MUXCY   blk0000002d (
    .CI(sig00000069),
    .DI(sig0000004d),
    .S(sig0000004e),
    .O(sig00000068)
  );
  MUXCY   blk0000002e (
    .CI(sig0000006a),
    .DI(sig0000004f),
    .S(sig00000050),
    .O(sig00000069)
  );
  MUXCY   blk0000002f (
    .CI(sig0000006b),
    .DI(sig00000051),
    .S(sig00000052),
    .O(sig0000006a)
  );
  MUXCY   blk00000030 (
    .CI(sig0000006c),
    .DI(sig00000053),
    .S(sig00000054),
    .O(sig0000006b)
  );
  MUXCY   blk00000031 (
    .CI(sig0000006d),
    .DI(sig00000055),
    .S(sig00000056),
    .O(sig0000006c)
  );
  MUXCY   blk00000032 (
    .CI(sig0000006e),
    .DI(sig00000057),
    .S(sig00000058),
    .O(sig0000006d)
  );
  MUXCY   blk00000033 (
    .CI(sig0000006f),
    .DI(sig00000059),
    .S(sig0000005a),
    .O(sig0000006e)
  );
  MUXCY   blk00000034 (
    .CI(sig00000070),
    .DI(sig0000005b),
    .S(sig0000005c),
    .O(sig0000006f)
  );
  MUXCY   blk00000035 (
    .CI(sig00000071),
    .DI(sig0000005d),
    .S(sig0000005e),
    .O(sig00000070)
  );
  MUXCY   blk00000036 (
    .CI(sig00000072),
    .DI(sig0000005f),
    .S(sig00000060),
    .O(sig00000071)
  );
  MUXCY   blk00000037 (
    .CI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .DI(sig00000061),
    .S(sig00000062),
    .O(sig00000072)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000038 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000063),
    .Q(sig00000015)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  blk00000039 (
    .I0(s_axis_a_tvalid),
    .I1(s_axis_b_tvalid),
    .I2(s_axis_operation_tvalid),
    .O(sig00000002)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk0000003a (
    .I0(s_axis_a_tdata[27]),
    .I1(s_axis_a_tdata[28]),
    .I2(s_axis_a_tdata[29]),
    .I3(s_axis_a_tdata[30]),
    .O(sig00000004)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk0000003b (
    .I0(s_axis_b_tdata[23]),
    .I1(s_axis_b_tdata[24]),
    .I2(s_axis_b_tdata[25]),
    .I3(s_axis_b_tdata[26]),
    .I4(s_axis_b_tdata[27]),
    .I5(s_axis_b_tdata[28]),
    .O(sig00000005)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk0000003c (
    .I0(s_axis_b_tdata[29]),
    .I1(s_axis_b_tdata[30]),
    .I2(s_axis_a_tdata[23]),
    .I3(s_axis_a_tdata[24]),
    .I4(s_axis_a_tdata[25]),
    .I5(s_axis_a_tdata[26]),
    .O(sig00000006)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk0000003d (
    .I0(s_axis_a_tdata[29]),
    .I1(s_axis_a_tdata[30]),
    .O(sig0000000e)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  blk0000003e (
    .I0(s_axis_a_tdata[23]),
    .I1(s_axis_a_tdata[24]),
    .I2(s_axis_a_tdata[25]),
    .I3(s_axis_a_tdata[26]),
    .I4(s_axis_a_tdata[27]),
    .I5(s_axis_a_tdata[28]),
    .O(sig0000000f)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk0000003f (
    .I0(s_axis_b_tdata[29]),
    .I1(s_axis_b_tdata[30]),
    .O(sig00000010)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  blk00000040 (
    .I0(s_axis_b_tdata[23]),
    .I1(s_axis_b_tdata[24]),
    .I2(s_axis_b_tdata[25]),
    .I3(s_axis_b_tdata[26]),
    .I4(s_axis_b_tdata[27]),
    .I5(s_axis_b_tdata[28]),
    .O(sig00000011)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000041 (
    .I0(s_axis_a_tdata[31]),
    .I1(s_axis_b_tdata[31]),
    .O(sig00000013)
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  blk00000042 (
    .I0(s_axis_a_tdata[27]),
    .I1(s_axis_b_tdata[27]),
    .I2(s_axis_a_tdata[29]),
    .I3(s_axis_b_tdata[29]),
    .I4(s_axis_a_tdata[28]),
    .I5(s_axis_b_tdata[28]),
    .O(sig00000020)
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  blk00000043 (
    .I0(s_axis_a_tdata[24]),
    .I1(s_axis_b_tdata[24]),
    .I2(s_axis_a_tdata[26]),
    .I3(s_axis_b_tdata[26]),
    .I4(s_axis_a_tdata[25]),
    .I5(s_axis_b_tdata[25]),
    .O(sig00000021)
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  blk00000044 (
    .I0(s_axis_a_tdata[21]),
    .I1(s_axis_b_tdata[21]),
    .I2(s_axis_a_tdata[23]),
    .I3(s_axis_b_tdata[23]),
    .I4(s_axis_a_tdata[22]),
    .I5(s_axis_b_tdata[22]),
    .O(sig00000022)
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  blk00000045 (
    .I0(s_axis_a_tdata[18]),
    .I1(s_axis_b_tdata[18]),
    .I2(s_axis_a_tdata[20]),
    .I3(s_axis_b_tdata[20]),
    .I4(s_axis_a_tdata[19]),
    .I5(s_axis_b_tdata[19]),
    .O(sig00000023)
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  blk00000046 (
    .I0(s_axis_a_tdata[15]),
    .I1(s_axis_b_tdata[15]),
    .I2(s_axis_a_tdata[17]),
    .I3(s_axis_b_tdata[17]),
    .I4(s_axis_a_tdata[16]),
    .I5(s_axis_b_tdata[16]),
    .O(sig00000024)
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  blk00000047 (
    .I0(s_axis_a_tdata[12]),
    .I1(s_axis_b_tdata[12]),
    .I2(s_axis_a_tdata[14]),
    .I3(s_axis_b_tdata[14]),
    .I4(s_axis_a_tdata[13]),
    .I5(s_axis_b_tdata[13]),
    .O(sig00000025)
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  blk00000048 (
    .I0(s_axis_a_tdata[10]),
    .I1(s_axis_b_tdata[10]),
    .I2(s_axis_a_tdata[9]),
    .I3(s_axis_b_tdata[9]),
    .I4(s_axis_a_tdata[11]),
    .I5(s_axis_b_tdata[11]),
    .O(sig00000026)
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  blk00000049 (
    .I0(s_axis_a_tdata[6]),
    .I1(s_axis_b_tdata[6]),
    .I2(s_axis_a_tdata[8]),
    .I3(s_axis_b_tdata[8]),
    .I4(s_axis_a_tdata[7]),
    .I5(s_axis_b_tdata[7]),
    .O(sig00000027)
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  blk0000004a (
    .I0(s_axis_a_tdata[3]),
    .I1(s_axis_b_tdata[3]),
    .I2(s_axis_a_tdata[5]),
    .I3(s_axis_b_tdata[5]),
    .I4(s_axis_a_tdata[4]),
    .I5(s_axis_b_tdata[4]),
    .O(sig00000028)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk0000004b (
    .I0(s_axis_a_tdata[31]),
    .I1(s_axis_b_tdata[31]),
    .I2(s_axis_a_tdata[30]),
    .I3(s_axis_b_tdata[30]),
    .O(sig0000001f)
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  blk0000004c (
    .I0(s_axis_a_tdata[0]),
    .I1(s_axis_b_tdata[0]),
    .I2(s_axis_a_tdata[2]),
    .I3(s_axis_b_tdata[2]),
    .I4(s_axis_a_tdata[1]),
    .I5(s_axis_b_tdata[1]),
    .O(sig00000029)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk0000004d (
    .I0(s_axis_b_tdata[12]),
    .I1(s_axis_b_tdata[13]),
    .I2(s_axis_b_tdata[14]),
    .I3(s_axis_b_tdata[15]),
    .I4(s_axis_b_tdata[16]),
    .I5(s_axis_b_tdata[17]),
    .O(sig00000038)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk0000004e (
    .I0(s_axis_b_tdata[6]),
    .I1(s_axis_b_tdata[7]),
    .I2(s_axis_b_tdata[8]),
    .I3(s_axis_b_tdata[9]),
    .I4(s_axis_b_tdata[10]),
    .I5(s_axis_b_tdata[11]),
    .O(sig00000039)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk0000004f (
    .I0(s_axis_b_tdata[0]),
    .I1(s_axis_b_tdata[1]),
    .I2(s_axis_b_tdata[2]),
    .I3(s_axis_b_tdata[3]),
    .I4(s_axis_b_tdata[4]),
    .I5(s_axis_b_tdata[5]),
    .O(sig0000003a)
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  blk00000050 (
    .I0(s_axis_b_tdata[18]),
    .I1(s_axis_b_tdata[19]),
    .I2(s_axis_b_tdata[20]),
    .I3(s_axis_b_tdata[21]),
    .I4(s_axis_b_tdata[22]),
    .O(sig0000003b)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk00000051 (
    .I0(s_axis_a_tdata[12]),
    .I1(s_axis_a_tdata[13]),
    .I2(s_axis_a_tdata[14]),
    .I3(s_axis_a_tdata[15]),
    .I4(s_axis_a_tdata[16]),
    .I5(s_axis_a_tdata[17]),
    .O(sig0000003f)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk00000052 (
    .I0(s_axis_a_tdata[6]),
    .I1(s_axis_a_tdata[7]),
    .I2(s_axis_a_tdata[8]),
    .I3(s_axis_a_tdata[9]),
    .I4(s_axis_a_tdata[10]),
    .I5(s_axis_a_tdata[11]),
    .O(sig00000040)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk00000053 (
    .I0(s_axis_a_tdata[0]),
    .I1(s_axis_a_tdata[1]),
    .I2(s_axis_a_tdata[2]),
    .I3(s_axis_a_tdata[3]),
    .I4(s_axis_a_tdata[4]),
    .I5(s_axis_a_tdata[5]),
    .O(sig00000041)
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  blk00000054 (
    .I0(s_axis_a_tdata[18]),
    .I1(s_axis_a_tdata[19]),
    .I2(s_axis_a_tdata[20]),
    .I3(s_axis_a_tdata[21]),
    .I4(s_axis_a_tdata[22]),
    .O(sig00000042)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000055 (
    .I0(s_axis_a_tdata[19]),
    .I1(s_axis_b_tdata[19]),
    .I2(s_axis_a_tdata[18]),
    .I3(s_axis_b_tdata[18]),
    .O(sig00000050)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000056 (
    .I0(s_axis_a_tdata[17]),
    .I1(s_axis_b_tdata[17]),
    .I2(s_axis_a_tdata[16]),
    .I3(s_axis_b_tdata[16]),
    .O(sig00000052)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000057 (
    .I0(s_axis_a_tdata[15]),
    .I1(s_axis_b_tdata[15]),
    .I2(s_axis_a_tdata[14]),
    .I3(s_axis_b_tdata[14]),
    .O(sig00000054)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000058 (
    .I0(s_axis_a_tdata[13]),
    .I1(s_axis_b_tdata[13]),
    .I2(s_axis_a_tdata[12]),
    .I3(s_axis_b_tdata[12]),
    .O(sig00000056)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000059 (
    .I0(s_axis_a_tdata[11]),
    .I1(s_axis_b_tdata[11]),
    .I2(s_axis_a_tdata[10]),
    .I3(s_axis_b_tdata[10]),
    .O(sig00000058)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk0000005a (
    .I0(s_axis_a_tdata[9]),
    .I1(s_axis_b_tdata[9]),
    .I2(s_axis_a_tdata[8]),
    .I3(s_axis_b_tdata[8]),
    .O(sig0000005a)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk0000005b (
    .I0(s_axis_a_tdata[7]),
    .I1(s_axis_b_tdata[7]),
    .I2(s_axis_a_tdata[6]),
    .I3(s_axis_b_tdata[6]),
    .O(sig0000005c)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk0000005c (
    .I0(s_axis_a_tdata[5]),
    .I1(s_axis_b_tdata[5]),
    .I2(s_axis_a_tdata[4]),
    .I3(s_axis_b_tdata[4]),
    .O(sig0000005e)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk0000005d (
    .I0(s_axis_a_tdata[3]),
    .I1(s_axis_b_tdata[3]),
    .I2(s_axis_a_tdata[2]),
    .I3(s_axis_b_tdata[2]),
    .O(sig00000060)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk0000005e (
    .I0(s_axis_a_tdata[31]),
    .I1(s_axis_b_tdata[31]),
    .I2(s_axis_a_tdata[30]),
    .I3(s_axis_b_tdata[30]),
    .O(sig00000044)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk0000005f (
    .I0(s_axis_a_tdata[29]),
    .I1(s_axis_b_tdata[29]),
    .I2(s_axis_a_tdata[28]),
    .I3(s_axis_b_tdata[28]),
    .O(sig00000046)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000060 (
    .I0(s_axis_a_tdata[27]),
    .I1(s_axis_b_tdata[27]),
    .I2(s_axis_a_tdata[26]),
    .I3(s_axis_b_tdata[26]),
    .O(sig00000048)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000061 (
    .I0(s_axis_a_tdata[25]),
    .I1(s_axis_b_tdata[25]),
    .I2(s_axis_a_tdata[24]),
    .I3(s_axis_b_tdata[24]),
    .O(sig0000004a)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000062 (
    .I0(s_axis_a_tdata[23]),
    .I1(s_axis_b_tdata[23]),
    .I2(s_axis_a_tdata[22]),
    .I3(s_axis_b_tdata[22]),
    .O(sig0000004c)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000063 (
    .I0(s_axis_a_tdata[21]),
    .I1(s_axis_b_tdata[21]),
    .I2(s_axis_a_tdata[20]),
    .I3(s_axis_b_tdata[20]),
    .O(sig0000004e)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000064 (
    .I0(s_axis_a_tdata[1]),
    .I1(s_axis_b_tdata[1]),
    .I2(s_axis_a_tdata[0]),
    .I3(s_axis_b_tdata[0]),
    .O(sig00000062)
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  blk00000065 (
    .I0(s_axis_a_tdata[31]),
    .I1(s_axis_b_tdata[31]),
    .I2(s_axis_a_tdata[30]),
    .I3(s_axis_b_tdata[30]),
    .O(sig00000043)
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  blk00000066 (
    .I0(s_axis_b_tdata[29]),
    .I1(s_axis_a_tdata[29]),
    .I2(s_axis_a_tdata[28]),
    .I3(s_axis_b_tdata[28]),
    .O(sig00000045)
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  blk00000067 (
    .I0(s_axis_b_tdata[27]),
    .I1(s_axis_a_tdata[27]),
    .I2(s_axis_a_tdata[26]),
    .I3(s_axis_b_tdata[26]),
    .O(sig00000047)
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  blk00000068 (
    .I0(s_axis_b_tdata[25]),
    .I1(s_axis_a_tdata[25]),
    .I2(s_axis_a_tdata[24]),
    .I3(s_axis_b_tdata[24]),
    .O(sig00000049)
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  blk00000069 (
    .I0(s_axis_b_tdata[23]),
    .I1(s_axis_a_tdata[23]),
    .I2(s_axis_a_tdata[22]),
    .I3(s_axis_b_tdata[22]),
    .O(sig0000004b)
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  blk0000006a (
    .I0(s_axis_b_tdata[21]),
    .I1(s_axis_a_tdata[21]),
    .I2(s_axis_a_tdata[20]),
    .I3(s_axis_b_tdata[20]),
    .O(sig0000004d)
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  blk0000006b (
    .I0(s_axis_b_tdata[19]),
    .I1(s_axis_a_tdata[19]),
    .I2(s_axis_a_tdata[18]),
    .I3(s_axis_b_tdata[18]),
    .O(sig0000004f)
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  blk0000006c (
    .I0(s_axis_b_tdata[17]),
    .I1(s_axis_a_tdata[17]),
    .I2(s_axis_a_tdata[16]),
    .I3(s_axis_b_tdata[16]),
    .O(sig00000051)
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  blk0000006d (
    .I0(s_axis_b_tdata[15]),
    .I1(s_axis_a_tdata[15]),
    .I2(s_axis_a_tdata[14]),
    .I3(s_axis_b_tdata[14]),
    .O(sig00000053)
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  blk0000006e (
    .I0(s_axis_b_tdata[13]),
    .I1(s_axis_a_tdata[13]),
    .I2(s_axis_a_tdata[12]),
    .I3(s_axis_b_tdata[12]),
    .O(sig00000055)
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  blk0000006f (
    .I0(s_axis_b_tdata[11]),
    .I1(s_axis_a_tdata[11]),
    .I2(s_axis_a_tdata[10]),
    .I3(s_axis_b_tdata[10]),
    .O(sig00000057)
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  blk00000070 (
    .I0(s_axis_b_tdata[9]),
    .I1(s_axis_a_tdata[9]),
    .I2(s_axis_a_tdata[8]),
    .I3(s_axis_b_tdata[8]),
    .O(sig00000059)
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  blk00000071 (
    .I0(s_axis_b_tdata[7]),
    .I1(s_axis_a_tdata[7]),
    .I2(s_axis_a_tdata[6]),
    .I3(s_axis_b_tdata[6]),
    .O(sig0000005b)
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  blk00000072 (
    .I0(s_axis_b_tdata[5]),
    .I1(s_axis_a_tdata[5]),
    .I2(s_axis_a_tdata[4]),
    .I3(s_axis_b_tdata[4]),
    .O(sig0000005d)
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  blk00000073 (
    .I0(s_axis_b_tdata[3]),
    .I1(s_axis_a_tdata[3]),
    .I2(s_axis_a_tdata[2]),
    .I3(s_axis_b_tdata[2]),
    .O(sig0000005f)
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  blk00000074 (
    .I0(s_axis_b_tdata[1]),
    .I1(s_axis_a_tdata[1]),
    .I2(s_axis_a_tdata[0]),
    .I3(s_axis_b_tdata[0]),
    .O(sig00000061)
  );
  LUT6 #(
    .INIT ( 64'h9999999990909098 ))
  blk00000075 (
    .I0(sig0000001b),
    .I1(sig0000001d),
    .I2(sig00000018),
    .I3(sig0000001a),
    .I4(sig0000001e),
    .I5(sig00000016),
    .O(sig00000073)
  );
  LUT6 #(
    .INIT ( 64'h0100001000500100 ))
  blk00000076 (
    .I0(sig0000001a),
    .I1(sig0000001e),
    .I2(sig0000001d),
    .I3(sig0000001b),
    .I4(sig00000015),
    .I5(sig00000014),
    .O(sig00000074)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAAAAA2A ))
  blk00000077 (
    .I0(sig0000001e),
    .I1(sig0000001b),
    .I2(sig00000015),
    .I3(sig00000014),
    .I4(sig0000001d),
    .I5(sig0000001a),
    .O(sig00000075)
  );
  LUT6 #(
    .INIT ( 64'h5703570357025500 ))
  blk00000078 (
    .I0(sig0000001c),
    .I1(sig00000018),
    .I2(sig00000016),
    .I3(sig00000073),
    .I4(sig00000075),
    .I5(sig00000074),
    .O(sig00000012)
  );

// synthesis translate_on

endmodule

// synthesis translate_off

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

// synthesis translate_on
