////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: fmul_v6.v
// /___/   /\     Timestamp: Fri Apr 11 12:31:11 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog C:/Users/Bita/Desktop/ETHERNET/HW_Example_13_2_ML605/tmp/_cg/fmul_v6.ngc C:/Users/Bita/Desktop/ETHERNET/HW_Example_13_2_ML605/tmp/_cg/fmul_v6.v 
// Device	: 6vlx240tff1156-1
// Input file	: C:/Users/Bita/Desktop/ETHERNET/HW_Example_13_2_ML605/tmp/_cg/fmul_v6.ngc
// Output file	: C:/Users/Bita/Desktop/ETHERNET/HW_Example_13_2_ML605/tmp/_cg/fmul_v6.v
// # of Modules	: 1
// Design Name	: fmul_v6
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

module fmul_v6 (
  aclk, aclken, s_axis_a_tvalid, s_axis_b_tvalid, m_axis_result_tvalid, s_axis_a_tdata, s_axis_b_tdata, m_axis_result_tdata
)/* synthesis syn_black_box syn_noprune=1 */;
  input aclk;
  input aclken;
  input s_axis_a_tvalid;
  input s_axis_b_tvalid;
  output m_axis_result_tvalid;
  input [31 : 0] s_axis_a_tdata;
  input [31 : 0] s_axis_b_tdata;
  output [31 : 0] m_axis_result_tdata;
  
  // synthesis translate_off
  
  wire \U0/i_synth/i_nd_to_rdy/opt_has_pipe.pipe_4 ;
  wire sig00000001;
  wire sig00000002;
  wire sig00000003;
  wire \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_21 ;
  wire \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_20 ;
  wire \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_19 ;
  wire \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_18 ;
  wire \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_17 ;
  wire \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_16 ;
  wire \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_15 ;
  wire \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_14 ;
  wire \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_13 ;
  wire \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_12 ;
  wire \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_11 ;
  wire \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_10 ;
  wire \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_9 ;
  wire \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_8 ;
  wire \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_7 ;
  wire \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_6 ;
  wire \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_5 ;
  wire \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_4 ;
  wire \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_3 ;
  wire \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_2 ;
  wire \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_1 ;
  wire \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_0 ;
  wire \U0/i_synth/MULT.OP/OP/sign_op ;
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
  wire sig00000076;
  wire sig00000077;
  wire sig00000078;
  wire sig00000079;
  wire sig0000007a;
  wire sig0000007b;
  wire sig0000007c;
  wire sig0000007d;
  wire sig0000007e;
  wire sig0000007f;
  wire sig00000080;
  wire sig00000081;
  wire sig00000082;
  wire sig00000083;
  wire sig00000084;
  wire sig00000085;
  wire sig00000086;
  wire sig00000087;
  wire sig00000088;
  wire sig00000089;
  wire sig0000008a;
  wire sig0000008b;
  wire sig0000008c;
  wire sig0000008d;
  wire sig0000008e;
  wire sig0000008f;
  wire sig00000090;
  wire sig00000091;
  wire sig00000092;
  wire sig00000093;
  wire sig00000094;
  wire sig00000095;
  wire sig00000096;
  wire sig00000097;
  wire sig00000098;
  wire sig00000099;
  wire sig0000009a;
  wire sig0000009b;
  wire sig0000009c;
  wire sig0000009d;
  wire sig0000009e;
  wire sig0000009f;
  wire sig000000a0;
  wire sig000000a1;
  wire sig000000a2;
  wire sig000000a3;
  wire sig000000a4;
  wire sig000000a5;
  wire sig000000a6;
  wire sig000000a7;
  wire sig000000a8;
  wire sig000000a9;
  wire sig000000aa;
  wire sig000000ab;
  wire sig000000ac;
  wire sig000000ad;
  wire sig000000ae;
  wire sig000000af;
  wire sig000000b0;
  wire sig000000b1;
  wire sig000000b2;
  wire sig000000b3;
  wire sig000000b4;
  wire sig000000b5;
  wire sig000000b6;
  wire sig000000b7;
  wire sig000000b8;
  wire sig000000b9;
  wire sig000000ba;
  wire sig000000bb;
  wire sig000000bc;
  wire sig000000bd;
  wire sig000000be;
  wire sig000000bf;
  wire sig000000c0;
  wire sig000000c1;
  wire sig000000c2;
  wire sig000000c3;
  wire sig000000c4;
  wire sig000000c5;
  wire sig000000c6;
  wire sig000000c7;
  wire sig000000c8;
  wire sig000000c9;
  wire sig000000ca;
  wire sig000000cb;
  wire sig000000cc;
  wire sig000000cd;
  wire sig000000ce;
  wire sig000000cf;
  wire sig000000d0;
  wire sig000000d1;
  wire sig000000d2;
  wire sig000000d3;
  wire sig000000d4;
  wire sig000000d5;
  wire sig000000d6;
  wire sig000000d7;
  wire sig000000d8;
  wire sig000000d9;
  wire sig000000da;
  wire sig000000db;
  wire sig000000dc;
  wire sig000000dd;
  wire sig000000de;
  wire sig000000df;
  wire sig000000e0;
  wire sig000000e1;
  wire sig000000e2;
  wire sig000000e3;
  wire sig000000e4;
  wire sig000000e5;
  wire sig000000e6;
  wire sig000000e7;
  wire sig000000e8;
  wire sig000000e9;
  wire sig000000ea;
  wire sig000000eb;
  wire sig000000ec;
  wire sig000000ed;
  wire sig000000ee;
  wire sig000000ef;
  wire sig000000f0;
  wire sig000000f1;
  wire sig000000f2;
  wire sig000000f3;
  wire sig000000f4;
  wire sig000000f5;
  wire sig000000f6;
  wire sig000000f7;
  wire sig000000f8;
  wire sig000000f9;
  wire sig000000fa;
  wire sig000000fb;
  wire sig000000fc;
  wire sig000000fd;
  wire sig000000fe;
  wire sig000000ff;
  wire sig00000100;
  wire sig00000101;
  wire sig00000102;
  wire sig00000103;
  wire sig00000104;
  wire sig00000105;
  wire sig00000106;
  wire sig00000107;
  wire sig00000108;
  wire sig00000109;
  wire sig0000010a;
  wire sig0000010b;
  wire sig0000010c;
  wire sig0000010d;
  wire sig0000010e;
  wire sig0000010f;
  wire sig00000110;
  wire sig00000111;
  wire sig00000112;
  wire sig00000113;
  wire sig00000114;
  wire sig00000115;
  wire sig00000116;
  wire sig00000117;
  wire sig00000118;
  wire sig00000119;
  wire sig0000011a;
  wire sig0000011b;
  wire sig0000011c;
  wire sig0000011d;
  wire sig0000011e;
  wire sig0000011f;
  wire sig00000120;
  wire sig00000121;
  wire sig00000122;
  wire sig00000123;
  wire sig00000124;
  wire sig00000125;
  wire sig00000126;
  wire sig00000127;
  wire sig00000128;
  wire sig00000129;
  wire sig0000012a;
  wire sig0000012b;
  wire sig0000012c;
  wire sig0000012d;
  wire sig0000012e;
  wire sig0000012f;
  wire sig00000130;
  wire sig00000131;
  wire sig00000132;
  wire sig00000133;
  wire sig00000134;
  wire sig00000135;
  wire sig00000136;
  wire sig00000137;
  wire sig00000138;
  wire sig00000139;
  wire sig0000013a;
  wire sig0000013b;
  wire sig0000013c;
  wire sig0000013d;
  wire sig0000013e;
  wire sig0000013f;
  wire sig00000140;
  wire sig00000141;
  wire sig00000142;
  wire sig00000143;
  wire sig00000144;
  wire sig00000145;
  wire sig00000146;
  wire sig00000147;
  wire sig00000148;
  wire sig00000149;
  wire sig0000014a;
  wire sig0000014b;
  wire sig0000014c;
  wire sig0000014d;
  wire sig0000014e;
  wire sig0000014f;
  wire sig00000150;
  wire sig00000151;
  wire sig00000152;
  wire sig00000153;
  wire sig00000154;
  wire sig00000155;
  wire sig00000156;
  wire sig00000157;
  wire sig00000158;
  wire sig00000159;
  wire sig0000015a;
  wire sig0000015b;
  wire sig0000015c;
  wire sig0000015d;
  wire sig0000015e;
  wire sig0000015f;
  wire sig00000160;
  wire sig00000161;
  wire sig00000162;
  wire sig00000163;
  wire sig00000164;
  wire sig00000165;
  wire sig00000166;
  wire sig00000167;
  wire sig00000168;
  wire sig00000169;
  wire sig0000016a;
  wire sig0000016b;
  wire sig0000016c;
  wire sig0000016d;
  wire sig0000016e;
  wire sig0000016f;
  wire sig00000170;
  wire sig00000171;
  wire sig00000172;
  wire sig00000173;
  wire sig00000174;
  wire sig00000175;
  wire sig00000176;
  wire sig00000177;
  wire sig00000178;
  wire sig00000179;
  wire sig0000017a;
  wire sig0000017b;
  wire sig0000017c;
  wire sig0000017d;
  wire sig0000017e;
  wire sig0000017f;
  wire sig00000180;
  wire sig00000181;
  wire sig00000182;
  wire sig00000183;
  wire sig00000184;
  wire sig00000185;
  wire sig00000186;
  wire sig00000187;
  wire sig00000188;
  wire sig00000189;
  wire sig0000018a;
  wire sig0000018b;
  wire sig0000018c;
  wire sig0000018d;
  wire sig0000018e;
  wire sig0000018f;
  wire sig00000190;
  wire sig00000191;
  wire sig00000192;
  wire sig00000193;
  wire sig00000194;
  wire NLW_blk00000005_PATTERNBDETECT_UNCONNECTED;
  wire NLW_blk00000005_MULTSIGNOUT_UNCONNECTED;
  wire NLW_blk00000005_CARRYCASCOUT_UNCONNECTED;
  wire NLW_blk00000005_UNDERFLOW_UNCONNECTED;
  wire NLW_blk00000005_OVERFLOW_UNCONNECTED;
  wire \NLW_blk00000005_CARRYOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000005_CARRYOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000005_CARRYOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000005_CARRYOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000005_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000005_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000005_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000005_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000005_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000005_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000005_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000005_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000005_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000005_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000005_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000005_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000005_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000005_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000005_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000005_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000005_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000005_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000005_P<47>_UNCONNECTED ;
  wire \NLW_blk00000005_P<46>_UNCONNECTED ;
  wire \NLW_blk00000005_P<45>_UNCONNECTED ;
  wire \NLW_blk00000005_P<44>_UNCONNECTED ;
  wire \NLW_blk00000005_P<43>_UNCONNECTED ;
  wire \NLW_blk00000005_P<42>_UNCONNECTED ;
  wire \NLW_blk00000005_P<41>_UNCONNECTED ;
  wire \NLW_blk00000005_P<40>_UNCONNECTED ;
  wire \NLW_blk00000005_P<39>_UNCONNECTED ;
  wire \NLW_blk00000005_P<38>_UNCONNECTED ;
  wire \NLW_blk00000005_P<37>_UNCONNECTED ;
  wire \NLW_blk00000005_P<36>_UNCONNECTED ;
  wire \NLW_blk00000005_P<35>_UNCONNECTED ;
  wire \NLW_blk00000005_P<34>_UNCONNECTED ;
  wire \NLW_blk00000005_P<33>_UNCONNECTED ;
  wire \NLW_blk00000005_P<32>_UNCONNECTED ;
  wire \NLW_blk00000005_P<31>_UNCONNECTED ;
  wire \NLW_blk00000005_P<30>_UNCONNECTED ;
  wire \NLW_blk00000005_P<29>_UNCONNECTED ;
  wire \NLW_blk00000005_P<28>_UNCONNECTED ;
  wire \NLW_blk00000005_P<27>_UNCONNECTED ;
  wire \NLW_blk00000005_P<26>_UNCONNECTED ;
  wire \NLW_blk00000005_P<25>_UNCONNECTED ;
  wire \NLW_blk00000005_P<24>_UNCONNECTED ;
  wire \NLW_blk00000005_P<23>_UNCONNECTED ;
  wire \NLW_blk00000005_P<22>_UNCONNECTED ;
  wire \NLW_blk00000005_P<21>_UNCONNECTED ;
  wire \NLW_blk00000005_P<20>_UNCONNECTED ;
  wire \NLW_blk00000005_P<19>_UNCONNECTED ;
  wire \NLW_blk00000005_P<18>_UNCONNECTED ;
  wire \NLW_blk00000005_P<17>_UNCONNECTED ;
  wire \NLW_blk00000005_P<16>_UNCONNECTED ;
  wire \NLW_blk00000005_P<15>_UNCONNECTED ;
  wire \NLW_blk00000005_P<14>_UNCONNECTED ;
  wire \NLW_blk00000005_P<13>_UNCONNECTED ;
  wire \NLW_blk00000005_P<12>_UNCONNECTED ;
  wire \NLW_blk00000005_P<11>_UNCONNECTED ;
  wire \NLW_blk00000005_P<10>_UNCONNECTED ;
  wire \NLW_blk00000005_P<9>_UNCONNECTED ;
  wire \NLW_blk00000005_P<8>_UNCONNECTED ;
  wire \NLW_blk00000005_P<7>_UNCONNECTED ;
  wire \NLW_blk00000005_P<6>_UNCONNECTED ;
  wire \NLW_blk00000005_P<5>_UNCONNECTED ;
  wire \NLW_blk00000005_P<4>_UNCONNECTED ;
  wire \NLW_blk00000005_P<3>_UNCONNECTED ;
  wire \NLW_blk00000005_P<2>_UNCONNECTED ;
  wire \NLW_blk00000005_P<1>_UNCONNECTED ;
  wire \NLW_blk00000005_P<0>_UNCONNECTED ;
  wire NLW_blk00000006_PATTERNBDETECT_UNCONNECTED;
  wire NLW_blk00000006_MULTSIGNOUT_UNCONNECTED;
  wire NLW_blk00000006_CARRYCASCOUT_UNCONNECTED;
  wire NLW_blk00000006_UNDERFLOW_UNCONNECTED;
  wire NLW_blk00000006_OVERFLOW_UNCONNECTED;
  wire \NLW_blk00000006_ACOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000006_ACOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000006_CARRYOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000006_CARRYOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000006_CARRYOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000006_CARRYOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000006_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000006_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000006_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000006_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000006_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000006_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000006_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000006_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000006_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000006_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000006_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000006_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000006_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000006_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000006_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000006_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000006_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000006_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000006_P<47>_UNCONNECTED ;
  wire \NLW_blk00000006_P<46>_UNCONNECTED ;
  wire \NLW_blk00000006_P<45>_UNCONNECTED ;
  wire \NLW_blk00000006_P<44>_UNCONNECTED ;
  wire \NLW_blk00000006_P<43>_UNCONNECTED ;
  wire \NLW_blk00000006_P<42>_UNCONNECTED ;
  wire \NLW_blk00000006_P<41>_UNCONNECTED ;
  wire \NLW_blk00000006_P<40>_UNCONNECTED ;
  wire \NLW_blk00000006_P<39>_UNCONNECTED ;
  wire \NLW_blk00000006_P<38>_UNCONNECTED ;
  wire \NLW_blk00000006_P<37>_UNCONNECTED ;
  wire \NLW_blk00000006_P<36>_UNCONNECTED ;
  wire \NLW_blk00000006_P<35>_UNCONNECTED ;
  wire \NLW_blk00000006_P<34>_UNCONNECTED ;
  wire \NLW_blk00000006_P<33>_UNCONNECTED ;
  wire \NLW_blk00000006_P<32>_UNCONNECTED ;
  wire \NLW_blk00000006_P<31>_UNCONNECTED ;
  wire \NLW_blk00000006_P<4>_UNCONNECTED ;
  wire \NLW_blk00000006_P<3>_UNCONNECTED ;
  wire \NLW_blk00000006_P<2>_UNCONNECTED ;
  wire \NLW_blk00000006_P<1>_UNCONNECTED ;
  wire \NLW_blk00000006_P<0>_UNCONNECTED ;
  wire NLW_blk00000044_PATTERNBDETECT_UNCONNECTED;
  wire NLW_blk00000044_MULTSIGNOUT_UNCONNECTED;
  wire NLW_blk00000044_CARRYCASCOUT_UNCONNECTED;
  wire NLW_blk00000044_UNDERFLOW_UNCONNECTED;
  wire NLW_blk00000044_PATTERNDETECT_UNCONNECTED;
  wire NLW_blk00000044_OVERFLOW_UNCONNECTED;
  wire \NLW_blk00000044_ACOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000044_ACOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000044_CARRYOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000044_CARRYOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000044_CARRYOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000044_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000044_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000044_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000044_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000044_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000044_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000044_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000044_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000044_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000044_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000044_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000044_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000044_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000044_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000044_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000044_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000044_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000044_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000044_P<40>_UNCONNECTED ;
  wire \NLW_blk00000044_P<31>_UNCONNECTED ;
  wire \NLW_blk00000044_P<6>_UNCONNECTED ;
  wire \NLW_blk00000044_P<5>_UNCONNECTED ;
  wire \NLW_blk00000044_P<4>_UNCONNECTED ;
  wire \NLW_blk00000044_P<3>_UNCONNECTED ;
  wire \NLW_blk00000044_P<2>_UNCONNECTED ;
  wire \NLW_blk00000044_P<1>_UNCONNECTED ;
  wire \NLW_blk00000044_P<0>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<47>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<46>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<45>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<44>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<43>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<42>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<41>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<40>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<39>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<38>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<37>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<36>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<35>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<34>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<33>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<32>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<31>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<30>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000044_PCOUT<0>_UNCONNECTED ;
  wire NLW_blk000000f3_Q15_UNCONNECTED;
  wire NLW_blk000000f5_Q15_UNCONNECTED;
  wire [22 : 22] \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op ;
  wire [7 : 0] \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/exp_op ;
  assign
    m_axis_result_tdata[31] = \U0/i_synth/MULT.OP/OP/sign_op ,
    m_axis_result_tdata[30] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/exp_op [7],
    m_axis_result_tdata[29] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/exp_op [6],
    m_axis_result_tdata[28] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/exp_op [5],
    m_axis_result_tdata[27] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/exp_op [4],
    m_axis_result_tdata[26] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/exp_op [3],
    m_axis_result_tdata[25] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/exp_op [2],
    m_axis_result_tdata[24] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/exp_op [1],
    m_axis_result_tdata[23] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/exp_op [0],
    m_axis_result_tdata[22] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op [22],
    m_axis_result_tdata[21] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_0 ,
    m_axis_result_tdata[20] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_1 ,
    m_axis_result_tdata[19] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_2 ,
    m_axis_result_tdata[18] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_3 ,
    m_axis_result_tdata[17] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_4 ,
    m_axis_result_tdata[16] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_5 ,
    m_axis_result_tdata[15] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_6 ,
    m_axis_result_tdata[14] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_7 ,
    m_axis_result_tdata[13] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_8 ,
    m_axis_result_tdata[12] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_9 ,
    m_axis_result_tdata[11] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_10 ,
    m_axis_result_tdata[10] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_11 ,
    m_axis_result_tdata[9] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_12 ,
    m_axis_result_tdata[8] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_13 ,
    m_axis_result_tdata[7] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_14 ,
    m_axis_result_tdata[6] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_15 ,
    m_axis_result_tdata[5] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_16 ,
    m_axis_result_tdata[4] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_17 ,
    m_axis_result_tdata[3] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_18 ,
    m_axis_result_tdata[2] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_19 ,
    m_axis_result_tdata[1] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_20 ,
    m_axis_result_tdata[0] = \NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_21 ,
    m_axis_result_tvalid = \U0/i_synth/i_nd_to_rdy/opt_has_pipe.pipe_4 ;
  VCC   blk00000001 (
    .P(sig00000001)
  );
  GND   blk00000002 (
    .G(sig00000002)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000003 (
    .C(aclk),
    .CE(aclken),
    .D(sig0000005c),
    .Q(sig00000004)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000004 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000003),
    .Q(sig000000ac)
  );
  DSP48E1 #(
    .ACASCREG ( 0 ),
    .ADREG ( 0 ),
    .ALUMODEREG ( 0 ),
    .AREG ( 0 ),
    .AUTORESET_PATDET ( "NO_RESET" ),
    .A_INPUT ( "DIRECT" ),
    .BCASCREG ( 0 ),
    .BREG ( 0 ),
    .B_INPUT ( "DIRECT" ),
    .CARRYINREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .CREG ( 0 ),
    .DREG ( 0 ),
    .INMODEREG ( 0 ),
    .MASK ( 48'hFFFFFFFE0000 ),
    .MREG ( 1 ),
    .OPMODEREG ( 0 ),
    .PATTERN ( 48'h000000000000 ),
    .PREG ( 1 ),
    .SEL_MASK ( "MASK" ),
    .SEL_PATTERN ( "PATTERN" ),
    .USE_DPORT ( "FALSE" ),
    .USE_MULT ( "MULTIPLY" ),
    .USE_PATTERN_DETECT ( "PATDET" ),
    .USE_SIMD ( "ONE48" ))
  blk00000005 (
    .PATTERNBDETECT(NLW_blk00000005_PATTERNBDETECT_UNCONNECTED),
    .RSTC(sig00000002),
    .CEB1(sig00000002),
    .CEAD(sig00000002),
    .MULTSIGNOUT(NLW_blk00000005_MULTSIGNOUT_UNCONNECTED),
    .CEC(sig00000002),
    .RSTM(sig00000002),
    .MULTSIGNIN(sig00000002),
    .CEB2(sig00000002),
    .RSTCTRL(sig00000002),
    .CEP(aclken),
    .CARRYCASCOUT(NLW_blk00000005_CARRYCASCOUT_UNCONNECTED),
    .RSTA(sig00000002),
    .CECARRYIN(sig00000002),
    .UNDERFLOW(NLW_blk00000005_UNDERFLOW_UNCONNECTED),
    .PATTERNDETECT(sig0000005c),
    .RSTALUMODE(sig00000002),
    .RSTALLCARRYIN(sig00000002),
    .CED(sig00000002),
    .RSTD(sig00000002),
    .CEALUMODE(sig00000002),
    .CEA2(sig00000002),
    .CLK(aclk),
    .CEA1(sig00000002),
    .RSTB(sig00000002),
    .OVERFLOW(NLW_blk00000005_OVERFLOW_UNCONNECTED),
    .CECTRL(sig00000002),
    .CEM(aclken),
    .CARRYIN(sig00000002),
    .CARRYCASCIN(sig00000002),
    .RSTINMODE(sig00000002),
    .CEINMODE(sig00000002),
    .RSTP(sig00000002),
    .ACOUT({sig000000aa, sig000000a9, sig000000a8, sig000000a7, sig000000a6, sig000000a5, sig000000a4, sig000000a3, sig000000a2, sig000000a1, 
sig000000a0, sig0000009f, sig0000009e, sig0000009d, sig0000009c, sig0000009b, sig0000009a, sig00000099, sig00000098, sig00000097, sig00000096, 
sig00000095, sig00000094, sig00000093, sig00000092, sig00000091, sig00000090, sig0000008f, sig0000008e, sig0000008d}),
    .OPMODE({sig00000002, sig00000002, sig00000002, sig00000002, sig00000001, sig00000002, sig00000001}),
    .PCIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .ALUMODE({sig00000002, sig00000002, sig00000002, sig00000002}),
    .C({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002
, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002}),
    .CARRYOUT({\NLW_blk00000005_CARRYOUT<3>_UNCONNECTED , \NLW_blk00000005_CARRYOUT<2>_UNCONNECTED , \NLW_blk00000005_CARRYOUT<1>_UNCONNECTED , 
\NLW_blk00000005_CARRYOUT<0>_UNCONNECTED }),
    .INMODE({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .BCIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .B({sig00000002, s_axis_b_tdata[16], s_axis_b_tdata[15], s_axis_b_tdata[14], s_axis_b_tdata[13], s_axis_b_tdata[12], s_axis_b_tdata[11], 
s_axis_b_tdata[10], s_axis_b_tdata[9], s_axis_b_tdata[8], s_axis_b_tdata[7], s_axis_b_tdata[6], s_axis_b_tdata[5], s_axis_b_tdata[4], 
s_axis_b_tdata[3], s_axis_b_tdata[2], s_axis_b_tdata[1], s_axis_b_tdata[0]}),
    .BCOUT({\NLW_blk00000005_BCOUT<17>_UNCONNECTED , \NLW_blk00000005_BCOUT<16>_UNCONNECTED , \NLW_blk00000005_BCOUT<15>_UNCONNECTED , 
\NLW_blk00000005_BCOUT<14>_UNCONNECTED , \NLW_blk00000005_BCOUT<13>_UNCONNECTED , \NLW_blk00000005_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000005_BCOUT<11>_UNCONNECTED , \NLW_blk00000005_BCOUT<10>_UNCONNECTED , \NLW_blk00000005_BCOUT<9>_UNCONNECTED , 
\NLW_blk00000005_BCOUT<8>_UNCONNECTED , \NLW_blk00000005_BCOUT<7>_UNCONNECTED , \NLW_blk00000005_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000005_BCOUT<5>_UNCONNECTED , \NLW_blk00000005_BCOUT<4>_UNCONNECTED , \NLW_blk00000005_BCOUT<3>_UNCONNECTED , 
\NLW_blk00000005_BCOUT<2>_UNCONNECTED , \NLW_blk00000005_BCOUT<1>_UNCONNECTED , \NLW_blk00000005_BCOUT<0>_UNCONNECTED }),
    .D({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002
, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002}),
    .P({\NLW_blk00000005_P<47>_UNCONNECTED , \NLW_blk00000005_P<46>_UNCONNECTED , \NLW_blk00000005_P<45>_UNCONNECTED , 
\NLW_blk00000005_P<44>_UNCONNECTED , \NLW_blk00000005_P<43>_UNCONNECTED , \NLW_blk00000005_P<42>_UNCONNECTED , \NLW_blk00000005_P<41>_UNCONNECTED , 
\NLW_blk00000005_P<40>_UNCONNECTED , \NLW_blk00000005_P<39>_UNCONNECTED , \NLW_blk00000005_P<38>_UNCONNECTED , \NLW_blk00000005_P<37>_UNCONNECTED , 
\NLW_blk00000005_P<36>_UNCONNECTED , \NLW_blk00000005_P<35>_UNCONNECTED , \NLW_blk00000005_P<34>_UNCONNECTED , \NLW_blk00000005_P<33>_UNCONNECTED , 
\NLW_blk00000005_P<32>_UNCONNECTED , \NLW_blk00000005_P<31>_UNCONNECTED , \NLW_blk00000005_P<30>_UNCONNECTED , \NLW_blk00000005_P<29>_UNCONNECTED , 
\NLW_blk00000005_P<28>_UNCONNECTED , \NLW_blk00000005_P<27>_UNCONNECTED , \NLW_blk00000005_P<26>_UNCONNECTED , \NLW_blk00000005_P<25>_UNCONNECTED , 
\NLW_blk00000005_P<24>_UNCONNECTED , \NLW_blk00000005_P<23>_UNCONNECTED , \NLW_blk00000005_P<22>_UNCONNECTED , \NLW_blk00000005_P<21>_UNCONNECTED , 
\NLW_blk00000005_P<20>_UNCONNECTED , \NLW_blk00000005_P<19>_UNCONNECTED , \NLW_blk00000005_P<18>_UNCONNECTED , \NLW_blk00000005_P<17>_UNCONNECTED , 
\NLW_blk00000005_P<16>_UNCONNECTED , \NLW_blk00000005_P<15>_UNCONNECTED , \NLW_blk00000005_P<14>_UNCONNECTED , \NLW_blk00000005_P<13>_UNCONNECTED , 
\NLW_blk00000005_P<12>_UNCONNECTED , \NLW_blk00000005_P<11>_UNCONNECTED , \NLW_blk00000005_P<10>_UNCONNECTED , \NLW_blk00000005_P<9>_UNCONNECTED , 
\NLW_blk00000005_P<8>_UNCONNECTED , \NLW_blk00000005_P<7>_UNCONNECTED , \NLW_blk00000005_P<6>_UNCONNECTED , \NLW_blk00000005_P<5>_UNCONNECTED , 
\NLW_blk00000005_P<4>_UNCONNECTED , \NLW_blk00000005_P<3>_UNCONNECTED , \NLW_blk00000005_P<2>_UNCONNECTED , \NLW_blk00000005_P<1>_UNCONNECTED , 
\NLW_blk00000005_P<0>_UNCONNECTED }),
    .A({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000001, s_axis_a_tdata[22], s_axis_a_tdata[21], 
s_axis_a_tdata[20], s_axis_a_tdata[19], s_axis_a_tdata[18], s_axis_a_tdata[17], s_axis_a_tdata[16], s_axis_a_tdata[15], s_axis_a_tdata[14], 
s_axis_a_tdata[13], s_axis_a_tdata[12], s_axis_a_tdata[11], s_axis_a_tdata[10], s_axis_a_tdata[9], s_axis_a_tdata[8], s_axis_a_tdata[7], 
s_axis_a_tdata[6], s_axis_a_tdata[5], s_axis_a_tdata[4], s_axis_a_tdata[3], s_axis_a_tdata[2], s_axis_a_tdata[1], s_axis_a_tdata[0]}),
    .PCOUT({sig0000008c, sig0000008b, sig0000008a, sig00000089, sig00000088, sig00000087, sig00000086, sig00000085, sig00000084, sig00000083, 
sig00000082, sig00000081, sig00000080, sig0000007f, sig0000007e, sig0000007d, sig0000007c, sig0000007b, sig0000007a, sig00000079, sig00000078, 
sig00000077, sig00000076, sig00000075, sig00000074, sig00000073, sig00000072, sig00000071, sig00000070, sig0000006f, sig0000006e, sig0000006d, 
sig0000006c, sig0000006b, sig0000006a, sig00000069, sig00000068, sig00000067, sig00000066, sig00000065, sig00000064, sig00000063, sig00000062, 
sig00000061, sig00000060, sig0000005f, sig0000005e, sig0000005d}),
    .ACIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .CARRYINSEL({sig00000002, sig00000002, sig00000002})
  );
  DSP48E1 #(
    .ACASCREG ( 1 ),
    .ADREG ( 0 ),
    .ALUMODEREG ( 0 ),
    .AREG ( 1 ),
    .AUTORESET_PATDET ( "NO_RESET" ),
    .A_INPUT ( "CASCADE" ),
    .BCASCREG ( 1 ),
    .BREG ( 1 ),
    .B_INPUT ( "DIRECT" ),
    .CARRYINREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .CREG ( 0 ),
    .DREG ( 0 ),
    .INMODEREG ( 0 ),
    .MASK ( 48'hFFFFFFFFFFE0 ),
    .MREG ( 1 ),
    .OPMODEREG ( 0 ),
    .PATTERN ( 48'h000000000000 ),
    .PREG ( 1 ),
    .SEL_MASK ( "MASK" ),
    .SEL_PATTERN ( "PATTERN" ),
    .USE_DPORT ( "FALSE" ),
    .USE_MULT ( "MULTIPLY" ),
    .USE_PATTERN_DETECT ( "PATDET" ),
    .USE_SIMD ( "ONE48" ))
  blk00000006 (
    .PATTERNBDETECT(NLW_blk00000006_PATTERNBDETECT_UNCONNECTED),
    .RSTC(sig00000002),
    .CEB1(sig00000002),
    .CEAD(sig00000002),
    .MULTSIGNOUT(NLW_blk00000006_MULTSIGNOUT_UNCONNECTED),
    .CEC(sig00000002),
    .RSTM(sig00000002),
    .MULTSIGNIN(sig00000002),
    .CEB2(aclken),
    .RSTCTRL(sig00000002),
    .CEP(aclken),
    .CARRYCASCOUT(NLW_blk00000006_CARRYCASCOUT_UNCONNECTED),
    .RSTA(sig00000002),
    .CECARRYIN(sig00000002),
    .UNDERFLOW(NLW_blk00000006_UNDERFLOW_UNCONNECTED),
    .PATTERNDETECT(sig00000005),
    .RSTALUMODE(sig00000002),
    .RSTALLCARRYIN(sig00000002),
    .CED(sig00000002),
    .RSTD(sig00000002),
    .CEALUMODE(sig00000002),
    .CEA2(aclken),
    .CLK(aclk),
    .CEA1(sig00000002),
    .RSTB(sig00000002),
    .OVERFLOW(NLW_blk00000006_OVERFLOW_UNCONNECTED),
    .CECTRL(sig00000002),
    .CEM(aclken),
    .CARRYIN(sig00000002),
    .CARRYCASCIN(sig00000002),
    .RSTINMODE(sig00000002),
    .CEINMODE(sig00000002),
    .RSTP(sig00000002),
    .ACOUT({\NLW_blk00000006_ACOUT<29>_UNCONNECTED , \NLW_blk00000006_ACOUT<28>_UNCONNECTED , \NLW_blk00000006_ACOUT<27>_UNCONNECTED , 
\NLW_blk00000006_ACOUT<26>_UNCONNECTED , \NLW_blk00000006_ACOUT<25>_UNCONNECTED , \NLW_blk00000006_ACOUT<24>_UNCONNECTED , 
\NLW_blk00000006_ACOUT<23>_UNCONNECTED , \NLW_blk00000006_ACOUT<22>_UNCONNECTED , \NLW_blk00000006_ACOUT<21>_UNCONNECTED , 
\NLW_blk00000006_ACOUT<20>_UNCONNECTED , \NLW_blk00000006_ACOUT<19>_UNCONNECTED , \NLW_blk00000006_ACOUT<18>_UNCONNECTED , 
\NLW_blk00000006_ACOUT<17>_UNCONNECTED , \NLW_blk00000006_ACOUT<16>_UNCONNECTED , \NLW_blk00000006_ACOUT<15>_UNCONNECTED , 
\NLW_blk00000006_ACOUT<14>_UNCONNECTED , \NLW_blk00000006_ACOUT<13>_UNCONNECTED , \NLW_blk00000006_ACOUT<12>_UNCONNECTED , 
\NLW_blk00000006_ACOUT<11>_UNCONNECTED , \NLW_blk00000006_ACOUT<10>_UNCONNECTED , \NLW_blk00000006_ACOUT<9>_UNCONNECTED , 
\NLW_blk00000006_ACOUT<8>_UNCONNECTED , \NLW_blk00000006_ACOUT<7>_UNCONNECTED , \NLW_blk00000006_ACOUT<6>_UNCONNECTED , 
\NLW_blk00000006_ACOUT<5>_UNCONNECTED , \NLW_blk00000006_ACOUT<4>_UNCONNECTED , \NLW_blk00000006_ACOUT<3>_UNCONNECTED , 
\NLW_blk00000006_ACOUT<2>_UNCONNECTED , \NLW_blk00000006_ACOUT<1>_UNCONNECTED , \NLW_blk00000006_ACOUT<0>_UNCONNECTED }),
    .OPMODE({sig00000001, sig00000002, sig00000001, sig00000002, sig00000001, sig00000002, sig00000001}),
    .PCIN({sig0000008c, sig0000008b, sig0000008a, sig00000089, sig00000088, sig00000087, sig00000086, sig00000085, sig00000084, sig00000083, 
sig00000082, sig00000081, sig00000080, sig0000007f, sig0000007e, sig0000007d, sig0000007c, sig0000007b, sig0000007a, sig00000079, sig00000078, 
sig00000077, sig00000076, sig00000075, sig00000074, sig00000073, sig00000072, sig00000071, sig00000070, sig0000006f, sig0000006e, sig0000006d, 
sig0000006c, sig0000006b, sig0000006a, sig00000069, sig00000068, sig00000067, sig00000066, sig00000065, sig00000064, sig00000063, sig00000062, 
sig00000061, sig00000060, sig0000005f, sig0000005e, sig0000005d}),
    .ALUMODE({sig00000002, sig00000002, sig00000002, sig00000002}),
    .C({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002
, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002}),
    .CARRYOUT({\NLW_blk00000006_CARRYOUT<3>_UNCONNECTED , \NLW_blk00000006_CARRYOUT<2>_UNCONNECTED , \NLW_blk00000006_CARRYOUT<1>_UNCONNECTED , 
\NLW_blk00000006_CARRYOUT<0>_UNCONNECTED }),
    .INMODE({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .BCIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .B({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002
, sig00000001, s_axis_b_tdata[22], s_axis_b_tdata[21], s_axis_b_tdata[20], s_axis_b_tdata[19], s_axis_b_tdata[18], s_axis_b_tdata[17]}),
    .BCOUT({\NLW_blk00000006_BCOUT<17>_UNCONNECTED , \NLW_blk00000006_BCOUT<16>_UNCONNECTED , \NLW_blk00000006_BCOUT<15>_UNCONNECTED , 
\NLW_blk00000006_BCOUT<14>_UNCONNECTED , \NLW_blk00000006_BCOUT<13>_UNCONNECTED , \NLW_blk00000006_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000006_BCOUT<11>_UNCONNECTED , \NLW_blk00000006_BCOUT<10>_UNCONNECTED , \NLW_blk00000006_BCOUT<9>_UNCONNECTED , 
\NLW_blk00000006_BCOUT<8>_UNCONNECTED , \NLW_blk00000006_BCOUT<7>_UNCONNECTED , \NLW_blk00000006_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000006_BCOUT<5>_UNCONNECTED , \NLW_blk00000006_BCOUT<4>_UNCONNECTED , \NLW_blk00000006_BCOUT<3>_UNCONNECTED , 
\NLW_blk00000006_BCOUT<2>_UNCONNECTED , \NLW_blk00000006_BCOUT<1>_UNCONNECTED , \NLW_blk00000006_BCOUT<0>_UNCONNECTED }),
    .D({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002
, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002}),
    .P({\NLW_blk00000006_P<47>_UNCONNECTED , \NLW_blk00000006_P<46>_UNCONNECTED , \NLW_blk00000006_P<45>_UNCONNECTED , 
\NLW_blk00000006_P<44>_UNCONNECTED , \NLW_blk00000006_P<43>_UNCONNECTED , \NLW_blk00000006_P<42>_UNCONNECTED , \NLW_blk00000006_P<41>_UNCONNECTED , 
\NLW_blk00000006_P<40>_UNCONNECTED , \NLW_blk00000006_P<39>_UNCONNECTED , \NLW_blk00000006_P<38>_UNCONNECTED , \NLW_blk00000006_P<37>_UNCONNECTED , 
\NLW_blk00000006_P<36>_UNCONNECTED , \NLW_blk00000006_P<35>_UNCONNECTED , \NLW_blk00000006_P<34>_UNCONNECTED , \NLW_blk00000006_P<33>_UNCONNECTED , 
\NLW_blk00000006_P<32>_UNCONNECTED , \NLW_blk00000006_P<31>_UNCONNECTED , sig0000004f, sig0000004e, sig0000004d, sig0000004c, sig0000004b, sig0000004a
, sig00000049, sig00000048, sig00000047, sig00000046, sig00000045, sig00000044, sig00000043, sig00000042, sig00000041, sig00000040, sig0000003f, 
sig0000003e, sig0000003d, sig0000003c, sig0000003b, sig0000003a, sig00000039, sig00000038, sig00000037, sig00000036, 
\NLW_blk00000006_P<4>_UNCONNECTED , \NLW_blk00000006_P<3>_UNCONNECTED , \NLW_blk00000006_P<2>_UNCONNECTED , \NLW_blk00000006_P<1>_UNCONNECTED , 
\NLW_blk00000006_P<0>_UNCONNECTED }),
    .A({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002
, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .PCOUT({sig00000035, sig00000034, sig00000033, sig00000032, sig00000031, sig00000030, sig0000002f, sig0000002e, sig0000002d, sig0000002c, 
sig0000002b, sig0000002a, sig00000029, sig00000028, sig00000027, sig00000026, sig00000025, sig00000024, sig00000023, sig00000022, sig00000021, 
sig00000020, sig0000001f, sig0000001e, sig0000001d, sig0000001c, sig0000001b, sig0000001a, sig00000019, sig00000018, sig00000017, sig00000016, 
sig00000015, sig00000014, sig00000013, sig00000012, sig00000011, sig00000010, sig0000000f, sig0000000e, sig0000000d, sig0000000c, sig0000000b, 
sig0000000a, sig00000009, sig00000008, sig00000007, sig00000006}),
    .ACIN({sig000000aa, sig000000a9, sig000000a8, sig000000a7, sig000000a6, sig000000a5, sig000000a4, sig000000a3, sig000000a2, sig000000a1, 
sig000000a0, sig0000009f, sig0000009e, sig0000009d, sig0000009c, sig0000009b, sig0000009a, sig00000099, sig00000098, sig00000097, sig00000096, 
sig00000095, sig00000094, sig00000093, sig00000092, sig00000091, sig00000090, sig0000008f, sig0000008e, sig0000008d}),
    .CARRYINSEL({sig00000002, sig00000002, sig00000002})
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000007 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000c5),
    .Q(sig000000ae)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000008 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000c8),
    .Q(sig000000af)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000009 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000c6),
    .Q(sig000000b1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000a (
    .C(aclk),
    .CE(aclken),
    .D(sig000000c7),
    .Q(sig000000b0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000b (
    .C(aclk),
    .CE(aclken),
    .D(sig000000b1),
    .Q(sig000000cf)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000c (
    .C(aclk),
    .CE(aclken),
    .D(sig000000b0),
    .Q(sig000000d0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000d (
    .C(aclk),
    .CE(aclken),
    .D(sig000000c9),
    .Q(sig000000d1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000e (
    .C(aclk),
    .CE(aclken),
    .D(sig000000c1),
    .Q(sig000000d2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000f (
    .C(aclk),
    .CE(aclken),
    .D(sig000000bf),
    .Q(sig000000d3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000010 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000c0),
    .Q(sig000000d4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000011 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000be),
    .Q(sig000000d5)
  );
  XORCY   blk00000012 (
    .CI(sig000000e3),
    .LI(sig00000002),
    .O(sig000000e1)
  );
  XORCY   blk00000013 (
    .CI(sig000000e5),
    .LI(sig000000bd),
    .O(sig000000e2)
  );
  MUXCY   blk00000014 (
    .CI(sig000000e5),
    .DI(s_axis_b_tdata[30]),
    .S(sig000000bd),
    .O(sig000000e3)
  );
  XORCY   blk00000015 (
    .CI(sig000000e7),
    .LI(sig000000bc),
    .O(sig000000e4)
  );
  MUXCY   blk00000016 (
    .CI(sig000000e7),
    .DI(s_axis_b_tdata[29]),
    .S(sig000000bc),
    .O(sig000000e5)
  );
  XORCY   blk00000017 (
    .CI(sig000000e9),
    .LI(sig000000bb),
    .O(sig000000e6)
  );
  MUXCY   blk00000018 (
    .CI(sig000000e9),
    .DI(s_axis_b_tdata[28]),
    .S(sig000000bb),
    .O(sig000000e7)
  );
  XORCY   blk00000019 (
    .CI(sig000000eb),
    .LI(sig000000ba),
    .O(sig000000e8)
  );
  MUXCY   blk0000001a (
    .CI(sig000000eb),
    .DI(s_axis_b_tdata[27]),
    .S(sig000000ba),
    .O(sig000000e9)
  );
  XORCY   blk0000001b (
    .CI(sig000000ed),
    .LI(sig000000b9),
    .O(sig000000ea)
  );
  MUXCY   blk0000001c (
    .CI(sig000000ed),
    .DI(s_axis_b_tdata[26]),
    .S(sig000000b9),
    .O(sig000000eb)
  );
  XORCY   blk0000001d (
    .CI(sig000000ef),
    .LI(sig000000b8),
    .O(sig000000ec)
  );
  MUXCY   blk0000001e (
    .CI(sig000000ef),
    .DI(s_axis_b_tdata[25]),
    .S(sig000000b8),
    .O(sig000000ed)
  );
  XORCY   blk0000001f (
    .CI(sig000000f1),
    .LI(sig000000b7),
    .O(sig000000ee)
  );
  MUXCY   blk00000020 (
    .CI(sig000000f1),
    .DI(s_axis_b_tdata[24]),
    .S(sig000000b7),
    .O(sig000000ef)
  );
  XORCY   blk00000021 (
    .CI(sig00000001),
    .LI(sig000000b6),
    .O(sig000000f0)
  );
  MUXCY   blk00000022 (
    .CI(sig00000001),
    .DI(s_axis_b_tdata[23]),
    .S(sig000000b6),
    .O(sig000000f1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000023 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000e1),
    .Q(sig000000d8)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000024 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000e2),
    .Q(sig000000e0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000025 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000e4),
    .Q(sig000000df)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000026 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000e6),
    .Q(sig000000de)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000027 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000e8),
    .Q(sig000000dd)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000028 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000ea),
    .Q(sig000000dc)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000029 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000ec),
    .Q(sig000000db)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000002a (
    .C(aclk),
    .CE(aclken),
    .D(sig000000ee),
    .Q(sig000000da)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000002b (
    .C(aclk),
    .CE(aclken),
    .D(sig000000f0),
    .Q(sig000000d9)
  );
  MUXCY   blk0000002c (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig000000f7),
    .O(sig000000f2)
  );
  MUXCY   blk0000002d (
    .CI(sig000000f2),
    .DI(sig00000002),
    .S(sig000000f6),
    .O(sig000000f3)
  );
  MUXCY   blk0000002e (
    .CI(sig000000f3),
    .DI(sig00000002),
    .S(sig000000f5),
    .O(sig000000f4)
  );
  MUXCY   blk0000002f (
    .CI(sig000000f4),
    .DI(sig00000002),
    .S(sig000000f8),
    .O(sig000000d7)
  );
  MUXCY   blk00000030 (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig000000fe),
    .O(sig000000f9)
  );
  MUXCY   blk00000031 (
    .CI(sig000000f9),
    .DI(sig00000002),
    .S(sig000000fd),
    .O(sig000000fa)
  );
  MUXCY   blk00000032 (
    .CI(sig000000fa),
    .DI(sig00000002),
    .S(sig000000fc),
    .O(sig000000fb)
  );
  MUXCY   blk00000033 (
    .CI(sig000000fb),
    .DI(sig00000002),
    .S(sig000000ff),
    .O(sig000000d6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000034 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000103),
    .Q(sig000000cd)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000035 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000102),
    .Q(sig000000ce)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000036 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000101),
    .Q(sig000000cb)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000037 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000100),
    .Q(sig000000cc)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000038 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000c4),
    .Q(sig00000103)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000039 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000ca),
    .Q(sig00000102)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003a (
    .C(aclk),
    .CE(aclken),
    .D(sig000000c2),
    .Q(sig00000101)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003b (
    .C(aclk),
    .CE(aclken),
    .D(sig000000c3),
    .Q(sig00000100)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003c (
    .C(aclk),
    .CE(aclken),
    .D(sig000000e0),
    .Q(sig0000005b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003d (
    .C(aclk),
    .CE(aclken),
    .D(sig000000df),
    .Q(sig0000005a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003e (
    .C(aclk),
    .CE(aclken),
    .D(sig000000de),
    .Q(sig00000059)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003f (
    .C(aclk),
    .CE(aclken),
    .D(sig000000dd),
    .Q(sig00000058)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000040 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000dc),
    .Q(sig00000057)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000041 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000db),
    .Q(sig00000056)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000042 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000da),
    .Q(sig00000055)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000043 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000d9),
    .Q(sig00000054)
  );
  DSP48E1 #(
    .ACASCREG ( 0 ),
    .ADREG ( 0 ),
    .ALUMODEREG ( 0 ),
    .AREG ( 0 ),
    .AUTORESET_PATDET ( "NO_RESET" ),
    .A_INPUT ( "DIRECT" ),
    .BCASCREG ( 0 ),
    .BREG ( 0 ),
    .B_INPUT ( "DIRECT" ),
    .CARRYINREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .CREG ( 1 ),
    .DREG ( 0 ),
    .INMODEREG ( 0 ),
    .MASK ( 48'h3FFFFFFFFFFF ),
    .MREG ( 0 ),
    .OPMODEREG ( 0 ),
    .PATTERN ( 48'h000000000000 ),
    .PREG ( 0 ),
    .SEL_MASK ( "MASK" ),
    .SEL_PATTERN ( "PATTERN" ),
    .USE_DPORT ( "FALSE" ),
    .USE_MULT ( "NONE" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .USE_SIMD ( "ONE48" ))
  blk00000044 (
    .PATTERNBDETECT(NLW_blk00000044_PATTERNBDETECT_UNCONNECTED),
    .RSTC(sig00000002),
    .CEB1(sig00000002),
    .CEAD(sig00000002),
    .MULTSIGNOUT(NLW_blk00000044_MULTSIGNOUT_UNCONNECTED),
    .CEC(aclken),
    .RSTM(sig00000002),
    .MULTSIGNIN(sig00000002),
    .CEB2(sig00000002),
    .RSTCTRL(sig00000002),
    .CEP(sig00000002),
    .CARRYCASCOUT(NLW_blk00000044_CARRYCASCOUT_UNCONNECTED),
    .RSTA(sig00000002),
    .CECARRYIN(sig00000002),
    .UNDERFLOW(NLW_blk00000044_UNDERFLOW_UNCONNECTED),
    .PATTERNDETECT(NLW_blk00000044_PATTERNDETECT_UNCONNECTED),
    .RSTALUMODE(sig00000002),
    .RSTALLCARRYIN(sig00000002),
    .CED(sig00000002),
    .RSTD(sig00000002),
    .CEALUMODE(sig00000002),
    .CEA2(sig00000002),
    .CLK(aclk),
    .CEA1(sig00000002),
    .RSTB(sig00000002),
    .OVERFLOW(NLW_blk00000044_OVERFLOW_UNCONNECTED),
    .CECTRL(sig00000002),
    .CEM(sig00000002),
    .CARRYIN(sig00000002),
    .CARRYCASCIN(sig00000002),
    .RSTINMODE(sig00000002),
    .CEINMODE(sig00000002),
    .RSTP(sig00000002),
    .ACOUT({\NLW_blk00000044_ACOUT<29>_UNCONNECTED , \NLW_blk00000044_ACOUT<28>_UNCONNECTED , \NLW_blk00000044_ACOUT<27>_UNCONNECTED , 
\NLW_blk00000044_ACOUT<26>_UNCONNECTED , \NLW_blk00000044_ACOUT<25>_UNCONNECTED , \NLW_blk00000044_ACOUT<24>_UNCONNECTED , 
\NLW_blk00000044_ACOUT<23>_UNCONNECTED , \NLW_blk00000044_ACOUT<22>_UNCONNECTED , \NLW_blk00000044_ACOUT<21>_UNCONNECTED , 
\NLW_blk00000044_ACOUT<20>_UNCONNECTED , \NLW_blk00000044_ACOUT<19>_UNCONNECTED , \NLW_blk00000044_ACOUT<18>_UNCONNECTED , 
\NLW_blk00000044_ACOUT<17>_UNCONNECTED , \NLW_blk00000044_ACOUT<16>_UNCONNECTED , \NLW_blk00000044_ACOUT<15>_UNCONNECTED , 
\NLW_blk00000044_ACOUT<14>_UNCONNECTED , \NLW_blk00000044_ACOUT<13>_UNCONNECTED , \NLW_blk00000044_ACOUT<12>_UNCONNECTED , 
\NLW_blk00000044_ACOUT<11>_UNCONNECTED , \NLW_blk00000044_ACOUT<10>_UNCONNECTED , \NLW_blk00000044_ACOUT<9>_UNCONNECTED , 
\NLW_blk00000044_ACOUT<8>_UNCONNECTED , \NLW_blk00000044_ACOUT<7>_UNCONNECTED , \NLW_blk00000044_ACOUT<6>_UNCONNECTED , 
\NLW_blk00000044_ACOUT<5>_UNCONNECTED , \NLW_blk00000044_ACOUT<4>_UNCONNECTED , \NLW_blk00000044_ACOUT<3>_UNCONNECTED , 
\NLW_blk00000044_ACOUT<2>_UNCONNECTED , \NLW_blk00000044_ACOUT<1>_UNCONNECTED , \NLW_blk00000044_ACOUT<0>_UNCONNECTED }),
    .OPMODE({sig00000002, sig00000002, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001}),
    .PCIN({sig00000035, sig00000034, sig00000033, sig00000032, sig00000031, sig00000030, sig0000002f, sig0000002e, sig0000002d, sig0000002c, 
sig0000002b, sig0000002a, sig00000029, sig00000028, sig00000027, sig00000026, sig00000025, sig00000024, sig00000023, sig00000022, sig00000021, 
sig00000020, sig0000001f, sig0000001e, sig0000001d, sig0000001c, sig0000001b, sig0000001a, sig00000019, sig00000018, sig00000017, sig00000016, 
sig00000015, sig00000014, sig00000013, sig00000012, sig00000011, sig00000010, sig0000000f, sig0000000e, sig0000000d, sig0000000c, sig0000000b, 
sig0000000a, sig00000009, sig00000008, sig00000007, sig00000006}),
    .ALUMODE({sig00000002, sig00000002, sig00000002, sig00000002}),
    .C({sig0000005a, sig00000059, sig00000058, sig00000057, sig00000056, sig00000055, sig00000054, sig00000002, sig0000005b, sig0000005a, sig00000059
, sig00000058, sig00000057, sig00000056, sig00000055, sig00000054, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000001, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002}),
    .CARRYOUT({sig00000105, \NLW_blk00000044_CARRYOUT<2>_UNCONNECTED , \NLW_blk00000044_CARRYOUT<1>_UNCONNECTED , 
\NLW_blk00000044_CARRYOUT<0>_UNCONNECTED }),
    .INMODE({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .BCIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .B({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002
, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .BCOUT({\NLW_blk00000044_BCOUT<17>_UNCONNECTED , \NLW_blk00000044_BCOUT<16>_UNCONNECTED , \NLW_blk00000044_BCOUT<15>_UNCONNECTED , 
\NLW_blk00000044_BCOUT<14>_UNCONNECTED , \NLW_blk00000044_BCOUT<13>_UNCONNECTED , \NLW_blk00000044_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000044_BCOUT<11>_UNCONNECTED , \NLW_blk00000044_BCOUT<10>_UNCONNECTED , \NLW_blk00000044_BCOUT<9>_UNCONNECTED , 
\NLW_blk00000044_BCOUT<8>_UNCONNECTED , \NLW_blk00000044_BCOUT<7>_UNCONNECTED , \NLW_blk00000044_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000044_BCOUT<5>_UNCONNECTED , \NLW_blk00000044_BCOUT<4>_UNCONNECTED , \NLW_blk00000044_BCOUT<3>_UNCONNECTED , 
\NLW_blk00000044_BCOUT<2>_UNCONNECTED , \NLW_blk00000044_BCOUT<1>_UNCONNECTED , \NLW_blk00000044_BCOUT<0>_UNCONNECTED }),
    .D({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002
, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002}),
    .P({sig0000012c, sig0000012b, sig0000012a, sig00000129, sig00000128, sig00000127, sig00000126, \NLW_blk00000044_P<40>_UNCONNECTED , sig00000124, 
sig00000123, sig00000122, sig00000121, sig00000120, sig0000011f, sig0000011e, sig0000011d, \NLW_blk00000044_P<31>_UNCONNECTED , sig00000125, 
sig00000106, sig0000011c, sig0000011b, sig0000011a, sig00000119, sig00000118, sig00000117, sig00000116, sig00000115, sig00000114, sig00000113, 
sig00000112, sig00000111, sig00000110, sig0000010f, sig0000010e, sig0000010d, sig0000010c, sig0000010b, sig0000010a, sig00000109, sig00000108, 
sig00000107, \NLW_blk00000044_P<6>_UNCONNECTED , \NLW_blk00000044_P<5>_UNCONNECTED , \NLW_blk00000044_P<4>_UNCONNECTED , 
\NLW_blk00000044_P<3>_UNCONNECTED , \NLW_blk00000044_P<2>_UNCONNECTED , \NLW_blk00000044_P<1>_UNCONNECTED , \NLW_blk00000044_P<0>_UNCONNECTED }),
    .A({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000001, sig00000002, sig00000002
, sig00000002, sig00000002, sig00000002, sig00000002, sig00000001, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .PCOUT({\NLW_blk00000044_PCOUT<47>_UNCONNECTED , \NLW_blk00000044_PCOUT<46>_UNCONNECTED , \NLW_blk00000044_PCOUT<45>_UNCONNECTED , 
\NLW_blk00000044_PCOUT<44>_UNCONNECTED , \NLW_blk00000044_PCOUT<43>_UNCONNECTED , \NLW_blk00000044_PCOUT<42>_UNCONNECTED , 
\NLW_blk00000044_PCOUT<41>_UNCONNECTED , \NLW_blk00000044_PCOUT<40>_UNCONNECTED , \NLW_blk00000044_PCOUT<39>_UNCONNECTED , 
\NLW_blk00000044_PCOUT<38>_UNCONNECTED , \NLW_blk00000044_PCOUT<37>_UNCONNECTED , \NLW_blk00000044_PCOUT<36>_UNCONNECTED , 
\NLW_blk00000044_PCOUT<35>_UNCONNECTED , \NLW_blk00000044_PCOUT<34>_UNCONNECTED , \NLW_blk00000044_PCOUT<33>_UNCONNECTED , 
\NLW_blk00000044_PCOUT<32>_UNCONNECTED , \NLW_blk00000044_PCOUT<31>_UNCONNECTED , \NLW_blk00000044_PCOUT<30>_UNCONNECTED , 
\NLW_blk00000044_PCOUT<29>_UNCONNECTED , \NLW_blk00000044_PCOUT<28>_UNCONNECTED , \NLW_blk00000044_PCOUT<27>_UNCONNECTED , 
\NLW_blk00000044_PCOUT<26>_UNCONNECTED , \NLW_blk00000044_PCOUT<25>_UNCONNECTED , \NLW_blk00000044_PCOUT<24>_UNCONNECTED , 
\NLW_blk00000044_PCOUT<23>_UNCONNECTED , \NLW_blk00000044_PCOUT<22>_UNCONNECTED , \NLW_blk00000044_PCOUT<21>_UNCONNECTED , 
\NLW_blk00000044_PCOUT<20>_UNCONNECTED , \NLW_blk00000044_PCOUT<19>_UNCONNECTED , \NLW_blk00000044_PCOUT<18>_UNCONNECTED , 
\NLW_blk00000044_PCOUT<17>_UNCONNECTED , \NLW_blk00000044_PCOUT<16>_UNCONNECTED , \NLW_blk00000044_PCOUT<15>_UNCONNECTED , 
\NLW_blk00000044_PCOUT<14>_UNCONNECTED , \NLW_blk00000044_PCOUT<13>_UNCONNECTED , \NLW_blk00000044_PCOUT<12>_UNCONNECTED , 
\NLW_blk00000044_PCOUT<11>_UNCONNECTED , \NLW_blk00000044_PCOUT<10>_UNCONNECTED , \NLW_blk00000044_PCOUT<9>_UNCONNECTED , 
\NLW_blk00000044_PCOUT<8>_UNCONNECTED , \NLW_blk00000044_PCOUT<7>_UNCONNECTED , \NLW_blk00000044_PCOUT<6>_UNCONNECTED , 
\NLW_blk00000044_PCOUT<5>_UNCONNECTED , \NLW_blk00000044_PCOUT<4>_UNCONNECTED , \NLW_blk00000044_PCOUT<3>_UNCONNECTED , 
\NLW_blk00000044_PCOUT<2>_UNCONNECTED , \NLW_blk00000044_PCOUT<1>_UNCONNECTED , \NLW_blk00000044_PCOUT<0>_UNCONNECTED }),
    .ACIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .CARRYINSEL({sig00000002, sig00000002, sig00000002})
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000045 (
    .C(aclk),
    .CE(aclken),
    .D(sig0000005b),
    .Q(sig00000104)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000046 (
    .C(aclk),
    .D(sig00000142),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_0 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000047 (
    .C(aclk),
    .D(sig00000141),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000048 (
    .C(aclk),
    .D(sig00000140),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_2 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000049 (
    .C(aclk),
    .D(sig0000013f),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_3 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000004a (
    .C(aclk),
    .D(sig0000013e),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_4 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000004b (
    .C(aclk),
    .D(sig0000013d),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_5 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000004c (
    .C(aclk),
    .D(sig0000013c),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_6 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000004d (
    .C(aclk),
    .D(sig0000013b),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_7 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000004e (
    .C(aclk),
    .D(sig0000013a),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_8 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000004f (
    .C(aclk),
    .D(sig00000139),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_9 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000050 (
    .C(aclk),
    .D(sig00000138),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_10 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000051 (
    .C(aclk),
    .D(sig00000137),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_11 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000052 (
    .C(aclk),
    .D(sig00000136),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_12 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000053 (
    .C(aclk),
    .D(sig00000135),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_13 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000054 (
    .C(aclk),
    .D(sig00000134),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_14 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000055 (
    .C(aclk),
    .D(sig00000133),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_15 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000056 (
    .C(aclk),
    .D(sig00000132),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_16 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000057 (
    .C(aclk),
    .D(sig00000131),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_17 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000058 (
    .C(aclk),
    .D(sig00000130),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_18 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000059 (
    .C(aclk),
    .D(sig0000012f),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_19 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000005a (
    .C(aclk),
    .D(sig0000012e),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_20 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000005b (
    .C(aclk),
    .D(sig0000012d),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_21 )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000005c (
    .C(aclk),
    .D(sig00000143),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op [22])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000005d (
    .C(aclk),
    .D(sig0000014b),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/exp_op [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000005e (
    .C(aclk),
    .D(sig0000014a),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/exp_op [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000005f (
    .C(aclk),
    .D(sig00000149),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/exp_op [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000060 (
    .C(aclk),
    .D(sig00000148),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/exp_op [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000061 (
    .C(aclk),
    .D(sig00000147),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/exp_op [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000062 (
    .C(aclk),
    .D(sig00000146),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/exp_op [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000063 (
    .C(aclk),
    .D(sig00000145),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/exp_op [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000064 (
    .C(aclk),
    .D(sig00000144),
    .Q(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/exp_op [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000065 (
    .I0(s_axis_a_tvalid),
    .I1(s_axis_b_tvalid),
    .O(sig00000003)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000066 (
    .I0(sig00000004),
    .I1(sig00000005),
    .O(sig000000ab)
  );
  LUT4 #(
    .INIT ( 16'h1110 ))
  blk00000067 (
    .I0(sig000000d4),
    .I1(sig000000d3),
    .I2(sig000000d2),
    .I3(sig000000d1),
    .O(sig000000c7)
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  blk00000068 (
    .I0(sig000000cc),
    .I1(sig000000ce),
    .I2(sig0000004f),
    .O(sig000000ad)
  );
  LUT6 #(
    .INIT ( 64'hF0FFF0FFF0FCF0FE ))
  blk00000069 (
    .I0(sig000000cd),
    .I1(sig000000cb),
    .I2(sig000000d0),
    .I3(sig000000cf),
    .I4(sig0000004f),
    .I5(sig000000ad),
    .O(sig00000051)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000006a (
    .I0(s_axis_a_tdata[31]),
    .I1(s_axis_b_tdata[31]),
    .O(sig000000be)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000006b (
    .I0(s_axis_a_tdata[23]),
    .I1(s_axis_b_tdata[23]),
    .O(sig000000b6)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000006c (
    .I0(s_axis_a_tdata[24]),
    .I1(s_axis_b_tdata[24]),
    .O(sig000000b7)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000006d (
    .I0(s_axis_a_tdata[25]),
    .I1(s_axis_b_tdata[25]),
    .O(sig000000b8)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000006e (
    .I0(s_axis_a_tdata[26]),
    .I1(s_axis_b_tdata[26]),
    .O(sig000000b9)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000006f (
    .I0(s_axis_a_tdata[27]),
    .I1(s_axis_b_tdata[27]),
    .O(sig000000ba)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000070 (
    .I0(s_axis_a_tdata[28]),
    .I1(s_axis_b_tdata[28]),
    .O(sig000000bb)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000071 (
    .I0(s_axis_a_tdata[29]),
    .I1(s_axis_b_tdata[29]),
    .O(sig000000bc)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000072 (
    .I0(s_axis_a_tdata[30]),
    .I1(s_axis_b_tdata[30]),
    .O(sig000000bd)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  blk00000073 (
    .I0(sig000000d3),
    .I1(sig000000d2),
    .I2(sig000000d4),
    .O(sig000000c6)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk00000074 (
    .I0(sig000000d4),
    .I1(sig000000d3),
    .O(sig000000c5)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  blk00000075 (
    .I0(sig000000d4),
    .I1(sig000000d3),
    .I2(sig000000d5),
    .O(sig000000c8)
  );
  LUT6 #(
    .INIT ( 64'hFF80808080808080 ))
  blk00000076 (
    .I0(sig000000b5),
    .I1(sig000000b2),
    .I2(sig000000d7),
    .I3(sig000000b3),
    .I4(sig000000b4),
    .I5(sig000000d6),
    .O(sig000000bf)
  );
  LUT4 #(
    .INIT ( 16'h22F2 ))
  blk00000077 (
    .I0(sig000000b2),
    .I1(sig000000d7),
    .I2(sig000000b4),
    .I3(sig000000d6),
    .O(sig000000c0)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  blk00000078 (
    .I0(sig000000b2),
    .I1(sig000000d7),
    .I2(sig000000b4),
    .I3(sig000000d6),
    .O(sig000000c1)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk00000079 (
    .I0(sig000000d8),
    .I1(sig000000e0),
    .O(sig000000c2)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk0000007a (
    .I0(sig000000b3),
    .I1(sig000000b5),
    .O(sig000000c9)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk0000007b (
    .I0(s_axis_a_tdata[12]),
    .I1(s_axis_a_tdata[13]),
    .I2(s_axis_a_tdata[14]),
    .I3(s_axis_a_tdata[15]),
    .I4(s_axis_a_tdata[16]),
    .I5(s_axis_a_tdata[17]),
    .O(sig000000f5)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk0000007c (
    .I0(s_axis_a_tdata[6]),
    .I1(s_axis_a_tdata[7]),
    .I2(s_axis_a_tdata[8]),
    .I3(s_axis_a_tdata[9]),
    .I4(s_axis_a_tdata[10]),
    .I5(s_axis_a_tdata[11]),
    .O(sig000000f6)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk0000007d (
    .I0(s_axis_a_tdata[0]),
    .I1(s_axis_a_tdata[1]),
    .I2(s_axis_a_tdata[2]),
    .I3(s_axis_a_tdata[3]),
    .I4(s_axis_a_tdata[4]),
    .I5(s_axis_a_tdata[5]),
    .O(sig000000f7)
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  blk0000007e (
    .I0(s_axis_a_tdata[18]),
    .I1(s_axis_a_tdata[19]),
    .I2(s_axis_a_tdata[20]),
    .I3(s_axis_a_tdata[21]),
    .I4(s_axis_a_tdata[22]),
    .O(sig000000f8)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk0000007f (
    .I0(s_axis_b_tdata[12]),
    .I1(s_axis_b_tdata[13]),
    .I2(s_axis_b_tdata[14]),
    .I3(s_axis_b_tdata[15]),
    .I4(s_axis_b_tdata[16]),
    .I5(s_axis_b_tdata[17]),
    .O(sig000000fc)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk00000080 (
    .I0(s_axis_b_tdata[6]),
    .I1(s_axis_b_tdata[7]),
    .I2(s_axis_b_tdata[8]),
    .I3(s_axis_b_tdata[9]),
    .I4(s_axis_b_tdata[10]),
    .I5(s_axis_b_tdata[11]),
    .O(sig000000fd)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk00000081 (
    .I0(s_axis_b_tdata[0]),
    .I1(s_axis_b_tdata[1]),
    .I2(s_axis_b_tdata[2]),
    .I3(s_axis_b_tdata[3]),
    .I4(s_axis_b_tdata[4]),
    .I5(s_axis_b_tdata[5]),
    .O(sig000000fe)
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  blk00000082 (
    .I0(s_axis_b_tdata[18]),
    .I1(s_axis_b_tdata[19]),
    .I2(s_axis_b_tdata[20]),
    .I3(s_axis_b_tdata[21]),
    .I4(s_axis_b_tdata[22]),
    .O(sig000000ff)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk00000083 (
    .I0(sig000000df),
    .I1(sig000000dd),
    .I2(sig000000dc),
    .I3(sig000000de),
    .O(sig0000014c)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA80000000 ))
  blk00000084 (
    .I0(sig000000d8),
    .I1(sig000000db),
    .I2(sig000000da),
    .I3(sig000000d9),
    .I4(sig0000014c),
    .I5(sig000000e0),
    .O(sig000000c3)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk00000085 (
    .I0(sig000000dd),
    .I1(sig000000dc),
    .I2(sig000000de),
    .I3(sig000000d8),
    .O(sig0000014d)
  );
  LUT6 #(
    .INIT ( 64'h0040000000000000 ))
  blk00000086 (
    .I0(sig000000e0),
    .I1(sig000000db),
    .I2(sig000000da),
    .I3(sig000000d9),
    .I4(sig000000df),
    .I5(sig0000014d),
    .O(sig000000ca)
  );
  LUT6 #(
    .INIT ( 64'h00F400F700000000 ))
  blk00000087 (
    .I0(sig000000cd),
    .I1(sig000000cb),
    .I2(sig000000d0),
    .I3(sig000000cf),
    .I4(sig0000014e),
    .I5(sig00000051),
    .O(sig00000053)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  blk00000088 (
    .I0(s_axis_a_tdata[25]),
    .I1(s_axis_a_tdata[24]),
    .I2(s_axis_a_tdata[23]),
    .O(sig0000014f)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  blk00000089 (
    .I0(s_axis_a_tdata[30]),
    .I1(s_axis_a_tdata[29]),
    .I2(s_axis_a_tdata[28]),
    .I3(s_axis_a_tdata[27]),
    .I4(s_axis_a_tdata[26]),
    .I5(sig0000014f),
    .O(sig000000b2)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  blk0000008a (
    .I0(s_axis_a_tdata[25]),
    .I1(s_axis_a_tdata[24]),
    .I2(s_axis_a_tdata[23]),
    .O(sig00000150)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk0000008b (
    .I0(s_axis_a_tdata[30]),
    .I1(s_axis_a_tdata[29]),
    .I2(s_axis_a_tdata[28]),
    .I3(s_axis_a_tdata[27]),
    .I4(s_axis_a_tdata[26]),
    .I5(sig00000150),
    .O(sig000000b3)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  blk0000008c (
    .I0(s_axis_b_tdata[25]),
    .I1(s_axis_b_tdata[24]),
    .I2(s_axis_b_tdata[23]),
    .O(sig00000151)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  blk0000008d (
    .I0(s_axis_b_tdata[30]),
    .I1(s_axis_b_tdata[29]),
    .I2(s_axis_b_tdata[28]),
    .I3(s_axis_b_tdata[27]),
    .I4(s_axis_b_tdata[26]),
    .I5(sig00000151),
    .O(sig000000b4)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  blk0000008e (
    .I0(s_axis_b_tdata[25]),
    .I1(s_axis_b_tdata[24]),
    .I2(s_axis_b_tdata[23]),
    .O(sig00000152)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk0000008f (
    .I0(s_axis_b_tdata[30]),
    .I1(s_axis_b_tdata[29]),
    .I2(s_axis_b_tdata[28]),
    .I3(s_axis_b_tdata[27]),
    .I4(s_axis_b_tdata[26]),
    .I5(sig00000152),
    .O(sig000000b5)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk00000090 (
    .I0(sig000000dd),
    .I1(sig000000dc),
    .I2(sig000000de),
    .I3(sig000000d8),
    .O(sig00000153)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000002 ))
  blk00000091 (
    .I0(sig000000e0),
    .I1(sig000000db),
    .I2(sig000000da),
    .I3(sig000000d9),
    .I4(sig000000df),
    .I5(sig00000153),
    .O(sig000000c4)
  );
  LUT6 #(
    .INIT ( 64'hFFEAFF00FFAAFF00 ))
  blk00000092 (
    .I0(sig0000004f),
    .I1(sig00000037),
    .I2(sig00000036),
    .I3(sig00000050),
    .I4(sig0000011e),
    .I5(sig00000125),
    .O(sig00000154)
  );
  LUT5 #(
    .INIT ( 32'h15005500 ))
  blk00000093 (
    .I0(sig0000004f),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig00000127),
    .I4(sig00000125),
    .O(sig00000155)
  );
  LUT5 #(
    .INIT ( 32'h4E4E4E44 ))
  blk00000094 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/exp_op [1]),
    .I2(sig00000053),
    .I3(sig00000155),
    .I4(sig00000154),
    .O(sig00000145)
  );
  LUT6 #(
    .INIT ( 64'hFFEAFF00FFAAFF00 ))
  blk00000095 (
    .I0(sig0000004f),
    .I1(sig00000037),
    .I2(sig00000036),
    .I3(sig00000050),
    .I4(sig00000120),
    .I5(sig00000125),
    .O(sig00000156)
  );
  LUT5 #(
    .INIT ( 32'h15005500 ))
  blk00000096 (
    .I0(sig0000004f),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig00000129),
    .I4(sig00000125),
    .O(sig00000157)
  );
  LUT5 #(
    .INIT ( 32'h4E4E4E44 ))
  blk00000097 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/exp_op [3]),
    .I2(sig00000053),
    .I3(sig00000157),
    .I4(sig00000156),
    .O(sig00000147)
  );
  LUT6 #(
    .INIT ( 64'hFFEAFF00FFAAFF00 ))
  blk00000098 (
    .I0(sig0000004f),
    .I1(sig00000037),
    .I2(sig00000036),
    .I3(sig00000050),
    .I4(sig0000011f),
    .I5(sig00000125),
    .O(sig00000158)
  );
  LUT5 #(
    .INIT ( 32'h15005500 ))
  blk00000099 (
    .I0(sig0000004f),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig00000128),
    .I4(sig00000125),
    .O(sig00000159)
  );
  LUT5 #(
    .INIT ( 32'h4E4E4E44 ))
  blk0000009a (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/exp_op [2]),
    .I2(sig00000053),
    .I3(sig00000159),
    .I4(sig00000158),
    .O(sig00000146)
  );
  LUT6 #(
    .INIT ( 64'hFFEAFF00FFAAFF00 ))
  blk0000009b (
    .I0(sig0000004f),
    .I1(sig00000037),
    .I2(sig00000036),
    .I3(sig00000050),
    .I4(sig00000123),
    .I5(sig00000125),
    .O(sig0000015a)
  );
  LUT5 #(
    .INIT ( 32'h15005500 ))
  blk0000009c (
    .I0(sig0000004f),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig0000012c),
    .I4(sig00000125),
    .O(sig0000015b)
  );
  LUT5 #(
    .INIT ( 32'h4E4E4E44 ))
  blk0000009d (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/exp_op [6]),
    .I2(sig00000053),
    .I3(sig0000015b),
    .I4(sig0000015a),
    .O(sig0000014a)
  );
  LUT6 #(
    .INIT ( 64'hFFEAFF00FFAAFF00 ))
  blk0000009e (
    .I0(sig0000004f),
    .I1(sig00000037),
    .I2(sig00000036),
    .I3(sig00000050),
    .I4(sig00000121),
    .I5(sig00000125),
    .O(sig0000015c)
  );
  LUT5 #(
    .INIT ( 32'h15005500 ))
  blk0000009f (
    .I0(sig0000004f),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig0000012a),
    .I4(sig00000125),
    .O(sig0000015d)
  );
  LUT5 #(
    .INIT ( 32'h4E4E4E44 ))
  blk000000a0 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/exp_op [4]),
    .I2(sig00000053),
    .I3(sig0000015d),
    .I4(sig0000015c),
    .O(sig00000148)
  );
  LUT6 #(
    .INIT ( 64'hFFEAFF00FFAAFF00 ))
  blk000000a1 (
    .I0(sig0000004f),
    .I1(sig00000037),
    .I2(sig00000036),
    .I3(sig00000050),
    .I4(sig00000124),
    .I5(sig00000125),
    .O(sig0000015e)
  );
  LUT6 #(
    .INIT ( 64'h0222011122221111 ))
  blk000000a2 (
    .I0(sig00000104),
    .I1(sig0000004f),
    .I2(sig00000037),
    .I3(sig00000036),
    .I4(sig00000105),
    .I5(sig00000125),
    .O(sig0000015f)
  );
  LUT5 #(
    .INIT ( 32'h4E4E4E44 ))
  blk000000a3 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/exp_op [7]),
    .I2(sig00000053),
    .I3(sig0000015f),
    .I4(sig0000015e),
    .O(sig0000014b)
  );
  LUT6 #(
    .INIT ( 64'hFFEAFF00FFAAFF00 ))
  blk000000a4 (
    .I0(sig0000004f),
    .I1(sig00000037),
    .I2(sig00000036),
    .I3(sig00000050),
    .I4(sig00000122),
    .I5(sig00000125),
    .O(sig00000160)
  );
  LUT5 #(
    .INIT ( 32'h15005500 ))
  blk000000a5 (
    .I0(sig0000004f),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig0000012b),
    .I4(sig00000125),
    .O(sig00000161)
  );
  LUT5 #(
    .INIT ( 32'h4E4E4E44 ))
  blk000000a6 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/exp_op [5]),
    .I2(sig00000053),
    .I3(sig00000161),
    .I4(sig00000160),
    .O(sig00000149)
  );
  LUT6 #(
    .INIT ( 64'h4444EEE44444EE44 ))
  blk000000a7 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_21 ),
    .I2(sig00000163),
    .I3(sig00000162),
    .I4(sig00000052),
    .I5(sig00000107),
    .O(sig0000012d)
  );
  LUT6 #(
    .INIT ( 64'hFEAAFFAA02AA00AA ))
  blk000000a8 (
    .I0(sig0000003a),
    .I1(sig00000038),
    .I2(sig00000036),
    .I3(sig00000037),
    .I4(sig000000ab),
    .I5(sig00000109),
    .O(sig00000164)
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  blk000000a9 (
    .I0(sig00000039),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig00000108),
    .O(sig00000165)
  );
  LUT6 #(
    .INIT ( 64'h44EE44E4444E4444 ))
  blk000000aa (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_19 ),
    .I2(sig0000004f),
    .I3(sig00000052),
    .I4(sig00000165),
    .I5(sig00000164),
    .O(sig0000012f)
  );
  LUT6 #(
    .INIT ( 64'hFEAAFFAA02AA00AA ))
  blk000000ab (
    .I0(sig0000003b),
    .I1(sig00000038),
    .I2(sig00000036),
    .I3(sig00000037),
    .I4(sig000000ab),
    .I5(sig0000010a),
    .O(sig00000166)
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  blk000000ac (
    .I0(sig0000003a),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig00000109),
    .O(sig00000167)
  );
  LUT6 #(
    .INIT ( 64'h44EE44E4444E4444 ))
  blk000000ad (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_18 ),
    .I2(sig0000004f),
    .I3(sig00000052),
    .I4(sig00000167),
    .I5(sig00000166),
    .O(sig00000130)
  );
  LUT6 #(
    .INIT ( 64'hFEAAFFAA02AA00AA ))
  blk000000ae (
    .I0(sig00000039),
    .I1(sig00000038),
    .I2(sig00000036),
    .I3(sig00000037),
    .I4(sig000000ab),
    .I5(sig00000108),
    .O(sig00000168)
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  blk000000af (
    .I0(sig00000038),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig00000107),
    .O(sig00000169)
  );
  LUT6 #(
    .INIT ( 64'h44EE44E4444E4444 ))
  blk000000b0 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_20 ),
    .I2(sig0000004f),
    .I3(sig00000052),
    .I4(sig00000169),
    .I5(sig00000168),
    .O(sig0000012e)
  );
  LUT6 #(
    .INIT ( 64'hFEAAFFAA02AA00AA ))
  blk000000b1 (
    .I0(sig0000003e),
    .I1(sig00000038),
    .I2(sig00000036),
    .I3(sig00000037),
    .I4(sig000000ab),
    .I5(sig0000010d),
    .O(sig0000016a)
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  blk000000b2 (
    .I0(sig0000003d),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig0000010c),
    .O(sig0000016b)
  );
  LUT6 #(
    .INIT ( 64'h44EE44E4444E4444 ))
  blk000000b3 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_15 ),
    .I2(sig0000004f),
    .I3(sig00000052),
    .I4(sig0000016b),
    .I5(sig0000016a),
    .O(sig00000133)
  );
  LUT6 #(
    .INIT ( 64'hFEAAFFAA02AA00AA ))
  blk000000b4 (
    .I0(sig0000003c),
    .I1(sig00000038),
    .I2(sig00000036),
    .I3(sig00000037),
    .I4(sig000000ab),
    .I5(sig0000010b),
    .O(sig0000016c)
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  blk000000b5 (
    .I0(sig0000003b),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig0000010a),
    .O(sig0000016d)
  );
  LUT6 #(
    .INIT ( 64'h44EE44E4444E4444 ))
  blk000000b6 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_17 ),
    .I2(sig0000004f),
    .I3(sig00000052),
    .I4(sig0000016d),
    .I5(sig0000016c),
    .O(sig00000131)
  );
  LUT6 #(
    .INIT ( 64'hFEAAFFAA02AA00AA ))
  blk000000b7 (
    .I0(sig0000003d),
    .I1(sig00000038),
    .I2(sig00000036),
    .I3(sig00000037),
    .I4(sig000000ab),
    .I5(sig0000010c),
    .O(sig0000016e)
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  blk000000b8 (
    .I0(sig0000003c),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig0000010b),
    .O(sig0000016f)
  );
  LUT6 #(
    .INIT ( 64'h44EE44E4444E4444 ))
  blk000000b9 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_16 ),
    .I2(sig0000004f),
    .I3(sig00000052),
    .I4(sig0000016f),
    .I5(sig0000016e),
    .O(sig00000132)
  );
  LUT6 #(
    .INIT ( 64'hFEAAFFAA02AA00AA ))
  blk000000ba (
    .I0(sig00000040),
    .I1(sig00000038),
    .I2(sig00000036),
    .I3(sig00000037),
    .I4(sig000000ab),
    .I5(sig0000010f),
    .O(sig00000170)
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  blk000000bb (
    .I0(sig0000003f),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig0000010e),
    .O(sig00000171)
  );
  LUT6 #(
    .INIT ( 64'h44EE44E4444E4444 ))
  blk000000bc (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_13 ),
    .I2(sig0000004f),
    .I3(sig00000052),
    .I4(sig00000171),
    .I5(sig00000170),
    .O(sig00000135)
  );
  LUT6 #(
    .INIT ( 64'hFEAAFFAA02AA00AA ))
  blk000000bd (
    .I0(sig00000041),
    .I1(sig00000038),
    .I2(sig00000036),
    .I3(sig00000037),
    .I4(sig000000ab),
    .I5(sig00000110),
    .O(sig00000172)
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  blk000000be (
    .I0(sig00000040),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig0000010f),
    .O(sig00000173)
  );
  LUT6 #(
    .INIT ( 64'h44EE44E4444E4444 ))
  blk000000bf (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_12 ),
    .I2(sig0000004f),
    .I3(sig00000052),
    .I4(sig00000173),
    .I5(sig00000172),
    .O(sig00000136)
  );
  LUT6 #(
    .INIT ( 64'hFEAAFFAA02AA00AA ))
  blk000000c0 (
    .I0(sig00000043),
    .I1(sig00000038),
    .I2(sig00000036),
    .I3(sig00000037),
    .I4(sig000000ab),
    .I5(sig00000112),
    .O(sig00000174)
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  blk000000c1 (
    .I0(sig00000042),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig00000111),
    .O(sig00000175)
  );
  LUT6 #(
    .INIT ( 64'h44EE44E4444E4444 ))
  blk000000c2 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_10 ),
    .I2(sig0000004f),
    .I3(sig00000052),
    .I4(sig00000175),
    .I5(sig00000174),
    .O(sig00000138)
  );
  LUT6 #(
    .INIT ( 64'hFEAAFFAA02AA00AA ))
  blk000000c3 (
    .I0(sig00000044),
    .I1(sig00000038),
    .I2(sig00000036),
    .I3(sig00000037),
    .I4(sig000000ab),
    .I5(sig00000113),
    .O(sig00000176)
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  blk000000c4 (
    .I0(sig00000043),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig00000112),
    .O(sig00000177)
  );
  LUT6 #(
    .INIT ( 64'h44EE44E4444E4444 ))
  blk000000c5 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_9 ),
    .I2(sig0000004f),
    .I3(sig00000052),
    .I4(sig00000177),
    .I5(sig00000176),
    .O(sig00000139)
  );
  LUT6 #(
    .INIT ( 64'hFEAAFFAA02AA00AA ))
  blk000000c6 (
    .I0(sig0000003f),
    .I1(sig00000038),
    .I2(sig00000036),
    .I3(sig00000037),
    .I4(sig000000ab),
    .I5(sig0000010e),
    .O(sig00000178)
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  blk000000c7 (
    .I0(sig0000003e),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig0000010d),
    .O(sig00000179)
  );
  LUT6 #(
    .INIT ( 64'h44EE44E4444E4444 ))
  blk000000c8 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_14 ),
    .I2(sig0000004f),
    .I3(sig00000052),
    .I4(sig00000179),
    .I5(sig00000178),
    .O(sig00000134)
  );
  LUT6 #(
    .INIT ( 64'hFEAAFFAA02AA00AA ))
  blk000000c9 (
    .I0(sig00000042),
    .I1(sig00000038),
    .I2(sig00000036),
    .I3(sig00000037),
    .I4(sig000000ab),
    .I5(sig00000111),
    .O(sig0000017a)
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  blk000000ca (
    .I0(sig00000041),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig00000110),
    .O(sig0000017b)
  );
  LUT6 #(
    .INIT ( 64'h44EE44E4444E4444 ))
  blk000000cb (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_11 ),
    .I2(sig0000004f),
    .I3(sig00000052),
    .I4(sig0000017b),
    .I5(sig0000017a),
    .O(sig00000137)
  );
  LUT6 #(
    .INIT ( 64'hFEAAFFAA02AA00AA ))
  blk000000cc (
    .I0(sig00000046),
    .I1(sig00000038),
    .I2(sig00000036),
    .I3(sig00000037),
    .I4(sig000000ab),
    .I5(sig00000115),
    .O(sig0000017c)
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  blk000000cd (
    .I0(sig00000045),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig00000114),
    .O(sig0000017d)
  );
  LUT6 #(
    .INIT ( 64'h44EE44E4444E4444 ))
  blk000000ce (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_7 ),
    .I2(sig0000004f),
    .I3(sig00000052),
    .I4(sig0000017d),
    .I5(sig0000017c),
    .O(sig0000013b)
  );
  LUT6 #(
    .INIT ( 64'hFEAAFFAA02AA00AA ))
  blk000000cf (
    .I0(sig00000045),
    .I1(sig00000038),
    .I2(sig00000036),
    .I3(sig00000037),
    .I4(sig000000ab),
    .I5(sig00000114),
    .O(sig0000017e)
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  blk000000d0 (
    .I0(sig00000044),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig00000113),
    .O(sig0000017f)
  );
  LUT6 #(
    .INIT ( 64'h44EE44E4444E4444 ))
  blk000000d1 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_8 ),
    .I2(sig0000004f),
    .I3(sig00000052),
    .I4(sig0000017f),
    .I5(sig0000017e),
    .O(sig0000013a)
  );
  LUT6 #(
    .INIT ( 64'hFEAAFFAA02AA00AA ))
  blk000000d2 (
    .I0(sig00000049),
    .I1(sig00000038),
    .I2(sig00000036),
    .I3(sig00000037),
    .I4(sig000000ab),
    .I5(sig00000118),
    .O(sig00000180)
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  blk000000d3 (
    .I0(sig00000048),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig00000117),
    .O(sig00000181)
  );
  LUT6 #(
    .INIT ( 64'h44EE44E4444E4444 ))
  blk000000d4 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_4 ),
    .I2(sig0000004f),
    .I3(sig00000052),
    .I4(sig00000181),
    .I5(sig00000180),
    .O(sig0000013e)
  );
  LUT6 #(
    .INIT ( 64'hFEAAFFAA02AA00AA ))
  blk000000d5 (
    .I0(sig00000047),
    .I1(sig00000038),
    .I2(sig00000036),
    .I3(sig00000037),
    .I4(sig000000ab),
    .I5(sig00000116),
    .O(sig00000182)
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  blk000000d6 (
    .I0(sig00000046),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig00000115),
    .O(sig00000183)
  );
  LUT6 #(
    .INIT ( 64'h44EE44E4444E4444 ))
  blk000000d7 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_6 ),
    .I2(sig0000004f),
    .I3(sig00000052),
    .I4(sig00000183),
    .I5(sig00000182),
    .O(sig0000013c)
  );
  LUT6 #(
    .INIT ( 64'hFEAAFFAA02AA00AA ))
  blk000000d8 (
    .I0(sig0000004a),
    .I1(sig00000038),
    .I2(sig00000036),
    .I3(sig00000037),
    .I4(sig000000ab),
    .I5(sig00000119),
    .O(sig00000184)
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  blk000000d9 (
    .I0(sig00000049),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig00000118),
    .O(sig00000185)
  );
  LUT6 #(
    .INIT ( 64'h44EE44E4444E4444 ))
  blk000000da (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_3 ),
    .I2(sig0000004f),
    .I3(sig00000052),
    .I4(sig00000185),
    .I5(sig00000184),
    .O(sig0000013f)
  );
  LUT6 #(
    .INIT ( 64'hFEAAFFAA02AA00AA ))
  blk000000db (
    .I0(sig00000048),
    .I1(sig00000038),
    .I2(sig00000036),
    .I3(sig00000037),
    .I4(sig000000ab),
    .I5(sig00000117),
    .O(sig00000186)
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  blk000000dc (
    .I0(sig00000047),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig00000116),
    .O(sig00000187)
  );
  LUT6 #(
    .INIT ( 64'h44EE44E4444E4444 ))
  blk000000dd (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_5 ),
    .I2(sig0000004f),
    .I3(sig00000052),
    .I4(sig00000187),
    .I5(sig00000186),
    .O(sig0000013d)
  );
  LUT6 #(
    .INIT ( 64'hFEAAFFAA02AA00AA ))
  blk000000de (
    .I0(sig0000004d),
    .I1(sig00000038),
    .I2(sig00000036),
    .I3(sig00000037),
    .I4(sig000000ab),
    .I5(sig0000011c),
    .O(sig00000188)
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  blk000000df (
    .I0(sig0000004c),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig0000011b),
    .O(sig00000189)
  );
  LUT6 #(
    .INIT ( 64'h44EE44E4444E4444 ))
  blk000000e0 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_0 ),
    .I2(sig0000004f),
    .I3(sig00000052),
    .I4(sig00000189),
    .I5(sig00000188),
    .O(sig00000142)
  );
  LUT6 #(
    .INIT ( 64'hFEAAFFAA02AA00AA ))
  blk000000e1 (
    .I0(sig0000004b),
    .I1(sig00000038),
    .I2(sig00000036),
    .I3(sig00000037),
    .I4(sig000000ab),
    .I5(sig0000011a),
    .O(sig0000018a)
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  blk000000e2 (
    .I0(sig0000004a),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig00000119),
    .O(sig0000018b)
  );
  LUT6 #(
    .INIT ( 64'h44EE44E4444E4444 ))
  blk000000e3 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_2 ),
    .I2(sig0000004f),
    .I3(sig00000052),
    .I4(sig0000018b),
    .I5(sig0000018a),
    .O(sig00000140)
  );
  LUT6 #(
    .INIT ( 64'hFEAAFFAA02AA00AA ))
  blk000000e4 (
    .I0(sig0000004c),
    .I1(sig00000038),
    .I2(sig00000036),
    .I3(sig00000037),
    .I4(sig000000ab),
    .I5(sig0000011b),
    .O(sig0000018c)
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  blk000000e5 (
    .I0(sig0000004b),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig0000011a),
    .O(sig0000018d)
  );
  LUT6 #(
    .INIT ( 64'h44EE44E4444E4444 ))
  blk000000e6 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op_sliced_1 ),
    .I2(sig0000004f),
    .I3(sig00000052),
    .I4(sig0000018d),
    .I5(sig0000018c),
    .O(sig00000141)
  );
  LUT6 #(
    .INIT ( 64'hFFEAFF00FFAAFF00 ))
  blk000000e7 (
    .I0(sig0000004f),
    .I1(sig00000037),
    .I2(sig00000036),
    .I3(sig00000050),
    .I4(sig0000011d),
    .I5(sig00000125),
    .O(sig0000018e)
  );
  LUT5 #(
    .INIT ( 32'h15005500 ))
  blk000000e8 (
    .I0(sig0000004f),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig00000126),
    .I4(sig00000125),
    .O(sig0000018f)
  );
  LUT5 #(
    .INIT ( 32'h4E4E4E44 ))
  blk000000e9 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/exp_op [0]),
    .I2(sig00000053),
    .I3(sig0000018f),
    .I4(sig0000018e),
    .O(sig00000144)
  );
  LUT6 #(
    .INIT ( 64'hFFFF3222FFFF0222 ))
  blk000000ea (
    .I0(sig0000004d),
    .I1(sig0000004f),
    .I2(sig00000036),
    .I3(sig00000037),
    .I4(sig00000190),
    .I5(sig0000011c),
    .O(sig00000191)
  );
  LUT6 #(
    .INIT ( 64'hFEAAFFAA02AA00AA ))
  blk000000eb (
    .I0(sig0000004e),
    .I1(sig00000038),
    .I2(sig00000036),
    .I3(sig00000037),
    .I4(sig000000ab),
    .I5(sig00000106),
    .O(sig00000192)
  );
  LUT6 #(
    .INIT ( 64'h44EE44E444EE4444 ))
  blk000000ec (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/MULT.OP/OP/mant_op [22]),
    .I2(sig0000004f),
    .I3(sig00000051),
    .I4(sig00000191),
    .I5(sig00000192),
    .O(sig00000143)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk000000ed (
    .I0(sig000000d0),
    .I1(sig000000cf),
    .O(sig00000190)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFEEFE ))
  blk000000ee (
    .I0(sig000000ad),
    .I1(sig000000cf),
    .I2(sig000000cd),
    .I3(sig0000004f),
    .I4(sig000000cb),
    .I5(sig000000d0),
    .O(sig00000052)
  );
  LUT4 #(
    .INIT ( 16'hFFE2 ))
  blk000000ef (
    .I0(sig000000cd),
    .I1(sig0000004f),
    .I2(sig000000ce),
    .I3(sig000000cc),
    .O(sig0000014e)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF11101010 ))
  blk000000f0 (
    .I0(sig000000cb),
    .I1(sig000000d0),
    .I2(sig000000cc),
    .I3(sig000000ce),
    .I4(sig0000004f),
    .I5(sig000000cf),
    .O(sig00000050)
  );
  LUT6 #(
    .INIT ( 64'h1A1E1E1E10141414 ))
  blk000000f1 (
    .I0(sig0000004f),
    .I1(sig00000036),
    .I2(sig00000037),
    .I3(sig00000005),
    .I4(sig00000004),
    .I5(sig00000038),
    .O(sig00000162)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA88880888 ))
  blk000000f2 (
    .I0(sig0000004f),
    .I1(sig00000037),
    .I2(sig00000004),
    .I3(sig00000005),
    .I4(sig00000036),
    .I5(sig00000038),
    .O(sig00000163)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk000000f3 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(aclken),
    .CLK(aclk),
    .D(sig000000ac),
    .Q(sig00000193),
    .Q15(NLW_blk000000f3_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f4 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000193),
    .Q(\U0/i_synth/i_nd_to_rdy/opt_has_pipe.pipe_4 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk000000f5 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(aclken),
    .CLK(aclk),
    .D(sig000000af),
    .Q(sig00000194),
    .Q15(NLW_blk000000f5_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f6 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000194),
    .Q(\U0/i_synth/MULT.OP/OP/sign_op )
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
