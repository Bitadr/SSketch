////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: fadd_v6.v
// /___/   /\     Timestamp: Fri Apr 11 12:29:02 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog C:/Users/Bita/Desktop/ETHERNET/HW_Example_13_2_ML605/tmp/_cg/fadd_v6.ngc C:/Users/Bita/Desktop/ETHERNET/HW_Example_13_2_ML605/tmp/_cg/fadd_v6.v 
// Device	: 6vlx240tff1156-1
// Input file	: C:/Users/Bita/Desktop/ETHERNET/HW_Example_13_2_ML605/tmp/_cg/fadd_v6.ngc
// Output file	: C:/Users/Bita/Desktop/ETHERNET/HW_Example_13_2_ML605/tmp/_cg/fadd_v6.v
// # of Modules	: 1
// Design Name	: fadd_v6
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

module fadd_v6 (
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
  
  wire \U0/i_synth/i_nd_to_rdy/opt_has_pipe.pipe_7 ;
  wire sig00000001;
  wire sig00000002;
  wire sig00000003;
  wire \U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/sign_op ;
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
  wire sig00000195;
  wire sig00000196;
  wire sig00000197;
  wire sig00000198;
  wire sig00000199;
  wire sig0000019a;
  wire sig0000019b;
  wire sig0000019c;
  wire sig0000019d;
  wire sig0000019e;
  wire sig0000019f;
  wire sig000001a0;
  wire sig000001a1;
  wire sig000001a2;
  wire sig000001a3;
  wire sig000001a4;
  wire sig000001a5;
  wire sig000001a6;
  wire sig000001a7;
  wire sig000001a8;
  wire sig000001a9;
  wire sig000001aa;
  wire sig000001ab;
  wire sig000001ac;
  wire sig000001ad;
  wire sig000001ae;
  wire sig000001af;
  wire sig000001b0;
  wire sig000001b1;
  wire sig000001b2;
  wire sig000001b3;
  wire sig000001b4;
  wire sig000001b5;
  wire sig000001b6;
  wire sig000001b7;
  wire sig000001b8;
  wire sig000001b9;
  wire sig000001ba;
  wire sig000001bb;
  wire sig000001bc;
  wire sig000001bd;
  wire sig000001be;
  wire sig000001bf;
  wire sig000001c0;
  wire sig000001c1;
  wire sig000001c2;
  wire sig000001c3;
  wire sig000001c4;
  wire sig000001c5;
  wire sig000001c6;
  wire sig000001c7;
  wire sig000001c8;
  wire sig000001c9;
  wire sig000001ca;
  wire sig000001cb;
  wire sig000001cc;
  wire sig000001cd;
  wire sig000001ce;
  wire sig000001cf;
  wire sig000001d0;
  wire sig000001d1;
  wire sig000001d2;
  wire sig000001d3;
  wire sig000001d4;
  wire sig000001d5;
  wire sig000001d6;
  wire sig000001d7;
  wire sig000001d8;
  wire sig000001d9;
  wire sig000001da;
  wire sig000001db;
  wire sig000001dc;
  wire sig000001dd;
  wire sig000001de;
  wire sig000001df;
  wire sig000001e0;
  wire sig000001e1;
  wire sig000001e2;
  wire sig000001e3;
  wire sig000001e4;
  wire sig000001e5;
  wire sig000001e6;
  wire sig000001e7;
  wire sig000001e8;
  wire sig000001e9;
  wire sig000001ea;
  wire sig000001eb;
  wire sig000001ec;
  wire sig000001ed;
  wire sig000001ee;
  wire sig000001ef;
  wire sig000001f0;
  wire sig000001f1;
  wire sig000001f2;
  wire sig000001f3;
  wire sig000001f4;
  wire sig000001f5;
  wire sig000001f6;
  wire sig000001f7;
  wire sig000001f8;
  wire sig000001f9;
  wire sig000001fa;
  wire sig000001fb;
  wire sig000001fc;
  wire sig000001fd;
  wire sig000001fe;
  wire sig000001ff;
  wire sig00000200;
  wire sig00000201;
  wire sig00000202;
  wire sig00000203;
  wire sig00000204;
  wire sig00000205;
  wire sig00000206;
  wire sig00000207;
  wire sig00000208;
  wire sig00000209;
  wire sig0000020a;
  wire sig0000020b;
  wire sig0000020c;
  wire sig0000020d;
  wire sig0000020e;
  wire sig0000020f;
  wire sig00000210;
  wire sig00000211;
  wire sig00000212;
  wire sig00000213;
  wire sig00000214;
  wire sig00000215;
  wire sig00000216;
  wire sig00000217;
  wire sig00000218;
  wire sig00000219;
  wire sig0000021a;
  wire sig0000021b;
  wire sig0000021c;
  wire sig0000021d;
  wire sig0000021e;
  wire sig0000021f;
  wire sig00000220;
  wire sig00000221;
  wire sig00000222;
  wire sig00000223;
  wire sig00000224;
  wire sig00000225;
  wire sig00000226;
  wire sig00000227;
  wire sig00000228;
  wire sig00000229;
  wire sig0000022a;
  wire sig0000022b;
  wire sig0000022c;
  wire sig0000022d;
  wire sig0000022e;
  wire sig0000022f;
  wire sig00000230;
  wire sig00000231;
  wire sig00000232;
  wire sig00000233;
  wire sig00000234;
  wire sig00000235;
  wire sig00000236;
  wire sig00000237;
  wire sig00000238;
  wire sig00000239;
  wire sig0000023a;
  wire sig0000023b;
  wire sig0000023c;
  wire sig0000023d;
  wire sig0000023e;
  wire sig0000023f;
  wire sig00000240;
  wire sig00000241;
  wire sig00000242;
  wire sig00000243;
  wire sig00000244;
  wire sig00000245;
  wire sig00000246;
  wire sig00000247;
  wire sig00000248;
  wire sig00000249;
  wire sig0000024a;
  wire sig0000024b;
  wire sig0000024c;
  wire sig0000024d;
  wire sig0000024e;
  wire sig0000024f;
  wire sig00000250;
  wire sig00000251;
  wire sig00000252;
  wire sig00000253;
  wire sig00000254;
  wire sig00000255;
  wire sig00000256;
  wire sig00000257;
  wire sig00000258;
  wire sig00000259;
  wire sig0000025a;
  wire sig0000025b;
  wire sig0000025c;
  wire sig0000025d;
  wire sig0000025e;
  wire sig0000025f;
  wire sig00000260;
  wire sig00000261;
  wire sig00000262;
  wire sig00000263;
  wire sig00000264;
  wire sig00000265;
  wire sig00000266;
  wire sig00000267;
  wire sig00000268;
  wire sig00000269;
  wire sig0000026a;
  wire sig0000026b;
  wire sig0000026c;
  wire sig0000026d;
  wire sig0000026e;
  wire sig0000026f;
  wire sig00000270;
  wire sig00000271;
  wire sig00000272;
  wire sig00000273;
  wire sig00000274;
  wire sig00000275;
  wire sig00000276;
  wire sig00000277;
  wire sig00000278;
  wire sig00000279;
  wire sig0000027a;
  wire sig0000027b;
  wire sig0000027c;
  wire sig0000027d;
  wire sig0000027e;
  wire sig0000027f;
  wire sig00000280;
  wire sig00000281;
  wire sig00000282;
  wire sig00000283;
  wire sig00000284;
  wire sig00000285;
  wire sig00000286;
  wire sig00000287;
  wire sig00000288;
  wire sig00000289;
  wire NLW_blk0000007a_O_UNCONNECTED;
  wire NLW_blk000000b9_PATTERNBDETECT_UNCONNECTED;
  wire NLW_blk000000b9_MULTSIGNOUT_UNCONNECTED;
  wire NLW_blk000000b9_CARRYCASCOUT_UNCONNECTED;
  wire NLW_blk000000b9_UNDERFLOW_UNCONNECTED;
  wire NLW_blk000000b9_OVERFLOW_UNCONNECTED;
  wire \NLW_blk000000b9_ACOUT<29>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<28>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<27>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<26>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<25>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<24>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<23>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<22>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<21>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<20>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<19>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<18>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<17>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<16>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<15>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<14>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<13>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<12>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<11>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<10>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<9>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<8>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<7>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<6>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<5>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<4>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<3>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<2>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<1>_UNCONNECTED ;
  wire \NLW_blk000000b9_ACOUT<0>_UNCONNECTED ;
  wire \NLW_blk000000b9_CARRYOUT<3>_UNCONNECTED ;
  wire \NLW_blk000000b9_CARRYOUT<2>_UNCONNECTED ;
  wire \NLW_blk000000b9_CARRYOUT<1>_UNCONNECTED ;
  wire \NLW_blk000000b9_CARRYOUT<0>_UNCONNECTED ;
  wire \NLW_blk000000b9_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk000000b9_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk000000b9_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk000000b9_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk000000b9_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk000000b9_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk000000b9_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk000000b9_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk000000b9_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk000000b9_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk000000b9_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk000000b9_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk000000b9_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk000000b9_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk000000b9_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk000000b9_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk000000b9_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk000000b9_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk000000b9_P<47>_UNCONNECTED ;
  wire \NLW_blk000000b9_P<46>_UNCONNECTED ;
  wire \NLW_blk000000b9_P<45>_UNCONNECTED ;
  wire \NLW_blk000000b9_P<44>_UNCONNECTED ;
  wire \NLW_blk000000b9_P<43>_UNCONNECTED ;
  wire \NLW_blk000000b9_P<42>_UNCONNECTED ;
  wire \NLW_blk000000b9_P<41>_UNCONNECTED ;
  wire \NLW_blk000000b9_P<40>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<47>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<46>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<45>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<44>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<43>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<42>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<41>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<40>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<39>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<38>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<37>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<36>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<35>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<34>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<33>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<32>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<31>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<30>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<29>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<28>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<27>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<26>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<25>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<24>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<23>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<22>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<21>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<20>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<19>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<18>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<17>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<16>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<15>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<14>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<13>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<12>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<11>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<10>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<9>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<8>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<7>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<6>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<5>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<4>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<3>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<2>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<1>_UNCONNECTED ;
  wire \NLW_blk000000b9_PCOUT<0>_UNCONNECTED ;
  wire NLW_blk000000bb_O_UNCONNECTED;
  wire NLW_blk00000108_PATTERNBDETECT_UNCONNECTED;
  wire NLW_blk00000108_MULTSIGNOUT_UNCONNECTED;
  wire NLW_blk00000108_CARRYCASCOUT_UNCONNECTED;
  wire NLW_blk00000108_UNDERFLOW_UNCONNECTED;
  wire NLW_blk00000108_PATTERNDETECT_UNCONNECTED;
  wire NLW_blk00000108_OVERFLOW_UNCONNECTED;
  wire \NLW_blk00000108_ACOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000108_ACOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000108_CARRYOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000108_CARRYOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000108_CARRYOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000108_CARRYOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000108_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000108_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000108_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000108_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000108_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000108_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000108_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000108_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000108_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000108_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000108_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000108_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000108_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000108_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000108_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000108_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000108_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000108_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000108_P<47>_UNCONNECTED ;
  wire \NLW_blk00000108_P<46>_UNCONNECTED ;
  wire \NLW_blk00000108_P<45>_UNCONNECTED ;
  wire \NLW_blk00000108_P<44>_UNCONNECTED ;
  wire \NLW_blk00000108_P<43>_UNCONNECTED ;
  wire \NLW_blk00000108_P<42>_UNCONNECTED ;
  wire \NLW_blk00000108_P<41>_UNCONNECTED ;
  wire \NLW_blk00000108_P<40>_UNCONNECTED ;
  wire \NLW_blk00000108_P<39>_UNCONNECTED ;
  wire \NLW_blk00000108_P<38>_UNCONNECTED ;
  wire \NLW_blk00000108_P<37>_UNCONNECTED ;
  wire \NLW_blk00000108_P<36>_UNCONNECTED ;
  wire \NLW_blk00000108_P<35>_UNCONNECTED ;
  wire \NLW_blk00000108_P<26>_UNCONNECTED ;
  wire \NLW_blk00000108_P<25>_UNCONNECTED ;
  wire \NLW_blk00000108_P<1>_UNCONNECTED ;
  wire \NLW_blk00000108_P<0>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<47>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<46>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<45>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<44>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<43>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<42>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<41>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<40>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<39>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<38>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<37>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<36>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<35>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<34>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<33>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<32>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<31>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<30>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000108_PCOUT<0>_UNCONNECTED ;
  wire NLW_blk0000024d_Q15_UNCONNECTED;
  wire NLW_blk0000024f_Q15_UNCONNECTED;
  wire NLW_blk00000251_Q15_UNCONNECTED;
  wire NLW_blk00000253_Q15_UNCONNECTED;
  wire NLW_blk00000255_Q15_UNCONNECTED;
  wire NLW_blk00000257_Q15_UNCONNECTED;
  wire NLW_blk00000259_Q15_UNCONNECTED;
  wire NLW_blk0000025b_Q15_UNCONNECTED;
  wire NLW_blk0000025d_Q15_UNCONNECTED;
  wire NLW_blk0000025f_Q15_UNCONNECTED;
  wire NLW_blk00000261_Q15_UNCONNECTED;
  wire NLW_blk00000263_Q15_UNCONNECTED;
  wire NLW_blk00000265_Q15_UNCONNECTED;
  wire [22 : 0] \NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op ;
  wire [7 : 0] \U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/exp_op ;
  assign
    m_axis_result_tdata[31] = \U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/sign_op ,
    m_axis_result_tdata[30] = \U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/exp_op [7],
    m_axis_result_tdata[29] = \U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/exp_op [6],
    m_axis_result_tdata[28] = \U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/exp_op [5],
    m_axis_result_tdata[27] = \U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/exp_op [4],
    m_axis_result_tdata[26] = \U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/exp_op [3],
    m_axis_result_tdata[25] = \U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/exp_op [2],
    m_axis_result_tdata[24] = \U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/exp_op [1],
    m_axis_result_tdata[23] = \U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/exp_op [0],
    m_axis_result_tdata[22] = \NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [22],
    m_axis_result_tdata[21] = \NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [21],
    m_axis_result_tdata[20] = \NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [20],
    m_axis_result_tdata[19] = \NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [19],
    m_axis_result_tdata[18] = \NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [18],
    m_axis_result_tdata[17] = \NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [17],
    m_axis_result_tdata[16] = \NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [16],
    m_axis_result_tdata[15] = \NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [15],
    m_axis_result_tdata[14] = \NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [14],
    m_axis_result_tdata[13] = \NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [13],
    m_axis_result_tdata[12] = \NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [12],
    m_axis_result_tdata[11] = \NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [11],
    m_axis_result_tdata[10] = \NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [10],
    m_axis_result_tdata[9] = \NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [9],
    m_axis_result_tdata[8] = \NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [8],
    m_axis_result_tdata[7] = \NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [7],
    m_axis_result_tdata[6] = \NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [6],
    m_axis_result_tdata[5] = \NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [5],
    m_axis_result_tdata[4] = \NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [4],
    m_axis_result_tdata[3] = \NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [3],
    m_axis_result_tdata[2] = \NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [2],
    m_axis_result_tdata[1] = \NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [1],
    m_axis_result_tdata[0] = \NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [0],
    m_axis_result_tvalid = \U0/i_synth/i_nd_to_rdy/opt_has_pipe.pipe_7 ;
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
    .D(sig00000003),
    .Q(sig00000089)
  );
  XORCY   blk00000004 (
    .CI(sig0000008a),
    .LI(sig00000001),
    .O(sig000000cc)
  );
  XORCY   blk00000005 (
    .CI(sig0000008b),
    .LI(sig00000001),
    .O(sig000000cb)
  );
  MUXCY   blk00000006 (
    .CI(sig0000008b),
    .DI(sig00000002),
    .S(sig00000001),
    .O(sig0000008a)
  );
  XORCY   blk00000007 (
    .CI(sig0000008d),
    .LI(sig0000008c),
    .O(sig0000007e)
  );
  MUXCY   blk00000008 (
    .CI(sig0000008d),
    .DI(sig000000d8),
    .S(sig0000008c),
    .O(sig0000008b)
  );
  XORCY   blk00000009 (
    .CI(sig0000008f),
    .LI(sig0000008e),
    .O(sig0000007d)
  );
  MUXCY   blk0000000a (
    .CI(sig0000008f),
    .DI(sig000000d7),
    .S(sig0000008e),
    .O(sig0000008d)
  );
  XORCY   blk0000000b (
    .CI(sig00000091),
    .LI(sig00000090),
    .O(sig0000007c)
  );
  MUXCY   blk0000000c (
    .CI(sig00000091),
    .DI(sig000000d6),
    .S(sig00000090),
    .O(sig0000008f)
  );
  XORCY   blk0000000d (
    .CI(sig00000093),
    .LI(sig00000092),
    .O(sig0000007b)
  );
  MUXCY   blk0000000e (
    .CI(sig00000093),
    .DI(sig000000d5),
    .S(sig00000092),
    .O(sig00000091)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk0000000f (
    .I0(sig000000d5),
    .I1(sig00000028),
    .O(sig00000092)
  );
  XORCY   blk00000010 (
    .CI(sig00000095),
    .LI(sig00000094),
    .O(sig0000007a)
  );
  MUXCY   blk00000011 (
    .CI(sig00000095),
    .DI(sig000000d4),
    .S(sig00000094),
    .O(sig00000093)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000012 (
    .I0(sig000000d4),
    .I1(sig00000027),
    .O(sig00000094)
  );
  XORCY   blk00000013 (
    .CI(sig00000097),
    .LI(sig00000096),
    .O(sig00000079)
  );
  MUXCY   blk00000014 (
    .CI(sig00000097),
    .DI(sig000000d3),
    .S(sig00000096),
    .O(sig00000095)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000015 (
    .I0(sig000000d3),
    .I1(sig00000026),
    .O(sig00000096)
  );
  XORCY   blk00000016 (
    .CI(sig00000099),
    .LI(sig00000098),
    .O(sig00000078)
  );
  MUXCY   blk00000017 (
    .CI(sig00000099),
    .DI(sig000000d2),
    .S(sig00000098),
    .O(sig00000097)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000018 (
    .I0(sig000000d2),
    .I1(sig00000025),
    .O(sig00000098)
  );
  XORCY   blk00000019 (
    .CI(sig00000001),
    .LI(sig0000009a),
    .O(sig00000077)
  );
  MUXCY   blk0000001a (
    .CI(sig00000001),
    .DI(sig000000d1),
    .S(sig0000009a),
    .O(sig00000099)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk0000001b (
    .I0(sig000000d1),
    .I1(sig00000024),
    .O(sig0000009a)
  );
  XORCY   blk0000001c (
    .CI(sig0000009b),
    .LI(sig00000001),
    .O(sig000000c6)
  );
  XORCY   blk0000001d (
    .CI(sig0000009d),
    .LI(sig0000009c),
    .O(sig000000c5)
  );
  MUXCY   blk0000001e (
    .CI(sig0000009d),
    .DI(s_axis_b_tdata[30]),
    .S(sig0000009c),
    .O(sig0000009b)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk0000001f (
    .I0(s_axis_b_tdata[30]),
    .I1(s_axis_a_tdata[30]),
    .O(sig0000009c)
  );
  XORCY   blk00000020 (
    .CI(sig0000009f),
    .LI(sig0000009e),
    .O(sig000000c4)
  );
  MUXCY   blk00000021 (
    .CI(sig0000009f),
    .DI(s_axis_b_tdata[29]),
    .S(sig0000009e),
    .O(sig0000009d)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000022 (
    .I0(s_axis_b_tdata[29]),
    .I1(s_axis_a_tdata[29]),
    .O(sig0000009e)
  );
  XORCY   blk00000023 (
    .CI(sig000000a1),
    .LI(sig000000a0),
    .O(sig000000c3)
  );
  MUXCY   blk00000024 (
    .CI(sig000000a1),
    .DI(s_axis_b_tdata[28]),
    .S(sig000000a0),
    .O(sig0000009f)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000025 (
    .I0(s_axis_b_tdata[28]),
    .I1(s_axis_a_tdata[28]),
    .O(sig000000a0)
  );
  XORCY   blk00000026 (
    .CI(sig000000a3),
    .LI(sig000000a2),
    .O(sig000000c2)
  );
  MUXCY   blk00000027 (
    .CI(sig000000a3),
    .DI(s_axis_b_tdata[27]),
    .S(sig000000a2),
    .O(sig000000a1)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000028 (
    .I0(s_axis_b_tdata[27]),
    .I1(s_axis_a_tdata[27]),
    .O(sig000000a2)
  );
  XORCY   blk00000029 (
    .CI(sig000000a5),
    .LI(sig000000a4),
    .O(sig000000c1)
  );
  MUXCY   blk0000002a (
    .CI(sig000000a5),
    .DI(s_axis_b_tdata[26]),
    .S(sig000000a4),
    .O(sig000000a3)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk0000002b (
    .I0(s_axis_b_tdata[26]),
    .I1(s_axis_a_tdata[26]),
    .O(sig000000a4)
  );
  XORCY   blk0000002c (
    .CI(sig000000a7),
    .LI(sig000000a6),
    .O(sig000000c0)
  );
  MUXCY   blk0000002d (
    .CI(sig000000a7),
    .DI(s_axis_b_tdata[25]),
    .S(sig000000a6),
    .O(sig000000a5)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk0000002e (
    .I0(s_axis_b_tdata[25]),
    .I1(s_axis_a_tdata[25]),
    .O(sig000000a6)
  );
  XORCY   blk0000002f (
    .CI(sig000000a9),
    .LI(sig000000a8),
    .O(sig000000bf)
  );
  MUXCY   blk00000030 (
    .CI(sig000000a9),
    .DI(s_axis_b_tdata[24]),
    .S(sig000000a8),
    .O(sig000000a7)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000031 (
    .I0(s_axis_b_tdata[24]),
    .I1(s_axis_a_tdata[24]),
    .O(sig000000a8)
  );
  XORCY   blk00000032 (
    .CI(sig00000001),
    .LI(sig000000aa),
    .O(sig000000be)
  );
  MUXCY   blk00000033 (
    .CI(sig00000001),
    .DI(s_axis_b_tdata[23]),
    .S(sig000000aa),
    .O(sig000000a9)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000034 (
    .I0(s_axis_b_tdata[23]),
    .I1(s_axis_a_tdata[23]),
    .O(sig000000aa)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000035 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000bc),
    .Q(sig000000ce)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000036 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000cc),
    .Q(sig000000d0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000037 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000bb),
    .Q(sig000000cd)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000038 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000ba),
    .Q(sig000000cf)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000039 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000c8),
    .Q(sig000000ab)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003a (
    .C(aclk),
    .CE(aclken),
    .D(sig000000c7),
    .Q(sig000000ac)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003b (
    .C(aclk),
    .CE(aclken),
    .D(sig000000bd),
    .Q(sig00000074)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003c (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[31]),
    .Q(sig000000e5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003d (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[31]),
    .Q(sig000000e6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003e (
    .C(aclk),
    .CE(aclken),
    .D(sig00000004),
    .Q(sig000000ad)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003f (
    .C(aclk),
    .CE(aclken),
    .D(sig000000ad),
    .Q(sig000000f7)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000040 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000ae),
    .Q(sig000000fc)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000041 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000af),
    .Q(sig000000fb)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000042 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000b0),
    .Q(sig000000f9)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000043 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000b1),
    .Q(sig000000f8)
  );
  MUXCY   blk00000044 (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig00000104),
    .O(sig000000fe)
  );
  MUXCY   blk00000045 (
    .CI(sig000000fe),
    .DI(sig00000002),
    .S(sig00000103),
    .O(sig000000ff)
  );
  MUXCY   blk00000046 (
    .CI(sig000000ff),
    .DI(sig00000002),
    .S(sig00000102),
    .O(sig00000100)
  );
  MUXCY   blk00000047 (
    .CI(sig00000100),
    .DI(sig00000002),
    .S(sig00000105),
    .O(sig00000101)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000048 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000101),
    .Q(sig000000fd)
  );
  MUXCY   blk00000049 (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig0000010c),
    .O(sig00000106)
  );
  MUXCY   blk0000004a (
    .CI(sig00000106),
    .DI(sig00000002),
    .S(sig0000010b),
    .O(sig00000107)
  );
  MUXCY   blk0000004b (
    .CI(sig00000107),
    .DI(sig00000002),
    .S(sig0000010a),
    .O(sig00000108)
  );
  MUXCY   blk0000004c (
    .CI(sig00000108),
    .DI(sig00000002),
    .S(sig0000010d),
    .O(sig00000109)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000004d (
    .C(aclk),
    .CE(aclken),
    .D(sig00000109),
    .Q(sig000000fa)
  );
  MUXCY   blk0000004e (
    .CI(sig0000012f),
    .DI(sig0000010e),
    .S(sig0000010f),
    .O(sig0000012e)
  );
  MUXCY   blk0000004f (
    .CI(sig00000130),
    .DI(sig00000110),
    .S(sig00000111),
    .O(sig0000012f)
  );
  MUXCY   blk00000050 (
    .CI(sig00000131),
    .DI(sig00000112),
    .S(sig00000113),
    .O(sig00000130)
  );
  MUXCY   blk00000051 (
    .CI(sig00000132),
    .DI(sig00000114),
    .S(sig00000115),
    .O(sig00000131)
  );
  MUXCY   blk00000052 (
    .CI(sig00000133),
    .DI(sig00000116),
    .S(sig00000117),
    .O(sig00000132)
  );
  MUXCY   blk00000053 (
    .CI(sig00000134),
    .DI(sig00000118),
    .S(sig00000119),
    .O(sig00000133)
  );
  MUXCY   blk00000054 (
    .CI(sig00000135),
    .DI(sig0000011a),
    .S(sig0000011b),
    .O(sig00000134)
  );
  MUXCY   blk00000055 (
    .CI(sig00000136),
    .DI(sig0000011c),
    .S(sig0000011d),
    .O(sig00000135)
  );
  MUXCY   blk00000056 (
    .CI(sig00000137),
    .DI(sig0000011e),
    .S(sig0000011f),
    .O(sig00000136)
  );
  MUXCY   blk00000057 (
    .CI(sig00000138),
    .DI(sig00000120),
    .S(sig00000121),
    .O(sig00000137)
  );
  MUXCY   blk00000058 (
    .CI(sig00000139),
    .DI(sig00000122),
    .S(sig00000123),
    .O(sig00000138)
  );
  MUXCY   blk00000059 (
    .CI(sig0000013a),
    .DI(sig00000124),
    .S(sig00000125),
    .O(sig00000139)
  );
  MUXCY   blk0000005a (
    .CI(sig0000013b),
    .DI(sig00000126),
    .S(sig00000127),
    .O(sig0000013a)
  );
  MUXCY   blk0000005b (
    .CI(sig0000013c),
    .DI(sig00000128),
    .S(sig00000129),
    .O(sig0000013b)
  );
  MUXCY   blk0000005c (
    .CI(sig0000013d),
    .DI(sig0000012a),
    .S(sig0000012b),
    .O(sig0000013c)
  );
  MUXCY   blk0000005d (
    .CI(sig00000002),
    .DI(sig0000012c),
    .S(sig0000012d),
    .O(sig0000013d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000005e (
    .C(aclk),
    .CE(aclken),
    .D(sig0000012e),
    .Q(sig00000076)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000005f (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[30]),
    .Q(sig000000f6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000060 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[29]),
    .Q(sig000000f5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000061 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[28]),
    .Q(sig000000f4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000062 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[27]),
    .Q(sig000000f3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000063 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[26]),
    .Q(sig000000f2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000064 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[25]),
    .Q(sig000000f1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000065 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[24]),
    .Q(sig000000f0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000066 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[23]),
    .Q(sig000000ef)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000067 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[30]),
    .Q(sig000000ee)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000068 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[29]),
    .Q(sig000000ed)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000069 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[28]),
    .Q(sig000000ec)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000006a (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[27]),
    .Q(sig000000eb)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000006b (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[26]),
    .Q(sig000000ea)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000006c (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[25]),
    .Q(sig000000e9)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000006d (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[24]),
    .Q(sig000000e8)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000006e (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[23]),
    .Q(sig000000e7)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000006f (
    .C(aclk),
    .CE(aclken),
    .D(sig000000c6),
    .Q(sig00000088)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000070 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000c5),
    .Q(sig00000087)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000071 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000c4),
    .Q(sig00000086)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000072 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000c3),
    .Q(sig00000085)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000073 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000c2),
    .Q(sig00000084)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000074 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000c1),
    .Q(sig00000083)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000075 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000c0),
    .Q(sig00000082)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000076 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000bf),
    .Q(sig00000081)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000077 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000be),
    .Q(sig00000080)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000078 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000ca),
    .Q(sig0000013f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000079 (
    .C(aclk),
    .CE(aclken),
    .D(sig000000c9),
    .Q(sig0000013e)
  );
  XORCY   blk0000007a (
    .CI(sig00000140),
    .LI(sig00000002),
    .O(NLW_blk0000007a_O_UNCONNECTED)
  );
  XORCY   blk0000007b (
    .CI(sig00000141),
    .LI(sig000000b9),
    .O(sig000000e0)
  );
  MUXCY   blk0000007c (
    .CI(sig00000141),
    .DI(sig00000002),
    .S(sig000000b9),
    .O(sig00000140)
  );
  XORCY   blk0000007d (
    .CI(sig00000142),
    .LI(sig000000b8),
    .O(sig000000df)
  );
  MUXCY   blk0000007e (
    .CI(sig00000142),
    .DI(sig00000002),
    .S(sig000000b8),
    .O(sig00000141)
  );
  XORCY   blk0000007f (
    .CI(sig00000143),
    .LI(sig000000b7),
    .O(sig000000de)
  );
  MUXCY   blk00000080 (
    .CI(sig00000143),
    .DI(sig00000002),
    .S(sig000000b7),
    .O(sig00000142)
  );
  XORCY   blk00000081 (
    .CI(sig00000144),
    .LI(sig000000b6),
    .O(sig000000dd)
  );
  MUXCY   blk00000082 (
    .CI(sig00000144),
    .DI(sig00000002),
    .S(sig000000b6),
    .O(sig00000143)
  );
  XORCY   blk00000083 (
    .CI(sig00000145),
    .LI(sig000000b5),
    .O(sig000000dc)
  );
  MUXCY   blk00000084 (
    .CI(sig00000145),
    .DI(sig00000002),
    .S(sig000000b5),
    .O(sig00000144)
  );
  XORCY   blk00000085 (
    .CI(sig00000146),
    .LI(sig000000b4),
    .O(sig000000db)
  );
  MUXCY   blk00000086 (
    .CI(sig00000146),
    .DI(sig00000002),
    .S(sig000000b4),
    .O(sig00000145)
  );
  XORCY   blk00000087 (
    .CI(sig00000147),
    .LI(sig000000b3),
    .O(sig000000da)
  );
  MUXCY   blk00000088 (
    .CI(sig00000147),
    .DI(sig00000002),
    .S(sig000000b3),
    .O(sig00000146)
  );
  XORCY   blk00000089 (
    .CI(sig00000002),
    .LI(sig000000b2),
    .O(sig000000d9)
  );
  MUXCY   blk0000008a (
    .CI(sig00000002),
    .DI(sig00000001),
    .S(sig000000b2),
    .O(sig00000147)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008b (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[22]),
    .Q(sig00000072)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008c (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[21]),
    .Q(sig00000071)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008d (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[20]),
    .Q(sig00000070)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008e (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[19]),
    .Q(sig0000006f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008f (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[18]),
    .Q(sig0000006e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000090 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[17]),
    .Q(sig0000006d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000091 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[16]),
    .Q(sig0000006c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000092 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[15]),
    .Q(sig0000006b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000093 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[14]),
    .Q(sig0000006a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000094 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[13]),
    .Q(sig00000069)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000095 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[12]),
    .Q(sig00000068)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000096 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[11]),
    .Q(sig00000067)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000097 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[10]),
    .Q(sig00000066)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000098 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[9]),
    .Q(sig00000065)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000099 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[8]),
    .Q(sig00000064)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000009a (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[7]),
    .Q(sig00000063)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000009b (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[6]),
    .Q(sig00000062)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000009c (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[5]),
    .Q(sig00000061)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000009d (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[4]),
    .Q(sig00000060)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000009e (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[3]),
    .Q(sig0000005f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000009f (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[2]),
    .Q(sig0000005e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a0 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[1]),
    .Q(sig0000005d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a1 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tdata[0]),
    .Q(sig0000005c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a2 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[22]),
    .Q(sig0000005b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a3 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[21]),
    .Q(sig0000005a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a4 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[20]),
    .Q(sig00000059)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a5 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[19]),
    .Q(sig00000058)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a6 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[18]),
    .Q(sig00000057)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a7 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[17]),
    .Q(sig00000056)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a8 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[16]),
    .Q(sig00000055)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a9 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[15]),
    .Q(sig00000054)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000aa (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[14]),
    .Q(sig00000053)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ab (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[13]),
    .Q(sig00000052)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ac (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[12]),
    .Q(sig00000051)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ad (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[11]),
    .Q(sig00000050)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ae (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[10]),
    .Q(sig0000004f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000af (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[9]),
    .Q(sig0000004e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b0 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[8]),
    .Q(sig0000004d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b1 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[7]),
    .Q(sig0000004c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b2 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[6]),
    .Q(sig0000004b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b3 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[5]),
    .Q(sig0000004a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b4 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[4]),
    .Q(sig00000049)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b5 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[3]),
    .Q(sig00000048)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b6 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[2]),
    .Q(sig00000047)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b7 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[1]),
    .Q(sig00000046)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b8 (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_b_tdata[0]),
    .Q(sig00000045)
  );
  DSP48E1 #(
    .ACASCREG ( 1 ),
    .ADREG ( 0 ),
    .ALUMODEREG ( 1 ),
    .AREG ( 1 ),
    .AUTORESET_PATDET ( "NO_RESET" ),
    .A_INPUT ( "DIRECT" ),
    .BCASCREG ( 1 ),
    .BREG ( 1 ),
    .B_INPUT ( "DIRECT" ),
    .CARRYINREG ( 1 ),
    .CARRYINSELREG ( 1 ),
    .CREG ( 1 ),
    .DREG ( 0 ),
    .INMODEREG ( 0 ),
    .MASK ( 48'hFF0000FFFFFF ),
    .MREG ( 1 ),
    .OPMODEREG ( 1 ),
    .PATTERN ( 48'h000000000000 ),
    .PREG ( 0 ),
    .SEL_MASK ( "MASK" ),
    .SEL_PATTERN ( "PATTERN" ),
    .USE_DPORT ( "FALSE" ),
    .USE_MULT ( "MULTIPLY" ),
    .USE_PATTERN_DETECT ( "PATDET" ),
    .USE_SIMD ( "ONE48" ))
  blk000000b9 (
    .PATTERNBDETECT(NLW_blk000000b9_PATTERNBDETECT_UNCONNECTED),
    .RSTC(sig00000002),
    .CEB1(sig00000002),
    .CEAD(sig00000002),
    .MULTSIGNOUT(NLW_blk000000b9_MULTSIGNOUT_UNCONNECTED),
    .CEC(aclken),
    .RSTM(sig00000002),
    .MULTSIGNIN(sig00000002),
    .CEB2(aclken),
    .RSTCTRL(sig00000002),
    .CEP(sig00000002),
    .CARRYCASCOUT(NLW_blk000000b9_CARRYCASCOUT_UNCONNECTED),
    .RSTA(sig00000002),
    .CECARRYIN(aclken),
    .UNDERFLOW(NLW_blk000000b9_UNDERFLOW_UNCONNECTED),
    .PATTERNDETECT(sig000001a1),
    .RSTALUMODE(sig00000002),
    .RSTALLCARRYIN(sig00000002),
    .CED(sig00000002),
    .RSTD(sig00000002),
    .CEALUMODE(aclken),
    .CEA2(aclken),
    .CLK(aclk),
    .CEA1(sig00000002),
    .RSTB(sig00000002),
    .OVERFLOW(NLW_blk000000b9_OVERFLOW_UNCONNECTED),
    .CECTRL(aclken),
    .CEM(aclken),
    .CARRYIN(sig000001ca),
    .CARRYCASCIN(sig00000002),
    .RSTINMODE(sig00000002),
    .CEINMODE(sig00000002),
    .RSTP(sig00000002),
    .ACOUT({\NLW_blk000000b9_ACOUT<29>_UNCONNECTED , \NLW_blk000000b9_ACOUT<28>_UNCONNECTED , \NLW_blk000000b9_ACOUT<27>_UNCONNECTED , 
\NLW_blk000000b9_ACOUT<26>_UNCONNECTED , \NLW_blk000000b9_ACOUT<25>_UNCONNECTED , \NLW_blk000000b9_ACOUT<24>_UNCONNECTED , 
\NLW_blk000000b9_ACOUT<23>_UNCONNECTED , \NLW_blk000000b9_ACOUT<22>_UNCONNECTED , \NLW_blk000000b9_ACOUT<21>_UNCONNECTED , 
\NLW_blk000000b9_ACOUT<20>_UNCONNECTED , \NLW_blk000000b9_ACOUT<19>_UNCONNECTED , \NLW_blk000000b9_ACOUT<18>_UNCONNECTED , 
\NLW_blk000000b9_ACOUT<17>_UNCONNECTED , \NLW_blk000000b9_ACOUT<16>_UNCONNECTED , \NLW_blk000000b9_ACOUT<15>_UNCONNECTED , 
\NLW_blk000000b9_ACOUT<14>_UNCONNECTED , \NLW_blk000000b9_ACOUT<13>_UNCONNECTED , \NLW_blk000000b9_ACOUT<12>_UNCONNECTED , 
\NLW_blk000000b9_ACOUT<11>_UNCONNECTED , \NLW_blk000000b9_ACOUT<10>_UNCONNECTED , \NLW_blk000000b9_ACOUT<9>_UNCONNECTED , 
\NLW_blk000000b9_ACOUT<8>_UNCONNECTED , \NLW_blk000000b9_ACOUT<7>_UNCONNECTED , \NLW_blk000000b9_ACOUT<6>_UNCONNECTED , 
\NLW_blk000000b9_ACOUT<5>_UNCONNECTED , \NLW_blk000000b9_ACOUT<4>_UNCONNECTED , \NLW_blk000000b9_ACOUT<3>_UNCONNECTED , 
\NLW_blk000000b9_ACOUT<2>_UNCONNECTED , \NLW_blk000000b9_ACOUT<1>_UNCONNECTED , \NLW_blk000000b9_ACOUT<0>_UNCONNECTED }),
    .OPMODE({sig00000002, sig000001cb, sig000001cb, sig00000002, sig000001cc, sig00000002, sig000001cc}),
    .PCIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .ALUMODE({sig00000002, sig00000002, sig000001df, sig000001df}),
    .C({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000160, sig00000161
, sig00000162, sig00000163, sig00000164, sig00000165, sig00000166, sig00000167, sig00000168, sig00000169, sig0000016a, sig0000016b, sig0000016c, 
sig0000016d, sig0000016e, sig0000016f, sig00000170, sig00000171, sig00000172, sig00000173, sig00000174, sig00000175, sig00000176, sig00000177, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002}),
    .CARRYOUT({\NLW_blk000000b9_CARRYOUT<3>_UNCONNECTED , \NLW_blk000000b9_CARRYOUT<2>_UNCONNECTED , \NLW_blk000000b9_CARRYOUT<1>_UNCONNECTED , 
\NLW_blk000000b9_CARRYOUT<0>_UNCONNECTED }),
    .INMODE({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .BCIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .B({sig00000002, sig00000002, sig000001dc, sig000001db, sig000001da, sig000001d9, sig000001d8, sig000001d7, sig000001d6, sig000001d5, sig000001d4
, sig000001d3, sig000001d2, sig000001d1, sig000001d0, sig000001cf, sig000001ce, sig000001cd}),
    .BCOUT({\NLW_blk000000b9_BCOUT<17>_UNCONNECTED , \NLW_blk000000b9_BCOUT<16>_UNCONNECTED , \NLW_blk000000b9_BCOUT<15>_UNCONNECTED , 
\NLW_blk000000b9_BCOUT<14>_UNCONNECTED , \NLW_blk000000b9_BCOUT<13>_UNCONNECTED , \NLW_blk000000b9_BCOUT<12>_UNCONNECTED , 
\NLW_blk000000b9_BCOUT<11>_UNCONNECTED , \NLW_blk000000b9_BCOUT<10>_UNCONNECTED , \NLW_blk000000b9_BCOUT<9>_UNCONNECTED , 
\NLW_blk000000b9_BCOUT<8>_UNCONNECTED , \NLW_blk000000b9_BCOUT<7>_UNCONNECTED , \NLW_blk000000b9_BCOUT<6>_UNCONNECTED , 
\NLW_blk000000b9_BCOUT<5>_UNCONNECTED , \NLW_blk000000b9_BCOUT<4>_UNCONNECTED , \NLW_blk000000b9_BCOUT<3>_UNCONNECTED , 
\NLW_blk000000b9_BCOUT<2>_UNCONNECTED , \NLW_blk000000b9_BCOUT<1>_UNCONNECTED , \NLW_blk000000b9_BCOUT<0>_UNCONNECTED }),
    .D({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002
, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002}),
    .P({\NLW_blk000000b9_P<47>_UNCONNECTED , \NLW_blk000000b9_P<46>_UNCONNECTED , \NLW_blk000000b9_P<45>_UNCONNECTED , 
\NLW_blk000000b9_P<44>_UNCONNECTED , \NLW_blk000000b9_P<43>_UNCONNECTED , \NLW_blk000000b9_P<42>_UNCONNECTED , \NLW_blk000000b9_P<41>_UNCONNECTED , 
\NLW_blk000000b9_P<40>_UNCONNECTED , sig000001bc, sig000001bb, sig000001ba, sig000001b9, sig000001b8, sig000001b7, sig000001b6, sig000001b5, 
sig000001b4, sig000001b3, sig000001b2, sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab, sig000001aa, 
sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4, sig000001a3, sig000001a2, sig000001c9, sig000001c8, sig000001c7, 
sig000001c6, sig000001c5, sig000001c4, sig000001c3, sig000001c2, sig000001c1, sig000001c0, sig000001bf, sig000001be, sig000001bd}),
    .A({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000148, sig00000149, sig0000014a, sig0000014b, sig0000014c
, sig0000014d, sig0000014e, sig0000014f, sig00000150, sig00000151, sig00000152, sig00000153, sig00000154, sig00000155, sig00000156, sig00000157, 
sig00000158, sig00000159, sig0000015a, sig0000015b, sig0000015c, sig0000015d, sig0000015e, sig0000015f}),
    .PCOUT({\NLW_blk000000b9_PCOUT<47>_UNCONNECTED , \NLW_blk000000b9_PCOUT<46>_UNCONNECTED , \NLW_blk000000b9_PCOUT<45>_UNCONNECTED , 
\NLW_blk000000b9_PCOUT<44>_UNCONNECTED , \NLW_blk000000b9_PCOUT<43>_UNCONNECTED , \NLW_blk000000b9_PCOUT<42>_UNCONNECTED , 
\NLW_blk000000b9_PCOUT<41>_UNCONNECTED , \NLW_blk000000b9_PCOUT<40>_UNCONNECTED , \NLW_blk000000b9_PCOUT<39>_UNCONNECTED , 
\NLW_blk000000b9_PCOUT<38>_UNCONNECTED , \NLW_blk000000b9_PCOUT<37>_UNCONNECTED , \NLW_blk000000b9_PCOUT<36>_UNCONNECTED , 
\NLW_blk000000b9_PCOUT<35>_UNCONNECTED , \NLW_blk000000b9_PCOUT<34>_UNCONNECTED , \NLW_blk000000b9_PCOUT<33>_UNCONNECTED , 
\NLW_blk000000b9_PCOUT<32>_UNCONNECTED , \NLW_blk000000b9_PCOUT<31>_UNCONNECTED , \NLW_blk000000b9_PCOUT<30>_UNCONNECTED , 
\NLW_blk000000b9_PCOUT<29>_UNCONNECTED , \NLW_blk000000b9_PCOUT<28>_UNCONNECTED , \NLW_blk000000b9_PCOUT<27>_UNCONNECTED , 
\NLW_blk000000b9_PCOUT<26>_UNCONNECTED , \NLW_blk000000b9_PCOUT<25>_UNCONNECTED , \NLW_blk000000b9_PCOUT<24>_UNCONNECTED , 
\NLW_blk000000b9_PCOUT<23>_UNCONNECTED , \NLW_blk000000b9_PCOUT<22>_UNCONNECTED , \NLW_blk000000b9_PCOUT<21>_UNCONNECTED , 
\NLW_blk000000b9_PCOUT<20>_UNCONNECTED , \NLW_blk000000b9_PCOUT<19>_UNCONNECTED , \NLW_blk000000b9_PCOUT<18>_UNCONNECTED , 
\NLW_blk000000b9_PCOUT<17>_UNCONNECTED , \NLW_blk000000b9_PCOUT<16>_UNCONNECTED , \NLW_blk000000b9_PCOUT<15>_UNCONNECTED , 
\NLW_blk000000b9_PCOUT<14>_UNCONNECTED , \NLW_blk000000b9_PCOUT<13>_UNCONNECTED , \NLW_blk000000b9_PCOUT<12>_UNCONNECTED , 
\NLW_blk000000b9_PCOUT<11>_UNCONNECTED , \NLW_blk000000b9_PCOUT<10>_UNCONNECTED , \NLW_blk000000b9_PCOUT<9>_UNCONNECTED , 
\NLW_blk000000b9_PCOUT<8>_UNCONNECTED , \NLW_blk000000b9_PCOUT<7>_UNCONNECTED , \NLW_blk000000b9_PCOUT<6>_UNCONNECTED , 
\NLW_blk000000b9_PCOUT<5>_UNCONNECTED , \NLW_blk000000b9_PCOUT<4>_UNCONNECTED , \NLW_blk000000b9_PCOUT<3>_UNCONNECTED , 
\NLW_blk000000b9_PCOUT<2>_UNCONNECTED , \NLW_blk000000b9_PCOUT<1>_UNCONNECTED , \NLW_blk000000b9_PCOUT<0>_UNCONNECTED }),
    .ACIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .CARRYINSEL({sig00000002, sig00000002, sig00000002})
  );
  MUXCY   blk000000ba (
    .CI(sig000001de),
    .DI(sig00000001),
    .S(sig0000027a),
    .O(sig000001dd)
  );
  XORCY   blk000000bb (
    .CI(sig000001de),
    .LI(sig0000027a),
    .O(NLW_blk000000bb_O_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000bc (
    .C(aclk),
    .CE(aclken),
    .D(sig000001a1),
    .Q(sig00000029)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000bd (
    .C(aclk),
    .CE(aclken),
    .D(sig00000178),
    .Q(sig000001ca)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000be (
    .C(aclk),
    .CE(aclken),
    .D(sig000001e0),
    .Q(sig000001cb)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000bf (
    .C(aclk),
    .CE(aclken),
    .D(sig00000179),
    .Q(sig000001cc)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c0 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000074),
    .Q(sig000001df)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c1 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000001),
    .Q(sig00000160)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c2 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000192),
    .Q(sig00000161)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c3 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000191),
    .Q(sig00000162)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c4 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000190),
    .Q(sig00000163)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c5 (
    .C(aclk),
    .CE(aclken),
    .D(sig0000018f),
    .Q(sig00000164)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c6 (
    .C(aclk),
    .CE(aclken),
    .D(sig0000018e),
    .Q(sig00000165)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c7 (
    .C(aclk),
    .CE(aclken),
    .D(sig0000018d),
    .Q(sig00000166)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c8 (
    .C(aclk),
    .CE(aclken),
    .D(sig0000018c),
    .Q(sig00000167)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c9 (
    .C(aclk),
    .CE(aclken),
    .D(sig0000018b),
    .Q(sig00000168)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ca (
    .C(aclk),
    .CE(aclken),
    .D(sig0000018a),
    .Q(sig00000169)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000cb (
    .C(aclk),
    .CE(aclken),
    .D(sig00000189),
    .Q(sig0000016a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000cc (
    .C(aclk),
    .CE(aclken),
    .D(sig00000188),
    .Q(sig0000016b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000cd (
    .C(aclk),
    .CE(aclken),
    .D(sig00000187),
    .Q(sig0000016c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ce (
    .C(aclk),
    .CE(aclken),
    .D(sig00000186),
    .Q(sig0000016d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000cf (
    .C(aclk),
    .CE(aclken),
    .D(sig00000185),
    .Q(sig0000016e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000d0 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000184),
    .Q(sig0000016f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000d1 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000183),
    .Q(sig00000170)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000d2 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000182),
    .Q(sig00000171)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000d3 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000181),
    .Q(sig00000172)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000d4 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000180),
    .Q(sig00000173)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000d5 (
    .C(aclk),
    .CE(aclken),
    .D(sig0000017f),
    .Q(sig00000174)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000d6 (
    .C(aclk),
    .CE(aclken),
    .D(sig0000017e),
    .Q(sig00000175)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000d7 (
    .C(aclk),
    .CE(aclken),
    .D(sig0000017d),
    .Q(sig00000176)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000d8 (
    .C(aclk),
    .CE(aclken),
    .D(sig0000017c),
    .Q(sig00000177)
  );
  MUXCY   blk000000d9 (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig000001ed),
    .O(sig000001e1)
  );
  MUXCY   blk000000da (
    .CI(sig000001e1),
    .DI(sig00000002),
    .S(sig000001ec),
    .O(sig000001e2)
  );
  MUXCY   blk000000db (
    .CI(sig000001e2),
    .DI(sig00000002),
    .S(sig000001eb),
    .O(sig000001e3)
  );
  MUXCY   blk000000dc (
    .CI(sig000001e3),
    .DI(sig00000002),
    .S(sig000001ea),
    .O(sig000001e4)
  );
  MUXCY   blk000000dd (
    .CI(sig000001e4),
    .DI(sig00000002),
    .S(sig000001e9),
    .O(sig000001e5)
  );
  MUXCY   blk000000de (
    .CI(sig000001e5),
    .DI(sig00000002),
    .S(sig000001e8),
    .O(sig000001e6)
  );
  MUXCY   blk000000df (
    .CI(sig000001e6),
    .DI(sig00000002),
    .S(sig000001e7),
    .O(sig000001de)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e0 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001c9),
    .Q(sig00000193)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e1 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001c8),
    .Q(sig00000194)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e2 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001c7),
    .Q(sig00000195)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e3 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001c6),
    .Q(sig00000196)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e4 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001c5),
    .Q(sig00000197)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e5 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001c4),
    .Q(sig00000198)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e6 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001c3),
    .Q(sig00000199)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e7 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001c2),
    .Q(sig0000019a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e8 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001c1),
    .Q(sig0000019b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e9 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001c0),
    .Q(sig0000019c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ea (
    .C(aclk),
    .CE(aclken),
    .D(sig000001bf),
    .Q(sig0000019d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000eb (
    .C(aclk),
    .CE(aclken),
    .D(sig000001be),
    .Q(sig0000019e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ec (
    .C(aclk),
    .CE(aclken),
    .D(sig000001bd),
    .Q(sig0000019f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ed (
    .C(aclk),
    .CE(aclken),
    .D(sig000001bc),
    .Q(sig00000044)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ee (
    .C(aclk),
    .CE(aclken),
    .D(sig000001bb),
    .Q(sig00000043)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ef (
    .C(aclk),
    .CE(aclken),
    .D(sig000001ba),
    .Q(sig00000042)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f0 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001b9),
    .Q(sig00000041)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f1 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001b8),
    .Q(sig00000040)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f2 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001b7),
    .Q(sig0000003f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f3 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001b6),
    .Q(sig0000003e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f4 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001b5),
    .Q(sig0000003d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f5 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001b4),
    .Q(sig0000003c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f6 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001b3),
    .Q(sig0000003b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f7 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001b2),
    .Q(sig0000003a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f8 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001b1),
    .Q(sig00000039)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f9 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001b0),
    .Q(sig00000038)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000fa (
    .C(aclk),
    .CE(aclken),
    .D(sig000001af),
    .Q(sig00000037)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000fb (
    .C(aclk),
    .CE(aclken),
    .D(sig000001ae),
    .Q(sig00000036)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000fc (
    .C(aclk),
    .CE(aclken),
    .D(sig000001ad),
    .Q(sig00000035)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000fd (
    .C(aclk),
    .CE(aclken),
    .D(sig000001ac),
    .Q(sig00000034)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000fe (
    .C(aclk),
    .CE(aclken),
    .D(sig000001ab),
    .Q(sig00000033)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ff (
    .C(aclk),
    .CE(aclken),
    .D(sig000001aa),
    .Q(sig00000032)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000100 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001a9),
    .Q(sig00000031)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000101 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001a8),
    .Q(sig00000030)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000102 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001a7),
    .Q(sig0000002f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000103 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001a6),
    .Q(sig0000002e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000104 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001a5),
    .Q(sig0000002d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000105 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001a4),
    .Q(sig0000002c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000106 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001a3),
    .Q(sig0000002b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000107 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001a2),
    .Q(sig0000002a)
  );
  DSP48E1 #(
    .ACASCREG ( 1 ),
    .ADREG ( 0 ),
    .ALUMODEREG ( 1 ),
    .AREG ( 1 ),
    .AUTORESET_PATDET ( "NO_RESET" ),
    .A_INPUT ( "DIRECT" ),
    .BCASCREG ( 0 ),
    .BREG ( 0 ),
    .B_INPUT ( "DIRECT" ),
    .CARRYINREG ( 1 ),
    .CARRYINSELREG ( 1 ),
    .CREG ( 1 ),
    .DREG ( 0 ),
    .INMODEREG ( 0 ),
    .MASK ( 48'h3FFFFFFFFFFF ),
    .MREG ( 1 ),
    .OPMODEREG ( 1 ),
    .PATTERN ( 48'h000000000000 ),
    .PREG ( 0 ),
    .SEL_MASK ( "MASK" ),
    .SEL_PATTERN ( "PATTERN" ),
    .USE_DPORT ( "FALSE" ),
    .USE_MULT ( "MULTIPLY" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .USE_SIMD ( "ONE48" ))
  blk00000108 (
    .PATTERNBDETECT(NLW_blk00000108_PATTERNBDETECT_UNCONNECTED),
    .RSTC(sig00000002),
    .CEB1(sig00000002),
    .CEAD(sig00000002),
    .MULTSIGNOUT(NLW_blk00000108_MULTSIGNOUT_UNCONNECTED),
    .CEC(aclken),
    .RSTM(sig00000002),
    .MULTSIGNIN(sig00000002),
    .CEB2(sig00000002),
    .RSTCTRL(sig00000002),
    .CEP(sig00000002),
    .CARRYCASCOUT(NLW_blk00000108_CARRYCASCOUT_UNCONNECTED),
    .RSTA(sig00000002),
    .CECARRYIN(aclken),
    .UNDERFLOW(NLW_blk00000108_UNDERFLOW_UNCONNECTED),
    .PATTERNDETECT(NLW_blk00000108_PATTERNDETECT_UNCONNECTED),
    .RSTALUMODE(sig00000002),
    .RSTALLCARRYIN(sig00000002),
    .CED(sig00000002),
    .RSTD(sig00000002),
    .CEALUMODE(aclken),
    .CEA2(aclken),
    .CLK(aclk),
    .CEA1(sig00000002),
    .RSTB(sig00000002),
    .OVERFLOW(NLW_blk00000108_OVERFLOW_UNCONNECTED),
    .CECTRL(aclken),
    .CEM(aclken),
    .CARRYIN(sig00000002),
    .CARRYCASCIN(sig00000002),
    .RSTINMODE(sig00000002),
    .CEINMODE(sig00000002),
    .RSTP(sig00000002),
    .ACOUT({\NLW_blk00000108_ACOUT<29>_UNCONNECTED , \NLW_blk00000108_ACOUT<28>_UNCONNECTED , \NLW_blk00000108_ACOUT<27>_UNCONNECTED , 
\NLW_blk00000108_ACOUT<26>_UNCONNECTED , \NLW_blk00000108_ACOUT<25>_UNCONNECTED , \NLW_blk00000108_ACOUT<24>_UNCONNECTED , 
\NLW_blk00000108_ACOUT<23>_UNCONNECTED , \NLW_blk00000108_ACOUT<22>_UNCONNECTED , \NLW_blk00000108_ACOUT<21>_UNCONNECTED , 
\NLW_blk00000108_ACOUT<20>_UNCONNECTED , \NLW_blk00000108_ACOUT<19>_UNCONNECTED , \NLW_blk00000108_ACOUT<18>_UNCONNECTED , 
\NLW_blk00000108_ACOUT<17>_UNCONNECTED , \NLW_blk00000108_ACOUT<16>_UNCONNECTED , \NLW_blk00000108_ACOUT<15>_UNCONNECTED , 
\NLW_blk00000108_ACOUT<14>_UNCONNECTED , \NLW_blk00000108_ACOUT<13>_UNCONNECTED , \NLW_blk00000108_ACOUT<12>_UNCONNECTED , 
\NLW_blk00000108_ACOUT<11>_UNCONNECTED , \NLW_blk00000108_ACOUT<10>_UNCONNECTED , \NLW_blk00000108_ACOUT<9>_UNCONNECTED , 
\NLW_blk00000108_ACOUT<8>_UNCONNECTED , \NLW_blk00000108_ACOUT<7>_UNCONNECTED , \NLW_blk00000108_ACOUT<6>_UNCONNECTED , 
\NLW_blk00000108_ACOUT<5>_UNCONNECTED , \NLW_blk00000108_ACOUT<4>_UNCONNECTED , \NLW_blk00000108_ACOUT<3>_UNCONNECTED , 
\NLW_blk00000108_ACOUT<2>_UNCONNECTED , \NLW_blk00000108_ACOUT<1>_UNCONNECTED , \NLW_blk00000108_ACOUT<0>_UNCONNECTED }),
    .OPMODE({sig00000002, sig00000001, sig00000001, sig00000002, sig00000001, sig00000002, sig00000001}),
    .PCIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .ALUMODE({sig00000002, sig00000002, sig00000002, sig00000002}),
    .C({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002
, sig00000002, sig00000002, sig0000007e, sig0000007d, sig0000007c, sig0000007b, sig0000007a, sig00000079, sig00000078, sig00000077, sig00000001, 
sig000001f2, sig000001f1, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig000001f3, sig00000002, sig00000002}),
    .CARRYOUT({\NLW_blk00000108_CARRYOUT<3>_UNCONNECTED , \NLW_blk00000108_CARRYOUT<2>_UNCONNECTED , \NLW_blk00000108_CARRYOUT<1>_UNCONNECTED , 
\NLW_blk00000108_CARRYOUT<0>_UNCONNECTED }),
    .INMODE({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .BCIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .B({sig00000002, sig00000002, sig00000221, sig00000220, sig0000021f, sig0000021e, sig0000021d, sig0000021c, sig0000021b, sig0000021a, sig00000219
, sig00000218, sig00000217, sig00000216, sig00000215, sig00000214, sig00000213, sig00000212}),
    .BCOUT({\NLW_blk00000108_BCOUT<17>_UNCONNECTED , \NLW_blk00000108_BCOUT<16>_UNCONNECTED , \NLW_blk00000108_BCOUT<15>_UNCONNECTED , 
\NLW_blk00000108_BCOUT<14>_UNCONNECTED , \NLW_blk00000108_BCOUT<13>_UNCONNECTED , \NLW_blk00000108_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000108_BCOUT<11>_UNCONNECTED , \NLW_blk00000108_BCOUT<10>_UNCONNECTED , \NLW_blk00000108_BCOUT<9>_UNCONNECTED , 
\NLW_blk00000108_BCOUT<8>_UNCONNECTED , \NLW_blk00000108_BCOUT<7>_UNCONNECTED , \NLW_blk00000108_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000108_BCOUT<5>_UNCONNECTED , \NLW_blk00000108_BCOUT<4>_UNCONNECTED , \NLW_blk00000108_BCOUT<3>_UNCONNECTED , 
\NLW_blk00000108_BCOUT<2>_UNCONNECTED , \NLW_blk00000108_BCOUT<1>_UNCONNECTED , \NLW_blk00000108_BCOUT<0>_UNCONNECTED }),
    .D({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002
, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002}),
    .P({\NLW_blk00000108_P<47>_UNCONNECTED , \NLW_blk00000108_P<46>_UNCONNECTED , \NLW_blk00000108_P<45>_UNCONNECTED , 
\NLW_blk00000108_P<44>_UNCONNECTED , \NLW_blk00000108_P<43>_UNCONNECTED , \NLW_blk00000108_P<42>_UNCONNECTED , \NLW_blk00000108_P<41>_UNCONNECTED , 
\NLW_blk00000108_P<40>_UNCONNECTED , \NLW_blk00000108_P<39>_UNCONNECTED , \NLW_blk00000108_P<38>_UNCONNECTED , \NLW_blk00000108_P<37>_UNCONNECTED , 
\NLW_blk00000108_P<36>_UNCONNECTED , \NLW_blk00000108_P<35>_UNCONNECTED , sig0000000c, sig0000000b, sig0000000a, sig00000009, sig00000008, sig00000007
, sig00000006, sig00000005, \NLW_blk00000108_P<26>_UNCONNECTED , \NLW_blk00000108_P<25>_UNCONNECTED , sig00000023, sig00000022, sig00000021, 
sig00000020, sig0000001f, sig0000001e, sig0000001d, sig0000001c, sig0000001b, sig0000001a, sig00000019, sig00000018, sig00000017, sig00000016, 
sig00000015, sig00000014, sig00000013, sig00000012, sig00000011, sig00000010, sig0000000f, sig0000000e, sig0000000d, 
\NLW_blk00000108_P<1>_UNCONNECTED , \NLW_blk00000108_P<0>_UNCONNECTED }),
    .A({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig0000020f, sig0000020e, sig0000020d, sig0000020c, sig0000020b
, sig0000020a, sig00000209, sig00000208, sig00000207, sig00000206, sig00000205, sig00000204, sig00000203, sig00000202, sig00000201, sig00000200, 
sig000001ff, sig000001fe, sig000001fd, sig000001fc, sig000001fb, sig000001fa, sig000001f9, sig000001f8}),
    .PCOUT({\NLW_blk00000108_PCOUT<47>_UNCONNECTED , \NLW_blk00000108_PCOUT<46>_UNCONNECTED , \NLW_blk00000108_PCOUT<45>_UNCONNECTED , 
\NLW_blk00000108_PCOUT<44>_UNCONNECTED , \NLW_blk00000108_PCOUT<43>_UNCONNECTED , \NLW_blk00000108_PCOUT<42>_UNCONNECTED , 
\NLW_blk00000108_PCOUT<41>_UNCONNECTED , \NLW_blk00000108_PCOUT<40>_UNCONNECTED , \NLW_blk00000108_PCOUT<39>_UNCONNECTED , 
\NLW_blk00000108_PCOUT<38>_UNCONNECTED , \NLW_blk00000108_PCOUT<37>_UNCONNECTED , \NLW_blk00000108_PCOUT<36>_UNCONNECTED , 
\NLW_blk00000108_PCOUT<35>_UNCONNECTED , \NLW_blk00000108_PCOUT<34>_UNCONNECTED , \NLW_blk00000108_PCOUT<33>_UNCONNECTED , 
\NLW_blk00000108_PCOUT<32>_UNCONNECTED , \NLW_blk00000108_PCOUT<31>_UNCONNECTED , \NLW_blk00000108_PCOUT<30>_UNCONNECTED , 
\NLW_blk00000108_PCOUT<29>_UNCONNECTED , \NLW_blk00000108_PCOUT<28>_UNCONNECTED , \NLW_blk00000108_PCOUT<27>_UNCONNECTED , 
\NLW_blk00000108_PCOUT<26>_UNCONNECTED , \NLW_blk00000108_PCOUT<25>_UNCONNECTED , \NLW_blk00000108_PCOUT<24>_UNCONNECTED , 
\NLW_blk00000108_PCOUT<23>_UNCONNECTED , \NLW_blk00000108_PCOUT<22>_UNCONNECTED , \NLW_blk00000108_PCOUT<21>_UNCONNECTED , 
\NLW_blk00000108_PCOUT<20>_UNCONNECTED , \NLW_blk00000108_PCOUT<19>_UNCONNECTED , \NLW_blk00000108_PCOUT<18>_UNCONNECTED , 
\NLW_blk00000108_PCOUT<17>_UNCONNECTED , \NLW_blk00000108_PCOUT<16>_UNCONNECTED , \NLW_blk00000108_PCOUT<15>_UNCONNECTED , 
\NLW_blk00000108_PCOUT<14>_UNCONNECTED , \NLW_blk00000108_PCOUT<13>_UNCONNECTED , \NLW_blk00000108_PCOUT<12>_UNCONNECTED , 
\NLW_blk00000108_PCOUT<11>_UNCONNECTED , \NLW_blk00000108_PCOUT<10>_UNCONNECTED , \NLW_blk00000108_PCOUT<9>_UNCONNECTED , 
\NLW_blk00000108_PCOUT<8>_UNCONNECTED , \NLW_blk00000108_PCOUT<7>_UNCONNECTED , \NLW_blk00000108_PCOUT<6>_UNCONNECTED , 
\NLW_blk00000108_PCOUT<5>_UNCONNECTED , \NLW_blk00000108_PCOUT<4>_UNCONNECTED , \NLW_blk00000108_PCOUT<3>_UNCONNECTED , 
\NLW_blk00000108_PCOUT<2>_UNCONNECTED , \NLW_blk00000108_PCOUT<1>_UNCONNECTED , \NLW_blk00000108_PCOUT<0>_UNCONNECTED }),
    .ACIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .CARRYINSEL({sig00000002, sig00000002, sig00000002})
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000109 (
    .C(aclk),
    .CE(aclken),
    .D(sig000001f0),
    .Q(sig000001f1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000010a (
    .C(aclk),
    .CE(aclken),
    .D(sig00000211),
    .Q(sig000001f2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000010b (
    .C(aclk),
    .CE(aclken),
    .D(sig000001ee),
    .Q(sig000001f4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000010c (
    .C(aclk),
    .CE(aclken),
    .D(sig000001f7),
    .Q(sig000001f6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000010d (
    .C(aclk),
    .CE(aclken),
    .D(sig000001ef),
    .Q(sig000001f5)
  );
  MUXCY   blk0000010e (
    .CI(sig00000224),
    .DI(sig00000002),
    .S(sig0000022d),
    .O(sig00000223)
  );
  MUXCY   blk0000010f (
    .CI(sig00000225),
    .DI(sig00000002),
    .S(sig0000022e),
    .O(sig00000224)
  );
  MUXCY   blk00000110 (
    .CI(sig00000226),
    .DI(sig00000002),
    .S(sig0000022f),
    .O(sig00000225)
  );
  MUXCY   blk00000111 (
    .CI(sig00000227),
    .DI(sig00000002),
    .S(sig00000230),
    .O(sig00000226)
  );
  MUXCY   blk00000112 (
    .CI(sig00000228),
    .DI(sig00000002),
    .S(sig00000231),
    .O(sig00000227)
  );
  MUXCY   blk00000113 (
    .CI(sig00000229),
    .DI(sig00000002),
    .S(sig00000232),
    .O(sig00000228)
  );
  MUXCY   blk00000114 (
    .CI(sig0000022a),
    .DI(sig00000002),
    .S(sig00000233),
    .O(sig00000229)
  );
  MUXCY   blk00000115 (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig00000234),
    .O(sig0000022a)
  );
  LUT5 #(
    .INIT ( 32'h000000FC ))
  blk00000116 (
    .I0(sig00000002),
    .I1(sig00000202),
    .I2(sig00000203),
    .I3(sig00000204),
    .I4(sig00000205),
    .O(sig00000238)
  );
  LUT5 #(
    .INIT ( 32'h0000FF0C ))
  blk00000117 (
    .I0(sig00000002),
    .I1(sig00000202),
    .I2(sig00000203),
    .I3(sig00000204),
    .I4(sig00000205),
    .O(sig00000239)
  );
  LUT5 #(
    .INIT ( 32'h000000FC ))
  blk00000118 (
    .I0(sig00000002),
    .I1(sig00000206),
    .I2(sig00000207),
    .I3(sig00000208),
    .I4(sig00000209),
    .O(sig0000023e)
  );
  LUT5 #(
    .INIT ( 32'h0000FF0C ))
  blk00000119 (
    .I0(sig00000002),
    .I1(sig00000206),
    .I2(sig00000207),
    .I3(sig00000208),
    .I4(sig00000209),
    .O(sig0000023f)
  );
  LUT5 #(
    .INIT ( 32'h000000FC ))
  blk0000011a (
    .I0(sig00000002),
    .I1(sig0000020a),
    .I2(sig0000020b),
    .I3(sig0000020c),
    .I4(sig0000020d),
    .O(sig00000244)
  );
  LUT5 #(
    .INIT ( 32'h0000FF0C ))
  blk0000011b (
    .I0(sig00000002),
    .I1(sig0000020a),
    .I2(sig0000020b),
    .I3(sig0000020c),
    .I4(sig0000020d),
    .O(sig00000245)
  );
  LUT5 #(
    .INIT ( 32'h000000FC ))
  blk0000011c (
    .I0(sig00000002),
    .I1(sig0000020e),
    .I2(sig0000020f),
    .I3(sig00000211),
    .I4(sig00000210),
    .O(sig0000024a)
  );
  LUT5 #(
    .INIT ( 32'h0000FF0C ))
  blk0000011d (
    .I0(sig00000002),
    .I1(sig0000020e),
    .I2(sig0000020f),
    .I3(sig00000211),
    .I4(sig00000210),
    .O(sig0000024b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000011e (
    .C(aclk),
    .CE(aclken),
    .D(sig0000022c),
    .Q(sig00000024)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000011f (
    .C(aclk),
    .CE(aclken),
    .D(sig0000022b),
    .Q(sig00000025)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000120 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000222),
    .Q(sig00000026)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000121 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000227),
    .Q(sig00000027)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000122 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000029),
    .Q(sig00000028)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000123 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000235),
    .Q(sig00000221)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000124 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000236),
    .Q(sig00000220)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000125 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000237),
    .Q(sig0000021f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000126 (
    .C(aclk),
    .CE(aclken),
    .D(sig0000023a),
    .Q(sig0000021e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000127 (
    .C(aclk),
    .CE(aclken),
    .D(sig0000023b),
    .Q(sig0000021d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000128 (
    .C(aclk),
    .CE(aclken),
    .D(sig0000023c),
    .Q(sig0000021c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000129 (
    .C(aclk),
    .CE(aclken),
    .D(sig0000023d),
    .Q(sig0000021b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000012a (
    .C(aclk),
    .CE(aclken),
    .D(sig00000240),
    .Q(sig0000021a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000012b (
    .C(aclk),
    .CE(aclken),
    .D(sig00000241),
    .Q(sig00000219)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000012c (
    .C(aclk),
    .CE(aclken),
    .D(sig00000242),
    .Q(sig00000218)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000012d (
    .C(aclk),
    .CE(aclken),
    .D(sig00000243),
    .Q(sig00000217)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000012e (
    .C(aclk),
    .CE(aclken),
    .D(sig00000246),
    .Q(sig00000216)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000012f (
    .C(aclk),
    .CE(aclken),
    .D(sig00000247),
    .Q(sig00000215)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000130 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000248),
    .Q(sig00000214)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000131 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000249),
    .Q(sig00000213)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000132 (
    .C(aclk),
    .CE(aclken),
    .D(sig0000024c),
    .Q(sig00000212)
  );
  FD   blk00000133 (
    .C(aclk),
    .D(sig00000263),
    .Q(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [22])
  );
  FD   blk00000134 (
    .C(aclk),
    .D(sig00000262),
    .Q(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [21])
  );
  FD   blk00000135 (
    .C(aclk),
    .D(sig00000261),
    .Q(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [20])
  );
  FD   blk00000136 (
    .C(aclk),
    .D(sig00000260),
    .Q(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [19])
  );
  FD   blk00000137 (
    .C(aclk),
    .D(sig0000025f),
    .Q(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [18])
  );
  FD   blk00000138 (
    .C(aclk),
    .D(sig0000025e),
    .Q(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [17])
  );
  FD   blk00000139 (
    .C(aclk),
    .D(sig0000025d),
    .Q(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [16])
  );
  FD   blk0000013a (
    .C(aclk),
    .D(sig0000025c),
    .Q(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [15])
  );
  FD   blk0000013b (
    .C(aclk),
    .D(sig0000025b),
    .Q(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [14])
  );
  FD   blk0000013c (
    .C(aclk),
    .D(sig0000025a),
    .Q(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [13])
  );
  FD   blk0000013d (
    .C(aclk),
    .D(sig00000259),
    .Q(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [12])
  );
  FD   blk0000013e (
    .C(aclk),
    .D(sig00000258),
    .Q(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [11])
  );
  FD   blk0000013f (
    .C(aclk),
    .D(sig00000257),
    .Q(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [10])
  );
  FD   blk00000140 (
    .C(aclk),
    .D(sig00000256),
    .Q(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [9])
  );
  FD   blk00000141 (
    .C(aclk),
    .D(sig00000255),
    .Q(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [8])
  );
  FD   blk00000142 (
    .C(aclk),
    .D(sig00000254),
    .Q(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [7])
  );
  FD   blk00000143 (
    .C(aclk),
    .D(sig00000253),
    .Q(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [6])
  );
  FD   blk00000144 (
    .C(aclk),
    .D(sig00000252),
    .Q(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [5])
  );
  FD   blk00000145 (
    .C(aclk),
    .D(sig00000251),
    .Q(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [4])
  );
  FD   blk00000146 (
    .C(aclk),
    .D(sig00000250),
    .Q(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [3])
  );
  FD   blk00000147 (
    .C(aclk),
    .D(sig0000024f),
    .Q(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [2])
  );
  FD   blk00000148 (
    .C(aclk),
    .D(sig0000024e),
    .Q(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [1])
  );
  FD   blk00000149 (
    .C(aclk),
    .D(sig0000024d),
    .Q(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk0000014a (
    .I0(s_axis_a_tvalid),
    .I1(s_axis_b_tvalid),
    .O(sig00000003)
  );
  LUT4 #(
    .INIT ( 16'hAA8A ))
  blk0000014b (
    .I0(sig000000e1),
    .I1(sig000000e3),
    .I2(sig000000f7),
    .I3(sig000000e2),
    .O(sig00000073)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  blk0000014c (
    .I0(sig000000f7),
    .I1(sig000000ce),
    .I2(sig000000d0),
    .I3(sig000000cf),
    .I4(sig000000e2),
    .I5(sig000000e3),
    .O(sig0000007f)
  );
  LUT6 #(
    .INIT ( 64'hAFEAAAEAEFEAAAEA ))
  blk0000014d (
    .I0(sig00000075),
    .I1(sig000000fd),
    .I2(sig000000fc),
    .I3(sig000000f9),
    .I4(sig000000fa),
    .I5(sig000000e4),
    .O(sig000000ca)
  );
  LUT6 #(
    .INIT ( 64'h4000000000000000 ))
  blk0000014e (
    .I0(sig00000075),
    .I1(sig000000e4),
    .I2(sig000000f9),
    .I3(sig000000fa),
    .I4(sig000000fc),
    .I5(sig000000fd),
    .O(sig000000c7)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000014f (
    .I0(sig00000088),
    .I1(sig000000f0),
    .I2(sig000000e8),
    .O(sig000000b3)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000150 (
    .I0(sig00000088),
    .I1(sig000000f1),
    .I2(sig000000e9),
    .O(sig000000b4)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000151 (
    .I0(sig00000088),
    .I1(sig000000f2),
    .I2(sig000000ea),
    .O(sig000000b5)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000152 (
    .I0(sig00000088),
    .I1(sig000000f3),
    .I2(sig000000eb),
    .O(sig000000b6)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000153 (
    .I0(sig00000088),
    .I1(sig000000f4),
    .I2(sig000000ec),
    .O(sig000000b7)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000154 (
    .I0(sig00000088),
    .I1(sig000000f5),
    .I2(sig000000ed),
    .O(sig000000b8)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000155 (
    .I0(sig00000088),
    .I1(sig000000f6),
    .I2(sig000000ee),
    .O(sig000000b9)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000156 (
    .I0(sig000000e6),
    .I1(sig000000e5),
    .O(sig000000e4)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000157 (
    .I0(s_axis_a_tdata[31]),
    .I1(s_axis_b_tdata[31]),
    .O(sig000000bd)
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  blk00000158 (
    .I0(sig00000088),
    .I1(sig000000e7),
    .I2(sig000000ef),
    .O(sig000000b2)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000159 (
    .I0(sig000000f8),
    .I1(sig000000fb),
    .O(sig00000075)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk0000015a (
    .I0(s_axis_a_tdata[12]),
    .I1(s_axis_a_tdata[13]),
    .I2(s_axis_a_tdata[14]),
    .I3(s_axis_a_tdata[15]),
    .I4(s_axis_a_tdata[16]),
    .I5(s_axis_a_tdata[17]),
    .O(sig00000102)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk0000015b (
    .I0(s_axis_a_tdata[6]),
    .I1(s_axis_a_tdata[7]),
    .I2(s_axis_a_tdata[8]),
    .I3(s_axis_a_tdata[9]),
    .I4(s_axis_a_tdata[10]),
    .I5(s_axis_a_tdata[11]),
    .O(sig00000103)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk0000015c (
    .I0(s_axis_a_tdata[0]),
    .I1(s_axis_a_tdata[1]),
    .I2(s_axis_a_tdata[2]),
    .I3(s_axis_a_tdata[3]),
    .I4(s_axis_a_tdata[4]),
    .I5(s_axis_a_tdata[5]),
    .O(sig00000104)
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  blk0000015d (
    .I0(s_axis_a_tdata[18]),
    .I1(s_axis_a_tdata[19]),
    .I2(s_axis_a_tdata[20]),
    .I3(s_axis_a_tdata[21]),
    .I4(s_axis_a_tdata[22]),
    .O(sig00000105)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk0000015e (
    .I0(s_axis_b_tdata[12]),
    .I1(s_axis_b_tdata[13]),
    .I2(s_axis_b_tdata[14]),
    .I3(s_axis_b_tdata[15]),
    .I4(s_axis_b_tdata[16]),
    .I5(s_axis_b_tdata[17]),
    .O(sig0000010a)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk0000015f (
    .I0(s_axis_b_tdata[6]),
    .I1(s_axis_b_tdata[7]),
    .I2(s_axis_b_tdata[8]),
    .I3(s_axis_b_tdata[9]),
    .I4(s_axis_b_tdata[10]),
    .I5(s_axis_b_tdata[11]),
    .O(sig0000010b)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk00000160 (
    .I0(s_axis_b_tdata[0]),
    .I1(s_axis_b_tdata[1]),
    .I2(s_axis_b_tdata[2]),
    .I3(s_axis_b_tdata[3]),
    .I4(s_axis_b_tdata[4]),
    .I5(s_axis_b_tdata[5]),
    .O(sig0000010c)
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  blk00000161 (
    .I0(s_axis_b_tdata[18]),
    .I1(s_axis_b_tdata[19]),
    .I2(s_axis_b_tdata[20]),
    .I3(s_axis_b_tdata[21]),
    .I4(s_axis_b_tdata[22]),
    .O(sig0000010d)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000162 (
    .I0(s_axis_b_tdata[19]),
    .I1(s_axis_a_tdata[19]),
    .I2(s_axis_b_tdata[18]),
    .I3(s_axis_a_tdata[18]),
    .O(sig0000011b)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000163 (
    .I0(s_axis_b_tdata[17]),
    .I1(s_axis_a_tdata[17]),
    .I2(s_axis_b_tdata[16]),
    .I3(s_axis_a_tdata[16]),
    .O(sig0000011d)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000164 (
    .I0(s_axis_b_tdata[15]),
    .I1(s_axis_a_tdata[15]),
    .I2(s_axis_b_tdata[14]),
    .I3(s_axis_a_tdata[14]),
    .O(sig0000011f)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000165 (
    .I0(s_axis_b_tdata[13]),
    .I1(s_axis_a_tdata[13]),
    .I2(s_axis_b_tdata[12]),
    .I3(s_axis_a_tdata[12]),
    .O(sig00000121)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000166 (
    .I0(s_axis_b_tdata[11]),
    .I1(s_axis_a_tdata[11]),
    .I2(s_axis_b_tdata[10]),
    .I3(s_axis_a_tdata[10]),
    .O(sig00000123)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000167 (
    .I0(s_axis_b_tdata[9]),
    .I1(s_axis_a_tdata[9]),
    .I2(s_axis_b_tdata[8]),
    .I3(s_axis_a_tdata[8]),
    .O(sig00000125)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000168 (
    .I0(s_axis_b_tdata[7]),
    .I1(s_axis_a_tdata[7]),
    .I2(s_axis_b_tdata[6]),
    .I3(s_axis_a_tdata[6]),
    .O(sig00000127)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000169 (
    .I0(s_axis_b_tdata[5]),
    .I1(s_axis_a_tdata[5]),
    .I2(s_axis_b_tdata[4]),
    .I3(s_axis_a_tdata[4]),
    .O(sig00000129)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk0000016a (
    .I0(s_axis_b_tdata[3]),
    .I1(s_axis_a_tdata[3]),
    .I2(s_axis_b_tdata[2]),
    .I3(s_axis_a_tdata[2]),
    .O(sig0000012b)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk0000016b (
    .I0(s_axis_b_tdata[29]),
    .I1(s_axis_a_tdata[29]),
    .I2(s_axis_b_tdata[28]),
    .I3(s_axis_a_tdata[28]),
    .O(sig00000111)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk0000016c (
    .I0(s_axis_b_tdata[27]),
    .I1(s_axis_a_tdata[27]),
    .I2(s_axis_b_tdata[26]),
    .I3(s_axis_a_tdata[26]),
    .O(sig00000113)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk0000016d (
    .I0(s_axis_b_tdata[25]),
    .I1(s_axis_a_tdata[25]),
    .I2(s_axis_b_tdata[24]),
    .I3(s_axis_a_tdata[24]),
    .O(sig00000115)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk0000016e (
    .I0(s_axis_b_tdata[23]),
    .I1(s_axis_a_tdata[23]),
    .I2(s_axis_b_tdata[22]),
    .I3(s_axis_a_tdata[22]),
    .O(sig00000117)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk0000016f (
    .I0(s_axis_b_tdata[21]),
    .I1(s_axis_a_tdata[21]),
    .I2(s_axis_b_tdata[20]),
    .I3(s_axis_a_tdata[20]),
    .O(sig00000119)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000170 (
    .I0(s_axis_b_tdata[1]),
    .I1(s_axis_a_tdata[1]),
    .I2(s_axis_b_tdata[0]),
    .I3(s_axis_a_tdata[0]),
    .O(sig0000012d)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk00000171 (
    .I0(s_axis_b_tdata[29]),
    .I1(s_axis_a_tdata[29]),
    .I2(s_axis_b_tdata[28]),
    .I3(s_axis_a_tdata[28]),
    .O(sig00000110)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk00000172 (
    .I0(s_axis_b_tdata[27]),
    .I1(s_axis_a_tdata[27]),
    .I2(s_axis_b_tdata[26]),
    .I3(s_axis_a_tdata[26]),
    .O(sig00000112)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk00000173 (
    .I0(s_axis_b_tdata[25]),
    .I1(s_axis_a_tdata[25]),
    .I2(s_axis_b_tdata[24]),
    .I3(s_axis_a_tdata[24]),
    .O(sig00000114)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk00000174 (
    .I0(s_axis_b_tdata[23]),
    .I1(s_axis_a_tdata[23]),
    .I2(s_axis_b_tdata[22]),
    .I3(s_axis_a_tdata[22]),
    .O(sig00000116)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk00000175 (
    .I0(s_axis_b_tdata[21]),
    .I1(s_axis_a_tdata[21]),
    .I2(s_axis_b_tdata[20]),
    .I3(s_axis_a_tdata[20]),
    .O(sig00000118)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk00000176 (
    .I0(s_axis_b_tdata[19]),
    .I1(s_axis_a_tdata[19]),
    .I2(s_axis_b_tdata[18]),
    .I3(s_axis_a_tdata[18]),
    .O(sig0000011a)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk00000177 (
    .I0(s_axis_b_tdata[17]),
    .I1(s_axis_a_tdata[17]),
    .I2(s_axis_b_tdata[16]),
    .I3(s_axis_a_tdata[16]),
    .O(sig0000011c)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk00000178 (
    .I0(s_axis_b_tdata[15]),
    .I1(s_axis_a_tdata[15]),
    .I2(s_axis_b_tdata[14]),
    .I3(s_axis_a_tdata[14]),
    .O(sig0000011e)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk00000179 (
    .I0(s_axis_b_tdata[13]),
    .I1(s_axis_a_tdata[13]),
    .I2(s_axis_b_tdata[12]),
    .I3(s_axis_a_tdata[12]),
    .O(sig00000120)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk0000017a (
    .I0(s_axis_b_tdata[11]),
    .I1(s_axis_a_tdata[11]),
    .I2(s_axis_b_tdata[10]),
    .I3(s_axis_a_tdata[10]),
    .O(sig00000122)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk0000017b (
    .I0(s_axis_b_tdata[9]),
    .I1(s_axis_a_tdata[9]),
    .I2(s_axis_b_tdata[8]),
    .I3(s_axis_a_tdata[8]),
    .O(sig00000124)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk0000017c (
    .I0(s_axis_b_tdata[7]),
    .I1(s_axis_a_tdata[7]),
    .I2(s_axis_b_tdata[6]),
    .I3(s_axis_a_tdata[6]),
    .O(sig00000126)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk0000017d (
    .I0(s_axis_b_tdata[5]),
    .I1(s_axis_a_tdata[5]),
    .I2(s_axis_b_tdata[4]),
    .I3(s_axis_a_tdata[4]),
    .O(sig00000128)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk0000017e (
    .I0(s_axis_b_tdata[3]),
    .I1(s_axis_a_tdata[3]),
    .I2(s_axis_b_tdata[2]),
    .I3(s_axis_a_tdata[2]),
    .O(sig0000012a)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk0000017f (
    .I0(s_axis_b_tdata[1]),
    .I1(s_axis_a_tdata[1]),
    .I2(s_axis_b_tdata[0]),
    .I3(s_axis_a_tdata[0]),
    .O(sig0000012c)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk00000180 (
    .I0(s_axis_b_tdata[30]),
    .I1(s_axis_a_tdata[30]),
    .O(sig0000010e)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000181 (
    .I0(s_axis_a_tdata[30]),
    .I1(s_axis_b_tdata[30]),
    .O(sig0000010f)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  blk00000182 (
    .I0(sig0000017b),
    .I1(sig00000076),
    .I2(sig0000005b),
    .I3(sig00000072),
    .O(sig00000149)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  blk00000183 (
    .I0(sig0000017b),
    .I1(sig00000076),
    .I2(sig0000005a),
    .I3(sig00000071),
    .O(sig0000014a)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  blk00000184 (
    .I0(sig0000017b),
    .I1(sig00000076),
    .I2(sig00000059),
    .I3(sig00000070),
    .O(sig0000014b)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  blk00000185 (
    .I0(sig0000017b),
    .I1(sig00000076),
    .I2(sig00000058),
    .I3(sig0000006f),
    .O(sig0000014c)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  blk00000186 (
    .I0(sig0000017b),
    .I1(sig00000076),
    .I2(sig00000057),
    .I3(sig0000006e),
    .O(sig0000014d)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  blk00000187 (
    .I0(sig0000017b),
    .I1(sig00000076),
    .I2(sig00000056),
    .I3(sig0000006d),
    .O(sig0000014e)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  blk00000188 (
    .I0(sig0000017b),
    .I1(sig00000076),
    .I2(sig00000055),
    .I3(sig0000006c),
    .O(sig0000014f)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  blk00000189 (
    .I0(sig0000017b),
    .I1(sig00000076),
    .I2(sig00000054),
    .I3(sig0000006b),
    .O(sig00000150)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  blk0000018a (
    .I0(sig0000017b),
    .I1(sig00000076),
    .I2(sig00000053),
    .I3(sig0000006a),
    .O(sig00000151)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000018b (
    .I0(sig00000076),
    .I1(sig00000045),
    .I2(sig0000005c),
    .O(sig0000017c)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000018c (
    .I0(sig00000076),
    .I1(sig0000004f),
    .I2(sig00000066),
    .O(sig00000186)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000018d (
    .I0(sig00000076),
    .I1(sig00000050),
    .I2(sig00000067),
    .O(sig00000187)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000018e (
    .I0(sig00000076),
    .I1(sig00000051),
    .I2(sig00000068),
    .O(sig00000188)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000018f (
    .I0(sig00000076),
    .I1(sig00000052),
    .I2(sig00000069),
    .O(sig00000189)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000190 (
    .I0(sig00000076),
    .I1(sig00000053),
    .I2(sig0000006a),
    .O(sig0000018a)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000191 (
    .I0(sig00000076),
    .I1(sig00000054),
    .I2(sig0000006b),
    .O(sig0000018b)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000192 (
    .I0(sig00000076),
    .I1(sig00000055),
    .I2(sig0000006c),
    .O(sig0000018c)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000193 (
    .I0(sig00000076),
    .I1(sig00000056),
    .I2(sig0000006d),
    .O(sig0000018d)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000194 (
    .I0(sig00000076),
    .I1(sig00000057),
    .I2(sig0000006e),
    .O(sig0000018e)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000195 (
    .I0(sig00000076),
    .I1(sig00000058),
    .I2(sig0000006f),
    .O(sig0000018f)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000196 (
    .I0(sig00000076),
    .I1(sig00000046),
    .I2(sig0000005d),
    .O(sig0000017d)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000197 (
    .I0(sig00000076),
    .I1(sig00000059),
    .I2(sig00000070),
    .O(sig00000190)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000198 (
    .I0(sig00000076),
    .I1(sig0000005a),
    .I2(sig00000071),
    .O(sig00000191)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000199 (
    .I0(sig00000076),
    .I1(sig0000005b),
    .I2(sig00000072),
    .O(sig00000192)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000019a (
    .I0(sig00000076),
    .I1(sig00000047),
    .I2(sig0000005e),
    .O(sig0000017e)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000019b (
    .I0(sig00000076),
    .I1(sig00000048),
    .I2(sig0000005f),
    .O(sig0000017f)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000019c (
    .I0(sig00000076),
    .I1(sig00000049),
    .I2(sig00000060),
    .O(sig00000180)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000019d (
    .I0(sig00000076),
    .I1(sig0000004a),
    .I2(sig00000061),
    .O(sig00000181)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000019e (
    .I0(sig00000076),
    .I1(sig0000004b),
    .I2(sig00000062),
    .O(sig00000182)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000019f (
    .I0(sig00000076),
    .I1(sig0000004c),
    .I2(sig00000063),
    .O(sig00000183)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk000001a0 (
    .I0(sig00000076),
    .I1(sig0000004d),
    .I2(sig00000064),
    .O(sig00000184)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk000001a1 (
    .I0(sig00000076),
    .I1(sig0000004e),
    .I2(sig00000065),
    .O(sig00000185)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001a2 (
    .I0(sig00000074),
    .I1(sig000001dd),
    .O(sig00000178)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk000001a3 (
    .I0(sig000001f5),
    .I1(sig000001f6),
    .I2(sig000001f4),
    .O(sig000001f3)
  );
  LUT6 #(
    .INIT ( 64'hFBEAEAEA51404040 ))
  blk000001a4 (
    .I0(sig00000044),
    .I1(sig00000043),
    .I2(sig0000002c),
    .I3(sig0000002b),
    .I4(sig00000042),
    .I5(sig0000002d),
    .O(sig000001ee)
  );
  LUT6 #(
    .INIT ( 64'hFBEAEAEA51404040 ))
  blk000001a5 (
    .I0(sig00000044),
    .I1(sig00000043),
    .I2(sig0000002b),
    .I3(sig0000002a),
    .I4(sig00000042),
    .I5(sig0000002c),
    .O(sig000001ef)
  );
  LUT6 #(
    .INIT ( 64'hF7D5E6C4B391A280 ))
  blk000001a6 (
    .I0(sig00000222),
    .I1(sig00000227),
    .I2(sig00000238),
    .I3(sig00000244),
    .I4(sig0000024a),
    .I5(sig0000023e),
    .O(sig0000022b)
  );
  LUT6 #(
    .INIT ( 64'hF7D5E6C4B391A280 ))
  blk000001a7 (
    .I0(sig00000222),
    .I1(sig00000227),
    .I2(sig00000239),
    .I3(sig00000245),
    .I4(sig0000024b),
    .I5(sig0000023f),
    .O(sig0000022c)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk000001a8 (
    .I0(sig00000227),
    .I1(sig00000225),
    .I2(sig00000229),
    .O(sig00000222)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001a9 (
    .I0(sig00000034),
    .I1(sig00000029),
    .O(sig00000201)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001aa (
    .I0(sig00000035),
    .I1(sig00000029),
    .O(sig00000202)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001ab (
    .I0(sig00000036),
    .I1(sig00000029),
    .O(sig00000203)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001ac (
    .I0(sig00000037),
    .I1(sig00000029),
    .O(sig00000204)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001ad (
    .I0(sig00000038),
    .I1(sig00000029),
    .O(sig00000205)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001ae (
    .I0(sig00000039),
    .I1(sig00000029),
    .O(sig00000206)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk000001af (
    .I0(sig00000029),
    .I1(sig0000002a),
    .I2(sig0000003a),
    .O(sig00000207)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk000001b0 (
    .I0(sig00000029),
    .I1(sig0000002b),
    .I2(sig0000003b),
    .O(sig00000208)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk000001b1 (
    .I0(sig00000029),
    .I1(sig0000002c),
    .I2(sig0000003c),
    .O(sig00000209)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk000001b2 (
    .I0(sig00000029),
    .I1(sig0000002d),
    .I2(sig0000003d),
    .O(sig0000020a)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001b3 (
    .I0(sig0000002b),
    .I1(sig00000029),
    .O(sig000001f8)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk000001b4 (
    .I0(sig00000029),
    .I1(sig0000002e),
    .I2(sig0000003e),
    .O(sig0000020b)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk000001b5 (
    .I0(sig00000029),
    .I1(sig0000002f),
    .I2(sig0000003f),
    .O(sig0000020c)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk000001b6 (
    .I0(sig00000029),
    .I1(sig00000030),
    .I2(sig00000040),
    .O(sig0000020d)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk000001b7 (
    .I0(sig00000029),
    .I1(sig00000031),
    .I2(sig00000041),
    .O(sig0000020e)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk000001b8 (
    .I0(sig00000029),
    .I1(sig00000032),
    .I2(sig00000042),
    .O(sig0000020f)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk000001b9 (
    .I0(sig00000029),
    .I1(sig00000033),
    .I2(sig00000043),
    .O(sig00000211)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk000001ba (
    .I0(sig00000029),
    .I1(sig00000034),
    .I2(sig00000044),
    .O(sig00000210)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001bb (
    .I0(sig0000002c),
    .I1(sig00000029),
    .O(sig000001f9)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001bc (
    .I0(sig0000002d),
    .I1(sig00000029),
    .O(sig000001fa)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001bd (
    .I0(sig0000002e),
    .I1(sig00000029),
    .O(sig000001fb)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001be (
    .I0(sig0000002f),
    .I1(sig00000029),
    .O(sig000001fc)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001bf (
    .I0(sig00000030),
    .I1(sig00000029),
    .O(sig000001fd)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001c0 (
    .I0(sig00000031),
    .I1(sig00000029),
    .O(sig000001fe)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001c1 (
    .I0(sig00000032),
    .I1(sig00000029),
    .O(sig000001ff)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000001c2 (
    .I0(sig00000033),
    .I1(sig00000029),
    .O(sig00000200)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk000001c3 (
    .I0(sig00000029),
    .I1(sig00000223),
    .O(sig00000004)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  blk000001c4 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [0]),
    .I2(sig0000007f),
    .I3(sig0000000d),
    .O(sig0000024d)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  blk000001c5 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [1]),
    .I2(sig0000007f),
    .I3(sig0000000e),
    .O(sig0000024e)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  blk000001c6 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [3]),
    .I2(sig0000007f),
    .I3(sig00000010),
    .O(sig00000250)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  blk000001c7 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [4]),
    .I2(sig0000007f),
    .I3(sig00000011),
    .O(sig00000251)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  blk000001c8 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [2]),
    .I2(sig0000007f),
    .I3(sig0000000f),
    .O(sig0000024f)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  blk000001c9 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [5]),
    .I2(sig0000007f),
    .I3(sig00000012),
    .O(sig00000252)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  blk000001ca (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [6]),
    .I2(sig0000007f),
    .I3(sig00000013),
    .O(sig00000253)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  blk000001cb (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [7]),
    .I2(sig0000007f),
    .I3(sig00000014),
    .O(sig00000254)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  blk000001cc (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [8]),
    .I2(sig0000007f),
    .I3(sig00000015),
    .O(sig00000255)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  blk000001cd (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [9]),
    .I2(sig0000007f),
    .I3(sig00000016),
    .O(sig00000256)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  blk000001ce (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [10]),
    .I2(sig0000007f),
    .I3(sig00000017),
    .O(sig00000257)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  blk000001cf (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [12]),
    .I2(sig0000007f),
    .I3(sig00000019),
    .O(sig00000259)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  blk000001d0 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [13]),
    .I2(sig0000007f),
    .I3(sig0000001a),
    .O(sig0000025a)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  blk000001d1 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [11]),
    .I2(sig0000007f),
    .I3(sig00000018),
    .O(sig00000258)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  blk000001d2 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [14]),
    .I2(sig0000007f),
    .I3(sig0000001b),
    .O(sig0000025b)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  blk000001d3 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [15]),
    .I2(sig0000007f),
    .I3(sig0000001c),
    .O(sig0000025c)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  blk000001d4 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [16]),
    .I2(sig0000007f),
    .I3(sig0000001d),
    .O(sig0000025d)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  blk000001d5 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [17]),
    .I2(sig0000007f),
    .I3(sig0000001e),
    .O(sig0000025e)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  blk000001d6 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [18]),
    .I2(sig0000007f),
    .I3(sig0000001f),
    .O(sig0000025f)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  blk000001d7 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [19]),
    .I2(sig0000007f),
    .I3(sig00000020),
    .O(sig00000260)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  blk000001d8 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [21]),
    .I2(sig0000007f),
    .I3(sig00000022),
    .O(sig00000262)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  blk000001d9 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [20]),
    .I2(sig0000007f),
    .I3(sig00000021),
    .O(sig00000261)
  );
  LUT6 #(
    .INIT ( 64'h2222222222222220 ))
  blk000001da (
    .I0(aclken),
    .I1(sig000000e2),
    .I2(sig000000f7),
    .I3(sig000000e3),
    .I4(sig000000d0),
    .I5(sig000000cf),
    .O(sig00000264)
  );
  LUT5 #(
    .INIT ( 32'hFF7FFFFF ))
  blk000001db (
    .I0(sig0000007b),
    .I1(sig0000007a),
    .I2(sig00000079),
    .I3(sig00000077),
    .I4(sig00000078),
    .O(sig00000265)
  );
  LUT6 #(
    .INIT ( 64'h0000000010000000 ))
  blk000001dc (
    .I0(sig000000cc),
    .I1(sig000000cb),
    .I2(sig0000007e),
    .I3(sig0000007d),
    .I4(sig0000007c),
    .I5(sig00000265),
    .O(sig000000bb)
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  blk000001dd (
    .I0(sig0000007b),
    .I1(sig0000007a),
    .I2(sig00000079),
    .I3(sig00000078),
    .I4(sig00000077),
    .O(sig00000266)
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  blk000001de (
    .I0(sig000000cc),
    .I1(sig000000cb),
    .I2(sig0000007e),
    .I3(sig0000007d),
    .I4(sig0000007c),
    .I5(sig00000266),
    .O(sig000000bc)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  blk000001df (
    .I0(s_axis_a_tdata[25]),
    .I1(s_axis_a_tdata[24]),
    .I2(s_axis_a_tdata[23]),
    .O(sig00000267)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  blk000001e0 (
    .I0(s_axis_a_tdata[30]),
    .I1(s_axis_a_tdata[29]),
    .I2(s_axis_a_tdata[28]),
    .I3(s_axis_a_tdata[27]),
    .I4(s_axis_a_tdata[26]),
    .I5(sig00000267),
    .O(sig000000ae)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  blk000001e1 (
    .I0(s_axis_a_tdata[25]),
    .I1(s_axis_a_tdata[24]),
    .I2(s_axis_a_tdata[23]),
    .O(sig00000268)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk000001e2 (
    .I0(s_axis_a_tdata[30]),
    .I1(s_axis_a_tdata[29]),
    .I2(s_axis_a_tdata[28]),
    .I3(s_axis_a_tdata[27]),
    .I4(s_axis_a_tdata[26]),
    .I5(sig00000268),
    .O(sig000000af)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  blk000001e3 (
    .I0(s_axis_b_tdata[25]),
    .I1(s_axis_b_tdata[24]),
    .I2(s_axis_b_tdata[23]),
    .O(sig00000269)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  blk000001e4 (
    .I0(s_axis_b_tdata[30]),
    .I1(s_axis_b_tdata[29]),
    .I2(s_axis_b_tdata[28]),
    .I3(s_axis_b_tdata[27]),
    .I4(s_axis_b_tdata[26]),
    .I5(sig00000269),
    .O(sig000000b0)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  blk000001e5 (
    .I0(s_axis_b_tdata[25]),
    .I1(s_axis_b_tdata[24]),
    .I2(s_axis_b_tdata[23]),
    .O(sig0000026a)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk000001e6 (
    .I0(s_axis_b_tdata[30]),
    .I1(s_axis_b_tdata[29]),
    .I2(s_axis_b_tdata[28]),
    .I3(s_axis_b_tdata[27]),
    .I4(s_axis_b_tdata[26]),
    .I5(sig0000026a),
    .O(sig000000b1)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  blk000001e7 (
    .I0(sig0000007b),
    .I1(sig0000007a),
    .I2(sig00000079),
    .I3(sig00000078),
    .I4(sig00000077),
    .O(sig0000026b)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk000001e8 (
    .I0(sig000000cc),
    .I1(sig000000cb),
    .I2(sig0000007e),
    .I3(sig0000007d),
    .I4(sig0000007c),
    .I5(sig0000026b),
    .O(sig000000ba)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk000001e9 (
    .I0(sig000000f8),
    .I1(sig000000fb),
    .O(sig0000026c)
  );
  LUT6 #(
    .INIT ( 64'h1000000000000001 ))
  blk000001ea (
    .I0(sig0000017a),
    .I1(sig0000026c),
    .I2(sig00000088),
    .I3(sig00000087),
    .I4(sig00000086),
    .I5(sig00000085),
    .O(sig00000179)
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  blk000001eb (
    .I0(sig00000196),
    .I1(sig00000197),
    .I2(sig00000198),
    .I3(sig00000199),
    .I4(sig000001a0),
    .I5(sig0000019a),
    .O(sig0000026d)
  );
  LUT6 #(
    .INIT ( 64'h0001010100110111 ))
  blk000001ec (
    .I0(sig0000019f),
    .I1(sig00000195),
    .I2(sig0000002a),
    .I3(sig00000044),
    .I4(sig0000002b),
    .I5(sig00000043),
    .O(sig0000026e)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk000001ed (
    .I0(sig0000019c),
    .I1(sig0000019b),
    .I2(sig0000019d),
    .I3(sig0000019e),
    .I4(sig00000193),
    .I5(sig00000194),
    .O(sig0000026f)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  blk000001ee (
    .I0(sig0000026e),
    .I1(sig0000026f),
    .I2(sig0000026d),
    .O(sig000001f7)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk000001ef (
    .I0(sig000000cf),
    .I1(sig000000ce),
    .I2(sig000000d0),
    .I3(sig000000f7),
    .O(sig00000270)
  );
  LUT6 #(
    .INIT ( 64'h4E444E4E4E444E44 ))
  blk000001f0 (
    .I0(aclken),
    .I1(\NlwRenamedSig_OI_U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/mant_op [22]),
    .I2(sig000000e3),
    .I3(sig000000e2),
    .I4(sig00000270),
    .I5(sig00000023),
    .O(sig00000263)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk000001f1 (
    .I0(sig000000e3),
    .I1(sig000000f7),
    .O(sig00000271)
  );
  FDRE   blk000001f2 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000272),
    .R(sig00000264),
    .Q(\U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/exp_op [7])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFF00FF02 ))
  blk000001f3 (
    .I0(sig000000ce),
    .I1(sig000000d0),
    .I2(sig000000cf),
    .I3(sig000000e2),
    .I4(sig00000271),
    .I5(sig0000000c),
    .O(sig00000272)
  );
  FDRE   blk000001f4 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000273),
    .R(sig00000264),
    .Q(\U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/exp_op [6])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFF00FF02 ))
  blk000001f5 (
    .I0(sig000000ce),
    .I1(sig000000d0),
    .I2(sig000000cf),
    .I3(sig000000e2),
    .I4(sig00000271),
    .I5(sig0000000b),
    .O(sig00000273)
  );
  FDRE   blk000001f6 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000274),
    .R(sig00000264),
    .Q(\U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/exp_op [5])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFF00FF02 ))
  blk000001f7 (
    .I0(sig000000ce),
    .I1(sig000000d0),
    .I2(sig000000cf),
    .I3(sig000000e2),
    .I4(sig00000271),
    .I5(sig0000000a),
    .O(sig00000274)
  );
  FDRE   blk000001f8 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000275),
    .R(sig00000264),
    .Q(\U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/exp_op [4])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFF00FF02 ))
  blk000001f9 (
    .I0(sig000000ce),
    .I1(sig000000d0),
    .I2(sig000000cf),
    .I3(sig000000e2),
    .I4(sig00000271),
    .I5(sig00000009),
    .O(sig00000275)
  );
  FDRE   blk000001fa (
    .C(aclk),
    .CE(aclken),
    .D(sig00000276),
    .R(sig00000264),
    .Q(\U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/exp_op [3])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFF00FF02 ))
  blk000001fb (
    .I0(sig000000ce),
    .I1(sig000000d0),
    .I2(sig000000cf),
    .I3(sig000000e2),
    .I4(sig00000271),
    .I5(sig00000008),
    .O(sig00000276)
  );
  FDRE   blk000001fc (
    .C(aclk),
    .CE(aclken),
    .D(sig00000277),
    .R(sig00000264),
    .Q(\U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/exp_op [2])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFF00FF02 ))
  blk000001fd (
    .I0(sig000000ce),
    .I1(sig000000d0),
    .I2(sig000000cf),
    .I3(sig000000e2),
    .I4(sig00000271),
    .I5(sig00000007),
    .O(sig00000277)
  );
  FDRE   blk000001fe (
    .C(aclk),
    .CE(aclken),
    .D(sig00000278),
    .R(sig00000264),
    .Q(\U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/exp_op [1])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFF00FF02 ))
  blk000001ff (
    .I0(sig000000ce),
    .I1(sig000000d0),
    .I2(sig000000cf),
    .I3(sig000000e2),
    .I4(sig00000271),
    .I5(sig00000006),
    .O(sig00000278)
  );
  FDRE   blk00000200 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000279),
    .R(sig00000264),
    .Q(\U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/exp_op [0])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFF00FF02 ))
  blk00000201 (
    .I0(sig000000ce),
    .I1(sig000000d0),
    .I2(sig000000cf),
    .I3(sig000000e2),
    .I4(sig00000271),
    .I5(sig00000005),
    .O(sig00000279)
  );
  FDE   blk00000202 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000073),
    .Q(\U0/i_synth/ADDSUB_OP.ADDSUB/SPEED_OP.DSP.OP/OP/sign_op )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk00000203 (
    .I0(sig0000017b),
    .O(sig0000027a)
  );
  LUT5 #(
    .INIT ( 32'h02020257 ))
  blk00000204 (
    .I0(sig00000029),
    .I1(sig00000034),
    .I2(sig00000033),
    .I3(sig00000043),
    .I4(sig00000044),
    .O(sig00000234)
  );
  LUT5 #(
    .INIT ( 32'h02020257 ))
  blk00000205 (
    .I0(sig00000029),
    .I1(sig00000031),
    .I2(sig00000032),
    .I3(sig00000041),
    .I4(sig00000042),
    .O(sig00000233)
  );
  LUT5 #(
    .INIT ( 32'h02020257 ))
  blk00000206 (
    .I0(sig00000029),
    .I1(sig0000002f),
    .I2(sig00000030),
    .I3(sig0000003f),
    .I4(sig00000040),
    .O(sig00000232)
  );
  LUT5 #(
    .INIT ( 32'h02020257 ))
  blk00000207 (
    .I0(sig00000029),
    .I1(sig0000002d),
    .I2(sig0000002e),
    .I3(sig0000003d),
    .I4(sig0000003e),
    .O(sig00000231)
  );
  LUT5 #(
    .INIT ( 32'h02020257 ))
  blk00000208 (
    .I0(sig00000029),
    .I1(sig0000002b),
    .I2(sig0000002c),
    .I3(sig0000003b),
    .I4(sig0000003c),
    .O(sig00000230)
  );
  LUT4 #(
    .INIT ( 16'h2227 ))
  blk00000209 (
    .I0(sig00000029),
    .I1(sig0000002a),
    .I2(sig00000039),
    .I3(sig0000003a),
    .O(sig0000022f)
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  blk0000020a (
    .I0(sig00000037),
    .I1(sig00000038),
    .I2(sig00000029),
    .O(sig0000022e)
  );
  LUT5 #(
    .INIT ( 32'h02020257 ))
  blk0000020b (
    .I0(sig00000076),
    .I1(sig0000005c),
    .I2(sig0000005d),
    .I3(sig00000045),
    .I4(sig00000046),
    .O(sig000001ed)
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  blk0000020c (
    .I0(sig00000035),
    .I1(sig00000036),
    .I2(sig00000029),
    .O(sig0000022d)
  );
  LUT5 #(
    .INIT ( 32'h02020257 ))
  blk0000020d (
    .I0(sig00000076),
    .I1(sig0000005e),
    .I2(sig0000005f),
    .I3(sig00000047),
    .I4(sig00000048),
    .O(sig000001ec)
  );
  LUT5 #(
    .INIT ( 32'h02020257 ))
  blk0000020e (
    .I0(sig00000076),
    .I1(sig00000060),
    .I2(sig00000061),
    .I3(sig00000049),
    .I4(sig0000004a),
    .O(sig000001eb)
  );
  LUT5 #(
    .INIT ( 32'h02020257 ))
  blk0000020f (
    .I0(sig00000076),
    .I1(sig00000062),
    .I2(sig00000063),
    .I3(sig0000004b),
    .I4(sig0000004c),
    .O(sig000001ea)
  );
  LUT5 #(
    .INIT ( 32'h02020257 ))
  blk00000210 (
    .I0(sig00000076),
    .I1(sig00000064),
    .I2(sig00000065),
    .I3(sig0000004d),
    .I4(sig0000004e),
    .O(sig000001e9)
  );
  LUT5 #(
    .INIT ( 32'h02020257 ))
  blk00000211 (
    .I0(sig00000076),
    .I1(sig00000066),
    .I2(sig00000067),
    .I3(sig0000004f),
    .I4(sig00000050),
    .O(sig000001e8)
  );
  LUT5 #(
    .INIT ( 32'h02020257 ))
  blk00000212 (
    .I0(sig00000076),
    .I1(sig00000068),
    .I2(sig00000069),
    .I3(sig00000051),
    .I4(sig00000052),
    .O(sig000001e7)
  );
  LUT5 #(
    .INIT ( 32'hEA404040 ))
  blk00000213 (
    .I0(sig00000029),
    .I1(sig00000043),
    .I2(sig00000044),
    .I3(sig00000034),
    .I4(sig00000033),
    .O(sig000001f0)
  );
  LUT4 #(
    .INIT ( 16'h7770 ))
  blk00000214 (
    .I0(sig000000f8),
    .I1(sig000000fb),
    .I2(sig000000fc),
    .I3(sig000000f9),
    .O(sig000000c9)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  blk00000215 (
    .I0(sig000000f8),
    .I1(sig000000fb),
    .O(sig000001e0)
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  blk00000216 (
    .I0(sig00000036),
    .I1(sig00000029),
    .I2(sig00000224),
    .I3(sig00000223),
    .O(sig00000236)
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  blk00000217 (
    .I0(sig00000038),
    .I1(sig00000029),
    .I2(sig00000225),
    .I3(sig00000224),
    .O(sig0000023a)
  );
  LUT5 #(
    .INIT ( 32'h22200200 ))
  blk00000218 (
    .I0(sig00000226),
    .I1(sig00000225),
    .I2(sig00000029),
    .I3(sig0000003a),
    .I4(sig0000002a),
    .O(sig0000023c)
  );
  LUT6 #(
    .INIT ( 64'h0404040000040000 ))
  blk00000219 (
    .I0(sig00000209),
    .I1(sig00000227),
    .I2(sig00000226),
    .I3(sig00000029),
    .I4(sig0000003b),
    .I5(sig0000002b),
    .O(sig0000023d)
  );
  LUT5 #(
    .INIT ( 32'h22200200 ))
  blk0000021a (
    .I0(sig00000227),
    .I1(sig00000226),
    .I2(sig00000029),
    .I3(sig0000003c),
    .I4(sig0000002c),
    .O(sig00000240)
  );
  LUT6 #(
    .INIT ( 64'h0404040000040000 ))
  blk0000021b (
    .I0(sig0000020b),
    .I1(sig00000228),
    .I2(sig00000227),
    .I3(sig00000029),
    .I4(sig0000003d),
    .I5(sig0000002d),
    .O(sig00000241)
  );
  LUT5 #(
    .INIT ( 32'h22200200 ))
  blk0000021c (
    .I0(sig00000228),
    .I1(sig00000227),
    .I2(sig00000029),
    .I3(sig0000003e),
    .I4(sig0000002e),
    .O(sig00000242)
  );
  LUT6 #(
    .INIT ( 64'h0404040000040000 ))
  blk0000021d (
    .I0(sig0000020d),
    .I1(sig00000229),
    .I2(sig00000228),
    .I3(sig00000029),
    .I4(sig0000003f),
    .I5(sig0000002f),
    .O(sig00000243)
  );
  LUT5 #(
    .INIT ( 32'h22200200 ))
  blk0000021e (
    .I0(sig00000229),
    .I1(sig00000228),
    .I2(sig00000029),
    .I3(sig00000040),
    .I4(sig00000030),
    .O(sig00000246)
  );
  LUT6 #(
    .INIT ( 64'h0404040000040000 ))
  blk0000021f (
    .I0(sig0000020f),
    .I1(sig0000022a),
    .I2(sig00000229),
    .I3(sig00000029),
    .I4(sig00000041),
    .I5(sig00000031),
    .O(sig00000247)
  );
  LUT5 #(
    .INIT ( 32'h22200200 ))
  blk00000220 (
    .I0(sig0000022a),
    .I1(sig00000229),
    .I2(sig00000029),
    .I3(sig00000042),
    .I4(sig00000032),
    .O(sig00000248)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  blk00000221 (
    .I0(sig0000022a),
    .I1(sig00000029),
    .I2(sig00000044),
    .I3(sig00000034),
    .O(sig0000024c)
  );
  LUT6 #(
    .INIT ( 64'hF7D5E6C4B391A280 ))
  blk00000222 (
    .I0(sig0000017b),
    .I1(sig00000076),
    .I2(sig00000072),
    .I3(sig0000005b),
    .I4(sig0000004d),
    .I5(sig00000064),
    .O(sig00000157)
  );
  LUT6 #(
    .INIT ( 64'hF7D5E6C4B391A280 ))
  blk00000223 (
    .I0(sig0000017b),
    .I1(sig00000076),
    .I2(sig00000071),
    .I3(sig0000005a),
    .I4(sig0000004c),
    .I5(sig00000063),
    .O(sig00000158)
  );
  LUT6 #(
    .INIT ( 64'hF7D5E6C4B391A280 ))
  blk00000224 (
    .I0(sig0000017b),
    .I1(sig00000076),
    .I2(sig00000070),
    .I3(sig00000059),
    .I4(sig0000004b),
    .I5(sig00000062),
    .O(sig00000159)
  );
  LUT6 #(
    .INIT ( 64'hF7D5E6C4B391A280 ))
  blk00000225 (
    .I0(sig0000017b),
    .I1(sig00000076),
    .I2(sig0000006f),
    .I3(sig00000058),
    .I4(sig0000004a),
    .I5(sig00000061),
    .O(sig0000015a)
  );
  LUT6 #(
    .INIT ( 64'hF7D5E6C4B391A280 ))
  blk00000226 (
    .I0(sig0000017b),
    .I1(sig00000076),
    .I2(sig0000006e),
    .I3(sig00000057),
    .I4(sig00000049),
    .I5(sig00000060),
    .O(sig0000015b)
  );
  LUT6 #(
    .INIT ( 64'hF7D5E6C4B391A280 ))
  blk00000227 (
    .I0(sig0000017b),
    .I1(sig00000076),
    .I2(sig0000006d),
    .I3(sig00000056),
    .I4(sig00000048),
    .I5(sig0000005f),
    .O(sig0000015c)
  );
  LUT6 #(
    .INIT ( 64'hF7D5E6C4B391A280 ))
  blk00000228 (
    .I0(sig0000017b),
    .I1(sig00000076),
    .I2(sig0000006c),
    .I3(sig00000055),
    .I4(sig00000047),
    .I5(sig0000005e),
    .O(sig0000015d)
  );
  LUT6 #(
    .INIT ( 64'hF7D5E6C4B391A280 ))
  blk00000229 (
    .I0(sig0000017b),
    .I1(sig00000076),
    .I2(sig0000006b),
    .I3(sig00000054),
    .I4(sig00000046),
    .I5(sig0000005d),
    .O(sig0000015e)
  );
  LUT6 #(
    .INIT ( 64'hF7D5E6C4B391A280 ))
  blk0000022a (
    .I0(sig0000017b),
    .I1(sig00000076),
    .I2(sig0000006a),
    .I3(sig00000053),
    .I4(sig00000045),
    .I5(sig0000005c),
    .O(sig0000015f)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  blk0000022b (
    .I0(sig0000017b),
    .I1(sig00000076),
    .I2(sig0000004f),
    .I3(sig00000066),
    .O(sig00000155)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  blk0000022c (
    .I0(sig0000017b),
    .I1(sig00000076),
    .I2(sig00000050),
    .I3(sig00000067),
    .O(sig00000154)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  blk0000022d (
    .I0(sig0000017b),
    .I1(sig00000076),
    .I2(sig00000051),
    .I3(sig00000068),
    .O(sig00000153)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  blk0000022e (
    .I0(sig0000017b),
    .I1(sig00000076),
    .I2(sig00000052),
    .I3(sig00000069),
    .O(sig00000152)
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  blk0000022f (
    .I0(sig00000076),
    .I1(sig00000065),
    .I2(sig0000004e),
    .I3(sig0000017b),
    .O(sig00000156)
  );
  LUT5 #(
    .INIT ( 32'h00100000 ))
  blk00000230 (
    .I0(sig00000029),
    .I1(sig0000003a),
    .I2(sig00000226),
    .I3(sig00000225),
    .I4(sig00000039),
    .O(sig0000023b)
  );
  LUT5 #(
    .INIT ( 32'h00100000 ))
  blk00000231 (
    .I0(sig00000029),
    .I1(sig00000036),
    .I2(sig00000224),
    .I3(sig00000223),
    .I4(sig00000035),
    .O(sig00000235)
  );
  LUT5 #(
    .INIT ( 32'h00100000 ))
  blk00000232 (
    .I0(sig00000029),
    .I1(sig00000038),
    .I2(sig00000225),
    .I3(sig00000224),
    .I4(sig00000037),
    .O(sig00000237)
  );
  LUT6 #(
    .INIT ( 64'h0010001044540010 ))
  blk00000233 (
    .I0(sig0000022a),
    .I1(sig00000029),
    .I2(sig00000043),
    .I3(sig00000044),
    .I4(sig00000033),
    .I5(sig00000034),
    .O(sig00000249)
  );
  MUXF7   blk00000234 (
    .I0(sig0000027b),
    .I1(sig0000027c),
    .S(sig000000fc),
    .O(sig000000c8)
  );
  LUT6 #(
    .INIT ( 64'hAA8AAB8B22022000 ))
  blk00000235 (
    .I0(sig000000e5),
    .I1(sig00000075),
    .I2(sig000000f9),
    .I3(sig000000fa),
    .I4(sig00000076),
    .I5(sig000000e6),
    .O(sig0000027b)
  );
  LUT6 #(
    .INIT ( 64'h888080808A808A80 ))
  blk00000236 (
    .I0(sig000000e6),
    .I1(sig000000e5),
    .I2(sig00000075),
    .I3(sig000000fd),
    .I4(sig000000fa),
    .I5(sig000000f9),
    .O(sig0000027c)
  );
  INV   blk00000237 (
    .I(sig0000017b),
    .O(sig00000148)
  );
  INV   blk00000238 (
    .I(sig000000d6),
    .O(sig00000090)
  );
  INV   blk00000239 (
    .I(sig000000d7),
    .O(sig0000008e)
  );
  INV   blk0000023a (
    .I(sig000000d8),
    .O(sig0000008c)
  );
  LUT6 #(
    .INIT ( 64'h0818181018181810 ))
  blk0000023b (
    .I0(sig00000083),
    .I1(sig00000084),
    .I2(sig00000085),
    .I3(sig00000081),
    .I4(sig00000082),
    .I5(sig00000080),
    .O(sig0000017a)
  );
  LUT6 #(
    .INIT ( 64'h666666666666666A ))
  blk0000023c (
    .I0(sig00000084),
    .I1(sig00000085),
    .I2(sig00000083),
    .I3(sig00000082),
    .I4(sig00000081),
    .I5(sig00000080),
    .O(sig0000017b)
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  blk0000023d (
    .I0(sig00000080),
    .I1(sig00000081),
    .I2(sig00000082),
    .I3(sig00000083),
    .I4(sig00000084),
    .O(sig000001dc)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000002 ))
  blk0000023e (
    .I0(sig00000080),
    .I1(sig00000081),
    .I2(sig00000082),
    .I3(sig00000083),
    .I4(sig00000084),
    .I5(sig00000085),
    .O(sig000001db)
  );
  LUT6 #(
    .INIT ( 64'h4001000000010004 ))
  blk0000023f (
    .I0(sig00000080),
    .I1(sig00000081),
    .I2(sig00000082),
    .I3(sig00000083),
    .I4(sig00000084),
    .I5(sig00000085),
    .O(sig000001da)
  );
  LUT6 #(
    .INIT ( 64'h2800000000000028 ))
  blk00000240 (
    .I0(sig00000080),
    .I1(sig00000081),
    .I2(sig00000084),
    .I3(sig00000082),
    .I4(sig00000083),
    .I5(sig00000085),
    .O(sig000001d9)
  );
  LUT6 #(
    .INIT ( 64'h0400400000100004 ))
  blk00000241 (
    .I0(sig00000080),
    .I1(sig00000082),
    .I2(sig00000081),
    .I3(sig00000083),
    .I4(sig00000084),
    .I5(sig00000085),
    .O(sig000001d8)
  );
  LUT6 #(
    .INIT ( 64'h0820000000000820 ))
  blk00000242 (
    .I0(sig00000080),
    .I1(sig00000081),
    .I2(sig00000082),
    .I3(sig00000084),
    .I4(sig00000083),
    .I5(sig00000085),
    .O(sig000001d7)
  );
  LUT6 #(
    .INIT ( 64'h1000040000040040 ))
  blk00000243 (
    .I0(sig00000080),
    .I1(sig00000082),
    .I2(sig00000081),
    .I3(sig00000083),
    .I4(sig00000084),
    .I5(sig00000085),
    .O(sig000001d6)
  );
  LUT6 #(
    .INIT ( 64'h0000002828000000 ))
  blk00000244 (
    .I0(sig00000080),
    .I1(sig00000084),
    .I2(sig00000081),
    .I3(sig00000085),
    .I4(sig00000083),
    .I5(sig00000082),
    .O(sig000001d5)
  );
  LUT6 #(
    .INIT ( 64'h0010100004000010 ))
  blk00000245 (
    .I0(sig00000080),
    .I1(sig00000082),
    .I2(sig00000083),
    .I3(sig00000081),
    .I4(sig00000084),
    .I5(sig00000085),
    .O(sig000001d4)
  );
  LUT5 #(
    .INIT ( 32'h00800200 ))
  blk00000246 (
    .I0(sig00000080),
    .I1(sig00000081),
    .I2(sig00000082),
    .I3(sig00000083),
    .I4(sig00000084),
    .O(sig000001d3)
  );
  LUT6 #(
    .INIT ( 64'h0400001000101000 ))
  blk00000247 (
    .I0(sig00000080),
    .I1(sig00000082),
    .I2(sig00000083),
    .I3(sig00000081),
    .I4(sig00000084),
    .I5(sig00000085),
    .O(sig000001d2)
  );
  LUT6 #(
    .INIT ( 64'h0000002828000000 ))
  blk00000248 (
    .I0(sig00000080),
    .I1(sig00000084),
    .I2(sig00000081),
    .I3(sig00000085),
    .I4(sig00000082),
    .I5(sig00000083),
    .O(sig000001d1)
  );
  LUT6 #(
    .INIT ( 64'h0010000404004000 ))
  blk00000249 (
    .I0(sig00000080),
    .I1(sig00000082),
    .I2(sig00000081),
    .I3(sig00000085),
    .I4(sig00000084),
    .I5(sig00000083),
    .O(sig000001d0)
  );
  LUT6 #(
    .INIT ( 64'h0000002828000000 ))
  blk0000024a (
    .I0(sig00000080),
    .I1(sig00000085),
    .I2(sig00000083),
    .I3(sig00000084),
    .I4(sig00000081),
    .I5(sig00000082),
    .O(sig000001cf)
  );
  LUT6 #(
    .INIT ( 64'h0010000404004000 ))
  blk0000024b (
    .I0(sig00000080),
    .I1(sig00000082),
    .I2(sig00000081),
    .I3(sig00000083),
    .I4(sig00000084),
    .I5(sig00000085),
    .O(sig000001ce)
  );
  LUT6 #(
    .INIT ( 64'h0000002828000000 ))
  blk0000024c (
    .I0(sig00000080),
    .I1(sig00000084),
    .I2(sig00000081),
    .I3(sig00000083),
    .I4(sig00000082),
    .I5(sig00000085),
    .O(sig000001cd)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk0000024d (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(aclken),
    .CLK(aclk),
    .D(sig00000089),
    .Q(sig0000027d),
    .Q15(NLW_blk0000024d_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000024e (
    .C(aclk),
    .CE(aclken),
    .D(sig0000027d),
    .Q(\U0/i_synth/i_nd_to_rdy/opt_has_pipe.pipe_7 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk0000024f (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(aclken),
    .CLK(aclk),
    .D(sig000000ab),
    .Q(sig0000027e),
    .Q15(NLW_blk0000024f_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000250 (
    .C(aclk),
    .CE(aclken),
    .D(sig0000027e),
    .Q(sig000000e1)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000251 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(aclken),
    .CLK(aclk),
    .D(sig0000013f),
    .Q(sig0000027f),
    .Q15(NLW_blk00000251_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000252 (
    .C(aclk),
    .CE(aclken),
    .D(sig0000027f),
    .Q(sig000000e3)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000253 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(aclken),
    .CLK(aclk),
    .D(sig0000013e),
    .Q(sig00000280),
    .Q15(NLW_blk00000253_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000254 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000280),
    .Q(sig000000e2)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000255 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(aclken),
    .CLK(aclk),
    .D(sig000000de),
    .Q(sig00000281),
    .Q15(NLW_blk00000255_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000256 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000281),
    .Q(sig000000d6)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000257 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(aclken),
    .CLK(aclk),
    .D(sig000000e0),
    .Q(sig00000282),
    .Q15(NLW_blk00000257_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000258 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000282),
    .Q(sig000000d8)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000259 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(aclken),
    .CLK(aclk),
    .D(sig000000df),
    .Q(sig00000283),
    .Q15(NLW_blk00000259_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000025a (
    .C(aclk),
    .CE(aclken),
    .D(sig00000283),
    .Q(sig000000d7)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk0000025b (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(aclken),
    .CLK(aclk),
    .D(sig000000db),
    .Q(sig00000284),
    .Q15(NLW_blk0000025b_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000025c (
    .C(aclk),
    .CE(aclken),
    .D(sig00000284),
    .Q(sig000000d3)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk0000025d (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(aclken),
    .CLK(aclk),
    .D(sig000000dd),
    .Q(sig00000285),
    .Q15(NLW_blk0000025d_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000025e (
    .C(aclk),
    .CE(aclken),
    .D(sig00000285),
    .Q(sig000000d5)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk0000025f (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(aclken),
    .CLK(aclk),
    .D(sig000000dc),
    .Q(sig00000286),
    .Q15(NLW_blk0000025f_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000260 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000286),
    .Q(sig000000d4)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000261 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(aclken),
    .CLK(aclk),
    .D(sig000001dd),
    .Q(sig00000287),
    .Q15(NLW_blk00000261_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000262 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000287),
    .Q(sig000001a0)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000263 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(aclken),
    .CLK(aclk),
    .D(sig000000da),
    .Q(sig00000288),
    .Q15(NLW_blk00000263_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000264 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000288),
    .Q(sig000000d2)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000265 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(aclken),
    .CLK(aclk),
    .D(sig000000d9),
    .Q(sig00000289),
    .Q15(NLW_blk00000265_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000266 (
    .C(aclk),
    .CE(aclken),
    .D(sig00000289),
    .Q(sig000000d1)
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
