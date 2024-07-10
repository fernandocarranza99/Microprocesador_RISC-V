--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.68d
--  \   \         Application: netgen
--  /   /         Filename: ALU_V1_synthesis.vhd
-- /___/   /\     Timestamp: Sun May 19 20:21:57 2024
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm ALU_V1 -w -dir netgen/synthesis -ofmt vhdl -sim ALU_V1.ngc ALU_V1_synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: ALU_V1.ngc
-- Output file	: D:\unsl\Ingenieria\Arquitectura de las computadoras\ALU\ALU\Proyecto_ALU\ALU\netgen\synthesis\ALU_V1_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: ALU_V1
-- Xilinx	: C:\Xilinx\14.6\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity ALU_V1 is
  port (
    ci : in STD_LOGIC := 'X'; 
    zero : out STD_LOGIC; 
    a : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    b : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    op : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    y : out STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end ALU_V1;

architecture Structure of ALU_V1 is
  signal a_31_IBUF_0 : STD_LOGIC; 
  signal a_30_IBUF_1 : STD_LOGIC; 
  signal a_29_IBUF_2 : STD_LOGIC; 
  signal a_28_IBUF_3 : STD_LOGIC; 
  signal a_27_IBUF_4 : STD_LOGIC; 
  signal a_26_IBUF_5 : STD_LOGIC; 
  signal a_25_IBUF_6 : STD_LOGIC; 
  signal a_24_IBUF_7 : STD_LOGIC; 
  signal a_23_IBUF_8 : STD_LOGIC; 
  signal a_22_IBUF_9 : STD_LOGIC; 
  signal a_21_IBUF_10 : STD_LOGIC; 
  signal a_20_IBUF_11 : STD_LOGIC; 
  signal a_19_IBUF_12 : STD_LOGIC; 
  signal a_18_IBUF_13 : STD_LOGIC; 
  signal a_17_IBUF_14 : STD_LOGIC; 
  signal a_16_IBUF_15 : STD_LOGIC; 
  signal a_15_IBUF_16 : STD_LOGIC; 
  signal a_14_IBUF_17 : STD_LOGIC; 
  signal a_13_IBUF_18 : STD_LOGIC; 
  signal a_12_IBUF_19 : STD_LOGIC; 
  signal a_11_IBUF_20 : STD_LOGIC; 
  signal a_10_IBUF_21 : STD_LOGIC; 
  signal a_9_IBUF_22 : STD_LOGIC; 
  signal a_8_IBUF_23 : STD_LOGIC; 
  signal a_7_IBUF_24 : STD_LOGIC; 
  signal a_6_IBUF_25 : STD_LOGIC; 
  signal a_5_IBUF_26 : STD_LOGIC; 
  signal a_4_IBUF_27 : STD_LOGIC; 
  signal a_3_IBUF_28 : STD_LOGIC; 
  signal a_2_IBUF_29 : STD_LOGIC; 
  signal a_1_IBUF_30 : STD_LOGIC; 
  signal a_0_IBUF_31 : STD_LOGIC; 
  signal b_4_IBUF_32 : STD_LOGIC; 
  signal b_3_IBUF_33 : STD_LOGIC; 
  signal b_2_IBUF_34 : STD_LOGIC; 
  signal b_1_IBUF_35 : STD_LOGIC; 
  signal b_0_IBUF_36 : STD_LOGIC; 
  signal b_31_IBUF_37 : STD_LOGIC; 
  signal b_30_IBUF_38 : STD_LOGIC; 
  signal b_29_IBUF_39 : STD_LOGIC; 
  signal b_28_IBUF_40 : STD_LOGIC; 
  signal b_27_IBUF_41 : STD_LOGIC; 
  signal b_26_IBUF_42 : STD_LOGIC; 
  signal b_25_IBUF_43 : STD_LOGIC; 
  signal b_24_IBUF_44 : STD_LOGIC; 
  signal b_23_IBUF_45 : STD_LOGIC; 
  signal b_22_IBUF_46 : STD_LOGIC; 
  signal b_21_IBUF_47 : STD_LOGIC; 
  signal b_20_IBUF_48 : STD_LOGIC; 
  signal b_19_IBUF_49 : STD_LOGIC; 
  signal b_18_IBUF_50 : STD_LOGIC; 
  signal b_17_IBUF_51 : STD_LOGIC; 
  signal b_16_IBUF_52 : STD_LOGIC; 
  signal b_15_IBUF_53 : STD_LOGIC; 
  signal b_14_IBUF_54 : STD_LOGIC; 
  signal b_13_IBUF_55 : STD_LOGIC; 
  signal b_12_IBUF_56 : STD_LOGIC; 
  signal b_11_IBUF_57 : STD_LOGIC; 
  signal b_10_IBUF_58 : STD_LOGIC; 
  signal b_9_IBUF_59 : STD_LOGIC; 
  signal b_8_IBUF_60 : STD_LOGIC; 
  signal b_7_IBUF_61 : STD_LOGIC; 
  signal b_6_IBUF_62 : STD_LOGIC; 
  signal b_5_IBUF_63 : STD_LOGIC; 
  signal op_3_IBUF_64 : STD_LOGIC; 
  signal op_2_IBUF_65 : STD_LOGIC; 
  signal op_1_IBUF_66 : STD_LOGIC; 
  signal y_31_OBUF_99 : STD_LOGIC; 
  signal y_30_OBUF_100 : STD_LOGIC; 
  signal y_29_OBUF_101 : STD_LOGIC; 
  signal y_28_OBUF_102 : STD_LOGIC; 
  signal y_27_OBUF_103 : STD_LOGIC; 
  signal y_26_OBUF_104 : STD_LOGIC; 
  signal y_25_OBUF_105 : STD_LOGIC; 
  signal y_24_OBUF_106 : STD_LOGIC; 
  signal y_23_OBUF_107 : STD_LOGIC; 
  signal y_22_OBUF_108 : STD_LOGIC; 
  signal y_21_OBUF_109 : STD_LOGIC; 
  signal y_20_OBUF_110 : STD_LOGIC; 
  signal y_19_OBUF_111 : STD_LOGIC; 
  signal y_18_OBUF_112 : STD_LOGIC; 
  signal y_17_OBUF_113 : STD_LOGIC; 
  signal y_16_OBUF_114 : STD_LOGIC; 
  signal y_15_OBUF_115 : STD_LOGIC; 
  signal y_14_OBUF_116 : STD_LOGIC; 
  signal y_13_OBUF_117 : STD_LOGIC; 
  signal y_12_OBUF_118 : STD_LOGIC; 
  signal y_11_OBUF_119 : STD_LOGIC; 
  signal y_10_OBUF_120 : STD_LOGIC; 
  signal y_9_OBUF_121 : STD_LOGIC; 
  signal y_8_OBUF_122 : STD_LOGIC; 
  signal y_7_OBUF_123 : STD_LOGIC; 
  signal y_6_OBUF_124 : STD_LOGIC; 
  signal y_5_OBUF_125 : STD_LOGIC; 
  signal y_4_OBUF_126 : STD_LOGIC; 
  signal y_3_OBUF_127 : STD_LOGIC; 
  signal y_2_OBUF_128 : STD_LOGIC; 
  signal y_1_OBUF_129 : STD_LOGIC; 
  signal y_0_OBUF_130 : STD_LOGIC; 
  signal Sh2 : STD_LOGIC; 
  signal Sh3 : STD_LOGIC; 
  signal Sh4 : STD_LOGIC; 
  signal Sh5 : STD_LOGIC; 
  signal Sh6 : STD_LOGIC; 
  signal Sh7 : STD_LOGIC; 
  signal Sh8 : STD_LOGIC; 
  signal Sh9 : STD_LOGIC; 
  signal Sh10 : STD_LOGIC; 
  signal Sh11 : STD_LOGIC; 
  signal Sh12 : STD_LOGIC; 
  signal Sh13 : STD_LOGIC; 
  signal Sh14 : STD_LOGIC; 
  signal Sh15 : STD_LOGIC; 
  signal Sh16 : STD_LOGIC; 
  signal Sh17 : STD_LOGIC; 
  signal Sh18 : STD_LOGIC; 
  signal Sh19 : STD_LOGIC; 
  signal Sh20 : STD_LOGIC; 
  signal Sh21 : STD_LOGIC; 
  signal Sh22 : STD_LOGIC; 
  signal Sh23 : STD_LOGIC; 
  signal Sh32 : STD_LOGIC; 
  signal Sh33 : STD_LOGIC; 
  signal Sh34 : STD_LOGIC; 
  signal Sh35 : STD_LOGIC; 
  signal Sh40_157 : STD_LOGIC; 
  signal Sh41_158 : STD_LOGIC; 
  signal Sh42 : STD_LOGIC; 
  signal Sh43 : STD_LOGIC; 
  signal Sh44_161 : STD_LOGIC; 
  signal Sh45 : STD_LOGIC; 
  signal Sh46 : STD_LOGIC; 
  signal Sh47 : STD_LOGIC; 
  signal Sh104 : STD_LOGIC; 
  signal Sh105 : STD_LOGIC; 
  signal Sh106 : STD_LOGIC; 
  signal Sh107 : STD_LOGIC; 
  signal Sh108 : STD_LOGIC; 
  signal Sh109 : STD_LOGIC; 
  signal Sh110 : STD_LOGIC; 
  signal Sh112 : STD_LOGIC; 
  signal Sh113 : STD_LOGIC; 
  signal Sh114 : STD_LOGIC; 
  signal Sh115 : STD_LOGIC; 
  signal Sh116 : STD_LOGIC; 
  signal Sh117 : STD_LOGIC; 
  signal Sh118 : STD_LOGIC; 
  signal Sh119 : STD_LOGIC; 
  signal Sh120 : STD_LOGIC; 
  signal Sh121_181 : STD_LOGIC; 
  signal Sh122 : STD_LOGIC; 
  signal Sh123 : STD_LOGIC; 
  signal Sh124 : STD_LOGIC; 
  signal Sh125 : STD_LOGIC; 
  signal Sh126 : STD_LOGIC; 
  signal Sh127 : STD_LOGIC; 
  signal Sh145 : STD_LOGIC; 
  signal Sh146 : STD_LOGIC; 
  signal Sh147 : STD_LOGIC; 
  signal Sh148 : STD_LOGIC; 
  signal Sh149 : STD_LOGIC; 
  signal Sh150 : STD_LOGIC; 
  signal Sh151_194 : STD_LOGIC; 
  signal op_0_1 : STD_LOGIC; 
  signal Sh271 : STD_LOGIC; 
  signal Sh291 : STD_LOGIC; 
  signal Sh441 : STD_LOGIC; 
  signal Sh451 : STD_LOGIC; 
  signal Sh461_263 : STD_LOGIC; 
  signal Sh471_264 : STD_LOGIC; 
  signal Sh521 : STD_LOGIC; 
  signal Sh531 : STD_LOGIC; 
  signal Sh541 : STD_LOGIC; 
  signal Sh551 : STD_LOGIC; 
  signal Sh981 : STD_LOGIC; 
  signal Sh1001 : STD_LOGIC; 
  signal Sh1021 : STD_LOGIC; 
  signal Sh1281 : STD_LOGIC; 
  signal Sh1291 : STD_LOGIC; 
  signal Sh1301 : STD_LOGIC; 
  signal Sh1311 : STD_LOGIC; 
  signal Sh1361 : STD_LOGIC; 
  signal Sh1371 : STD_LOGIC; 
  signal Sh1381 : STD_LOGIC; 
  signal Sh1391_279 : STD_LOGIC; 
  signal Sh1002 : STD_LOGIC; 
  signal Sh1012 : STD_LOGIC; 
  signal Sh1321 : STD_LOGIC; 
  signal Sh1331 : STD_LOGIC; 
  signal Sh1341 : STD_LOGIC; 
  signal Sh1351 : STD_LOGIC; 
  signal Sh1401 : STD_LOGIC; 
  signal Sh1411 : STD_LOGIC; 
  signal Sh1421 : STD_LOGIC; 
  signal Sh1431 : STD_LOGIC; 
  signal Sh281 : STD_LOGIC; 
  signal Sh301 : STD_LOGIC; 
  signal Sh561_292 : STD_LOGIC; 
  signal Sh571_293 : STD_LOGIC; 
  signal Sh581_294 : STD_LOGIC; 
  signal Sh591_295 : STD_LOGIC; 
  signal Sh971 : STD_LOGIC; 
  signal Sh1551 : STD_LOGIC; 
  signal Sh1541 : STD_LOGIC; 
  signal Sh1531 : STD_LOGIC; 
  signal Sh1521 : STD_LOGIC; 
  signal Mmux_y24_301 : STD_LOGIC; 
  signal Mmux_y241_302 : STD_LOGIC; 
  signal Mmux_y242_303 : STD_LOGIC; 
  signal Mmux_y243_304 : STD_LOGIC; 
  signal Mmux_y244_305 : STD_LOGIC; 
  signal Mmux_y245_306 : STD_LOGIC; 
  signal Mmux_y103 : STD_LOGIC; 
  signal Mmux_y104_308 : STD_LOGIC; 
  signal Mmux_y105_309 : STD_LOGIC; 
  signal Mmux_y123 : STD_LOGIC; 
  signal Mmux_y124_311 : STD_LOGIC; 
  signal Mmux_y125_312 : STD_LOGIC; 
  signal Mmux_y143 : STD_LOGIC; 
  signal Mmux_y144_314 : STD_LOGIC; 
  signal Mmux_y145_315 : STD_LOGIC; 
  signal Mmux_y263 : STD_LOGIC; 
  signal Mmux_y264_317 : STD_LOGIC; 
  signal Mmux_y265_318 : STD_LOGIC; 
  signal Mmux_y266_319 : STD_LOGIC; 
  signal Mmux_y283 : STD_LOGIC; 
  signal Mmux_y284_321 : STD_LOGIC; 
  signal Mmux_y285_322 : STD_LOGIC; 
  signal Mmux_y286_323 : STD_LOGIC; 
  signal Mmux_y303 : STD_LOGIC; 
  signal Mmux_y304_325 : STD_LOGIC; 
  signal Mmux_y305_326 : STD_LOGIC; 
  signal Mmux_y306_327 : STD_LOGIC; 
  signal Mmux_y323 : STD_LOGIC; 
  signal Mmux_y324_329 : STD_LOGIC; 
  signal Mmux_y325_330 : STD_LOGIC; 
  signal Mmux_y326_331 : STD_LOGIC; 
  signal Mmux_y342 : STD_LOGIC; 
  signal Mmux_y343_333 : STD_LOGIC; 
  signal Mmux_y344_334 : STD_LOGIC; 
  signal Mmux_y362 : STD_LOGIC; 
  signal Mmux_y363_336 : STD_LOGIC; 
  signal Mmux_y364_337 : STD_LOGIC; 
  signal Mmux_y382 : STD_LOGIC; 
  signal Mmux_y383_339 : STD_LOGIC; 
  signal Mmux_y384_340 : STD_LOGIC; 
  signal Mmux_y43 : STD_LOGIC; 
  signal Mmux_y44 : STD_LOGIC; 
  signal Mmux_y45 : STD_LOGIC; 
  signal Mmux_y402 : STD_LOGIC; 
  signal Mmux_y403_345 : STD_LOGIC; 
  signal Mmux_y404_346 : STD_LOGIC; 
  signal Mmux_y424_347 : STD_LOGIC; 
  signal Mmux_y425_348 : STD_LOGIC; 
  signal Mmux_y426_349 : STD_LOGIC; 
  signal Mmux_y427_350 : STD_LOGIC; 
  signal Mmux_y444_351 : STD_LOGIC; 
  signal Mmux_y445_352 : STD_LOGIC; 
  signal Mmux_y446_353 : STD_LOGIC; 
  signal Mmux_y447_354 : STD_LOGIC; 
  signal Mmux_y463 : STD_LOGIC; 
  signal Mmux_y466 : STD_LOGIC; 
  signal Mmux_y467_357 : STD_LOGIC; 
  signal Mmux_y468_358 : STD_LOGIC; 
  signal Mmux_y483 : STD_LOGIC; 
  signal Mmux_y484_360 : STD_LOGIC; 
  signal Mmux_y485_361 : STD_LOGIC; 
  signal Mmux_y486_362 : STD_LOGIC; 
  signal Mmux_y503 : STD_LOGIC; 
  signal Mmux_y504_364 : STD_LOGIC; 
  signal Mmux_y505_365 : STD_LOGIC; 
  signal Mmux_y506_366 : STD_LOGIC; 
  signal Mmux_y523 : STD_LOGIC; 
  signal Mmux_y524_368 : STD_LOGIC; 
  signal Mmux_y525_369 : STD_LOGIC; 
  signal Mmux_y526_370 : STD_LOGIC; 
  signal Mmux_y54 : STD_LOGIC; 
  signal Mmux_y541_372 : STD_LOGIC; 
  signal Mmux_y542_373 : STD_LOGIC; 
  signal Mmux_y562 : STD_LOGIC; 
  signal Mmux_y563_375 : STD_LOGIC; 
  signal Mmux_y564_376 : STD_LOGIC; 
  signal Mmux_y582 : STD_LOGIC; 
  signal Mmux_y583_378 : STD_LOGIC; 
  signal Mmux_y584_379 : STD_LOGIC; 
  signal Mmux_y63 : STD_LOGIC; 
  signal Mmux_y64 : STD_LOGIC; 
  signal Mmux_y65 : STD_LOGIC; 
  signal Mmux_y602 : STD_LOGIC; 
  signal Mmux_y603_384 : STD_LOGIC; 
  signal Mmux_y604_385 : STD_LOGIC; 
  signal Mmux_y621_386 : STD_LOGIC; 
  signal Mmux_y622_387 : STD_LOGIC; 
  signal Mmux_y623_388 : STD_LOGIC; 
  signal Mmux_y624_389 : STD_LOGIC; 
  signal Mmux_y641_390 : STD_LOGIC; 
  signal Mmux_y642_391 : STD_LOGIC; 
  signal Mmux_y643_392 : STD_LOGIC; 
  signal Mmux_y644_393 : STD_LOGIC; 
  signal Mmux_y83 : STD_LOGIC; 
  signal Mmux_y84_395 : STD_LOGIC; 
  signal Mmux_y85_396 : STD_LOGIC; 
  signal Mmux_y16 : STD_LOGIC; 
  signal Mmux_y161_398 : STD_LOGIC; 
  signal Mmux_y162_399 : STD_LOGIC; 
  signal Mmux_y163_400 : STD_LOGIC; 
  signal Mmux_y164_401 : STD_LOGIC; 
  signal Mmux_y165_402 : STD_LOGIC; 
  signal Mmux_y183 : STD_LOGIC; 
  signal Mmux_y184_404 : STD_LOGIC; 
  signal Mmux_y185_405 : STD_LOGIC; 
  signal Mmux_y203 : STD_LOGIC; 
  signal Mmux_y204_407 : STD_LOGIC; 
  signal Mmux_y205_408 : STD_LOGIC; 
  signal Mmux_y223 : STD_LOGIC; 
  signal Mmux_y224_410 : STD_LOGIC; 
  signal Mmux_y225_411 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal Mmux_y25_417 : STD_LOGIC; 
  signal Mmux_y27 : STD_LOGIC; 
  signal Mmux_y211_419 : STD_LOGIC; 
  signal Mmux_y212_420 : STD_LOGIC; 
  signal Mmux_y213 : STD_LOGIC; 
  signal Mmux_y214 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal Q_n0031 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Maddsub_n0031_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Maddsub_n0031_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
begin
  Maddsub_n0031_lut_0_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_0_IBUF_31,
      I1 => b_0_IBUF_36,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(0)
    );
  Maddsub_n0031_cy_0_Q : MUXCY
    port map (
      CI => op_0_1,
      DI => a_0_IBUF_31,
      S => Maddsub_n0031_lut(0),
      O => Maddsub_n0031_cy(0)
    );
  Maddsub_n0031_xor_0_Q : XORCY
    port map (
      CI => op_0_1,
      LI => Maddsub_n0031_lut(0),
      O => Q_n0031(0)
    );
  Maddsub_n0031_lut_1_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_1_IBUF_30,
      I1 => b_1_IBUF_35,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(1)
    );
  Maddsub_n0031_cy_1_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(0),
      DI => a_1_IBUF_30,
      S => Maddsub_n0031_lut(1),
      O => Maddsub_n0031_cy(1)
    );
  Maddsub_n0031_xor_1_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(0),
      LI => Maddsub_n0031_lut(1),
      O => Q_n0031(1)
    );
  Maddsub_n0031_lut_2_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_2_IBUF_29,
      I1 => b_2_IBUF_34,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(2)
    );
  Maddsub_n0031_cy_2_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(1),
      DI => a_2_IBUF_29,
      S => Maddsub_n0031_lut(2),
      O => Maddsub_n0031_cy(2)
    );
  Maddsub_n0031_xor_2_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(1),
      LI => Maddsub_n0031_lut(2),
      O => Q_n0031(2)
    );
  Maddsub_n0031_lut_3_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_3_IBUF_28,
      I1 => b_3_IBUF_33,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(3)
    );
  Maddsub_n0031_cy_3_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(2),
      DI => a_3_IBUF_28,
      S => Maddsub_n0031_lut(3),
      O => Maddsub_n0031_cy(3)
    );
  Maddsub_n0031_xor_3_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(2),
      LI => Maddsub_n0031_lut(3),
      O => Q_n0031(3)
    );
  Maddsub_n0031_lut_4_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_4_IBUF_27,
      I1 => b_4_IBUF_32,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(4)
    );
  Maddsub_n0031_cy_4_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(3),
      DI => a_4_IBUF_27,
      S => Maddsub_n0031_lut(4),
      O => Maddsub_n0031_cy(4)
    );
  Maddsub_n0031_xor_4_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(3),
      LI => Maddsub_n0031_lut(4),
      O => Q_n0031(4)
    );
  Maddsub_n0031_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_5_IBUF_26,
      I1 => b_5_IBUF_63,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(5)
    );
  Maddsub_n0031_cy_5_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(4),
      DI => a_5_IBUF_26,
      S => Maddsub_n0031_lut(5),
      O => Maddsub_n0031_cy(5)
    );
  Maddsub_n0031_xor_5_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(4),
      LI => Maddsub_n0031_lut(5),
      O => Q_n0031(5)
    );
  Maddsub_n0031_lut_6_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_6_IBUF_25,
      I1 => b_6_IBUF_62,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(6)
    );
  Maddsub_n0031_cy_6_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(5),
      DI => a_6_IBUF_25,
      S => Maddsub_n0031_lut(6),
      O => Maddsub_n0031_cy(6)
    );
  Maddsub_n0031_xor_6_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(5),
      LI => Maddsub_n0031_lut(6),
      O => Q_n0031(6)
    );
  Maddsub_n0031_lut_7_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_7_IBUF_24,
      I1 => b_7_IBUF_61,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(7)
    );
  Maddsub_n0031_cy_7_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(6),
      DI => a_7_IBUF_24,
      S => Maddsub_n0031_lut(7),
      O => Maddsub_n0031_cy(7)
    );
  Maddsub_n0031_xor_7_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(6),
      LI => Maddsub_n0031_lut(7),
      O => Q_n0031(7)
    );
  Maddsub_n0031_lut_8_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_8_IBUF_23,
      I1 => b_8_IBUF_60,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(8)
    );
  Maddsub_n0031_cy_8_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(7),
      DI => a_8_IBUF_23,
      S => Maddsub_n0031_lut(8),
      O => Maddsub_n0031_cy(8)
    );
  Maddsub_n0031_xor_8_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(7),
      LI => Maddsub_n0031_lut(8),
      O => Q_n0031(8)
    );
  Maddsub_n0031_lut_9_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_9_IBUF_22,
      I1 => b_9_IBUF_59,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(9)
    );
  Maddsub_n0031_cy_9_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(8),
      DI => a_9_IBUF_22,
      S => Maddsub_n0031_lut(9),
      O => Maddsub_n0031_cy(9)
    );
  Maddsub_n0031_xor_9_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(8),
      LI => Maddsub_n0031_lut(9),
      O => Q_n0031(9)
    );
  Maddsub_n0031_lut_10_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_10_IBUF_21,
      I1 => b_10_IBUF_58,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(10)
    );
  Maddsub_n0031_cy_10_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(9),
      DI => a_10_IBUF_21,
      S => Maddsub_n0031_lut(10),
      O => Maddsub_n0031_cy(10)
    );
  Maddsub_n0031_xor_10_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(9),
      LI => Maddsub_n0031_lut(10),
      O => Q_n0031(10)
    );
  Maddsub_n0031_lut_11_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_11_IBUF_20,
      I1 => b_11_IBUF_57,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(11)
    );
  Maddsub_n0031_cy_11_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(10),
      DI => a_11_IBUF_20,
      S => Maddsub_n0031_lut(11),
      O => Maddsub_n0031_cy(11)
    );
  Maddsub_n0031_xor_11_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(10),
      LI => Maddsub_n0031_lut(11),
      O => Q_n0031(11)
    );
  Maddsub_n0031_lut_12_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_12_IBUF_19,
      I1 => b_12_IBUF_56,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(12)
    );
  Maddsub_n0031_cy_12_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(11),
      DI => a_12_IBUF_19,
      S => Maddsub_n0031_lut(12),
      O => Maddsub_n0031_cy(12)
    );
  Maddsub_n0031_xor_12_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(11),
      LI => Maddsub_n0031_lut(12),
      O => Q_n0031(12)
    );
  Maddsub_n0031_lut_13_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_13_IBUF_18,
      I1 => b_13_IBUF_55,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(13)
    );
  Maddsub_n0031_cy_13_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(12),
      DI => a_13_IBUF_18,
      S => Maddsub_n0031_lut(13),
      O => Maddsub_n0031_cy(13)
    );
  Maddsub_n0031_xor_13_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(12),
      LI => Maddsub_n0031_lut(13),
      O => Q_n0031(13)
    );
  Maddsub_n0031_lut_14_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_14_IBUF_17,
      I1 => b_14_IBUF_54,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(14)
    );
  Maddsub_n0031_cy_14_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(13),
      DI => a_14_IBUF_17,
      S => Maddsub_n0031_lut(14),
      O => Maddsub_n0031_cy(14)
    );
  Maddsub_n0031_xor_14_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(13),
      LI => Maddsub_n0031_lut(14),
      O => Q_n0031(14)
    );
  Maddsub_n0031_lut_15_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_15_IBUF_16,
      I1 => b_15_IBUF_53,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(15)
    );
  Maddsub_n0031_cy_15_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(14),
      DI => a_15_IBUF_16,
      S => Maddsub_n0031_lut(15),
      O => Maddsub_n0031_cy(15)
    );
  Maddsub_n0031_xor_15_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(14),
      LI => Maddsub_n0031_lut(15),
      O => Q_n0031(15)
    );
  Maddsub_n0031_lut_16_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_16_IBUF_15,
      I1 => b_16_IBUF_52,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(16)
    );
  Maddsub_n0031_cy_16_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(15),
      DI => a_16_IBUF_15,
      S => Maddsub_n0031_lut(16),
      O => Maddsub_n0031_cy(16)
    );
  Maddsub_n0031_xor_16_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(15),
      LI => Maddsub_n0031_lut(16),
      O => Q_n0031(16)
    );
  Maddsub_n0031_lut_17_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_17_IBUF_14,
      I1 => b_17_IBUF_51,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(17)
    );
  Maddsub_n0031_cy_17_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(16),
      DI => a_17_IBUF_14,
      S => Maddsub_n0031_lut(17),
      O => Maddsub_n0031_cy(17)
    );
  Maddsub_n0031_xor_17_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(16),
      LI => Maddsub_n0031_lut(17),
      O => Q_n0031(17)
    );
  Maddsub_n0031_lut_18_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_18_IBUF_13,
      I1 => b_18_IBUF_50,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(18)
    );
  Maddsub_n0031_cy_18_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(17),
      DI => a_18_IBUF_13,
      S => Maddsub_n0031_lut(18),
      O => Maddsub_n0031_cy(18)
    );
  Maddsub_n0031_xor_18_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(17),
      LI => Maddsub_n0031_lut(18),
      O => Q_n0031(18)
    );
  Maddsub_n0031_lut_19_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_19_IBUF_12,
      I1 => b_19_IBUF_49,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(19)
    );
  Maddsub_n0031_cy_19_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(18),
      DI => a_19_IBUF_12,
      S => Maddsub_n0031_lut(19),
      O => Maddsub_n0031_cy(19)
    );
  Maddsub_n0031_xor_19_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(18),
      LI => Maddsub_n0031_lut(19),
      O => Q_n0031(19)
    );
  Maddsub_n0031_lut_20_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_20_IBUF_11,
      I1 => b_20_IBUF_48,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(20)
    );
  Maddsub_n0031_cy_20_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(19),
      DI => a_20_IBUF_11,
      S => Maddsub_n0031_lut(20),
      O => Maddsub_n0031_cy(20)
    );
  Maddsub_n0031_xor_20_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(19),
      LI => Maddsub_n0031_lut(20),
      O => Q_n0031(20)
    );
  Maddsub_n0031_lut_21_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_21_IBUF_10,
      I1 => b_21_IBUF_47,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(21)
    );
  Maddsub_n0031_cy_21_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(20),
      DI => a_21_IBUF_10,
      S => Maddsub_n0031_lut(21),
      O => Maddsub_n0031_cy(21)
    );
  Maddsub_n0031_xor_21_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(20),
      LI => Maddsub_n0031_lut(21),
      O => Q_n0031(21)
    );
  Maddsub_n0031_lut_22_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_22_IBUF_9,
      I1 => b_22_IBUF_46,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(22)
    );
  Maddsub_n0031_cy_22_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(21),
      DI => a_22_IBUF_9,
      S => Maddsub_n0031_lut(22),
      O => Maddsub_n0031_cy(22)
    );
  Maddsub_n0031_xor_22_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(21),
      LI => Maddsub_n0031_lut(22),
      O => Q_n0031(22)
    );
  Maddsub_n0031_lut_23_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_23_IBUF_8,
      I1 => b_23_IBUF_45,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(23)
    );
  Maddsub_n0031_cy_23_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(22),
      DI => a_23_IBUF_8,
      S => Maddsub_n0031_lut(23),
      O => Maddsub_n0031_cy(23)
    );
  Maddsub_n0031_xor_23_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(22),
      LI => Maddsub_n0031_lut(23),
      O => Q_n0031(23)
    );
  Maddsub_n0031_lut_24_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_24_IBUF_7,
      I1 => b_24_IBUF_44,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(24)
    );
  Maddsub_n0031_cy_24_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(23),
      DI => a_24_IBUF_7,
      S => Maddsub_n0031_lut(24),
      O => Maddsub_n0031_cy(24)
    );
  Maddsub_n0031_xor_24_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(23),
      LI => Maddsub_n0031_lut(24),
      O => Q_n0031(24)
    );
  Maddsub_n0031_lut_25_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_25_IBUF_6,
      I1 => b_25_IBUF_43,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(25)
    );
  Maddsub_n0031_cy_25_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(24),
      DI => a_25_IBUF_6,
      S => Maddsub_n0031_lut(25),
      O => Maddsub_n0031_cy(25)
    );
  Maddsub_n0031_xor_25_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(24),
      LI => Maddsub_n0031_lut(25),
      O => Q_n0031(25)
    );
  Maddsub_n0031_lut_26_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_26_IBUF_5,
      I1 => b_26_IBUF_42,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(26)
    );
  Maddsub_n0031_cy_26_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(25),
      DI => a_26_IBUF_5,
      S => Maddsub_n0031_lut(26),
      O => Maddsub_n0031_cy(26)
    );
  Maddsub_n0031_xor_26_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(25),
      LI => Maddsub_n0031_lut(26),
      O => Q_n0031(26)
    );
  Maddsub_n0031_lut_27_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_27_IBUF_4,
      I1 => b_27_IBUF_41,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(27)
    );
  Maddsub_n0031_cy_27_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(26),
      DI => a_27_IBUF_4,
      S => Maddsub_n0031_lut(27),
      O => Maddsub_n0031_cy(27)
    );
  Maddsub_n0031_xor_27_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(26),
      LI => Maddsub_n0031_lut(27),
      O => Q_n0031(27)
    );
  Maddsub_n0031_lut_28_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_28_IBUF_3,
      I1 => b_28_IBUF_40,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(28)
    );
  Maddsub_n0031_cy_28_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(27),
      DI => a_28_IBUF_3,
      S => Maddsub_n0031_lut(28),
      O => Maddsub_n0031_cy(28)
    );
  Maddsub_n0031_xor_28_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(27),
      LI => Maddsub_n0031_lut(28),
      O => Q_n0031(28)
    );
  Maddsub_n0031_lut_29_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_29_IBUF_2,
      I1 => b_29_IBUF_39,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(29)
    );
  Maddsub_n0031_cy_29_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(28),
      DI => a_29_IBUF_2,
      S => Maddsub_n0031_lut(29),
      O => Maddsub_n0031_cy(29)
    );
  Maddsub_n0031_xor_29_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(28),
      LI => Maddsub_n0031_lut(29),
      O => Q_n0031(29)
    );
  Maddsub_n0031_lut_30_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_30_IBUF_1,
      I1 => b_30_IBUF_38,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(30)
    );
  Maddsub_n0031_cy_30_Q : MUXCY
    port map (
      CI => Maddsub_n0031_cy(29),
      DI => a_30_IBUF_1,
      S => Maddsub_n0031_lut(30),
      O => Maddsub_n0031_cy(30)
    );
  Maddsub_n0031_xor_30_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(29),
      LI => Maddsub_n0031_lut(30),
      O => Q_n0031(30)
    );
  Maddsub_n0031_lut_31_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_31_IBUF_0,
      I1 => b_31_IBUF_37,
      I2 => op_0_1,
      O => Maddsub_n0031_lut(31)
    );
  Maddsub_n0031_xor_31_Q : XORCY
    port map (
      CI => Maddsub_n0031_cy(30),
      LI => Maddsub_n0031_lut(31),
      O => Q_n0031(31)
    );
  Sh341 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_2_IBUF_34,
      I2 => Sh2,
      O => Sh34
    );
  Sh351 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_2_IBUF_34,
      I2 => Sh3,
      O => Sh35
    );
  Sh1271 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => b_1_IBUF_35,
      I1 => b_0_IBUF_36,
      I2 => a_31_IBUF_0,
      O => Sh127
    );
  Sh2711 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_1_IBUF_35,
      I1 => a_27_IBUF_4,
      I2 => a_25_IBUF_6,
      O => Sh271
    );
  Sh2911 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_1_IBUF_35,
      I1 => a_29_IBUF_2,
      I2 => a_27_IBUF_4,
      O => Sh291
    );
  Sh4611 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_2_IBUF_34,
      I1 => Sh6,
      I2 => Sh2,
      O => Sh461_263
    );
  Sh4711 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_2_IBUF_34,
      I1 => Sh7,
      I2 => Sh3,
      O => Sh471_264
    );
  Sh5211 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => Sh20,
      I2 => Sh12,
      O => Sh521
    );
  Sh5311 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => Sh21,
      I2 => Sh13,
      O => Sh531
    );
  Sh5411 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => Sh22,
      I2 => Sh14,
      O => Sh541
    );
  Sh5511 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => Sh23,
      I2 => Sh15,
      O => Sh551
    );
  Sh9811 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_1_IBUF_35,
      I1 => a_3_IBUF_28,
      I2 => a_5_IBUF_26,
      O => Sh981
    );
  Sh10011 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_1_IBUF_35,
      I1 => a_5_IBUF_26,
      I2 => a_7_IBUF_24,
      O => Sh1001
    );
  Sh10211 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_1_IBUF_35,
      I1 => a_7_IBUF_24,
      I2 => a_9_IBUF_22,
      O => Sh1021
    );
  Sh13611 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => Sh108,
      I2 => Sh116,
      O => Sh1361
    );
  Sh13711 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => Sh109,
      I2 => Sh117,
      O => Sh1371
    );
  Sh13811 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => Sh110,
      I2 => Sh118,
      O => Sh1381
    );
  Sh10021 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_1_IBUF_35,
      I1 => a_4_IBUF_27,
      I2 => a_6_IBUF_25,
      O => Sh1002
    );
  Sh10121 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_1_IBUF_35,
      I1 => a_6_IBUF_25,
      I2 => a_8_IBUF_23,
      O => Sh1012
    );
  Sh13211 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => Sh104,
      I2 => Sh112,
      O => Sh1321
    );
  Sh13311 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => Sh105,
      I2 => Sh113,
      O => Sh1331
    );
  Sh13411 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => Sh106,
      I2 => Sh114,
      O => Sh1341
    );
  Sh13511 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => Sh107,
      I2 => Sh115,
      O => Sh1351
    );
  Sh14011 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => Sh112,
      I2 => Sh120,
      O => Sh1401
    );
  Sh14111 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => Sh113,
      I2 => Sh121_181,
      O => Sh1411
    );
  Sh14211 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => Sh114,
      I2 => Sh122,
      O => Sh1421
    );
  Sh14311 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => Sh115,
      I2 => Sh123,
      O => Sh1431
    );
  Sh2811 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_1_IBUF_35,
      I1 => a_28_IBUF_3,
      I2 => a_26_IBUF_5,
      O => Sh281
    );
  Sh3011 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_1_IBUF_35,
      I1 => a_30_IBUF_1,
      I2 => a_28_IBUF_3,
      O => Sh301
    );
  Sh9711 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_1_IBUF_35,
      I1 => a_2_IBUF_29,
      I2 => a_4_IBUF_27,
      O => Sh971
    );
  Sh15311 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_2_IBUF_34,
      I1 => Sh121_181,
      I2 => Sh125,
      O => Sh1531
    );
  Sh15211 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_2_IBUF_34,
      I1 => Sh120,
      I2 => Sh124,
      O => Sh1521
    );
  Sh12811 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_0_IBUF_36,
      I2 => Sh1001,
      I3 => Sh1002,
      I4 => Sh108,
      O => Sh1281
    );
  Sh12911 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_0_IBUF_36,
      I2 => Sh1012,
      I3 => Sh1001,
      I4 => Sh109,
      O => Sh1291
    );
  Sh13011 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_0_IBUF_36,
      I2 => Sh1021,
      I3 => Sh1012,
      I4 => Sh110,
      O => Sh1301
    );
  Sh1261 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => b_1_IBUF_35,
      I1 => b_0_IBUF_36,
      I2 => a_31_IBUF_0,
      I3 => a_30_IBUF_1,
      O => Sh126
    );
  Sh442 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_2_IBUF_34,
      I2 => Sh8,
      I3 => Sh12,
      I4 => Sh441,
      O => Sh44_161
    );
  Sh452 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_2_IBUF_34,
      I2 => Sh9,
      I3 => Sh13,
      I4 => Sh451,
      O => Sh45
    );
  Sh461 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_2_IBUF_34,
      I2 => Sh10,
      I3 => Sh14,
      I4 => Sh461_263,
      O => Sh46
    );
  Sh471 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_2_IBUF_34,
      I2 => Sh11,
      I3 => Sh15,
      I4 => Sh471_264,
      O => Sh47
    );
  Sh101 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_9_IBUF_22,
      I3 => a_7_IBUF_24,
      I4 => a_10_IBUF_21,
      I5 => a_8_IBUF_23,
      O => Sh10
    );
  Sh111 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_10_IBUF_21,
      I3 => a_8_IBUF_23,
      I4 => a_11_IBUF_20,
      I5 => a_9_IBUF_22,
      O => Sh11
    );
  Sh1121 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_17_IBUF_14,
      I3 => a_19_IBUF_12,
      I4 => a_16_IBUF_15,
      I5 => a_18_IBUF_13,
      O => Sh112
    );
  Sh1131 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_18_IBUF_13,
      I3 => a_20_IBUF_11,
      I4 => a_17_IBUF_14,
      I5 => a_19_IBUF_12,
      O => Sh113
    );
  Sh1141 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_19_IBUF_12,
      I3 => a_21_IBUF_10,
      I4 => a_18_IBUF_13,
      I5 => a_20_IBUF_11,
      O => Sh114
    );
  Sh1151 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_20_IBUF_11,
      I3 => a_22_IBUF_9,
      I4 => a_19_IBUF_12,
      I5 => a_21_IBUF_10,
      O => Sh115
    );
  Sh1161 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_21_IBUF_10,
      I3 => a_23_IBUF_8,
      I4 => a_20_IBUF_11,
      I5 => a_22_IBUF_9,
      O => Sh116
    );
  Sh1171 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_22_IBUF_9,
      I3 => a_24_IBUF_7,
      I4 => a_21_IBUF_10,
      I5 => a_23_IBUF_8,
      O => Sh117
    );
  Sh1181 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_23_IBUF_8,
      I3 => a_25_IBUF_6,
      I4 => a_22_IBUF_9,
      I5 => a_24_IBUF_7,
      O => Sh118
    );
  Sh1191 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_24_IBUF_7,
      I3 => a_26_IBUF_5,
      I4 => a_23_IBUF_8,
      I5 => a_25_IBUF_6,
      O => Sh119
    );
  Sh1201 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_25_IBUF_6,
      I3 => a_27_IBUF_4,
      I4 => a_24_IBUF_7,
      I5 => a_26_IBUF_5,
      O => Sh120
    );
  Sh1211 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_26_IBUF_5,
      I3 => a_28_IBUF_3,
      I4 => a_25_IBUF_6,
      I5 => a_27_IBUF_4,
      O => Sh121_181
    );
  Sh1221 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_27_IBUF_4,
      I3 => a_29_IBUF_2,
      I4 => a_26_IBUF_5,
      I5 => a_28_IBUF_3,
      O => Sh122
    );
  Sh1231 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_28_IBUF_3,
      I3 => a_30_IBUF_1,
      I4 => a_27_IBUF_4,
      I5 => a_29_IBUF_2,
      O => Sh123
    );
  Sh1251 : LUT5
    generic map(
      INIT => X"76325410"
    )
    port map (
      I0 => b_1_IBUF_35,
      I1 => b_0_IBUF_36,
      I2 => a_29_IBUF_2,
      I3 => a_30_IBUF_1,
      I4 => a_31_IBUF_0,
      O => Sh125
    );
  Sh1241 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_29_IBUF_2,
      I3 => a_31_IBUF_0,
      I4 => a_28_IBUF_3,
      I5 => a_30_IBUF_1,
      O => Sh124
    );
  Sh1481 : LUT5
    generic map(
      INIT => X"76325410"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_2_IBUF_34,
      I2 => Sh116,
      I3 => Sh120,
      I4 => Sh124,
      O => Sh148
    );
  Sh1491 : LUT5
    generic map(
      INIT => X"76325410"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_2_IBUF_34,
      I2 => Sh117,
      I3 => Sh121_181,
      I4 => Sh125,
      O => Sh149
    );
  Sh1501 : LUT5
    generic map(
      INIT => X"76325410"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_2_IBUF_34,
      I2 => Sh118,
      I3 => Sh122,
      I4 => Sh126,
      O => Sh150
    );
  Sh1511 : LUT5
    generic map(
      INIT => X"76325410"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_2_IBUF_34,
      I2 => Sh119,
      I3 => Sh123,
      I4 => Sh127,
      O => Sh151_194
    );
  Sh31 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_2_IBUF_29,
      I3 => a_0_IBUF_31,
      I4 => a_3_IBUF_28,
      I5 => a_1_IBUF_30,
      O => Sh3
    );
  Sh24 : LUT5
    generic map(
      INIT => X"76325410"
    )
    port map (
      I0 => b_1_IBUF_35,
      I1 => b_0_IBUF_36,
      I2 => a_2_IBUF_29,
      I3 => a_1_IBUF_30,
      I4 => a_0_IBUF_31,
      O => Sh2
    );
  Sh44 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_3_IBUF_28,
      I3 => a_1_IBUF_30,
      I4 => a_4_IBUF_27,
      I5 => a_2_IBUF_29,
      O => Sh4
    );
  Sh421 : LUT5
    generic map(
      INIT => X"76325410"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_2_IBUF_34,
      I2 => Sh10,
      I3 => Sh6,
      I4 => Sh2,
      O => Sh42
    );
  Sh51 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_4_IBUF_27,
      I3 => a_2_IBUF_29,
      I4 => a_5_IBUF_26,
      I5 => a_3_IBUF_28,
      O => Sh5
    );
  Sh431 : LUT5
    generic map(
      INIT => X"76325410"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_2_IBUF_34,
      I2 => Sh11,
      I3 => Sh7,
      I4 => Sh3,
      O => Sh43
    );
  Sh61 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_5_IBUF_26,
      I3 => a_3_IBUF_28,
      I4 => a_6_IBUF_25,
      I5 => a_4_IBUF_27,
      O => Sh6
    );
  Sh71 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_6_IBUF_25,
      I3 => a_4_IBUF_27,
      I4 => a_7_IBUF_24,
      I5 => a_5_IBUF_26,
      O => Sh7
    );
  Sh91 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_8_IBUF_23,
      I3 => a_6_IBUF_25,
      I4 => a_9_IBUF_22,
      I5 => a_7_IBUF_24,
      O => Sh9
    );
  Sh81 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_7_IBUF_24,
      I3 => a_5_IBUF_26,
      I4 => a_8_IBUF_23,
      I5 => a_6_IBUF_25,
      O => Sh8
    );
  Sh1041 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_9_IBUF_22,
      I3 => a_11_IBUF_20,
      I4 => a_8_IBUF_23,
      I5 => a_10_IBUF_21,
      O => Sh104
    );
  Sh1051 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_10_IBUF_21,
      I3 => a_12_IBUF_19,
      I4 => a_9_IBUF_22,
      I5 => a_11_IBUF_20,
      O => Sh105
    );
  Sh1061 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_11_IBUF_20,
      I3 => a_13_IBUF_18,
      I4 => a_10_IBUF_21,
      I5 => a_12_IBUF_19,
      O => Sh106
    );
  Sh1071 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_12_IBUF_19,
      I3 => a_14_IBUF_17,
      I4 => a_11_IBUF_20,
      I5 => a_13_IBUF_18,
      O => Sh107
    );
  Sh1081 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_13_IBUF_18,
      I3 => a_15_IBUF_16,
      I4 => a_12_IBUF_19,
      I5 => a_14_IBUF_17,
      O => Sh108
    );
  Sh1091 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_14_IBUF_17,
      I3 => a_16_IBUF_15,
      I4 => a_13_IBUF_18,
      I5 => a_15_IBUF_16,
      O => Sh109
    );
  Sh1101 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_15_IBUF_16,
      I3 => a_17_IBUF_14,
      I4 => a_14_IBUF_17,
      I5 => a_16_IBUF_15,
      O => Sh110
    );
  Sh121 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_11_IBUF_20,
      I3 => a_9_IBUF_22,
      I4 => a_12_IBUF_19,
      I5 => a_10_IBUF_21,
      O => Sh12
    );
  Sh131 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_12_IBUF_19,
      I3 => a_10_IBUF_21,
      I4 => a_13_IBUF_18,
      I5 => a_11_IBUF_20,
      O => Sh13
    );
  Sh141 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_13_IBUF_18,
      I3 => a_11_IBUF_20,
      I4 => a_14_IBUF_17,
      I5 => a_12_IBUF_19,
      O => Sh14
    );
  Sh151 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_14_IBUF_17,
      I3 => a_12_IBUF_19,
      I4 => a_15_IBUF_16,
      I5 => a_13_IBUF_18,
      O => Sh15
    );
  Sh161 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_15_IBUF_16,
      I3 => a_13_IBUF_18,
      I4 => a_16_IBUF_15,
      I5 => a_14_IBUF_17,
      O => Sh16
    );
  Sh171 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_16_IBUF_15,
      I3 => a_14_IBUF_17,
      I4 => a_17_IBUF_14,
      I5 => a_15_IBUF_16,
      O => Sh17
    );
  Sh181 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_17_IBUF_14,
      I3 => a_15_IBUF_16,
      I4 => a_18_IBUF_13,
      I5 => a_16_IBUF_15,
      O => Sh18
    );
  Sh191 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_18_IBUF_13,
      I3 => a_16_IBUF_15,
      I4 => a_19_IBUF_12,
      I5 => a_17_IBUF_14,
      O => Sh19
    );
  Sh201 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_19_IBUF_12,
      I3 => a_17_IBUF_14,
      I4 => a_20_IBUF_11,
      I5 => a_18_IBUF_13,
      O => Sh20
    );
  Sh211 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_20_IBUF_11,
      I3 => a_18_IBUF_13,
      I4 => a_21_IBUF_10,
      I5 => a_19_IBUF_12,
      O => Sh21
    );
  Sh221 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_21_IBUF_10,
      I3 => a_19_IBUF_12,
      I4 => a_22_IBUF_9,
      I5 => a_20_IBUF_11,
      O => Sh22
    );
  Sh231 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_22_IBUF_9,
      I3 => a_20_IBUF_11,
      I4 => a_23_IBUF_8,
      I5 => a_21_IBUF_10,
      O => Sh23
    );
  Sh331 : LUT6
    generic map(
      INIT => X"0101010000010000"
    )
    port map (
      I0 => b_1_IBUF_35,
      I1 => b_2_IBUF_34,
      I2 => b_3_IBUF_33,
      I3 => b_0_IBUF_36,
      I4 => a_1_IBUF_30,
      I5 => a_0_IBUF_31,
      O => Sh33
    );
  Sh4511 : LUT6
    generic map(
      INIT => X"7577755520222000"
    )
    port map (
      I0 => b_2_IBUF_34,
      I1 => b_1_IBUF_35,
      I2 => a_0_IBUF_31,
      I3 => b_0_IBUF_36,
      I4 => a_1_IBUF_30,
      I5 => Sh5,
      O => Sh451
    );
  Sh321 : LUT5
    generic map(
      INIT => X"00010000"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_2_IBUF_34,
      I2 => b_1_IBUF_35,
      I3 => b_0_IBUF_36,
      I4 => a_0_IBUF_31,
      O => Sh32
    );
  Sh4411 : LUT5
    generic map(
      INIT => X"57550200"
    )
    port map (
      I0 => b_2_IBUF_34,
      I1 => b_1_IBUF_35,
      I2 => b_0_IBUF_36,
      I3 => a_0_IBUF_31,
      I4 => Sh4,
      O => Sh441
    );
  Mmux_y241 : LUT5
    generic map(
      INIT => X"A8A8A8FF"
    )
    port map (
      I0 => op_0_1,
      I1 => a_1_IBUF_30,
      I2 => b_1_IBUF_35,
      I3 => op_1_IBUF_66,
      I4 => op_2_IBUF_65,
      O => Mmux_y24_301
    );
  Mmux_y242 : LUT6
    generic map(
      INIT => X"5555555510101110"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => op_0_1,
      I2 => op_2_IBUF_65,
      I3 => Sh33,
      I4 => b_4_IBUF_32,
      I5 => Mmux_y24_301,
      O => Mmux_y241_302
    );
  Mmux_y243 : LUT5
    generic map(
      INIT => X"0222A222"
    )
    port map (
      I0 => op_1_IBUF_66,
      I1 => op_2_IBUF_65,
      I2 => b_1_IBUF_35,
      I3 => a_1_IBUF_30,
      I4 => op_0_1,
      O => Mmux_y242_303
    );
  Mmux_y244 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_1_IBUF_35,
      I1 => a_1_IBUF_30,
      I2 => a_3_IBUF_28,
      O => Mmux_y243_304
    );
  Mmux_y245 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_0_IBUF_36,
      I2 => Sh971,
      I3 => Mmux_y243_304,
      I4 => Sh105,
      O => Mmux_y244_305
    );
  Mmux_y246 : LUT6
    generic map(
      INIT => X"FFFFFEBAFFFF5410"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_2_IBUF_34,
      I2 => Mmux_y244_305,
      I3 => Sh1291,
      I4 => op_0_1,
      I5 => Sh145,
      O => Mmux_y245_306
    );
  Mmux_y247 : LUT6
    generic map(
      INIT => X"AAAAAAAA22022000"
    )
    port map (
      I0 => Mmux_y241_302,
      I1 => op_1_IBUF_66,
      I2 => op_2_IBUF_65,
      I3 => Mmux_y245_306,
      I4 => Q_n0031(1),
      I5 => Mmux_y242_303,
      O => y_1_OBUF_129
    );
  Mmux_y106 : LUT6
    generic map(
      INIT => X"FFF7DDD5AAA28880"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_0_1,
      I2 => a_13_IBUF_18,
      I3 => b_13_IBUF_55,
      I4 => Mmux_y104_308,
      I5 => Q_n0031(13),
      O => Mmux_y105_309
    );
  Mmux_y107 : LUT4
    generic map(
      INIT => X"5504"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => Mmux_y105_309,
      I2 => op_1_IBUF_66,
      I3 => Mmux_y103,
      O => y_13_OBUF_117
    );
  Mmux_y126 : LUT6
    generic map(
      INIT => X"FFF7DDD5AAA28880"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_0_1,
      I2 => a_14_IBUF_17,
      I3 => b_14_IBUF_54,
      I4 => Mmux_y124_311,
      I5 => Q_n0031(14),
      O => Mmux_y125_312
    );
  Mmux_y127 : LUT4
    generic map(
      INIT => X"5504"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => Mmux_y125_312,
      I2 => op_1_IBUF_66,
      I3 => Mmux_y123,
      O => y_14_OBUF_116
    );
  Mmux_y146 : LUT6
    generic map(
      INIT => X"FFF7DDD5AAA28880"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_0_1,
      I2 => a_15_IBUF_16,
      I3 => b_15_IBUF_53,
      I4 => Mmux_y144_314,
      I5 => Q_n0031(15),
      O => Mmux_y145_315
    );
  Mmux_y147 : LUT4
    generic map(
      INIT => X"5504"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => Mmux_y145_315,
      I2 => op_1_IBUF_66,
      I3 => Mmux_y143,
      O => y_15_OBUF_115
    );
  Mmux_y265 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Sh441,
      I1 => b_4_IBUF_32,
      I2 => b_3_IBUF_33,
      O => Mmux_y264_317
    );
  Mmux_y266 : LUT6
    generic map(
      INIT => X"5551151144400400"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_2_IBUF_34,
      I2 => b_3_IBUF_33,
      I3 => Sh16,
      I4 => Sh8,
      I5 => Sh521,
      O => Mmux_y265_318
    );
  Mmux_y267 : LUT5
    generic map(
      INIT => X"7D7D7D28"
    )
    port map (
      I0 => op_0_1,
      I1 => a_20_IBUF_11,
      I2 => b_20_IBUF_48,
      I3 => Mmux_y264_317,
      I4 => Mmux_y265_318,
      O => Mmux_y266_319
    );
  Mmux_y268 : LUT6
    generic map(
      INIT => X"5555555511011000"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => op_2_IBUF_65,
      I2 => op_1_IBUF_66,
      I3 => Mmux_y266_319,
      I4 => Q_n0031(20),
      I5 => Mmux_y263,
      O => y_20_OBUF_110
    );
  Mmux_y285 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Sh451,
      I1 => b_4_IBUF_32,
      I2 => b_3_IBUF_33,
      O => Mmux_y284_321
    );
  Mmux_y286 : LUT6
    generic map(
      INIT => X"5551151144400400"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_2_IBUF_34,
      I2 => b_3_IBUF_33,
      I3 => Sh17,
      I4 => Sh9,
      I5 => Sh531,
      O => Mmux_y285_322
    );
  Mmux_y287 : LUT5
    generic map(
      INIT => X"7D7D7D28"
    )
    port map (
      I0 => op_0_1,
      I1 => a_21_IBUF_10,
      I2 => b_21_IBUF_47,
      I3 => Mmux_y284_321,
      I4 => Mmux_y285_322,
      O => Mmux_y286_323
    );
  Mmux_y288 : LUT6
    generic map(
      INIT => X"5555555511011000"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => op_2_IBUF_65,
      I2 => op_1_IBUF_66,
      I3 => Mmux_y286_323,
      I4 => Q_n0031(21),
      I5 => Mmux_y283,
      O => y_21_OBUF_109
    );
  Mmux_y306 : LUT6
    generic map(
      INIT => X"5551151144400400"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_2_IBUF_34,
      I2 => b_3_IBUF_33,
      I3 => Sh18,
      I4 => Sh10,
      I5 => Sh541,
      O => Mmux_y305_326
    );
  Mmux_y307 : LUT5
    generic map(
      INIT => X"7D7D7D28"
    )
    port map (
      I0 => op_0_1,
      I1 => a_22_IBUF_9,
      I2 => b_22_IBUF_46,
      I3 => Mmux_y304_325,
      I4 => Mmux_y305_326,
      O => Mmux_y306_327
    );
  Mmux_y308 : LUT6
    generic map(
      INIT => X"5555555511011000"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => op_2_IBUF_65,
      I2 => op_1_IBUF_66,
      I3 => Mmux_y306_327,
      I4 => Q_n0031(22),
      I5 => Mmux_y303,
      O => y_22_OBUF_108
    );
  Mmux_y326 : LUT6
    generic map(
      INIT => X"5551151144400400"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_2_IBUF_34,
      I2 => b_3_IBUF_33,
      I3 => Sh19,
      I4 => Sh11,
      I5 => Sh551,
      O => Mmux_y325_330
    );
  Mmux_y327 : LUT5
    generic map(
      INIT => X"7D7D7D28"
    )
    port map (
      I0 => op_0_1,
      I1 => a_23_IBUF_8,
      I2 => b_23_IBUF_45,
      I3 => Mmux_y324_329,
      I4 => Mmux_y325_330,
      O => Mmux_y326_331
    );
  Mmux_y328 : LUT6
    generic map(
      INIT => X"5555555511011000"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => op_2_IBUF_65,
      I2 => op_1_IBUF_66,
      I3 => Mmux_y326_331,
      I4 => Q_n0031(23),
      I5 => Mmux_y323,
      O => y_23_OBUF_107
    );
  Mmux_y345 : LUT6
    generic map(
      INIT => X"7D7D287D7D282828"
    )
    port map (
      I0 => op_0_1,
      I1 => a_24_IBUF_7,
      I2 => b_24_IBUF_44,
      I3 => b_4_IBUF_32,
      I4 => Sh40_157,
      I5 => Mmux_y343_333,
      O => Mmux_y344_334
    );
  Mmux_y346 : LUT6
    generic map(
      INIT => X"5555555511011000"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => op_2_IBUF_65,
      I2 => op_1_IBUF_66,
      I3 => Mmux_y344_334,
      I4 => Q_n0031(24),
      I5 => Mmux_y342,
      O => y_24_OBUF_106
    );
  Mmux_y365 : LUT6
    generic map(
      INIT => X"7D7D287D7D282828"
    )
    port map (
      I0 => op_0_1,
      I1 => a_25_IBUF_6,
      I2 => b_25_IBUF_43,
      I3 => b_4_IBUF_32,
      I4 => Sh41_158,
      I5 => Mmux_y363_336,
      O => Mmux_y364_337
    );
  Mmux_y366 : LUT6
    generic map(
      INIT => X"5555555511011000"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => op_2_IBUF_65,
      I2 => op_1_IBUF_66,
      I3 => Mmux_y364_337,
      I4 => Q_n0031(25),
      I5 => Mmux_y362,
      O => y_25_OBUF_105
    );
  Mmux_y384 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_2_IBUF_34,
      I2 => Sh541,
      I3 => Sh581_294,
      I4 => Sh42,
      O => Mmux_y383_339
    );
  Mmux_y385 : LUT6
    generic map(
      INIT => X"7FF75DD52AA20880"
    )
    port map (
      I0 => op_1_IBUF_66,
      I1 => op_0_1,
      I2 => a_26_IBUF_5,
      I3 => b_26_IBUF_42,
      I4 => Mmux_y383_339,
      I5 => Q_n0031(26),
      O => Mmux_y384_340
    );
  Mmux_y386 : LUT4
    generic map(
      INIT => X"5504"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => Mmux_y384_340,
      I2 => op_2_IBUF_65,
      I3 => Mmux_y382,
      O => y_26_OBUF_104
    );
  Mmux_y49 : LUT6
    generic map(
      INIT => X"51405140FBEA5140"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_2_IBUF_34,
      I2 => Sh1381,
      I3 => Sh1341,
      I4 => Sh1541,
      I5 => b_3_IBUF_33,
      O => Mmux_y44
    );
  Mmux_y410 : LUT6
    generic map(
      INIT => X"FFF7DDD5AAA28880"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_0_1,
      I2 => a_10_IBUF_21,
      I3 => b_10_IBUF_58,
      I4 => Mmux_y44,
      I5 => Q_n0031(10),
      O => Mmux_y45
    );
  Mmux_y411 : LUT4
    generic map(
      INIT => X"5504"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => Mmux_y45,
      I2 => op_1_IBUF_66,
      I3 => Mmux_y43,
      O => y_10_OBUF_120
    );
  Mmux_y404 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_2_IBUF_34,
      I2 => Sh551,
      I3 => Sh591_295,
      I4 => Sh43,
      O => Mmux_y403_345
    );
  Mmux_y405 : LUT6
    generic map(
      INIT => X"7FF75DD52AA20880"
    )
    port map (
      I0 => op_1_IBUF_66,
      I1 => op_0_1,
      I2 => a_27_IBUF_4,
      I3 => b_27_IBUF_41,
      I4 => Mmux_y403_345,
      I5 => Q_n0031(27),
      O => Mmux_y404_346
    );
  Mmux_y406 : LUT4
    generic map(
      INIT => X"5504"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => Mmux_y404_346,
      I2 => op_2_IBUF_65,
      I3 => Mmux_y402,
      O => y_27_OBUF_103
    );
  Mmux_y425 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_0_IBUF_36,
      I2 => Sh271,
      I3 => Sh281,
      I4 => Sh20,
      O => Mmux_y425_348
    );
  Mmux_y426 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_2_IBUF_34,
      I2 => Sh561_292,
      I3 => Mmux_y425_348,
      I4 => Sh44_161,
      O => Mmux_y426_349
    );
  Mmux_y427 : LUT6
    generic map(
      INIT => X"7FF75DD52AA20880"
    )
    port map (
      I0 => op_1_IBUF_66,
      I1 => op_0_1,
      I2 => a_28_IBUF_3,
      I3 => b_28_IBUF_40,
      I4 => Mmux_y426_349,
      I5 => Q_n0031(28),
      O => Mmux_y427_350
    );
  Mmux_y428 : LUT4
    generic map(
      INIT => X"5504"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => Mmux_y427_350,
      I2 => op_2_IBUF_65,
      I3 => Mmux_y424_347,
      O => y_28_OBUF_102
    );
  Mmux_y445 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_0_IBUF_36,
      I2 => Sh281,
      I3 => Sh291,
      I4 => Sh21,
      O => Mmux_y445_352
    );
  Mmux_y446 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_2_IBUF_34,
      I2 => Sh571_293,
      I3 => Mmux_y445_352,
      I4 => Sh45,
      O => Mmux_y446_353
    );
  Mmux_y447 : LUT6
    generic map(
      INIT => X"7FF75DD52AA20880"
    )
    port map (
      I0 => op_1_IBUF_66,
      I1 => op_0_1,
      I2 => a_29_IBUF_2,
      I3 => b_29_IBUF_39,
      I4 => Mmux_y446_353,
      I5 => Q_n0031(29),
      O => Mmux_y447_354
    );
  Mmux_y448 : LUT4
    generic map(
      INIT => X"5504"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => Mmux_y447_354,
      I2 => op_2_IBUF_65,
      I3 => Mmux_y444_351,
      O => y_29_OBUF_101
    );
  Mmux_y467 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => b_2_IBUF_34,
      I1 => op_0_1,
      O => Mmux_y466
    );
  Mmux_y468 : LUT6
    generic map(
      INIT => X"AA8AA88822022000"
    )
    port map (
      I0 => Mmux_y466,
      I1 => b_3_IBUF_33,
      I2 => b_0_IBUF_36,
      I3 => Sh981,
      I4 => Sh971,
      I5 => Sh106,
      O => Mmux_y467_357
    );
  Mmux_y4610 : LUT6
    generic map(
      INIT => X"5555555511011000"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => op_1_IBUF_66,
      I2 => op_2_IBUF_65,
      I3 => Mmux_y468_358,
      I4 => Q_n0031(2),
      I5 => Mmux_y463,
      O => y_2_OBUF_128
    );
  Mmux_y485 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_0_IBUF_36,
      I2 => Sh291,
      I3 => Sh301,
      I4 => Sh22,
      O => Mmux_y484_360
    );
  Mmux_y486 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_2_IBUF_34,
      I2 => Sh581_294,
      I3 => Mmux_y484_360,
      I4 => Sh46,
      O => Mmux_y485_361
    );
  Mmux_y487 : LUT6
    generic map(
      INIT => X"7FF75DD52AA20880"
    )
    port map (
      I0 => op_1_IBUF_66,
      I1 => op_0_1,
      I2 => a_30_IBUF_1,
      I3 => b_30_IBUF_38,
      I4 => Mmux_y485_361,
      I5 => Q_n0031(30),
      O => Mmux_y486_362
    );
  Mmux_y488 : LUT4
    generic map(
      INIT => X"5504"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => Mmux_y486_362,
      I2 => op_2_IBUF_65,
      I3 => Mmux_y483,
      O => y_30_OBUF_100
    );
  Mmux_y505 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_1_IBUF_35,
      I2 => a_29_IBUF_2,
      I3 => a_31_IBUF_0,
      I4 => Sh301,
      O => Mmux_y504_364
    );
  Mmux_y506 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => b_2_IBUF_34,
      I1 => b_3_IBUF_33,
      I2 => Sh23,
      I3 => Mmux_y504_364,
      I4 => Sh591_295,
      O => Mmux_y505_365
    );
  Mmux_y507 : LUT6
    generic map(
      INIT => X"7D7D287D7D282828"
    )
    port map (
      I0 => op_0_1,
      I1 => a_31_IBUF_0,
      I2 => b_31_IBUF_37,
      I3 => b_4_IBUF_32,
      I4 => Sh47,
      I5 => Mmux_y505_365,
      O => Mmux_y506_366
    );
  Mmux_y508 : LUT6
    generic map(
      INIT => X"5555555511011000"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => op_2_IBUF_65,
      I2 => op_1_IBUF_66,
      I3 => Mmux_y506_366,
      I4 => Q_n0031(31),
      I5 => Mmux_y503,
      O => y_31_OBUF_99
    );
  Mmux_y525 : LUT5
    generic map(
      INIT => X"FDA8A8A8"
    )
    port map (
      I0 => op_0_1,
      I1 => a_3_IBUF_28,
      I2 => b_3_IBUF_33,
      I3 => Sh147,
      I4 => b_4_IBUF_32,
      O => Mmux_y524_368
    );
  Mmux_y526 : LUT6
    generic map(
      INIT => X"BBABBAAA11011000"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => op_0_1,
      I2 => b_0_IBUF_36,
      I3 => Sh1002,
      I4 => Sh981,
      I5 => Sh107,
      O => Mmux_y525_369
    );
  Mmux_y527 : LUT6
    generic map(
      INIT => X"FFFFFFFF05450040"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => Sh1311,
      I2 => b_2_IBUF_34,
      I3 => op_0_1,
      I4 => Mmux_y525_369,
      I5 => Mmux_y524_368,
      O => Mmux_y526_370
    );
  Mmux_y528 : LUT6
    generic map(
      INIT => X"5555555511011000"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => op_1_IBUF_66,
      I2 => op_2_IBUF_65,
      I3 => Mmux_y526_370,
      I4 => Q_n0031(3),
      I5 => Mmux_y523,
      O => y_3_OBUF_127
    );
  Mmux_y541 : LUT6
    generic map(
      INIT => X"2440244024512440"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_0_1,
      I2 => a_4_IBUF_27,
      I3 => b_4_IBUF_32,
      I4 => Sh441,
      I5 => b_3_IBUF_33,
      O => Mmux_y54
    );
  Mmux_y543 : LUT5
    generic map(
      INIT => X"FDADF8A8"
    )
    port map (
      I0 => op_0_1,
      I1 => a_4_IBUF_27,
      I2 => b_4_IBUF_32,
      I3 => Sh148,
      I4 => Mmux_y541_372,
      O => Mmux_y542_373
    );
  Mmux_y544 : LUT6
    generic map(
      INIT => X"5545544411011000"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => op_1_IBUF_66,
      I2 => op_2_IBUF_65,
      I3 => Mmux_y542_373,
      I4 => Q_n0031(4),
      I5 => Mmux_y54,
      O => y_4_OBUF_126
    );
  Mmux_y565 : LUT6
    generic map(
      INIT => X"FDFDA8FDFDA8A8A8"
    )
    port map (
      I0 => op_0_1,
      I1 => a_5_IBUF_26,
      I2 => b_5_IBUF_63,
      I3 => b_4_IBUF_32,
      I4 => Sh149,
      I5 => Mmux_y563_375,
      O => Mmux_y564_376
    );
  Mmux_y566 : LUT6
    generic map(
      INIT => X"5555555511011000"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => op_1_IBUF_66,
      I2 => op_2_IBUF_65,
      I3 => Mmux_y564_376,
      I4 => Q_n0031(5),
      I5 => Mmux_y562,
      O => y_5_OBUF_125
    );
  Mmux_y585 : LUT6
    generic map(
      INIT => X"FDFDA8FDFDA8A8A8"
    )
    port map (
      I0 => op_0_1,
      I1 => a_6_IBUF_25,
      I2 => b_6_IBUF_62,
      I3 => b_4_IBUF_32,
      I4 => Sh150,
      I5 => Mmux_y583_378,
      O => Mmux_y584_379
    );
  Mmux_y586 : LUT6
    generic map(
      INIT => X"5555555511011000"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => op_1_IBUF_66,
      I2 => op_2_IBUF_65,
      I3 => Mmux_y584_379,
      I4 => Q_n0031(6),
      I5 => Mmux_y582,
      O => y_6_OBUF_124
    );
  Mmux_y67 : LUT6
    generic map(
      INIT => X"51405140FBEA5140"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_2_IBUF_34,
      I2 => Sh1391_279,
      I3 => Sh1351,
      I4 => Sh1551,
      I5 => b_3_IBUF_33,
      O => Mmux_y64
    );
  Mmux_y68 : LUT6
    generic map(
      INIT => X"FFF7DDD5AAA28880"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_0_1,
      I2 => a_11_IBUF_20,
      I3 => b_11_IBUF_57,
      I4 => Mmux_y64,
      I5 => Q_n0031(11),
      O => Mmux_y65
    );
  Mmux_y69 : LUT4
    generic map(
      INIT => X"5504"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => Mmux_y65,
      I2 => op_1_IBUF_66,
      I3 => Mmux_y63,
      O => y_11_OBUF_119
    );
  Mmux_y604 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_2_IBUF_34,
      I2 => Sh1351,
      I3 => Sh1311,
      I4 => Sh151_194,
      O => Mmux_y603_384
    );
  Mmux_y605 : LUT6
    generic map(
      INIT => X"FFF7DDD5AAA28880"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_0_1,
      I2 => a_7_IBUF_24,
      I3 => b_7_IBUF_61,
      I4 => Mmux_y603_384,
      I5 => Q_n0031(7),
      O => Mmux_y604_385
    );
  Mmux_y606 : LUT4
    generic map(
      INIT => X"5504"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => Mmux_y604_385,
      I2 => op_1_IBUF_66,
      I3 => Mmux_y602,
      O => y_7_OBUF_123
    );
  Mmux_y621 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => op_0_1,
      I1 => a_8_IBUF_23,
      I2 => b_8_IBUF_60,
      O => Mmux_y621_386
    );
  Mmux_y622 : LUT6
    generic map(
      INIT => X"51405140FBEA5140"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_2_IBUF_34,
      I2 => Sh1361,
      I3 => Sh1321,
      I4 => Sh1521,
      I5 => b_3_IBUF_33,
      O => Mmux_y622_387
    );
  Mmux_y623 : LUT6
    generic map(
      INIT => X"5555115144440040"
    )
    port map (
      I0 => op_1_IBUF_66,
      I1 => op_2_IBUF_65,
      I2 => Mmux_y622_387,
      I3 => op_0_1,
      I4 => Mmux_y621_386,
      I5 => Q_n0031(8),
      O => Mmux_y623_388
    );
  Mmux_y624 : LUT6
    generic map(
      INIT => X"2440244035512440"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_0_1,
      I2 => b_8_IBUF_60,
      I3 => a_8_IBUF_23,
      I4 => Sh40_157,
      I5 => b_4_IBUF_32,
      O => Mmux_y624_389
    );
  Mmux_y625 : LUT4
    generic map(
      INIT => X"5444"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => Mmux_y623_388,
      I2 => Mmux_y624_389,
      I3 => op_1_IBUF_66,
      O => y_8_OBUF_122
    );
  Mmux_y641 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => op_0_1,
      I1 => a_9_IBUF_22,
      I2 => b_9_IBUF_59,
      O => Mmux_y641_390
    );
  Mmux_y642 : LUT6
    generic map(
      INIT => X"51405140FBEA5140"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_2_IBUF_34,
      I2 => Sh1371,
      I3 => Sh1331,
      I4 => Sh1531,
      I5 => b_3_IBUF_33,
      O => Mmux_y642_391
    );
  Mmux_y643 : LUT6
    generic map(
      INIT => X"5555115144440040"
    )
    port map (
      I0 => op_1_IBUF_66,
      I1 => op_2_IBUF_65,
      I2 => Mmux_y642_391,
      I3 => op_0_1,
      I4 => Mmux_y641_390,
      I5 => Q_n0031(9),
      O => Mmux_y643_392
    );
  Mmux_y644 : LUT6
    generic map(
      INIT => X"2440244035512440"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_0_1,
      I2 => b_9_IBUF_59,
      I3 => a_9_IBUF_22,
      I4 => Sh41_158,
      I5 => b_4_IBUF_32,
      O => Mmux_y644_393
    );
  Mmux_y645 : LUT4
    generic map(
      INIT => X"5444"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => Mmux_y643_392,
      I2 => Mmux_y644_393,
      I3 => op_1_IBUF_66,
      O => y_9_OBUF_121
    );
  Mmux_y86 : LUT6
    generic map(
      INIT => X"FFF7DDD5AAA28880"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_0_1,
      I2 => a_12_IBUF_19,
      I3 => b_12_IBUF_56,
      I4 => Mmux_y84_395,
      I5 => Q_n0031(12),
      O => Mmux_y85_396
    );
  Mmux_y87 : LUT4
    generic map(
      INIT => X"5504"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => Mmux_y85_396,
      I2 => op_1_IBUF_66,
      I3 => Mmux_y83,
      O => y_12_OBUF_118
    );
  Mmux_y161 : LUT5
    generic map(
      INIT => X"7D282828"
    )
    port map (
      I0 => op_0_1,
      I1 => a_16_IBUF_15,
      I2 => b_16_IBUF_52,
      I3 => Sh32,
      I4 => b_4_IBUF_32,
      O => Mmux_y16
    );
  Mmux_y162 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_1_IBUF_66,
      I2 => Mmux_y16,
      I3 => Q_n0031(16),
      O => Mmux_y161_398
    );
  Mmux_y163 : LUT5
    generic map(
      INIT => X"28202000"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_1_IBUF_66,
      I2 => op_0_1,
      I3 => b_16_IBUF_52,
      I4 => a_16_IBUF_15,
      O => Mmux_y162_399
    );
  Mmux_y164 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_2_IBUF_34,
      I1 => b_3_IBUF_33,
      I2 => Sh12,
      I3 => Sh4,
      I4 => Sh16,
      I5 => Sh8,
      O => Mmux_y163_400
    );
  Mmux_y165 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => Sh116,
      I2 => Sh124,
      O => Mmux_y164_401
    );
  Mmux_y166 : LUT6
    generic map(
      INIT => X"6664464422200200"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_1_IBUF_66,
      I2 => b_2_IBUF_34,
      I3 => Sh1401,
      I4 => Mmux_y164_401,
      I5 => Mmux_y163_400,
      O => Mmux_y165_402
    );
  Mmux_y167 : LUT6
    generic map(
      INIT => X"5555555544444454"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => Mmux_y161_398,
      I2 => Mmux_y165_402,
      I3 => op_0_1,
      I4 => b_4_IBUF_32,
      I5 => Mmux_y162_399,
      O => y_16_OBUF_114
    );
  Mmux_y185 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_2_IBUF_34,
      I1 => b_3_IBUF_33,
      I2 => Sh13,
      I3 => Sh5,
      I4 => Sh17,
      I5 => Sh9,
      O => Mmux_y184_404
    );
  Mmux_y186 : LUT6
    generic map(
      INIT => X"7D7D287D7D282828"
    )
    port map (
      I0 => op_0_1,
      I1 => a_17_IBUF_14,
      I2 => b_17_IBUF_51,
      I3 => b_4_IBUF_32,
      I4 => Sh33,
      I5 => Mmux_y184_404,
      O => Mmux_y185_405
    );
  Mmux_y187 : LUT6
    generic map(
      INIT => X"5555555511011000"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => op_2_IBUF_65,
      I2 => op_1_IBUF_66,
      I3 => Mmux_y185_405,
      I4 => Q_n0031(17),
      I5 => Mmux_y183,
      O => y_17_OBUF_113
    );
  Mmux_y205 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_2_IBUF_34,
      I1 => b_3_IBUF_33,
      I2 => Sh14,
      I3 => Sh6,
      I4 => Sh18,
      I5 => Sh10,
      O => Mmux_y204_407
    );
  Mmux_y206 : LUT6
    generic map(
      INIT => X"7D7D287D7D282828"
    )
    port map (
      I0 => op_0_1,
      I1 => a_18_IBUF_13,
      I2 => b_18_IBUF_50,
      I3 => b_4_IBUF_32,
      I4 => Sh34,
      I5 => Mmux_y204_407,
      O => Mmux_y205_408
    );
  Mmux_y207 : LUT6
    generic map(
      INIT => X"5555555511011000"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => op_2_IBUF_65,
      I2 => op_1_IBUF_66,
      I3 => Mmux_y205_408,
      I4 => Q_n0031(18),
      I5 => Mmux_y203,
      O => y_18_OBUF_112
    );
  Mmux_y225 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_2_IBUF_34,
      I1 => b_3_IBUF_33,
      I2 => Sh15,
      I3 => Sh7,
      I4 => Sh19,
      I5 => Sh11,
      O => Mmux_y224_410
    );
  Mmux_y226 : LUT6
    generic map(
      INIT => X"7D7D287D7D282828"
    )
    port map (
      I0 => op_0_1,
      I1 => a_19_IBUF_12,
      I2 => b_19_IBUF_49,
      I3 => b_4_IBUF_32,
      I4 => Sh35,
      I5 => Mmux_y224_410,
      O => Mmux_y225_411
    );
  Mmux_y227 : LUT6
    generic map(
      INIT => X"5555555511011000"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => op_2_IBUF_65,
      I2 => op_1_IBUF_66,
      I3 => Mmux_y225_411,
      I4 => Q_n0031(19),
      I5 => Mmux_y223,
      O => y_19_OBUF_111
    );
  Sh1391_SW0 : LUT6
    generic map(
      INIT => X"028A139B46CE57DF"
    )
    port map (
      I0 => b_1_IBUF_35,
      I1 => b_0_IBUF_36,
      I2 => a_17_IBUF_14,
      I3 => a_18_IBUF_13,
      I4 => a_15_IBUF_16,
      I5 => a_16_IBUF_15,
      O => N3
    );
  Sh1391 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => N3,
      I2 => Sh119,
      O => Sh1391_279
    );
  Sh561_SW0 : LUT6
    generic map(
      INIT => X"028A139B46CE57DF"
    )
    port map (
      I0 => b_1_IBUF_35,
      I1 => b_0_IBUF_36,
      I2 => a_22_IBUF_9,
      I3 => a_21_IBUF_10,
      I4 => a_24_IBUF_7,
      I5 => a_23_IBUF_8,
      O => N5
    );
  Sh561 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => N5,
      I2 => Sh16,
      O => Sh561_292
    );
  Sh571_SW0 : LUT6
    generic map(
      INIT => X"028A139B46CE57DF"
    )
    port map (
      I0 => b_1_IBUF_35,
      I1 => b_0_IBUF_36,
      I2 => a_23_IBUF_8,
      I3 => a_22_IBUF_9,
      I4 => a_25_IBUF_6,
      I5 => a_24_IBUF_7,
      O => N7
    );
  Sh571 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => N7,
      I2 => Sh17,
      O => Sh571_293
    );
  Sh581_SW0 : LUT6
    generic map(
      INIT => X"028A139B46CE57DF"
    )
    port map (
      I0 => b_1_IBUF_35,
      I1 => b_0_IBUF_36,
      I2 => a_24_IBUF_7,
      I3 => a_23_IBUF_8,
      I4 => a_26_IBUF_5,
      I5 => a_25_IBUF_6,
      O => N9
    );
  Sh581 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => N9,
      I2 => Sh18,
      O => Sh581_294
    );
  Sh591_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_1_IBUF_35,
      I1 => a_26_IBUF_5,
      I2 => a_24_IBUF_7,
      O => N11
    );
  Sh591 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_0_IBUF_36,
      I2 => N11,
      I3 => Sh271,
      I4 => Sh19,
      O => Sh591_295
    );
  Mmux_y25 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_4_IBUF_32,
      I2 => b_2_IBUF_34,
      O => Mmux_y27
    );
  Mmux_y29 : LUT6
    generic map(
      INIT => X"AAA22A2288800800"
    )
    port map (
      I0 => b_2_IBUF_34,
      I1 => b_4_IBUF_32,
      I2 => b_3_IBUF_33,
      I3 => Sh116,
      I4 => Sh124,
      I5 => Sh1281,
      O => Mmux_y212_420
    );
  Mmux_y211 : LUT6
    generic map(
      INIT => X"FFFF7775AAAA2220"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_0_1,
      I2 => Mmux_y213,
      I3 => Mmux_y212_420,
      I4 => Mmux_y211_419,
      I5 => Q_n0031(0),
      O => Mmux_y214
    );
  Mmux_y212 : LUT4
    generic map(
      INIT => X"5504"
    )
    port map (
      I0 => op_3_IBUF_64,
      I1 => Mmux_y214,
      I2 => op_1_IBUF_66,
      I3 => Mmux_y25_417,
      O => y_0_OBUF_130
    );
  Sh41_SW0 : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => a_0_IBUF_31,
      I2 => a_1_IBUF_30,
      O => N13
    );
  Sh41 : LUT6
    generic map(
      INIT => X"5404540454045E0E"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => Sh9,
      I2 => b_2_IBUF_34,
      I3 => Sh5,
      I4 => b_1_IBUF_35,
      I5 => N13,
      O => Sh41_158
    );
  Sh40_SW0 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => a_0_IBUF_31,
      I1 => b_0_IBUF_36,
      O => N15
    );
  Sh40 : LUT6
    generic map(
      INIT => X"5404540454045E0E"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => Sh8,
      I2 => b_2_IBUF_34,
      I3 => Sh4,
      I4 => b_1_IBUF_35,
      I5 => N15,
      O => Sh40_157
    );
  a_31_IBUF : IBUF
    port map (
      I => a(31),
      O => a_31_IBUF_0
    );
  a_30_IBUF : IBUF
    port map (
      I => a(30),
      O => a_30_IBUF_1
    );
  a_29_IBUF : IBUF
    port map (
      I => a(29),
      O => a_29_IBUF_2
    );
  a_28_IBUF : IBUF
    port map (
      I => a(28),
      O => a_28_IBUF_3
    );
  a_27_IBUF : IBUF
    port map (
      I => a(27),
      O => a_27_IBUF_4
    );
  a_26_IBUF : IBUF
    port map (
      I => a(26),
      O => a_26_IBUF_5
    );
  a_25_IBUF : IBUF
    port map (
      I => a(25),
      O => a_25_IBUF_6
    );
  a_24_IBUF : IBUF
    port map (
      I => a(24),
      O => a_24_IBUF_7
    );
  a_23_IBUF : IBUF
    port map (
      I => a(23),
      O => a_23_IBUF_8
    );
  a_22_IBUF : IBUF
    port map (
      I => a(22),
      O => a_22_IBUF_9
    );
  a_21_IBUF : IBUF
    port map (
      I => a(21),
      O => a_21_IBUF_10
    );
  a_20_IBUF : IBUF
    port map (
      I => a(20),
      O => a_20_IBUF_11
    );
  a_19_IBUF : IBUF
    port map (
      I => a(19),
      O => a_19_IBUF_12
    );
  a_18_IBUF : IBUF
    port map (
      I => a(18),
      O => a_18_IBUF_13
    );
  a_17_IBUF : IBUF
    port map (
      I => a(17),
      O => a_17_IBUF_14
    );
  a_16_IBUF : IBUF
    port map (
      I => a(16),
      O => a_16_IBUF_15
    );
  a_15_IBUF : IBUF
    port map (
      I => a(15),
      O => a_15_IBUF_16
    );
  a_14_IBUF : IBUF
    port map (
      I => a(14),
      O => a_14_IBUF_17
    );
  a_13_IBUF : IBUF
    port map (
      I => a(13),
      O => a_13_IBUF_18
    );
  a_12_IBUF : IBUF
    port map (
      I => a(12),
      O => a_12_IBUF_19
    );
  a_11_IBUF : IBUF
    port map (
      I => a(11),
      O => a_11_IBUF_20
    );
  a_10_IBUF : IBUF
    port map (
      I => a(10),
      O => a_10_IBUF_21
    );
  a_9_IBUF : IBUF
    port map (
      I => a(9),
      O => a_9_IBUF_22
    );
  a_8_IBUF : IBUF
    port map (
      I => a(8),
      O => a_8_IBUF_23
    );
  a_7_IBUF : IBUF
    port map (
      I => a(7),
      O => a_7_IBUF_24
    );
  a_6_IBUF : IBUF
    port map (
      I => a(6),
      O => a_6_IBUF_25
    );
  a_5_IBUF : IBUF
    port map (
      I => a(5),
      O => a_5_IBUF_26
    );
  a_4_IBUF : IBUF
    port map (
      I => a(4),
      O => a_4_IBUF_27
    );
  a_3_IBUF : IBUF
    port map (
      I => a(3),
      O => a_3_IBUF_28
    );
  a_2_IBUF : IBUF
    port map (
      I => a(2),
      O => a_2_IBUF_29
    );
  a_1_IBUF : IBUF
    port map (
      I => a(1),
      O => a_1_IBUF_30
    );
  a_0_IBUF : IBUF
    port map (
      I => a(0),
      O => a_0_IBUF_31
    );
  b_31_IBUF : IBUF
    port map (
      I => b(31),
      O => b_31_IBUF_37
    );
  b_30_IBUF : IBUF
    port map (
      I => b(30),
      O => b_30_IBUF_38
    );
  b_29_IBUF : IBUF
    port map (
      I => b(29),
      O => b_29_IBUF_39
    );
  b_28_IBUF : IBUF
    port map (
      I => b(28),
      O => b_28_IBUF_40
    );
  b_27_IBUF : IBUF
    port map (
      I => b(27),
      O => b_27_IBUF_41
    );
  b_26_IBUF : IBUF
    port map (
      I => b(26),
      O => b_26_IBUF_42
    );
  b_25_IBUF : IBUF
    port map (
      I => b(25),
      O => b_25_IBUF_43
    );
  b_24_IBUF : IBUF
    port map (
      I => b(24),
      O => b_24_IBUF_44
    );
  b_23_IBUF : IBUF
    port map (
      I => b(23),
      O => b_23_IBUF_45
    );
  b_22_IBUF : IBUF
    port map (
      I => b(22),
      O => b_22_IBUF_46
    );
  b_21_IBUF : IBUF
    port map (
      I => b(21),
      O => b_21_IBUF_47
    );
  b_20_IBUF : IBUF
    port map (
      I => b(20),
      O => b_20_IBUF_48
    );
  b_19_IBUF : IBUF
    port map (
      I => b(19),
      O => b_19_IBUF_49
    );
  b_18_IBUF : IBUF
    port map (
      I => b(18),
      O => b_18_IBUF_50
    );
  b_17_IBUF : IBUF
    port map (
      I => b(17),
      O => b_17_IBUF_51
    );
  b_16_IBUF : IBUF
    port map (
      I => b(16),
      O => b_16_IBUF_52
    );
  b_15_IBUF : IBUF
    port map (
      I => b(15),
      O => b_15_IBUF_53
    );
  b_14_IBUF : IBUF
    port map (
      I => b(14),
      O => b_14_IBUF_54
    );
  b_13_IBUF : IBUF
    port map (
      I => b(13),
      O => b_13_IBUF_55
    );
  b_12_IBUF : IBUF
    port map (
      I => b(12),
      O => b_12_IBUF_56
    );
  b_11_IBUF : IBUF
    port map (
      I => b(11),
      O => b_11_IBUF_57
    );
  b_10_IBUF : IBUF
    port map (
      I => b(10),
      O => b_10_IBUF_58
    );
  b_9_IBUF : IBUF
    port map (
      I => b(9),
      O => b_9_IBUF_59
    );
  b_8_IBUF : IBUF
    port map (
      I => b(8),
      O => b_8_IBUF_60
    );
  b_7_IBUF : IBUF
    port map (
      I => b(7),
      O => b_7_IBUF_61
    );
  b_6_IBUF : IBUF
    port map (
      I => b(6),
      O => b_6_IBUF_62
    );
  b_5_IBUF : IBUF
    port map (
      I => b(5),
      O => b_5_IBUF_63
    );
  b_4_IBUF : IBUF
    port map (
      I => b(4),
      O => b_4_IBUF_32
    );
  b_3_IBUF : IBUF
    port map (
      I => b(3),
      O => b_3_IBUF_33
    );
  b_2_IBUF : IBUF
    port map (
      I => b(2),
      O => b_2_IBUF_34
    );
  b_1_IBUF : IBUF
    port map (
      I => b(1),
      O => b_1_IBUF_35
    );
  b_0_IBUF : IBUF
    port map (
      I => b(0),
      O => b_0_IBUF_36
    );
  op_3_IBUF : IBUF
    port map (
      I => op(3),
      O => op_3_IBUF_64
    );
  op_2_IBUF : IBUF
    port map (
      I => op(2),
      O => op_2_IBUF_65
    );
  op_1_IBUF : IBUF
    port map (
      I => op(1),
      O => op_1_IBUF_66
    );
  op_0_IBUF : IBUF
    port map (
      I => op(0),
      O => op_0_1
    );
  y_31_OBUF : OBUF
    port map (
      I => y_31_OBUF_99,
      O => y(31)
    );
  y_30_OBUF : OBUF
    port map (
      I => y_30_OBUF_100,
      O => y(30)
    );
  y_29_OBUF : OBUF
    port map (
      I => y_29_OBUF_101,
      O => y(29)
    );
  y_28_OBUF : OBUF
    port map (
      I => y_28_OBUF_102,
      O => y(28)
    );
  y_27_OBUF : OBUF
    port map (
      I => y_27_OBUF_103,
      O => y(27)
    );
  y_26_OBUF : OBUF
    port map (
      I => y_26_OBUF_104,
      O => y(26)
    );
  y_25_OBUF : OBUF
    port map (
      I => y_25_OBUF_105,
      O => y(25)
    );
  y_24_OBUF : OBUF
    port map (
      I => y_24_OBUF_106,
      O => y(24)
    );
  y_23_OBUF : OBUF
    port map (
      I => y_23_OBUF_107,
      O => y(23)
    );
  y_22_OBUF : OBUF
    port map (
      I => y_22_OBUF_108,
      O => y(22)
    );
  y_21_OBUF : OBUF
    port map (
      I => y_21_OBUF_109,
      O => y(21)
    );
  y_20_OBUF : OBUF
    port map (
      I => y_20_OBUF_110,
      O => y(20)
    );
  y_19_OBUF : OBUF
    port map (
      I => y_19_OBUF_111,
      O => y(19)
    );
  y_18_OBUF : OBUF
    port map (
      I => y_18_OBUF_112,
      O => y(18)
    );
  y_17_OBUF : OBUF
    port map (
      I => y_17_OBUF_113,
      O => y(17)
    );
  y_16_OBUF : OBUF
    port map (
      I => y_16_OBUF_114,
      O => y(16)
    );
  y_15_OBUF : OBUF
    port map (
      I => y_15_OBUF_115,
      O => y(15)
    );
  y_14_OBUF : OBUF
    port map (
      I => y_14_OBUF_116,
      O => y(14)
    );
  y_13_OBUF : OBUF
    port map (
      I => y_13_OBUF_117,
      O => y(13)
    );
  y_12_OBUF : OBUF
    port map (
      I => y_12_OBUF_118,
      O => y(12)
    );
  y_11_OBUF : OBUF
    port map (
      I => y_11_OBUF_119,
      O => y(11)
    );
  y_10_OBUF : OBUF
    port map (
      I => y_10_OBUF_120,
      O => y(10)
    );
  y_9_OBUF : OBUF
    port map (
      I => y_9_OBUF_121,
      O => y(9)
    );
  y_8_OBUF : OBUF
    port map (
      I => y_8_OBUF_122,
      O => y(8)
    );
  y_7_OBUF : OBUF
    port map (
      I => y_7_OBUF_123,
      O => y(7)
    );
  y_6_OBUF : OBUF
    port map (
      I => y_6_OBUF_124,
      O => y(6)
    );
  y_5_OBUF : OBUF
    port map (
      I => y_5_OBUF_125,
      O => y(5)
    );
  y_4_OBUF : OBUF
    port map (
      I => y_4_OBUF_126,
      O => y(4)
    );
  y_3_OBUF : OBUF
    port map (
      I => y_3_OBUF_127,
      O => y(3)
    );
  y_2_OBUF : OBUF
    port map (
      I => y_2_OBUF_128,
      O => y(2)
    );
  y_1_OBUF : OBUF
    port map (
      I => y_1_OBUF_129,
      O => y(1)
    );
  y_0_OBUF : OBUF
    port map (
      I => y_0_OBUF_130,
      O => y(0)
    );
  Mmux_y464_SW0 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_3_IBUF_33,
      I2 => Sh2,
      O => N17
    );
  Mmux_y464 : LUT6
    generic map(
      INIT => X"0220800002208202"
    )
    port map (
      I0 => op_1_IBUF_66,
      I1 => op_2_IBUF_65,
      I2 => b_2_IBUF_34,
      I3 => a_2_IBUF_29,
      I4 => op_0_1,
      I5 => N17,
      O => Mmux_y463
    );
  Mmux_y524_SW0 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_2_IBUF_34,
      I2 => Sh3,
      O => N19
    );
  Mmux_y524 : LUT6
    generic map(
      INIT => X"0220800002208202"
    )
    port map (
      I0 => op_1_IBUF_66,
      I1 => op_2_IBUF_65,
      I2 => b_3_IBUF_33,
      I3 => a_3_IBUF_28,
      I4 => op_0_1,
      I5 => N19,
      O => Mmux_y523
    );
  Mmux_y104 : LUT6
    generic map(
      INIT => X"082020000A222202"
    )
    port map (
      I0 => op_1_IBUF_66,
      I1 => op_2_IBUF_65,
      I2 => op_0_1,
      I3 => a_13_IBUF_18,
      I4 => b_13_IBUF_55,
      I5 => N21,
      O => Mmux_y103
    );
  Mmux_y124 : LUT6
    generic map(
      INIT => X"082020000A222202"
    )
    port map (
      I0 => op_1_IBUF_66,
      I1 => op_2_IBUF_65,
      I2 => op_0_1,
      I3 => a_14_IBUF_17,
      I4 => b_14_IBUF_54,
      I5 => N23,
      O => Mmux_y123
    );
  Mmux_y144 : LUT6
    generic map(
      INIT => X"082020000A222202"
    )
    port map (
      I0 => op_1_IBUF_66,
      I1 => op_2_IBUF_65,
      I2 => op_0_1,
      I3 => a_15_IBUF_16,
      I4 => b_15_IBUF_53,
      I5 => N25,
      O => Mmux_y143
    );
  Mmux_y264 : LUT6
    generic map(
      INIT => X"282020002A222202"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_1_IBUF_66,
      I2 => op_0_1,
      I3 => a_20_IBUF_11,
      I4 => b_20_IBUF_48,
      I5 => N27,
      O => Mmux_y263
    );
  Mmux_y284 : LUT6
    generic map(
      INIT => X"282020002A222202"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_1_IBUF_66,
      I2 => op_0_1,
      I3 => a_21_IBUF_10,
      I4 => b_21_IBUF_47,
      I5 => N29,
      O => Mmux_y283
    );
  Mmux_y304 : LUT6
    generic map(
      INIT => X"282020002A222202"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_1_IBUF_66,
      I2 => op_0_1,
      I3 => a_22_IBUF_9,
      I4 => b_22_IBUF_46,
      I5 => N31,
      O => Mmux_y303
    );
  Mmux_y324 : LUT6
    generic map(
      INIT => X"282020002A222202"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_1_IBUF_66,
      I2 => op_0_1,
      I3 => a_23_IBUF_8,
      I4 => b_23_IBUF_45,
      I5 => N33,
      O => Mmux_y323
    );
  Mmux_y343_SW0 : LUT5
    generic map(
      INIT => X"EEEFFEFF"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_4_IBUF_32,
      I2 => b_2_IBUF_34,
      I3 => Sh120,
      I4 => Sh124,
      O => N35
    );
  Mmux_y343 : LUT6
    generic map(
      INIT => X"282020002A222202"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_1_IBUF_66,
      I2 => op_0_1,
      I3 => a_24_IBUF_7,
      I4 => b_24_IBUF_44,
      I5 => N35,
      O => Mmux_y342
    );
  Mmux_y363_SW0 : LUT5
    generic map(
      INIT => X"EEEFFEFF"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_4_IBUF_32,
      I2 => b_2_IBUF_34,
      I3 => Sh121_181,
      I4 => Sh125,
      O => N37
    );
  Mmux_y363 : LUT6
    generic map(
      INIT => X"282020002A222202"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_1_IBUF_66,
      I2 => op_0_1,
      I3 => a_25_IBUF_6,
      I4 => b_25_IBUF_43,
      I5 => N37,
      O => Mmux_y362
    );
  Mmux_y383_SW0 : LUT5
    generic map(
      INIT => X"EEEFFEFF"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_4_IBUF_32,
      I2 => b_2_IBUF_34,
      I3 => Sh122,
      I4 => Sh126,
      O => N39
    );
  Mmux_y383 : LUT6
    generic map(
      INIT => X"282020002A222202"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_1_IBUF_66,
      I2 => op_0_1,
      I3 => a_26_IBUF_5,
      I4 => b_26_IBUF_42,
      I5 => N39,
      O => Mmux_y382
    );
  Mmux_y47 : LUT6
    generic map(
      INIT => X"082020000A222202"
    )
    port map (
      I0 => op_1_IBUF_66,
      I1 => op_2_IBUF_65,
      I2 => op_0_1,
      I3 => a_10_IBUF_21,
      I4 => b_10_IBUF_58,
      I5 => N41,
      O => Mmux_y43
    );
  Mmux_y403_SW0 : LUT5
    generic map(
      INIT => X"EEEFFEFF"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_4_IBUF_32,
      I2 => b_2_IBUF_34,
      I3 => Sh123,
      I4 => Sh127,
      O => N43
    );
  Mmux_y403 : LUT6
    generic map(
      INIT => X"282020002A222202"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_1_IBUF_66,
      I2 => op_0_1,
      I3 => a_27_IBUF_4,
      I4 => b_27_IBUF_41,
      I5 => N43,
      O => Mmux_y402
    );
  Mmux_y424_SW0 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_2_IBUF_34,
      I2 => b_3_IBUF_33,
      I3 => Sh124,
      O => N45
    );
  Mmux_y424 : LUT6
    generic map(
      INIT => X"282020002A222202"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_1_IBUF_66,
      I2 => op_0_1,
      I3 => a_28_IBUF_3,
      I4 => b_28_IBUF_40,
      I5 => N45,
      O => Mmux_y424_347
    );
  Mmux_y444_SW0 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_2_IBUF_34,
      I2 => b_3_IBUF_33,
      I3 => Sh125,
      O => N47
    );
  Mmux_y444 : LUT6
    generic map(
      INIT => X"282020002A222202"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_1_IBUF_66,
      I2 => op_0_1,
      I3 => a_29_IBUF_2,
      I4 => b_29_IBUF_39,
      I5 => N47,
      O => Mmux_y444_351
    );
  Mmux_y484_SW0 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_2_IBUF_34,
      I2 => b_3_IBUF_33,
      I3 => Sh126,
      O => N49
    );
  Mmux_y484 : LUT6
    generic map(
      INIT => X"282020002A222202"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_1_IBUF_66,
      I2 => op_0_1,
      I3 => a_30_IBUF_1,
      I4 => b_30_IBUF_38,
      I5 => N49,
      O => Mmux_y483
    );
  Mmux_y504 : LUT6
    generic map(
      INIT => X"282020002A222202"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_1_IBUF_66,
      I2 => op_0_1,
      I3 => a_31_IBUF_0,
      I4 => b_31_IBUF_37,
      I5 => N51,
      O => Mmux_y503
    );
  Mmux_y563_SW0 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_3_IBUF_33,
      I2 => Sh451,
      O => N53
    );
  Mmux_y563 : LUT6
    generic map(
      INIT => X"082020000A222202"
    )
    port map (
      I0 => op_1_IBUF_66,
      I1 => op_2_IBUF_65,
      I2 => op_0_1,
      I3 => a_5_IBUF_26,
      I4 => b_5_IBUF_63,
      I5 => N53,
      O => Mmux_y562
    );
  Mmux_y583_SW0 : LUT5
    generic map(
      INIT => X"EEEFFEFF"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_4_IBUF_32,
      I2 => b_2_IBUF_34,
      I3 => Sh6,
      I4 => Sh2,
      O => N55
    );
  Mmux_y583 : LUT6
    generic map(
      INIT => X"082020000A222202"
    )
    port map (
      I0 => op_1_IBUF_66,
      I1 => op_2_IBUF_65,
      I2 => op_0_1,
      I3 => a_6_IBUF_25,
      I4 => b_6_IBUF_62,
      I5 => N55,
      O => Mmux_y582
    );
  Mmux_y66 : LUT6
    generic map(
      INIT => X"082020000A222202"
    )
    port map (
      I0 => op_1_IBUF_66,
      I1 => op_2_IBUF_65,
      I2 => op_0_1,
      I3 => a_11_IBUF_20,
      I4 => b_11_IBUF_57,
      I5 => N57,
      O => Mmux_y63
    );
  Mmux_y603_SW0 : LUT5
    generic map(
      INIT => X"EEEFFEFF"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_4_IBUF_32,
      I2 => b_2_IBUF_34,
      I3 => Sh7,
      I4 => Sh3,
      O => N59
    );
  Mmux_y603 : LUT6
    generic map(
      INIT => X"082020000A222202"
    )
    port map (
      I0 => op_1_IBUF_66,
      I1 => op_2_IBUF_65,
      I2 => op_0_1,
      I3 => a_7_IBUF_24,
      I4 => b_7_IBUF_61,
      I5 => N59,
      O => Mmux_y602
    );
  Mmux_y84 : LUT6
    generic map(
      INIT => X"082020000A222202"
    )
    port map (
      I0 => op_1_IBUF_66,
      I1 => op_2_IBUF_65,
      I2 => op_0_1,
      I3 => a_12_IBUF_19,
      I4 => b_12_IBUF_56,
      I5 => N61,
      O => Mmux_y83
    );
  Mmux_y184_SW0 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => Sh145,
      I1 => b_4_IBUF_32,
      O => N63
    );
  Mmux_y184 : LUT6
    generic map(
      INIT => X"282020002A222202"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_1_IBUF_66,
      I2 => op_0_1,
      I3 => a_17_IBUF_14,
      I4 => b_17_IBUF_51,
      I5 => N63,
      O => Mmux_y183
    );
  Mmux_y204_SW0 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => Sh146,
      I1 => b_4_IBUF_32,
      O => N65
    );
  Mmux_y204 : LUT6
    generic map(
      INIT => X"282020002A222202"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_1_IBUF_66,
      I2 => op_0_1,
      I3 => a_18_IBUF_13,
      I4 => b_18_IBUF_50,
      I5 => N65,
      O => Mmux_y203
    );
  Mmux_y224_SW0 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => Sh147,
      I1 => b_4_IBUF_32,
      O => N67
    );
  Mmux_y224 : LUT6
    generic map(
      INIT => X"282020002A222202"
    )
    port map (
      I0 => op_2_IBUF_65,
      I1 => op_1_IBUF_66,
      I2 => op_0_1,
      I3 => a_19_IBUF_12,
      I4 => b_19_IBUF_49,
      I5 => N67,
      O => Mmux_y223
    );
  Mmux_y24 : LUT6
    generic map(
      INIT => X"082020000A222202"
    )
    port map (
      I0 => op_1_IBUF_66,
      I1 => op_2_IBUF_65,
      I2 => op_0_1,
      I3 => a_0_IBUF_31,
      I4 => b_0_IBUF_36,
      I5 => N69,
      O => Mmux_y25_417
    );
  Sh1451 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_2_IBUF_34,
      I1 => b_3_IBUF_33,
      I2 => Sh117,
      I3 => Sh125,
      I4 => Sh113,
      I5 => Sh121_181,
      O => Sh145
    );
  Sh1461 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_2_IBUF_34,
      I1 => b_3_IBUF_33,
      I2 => Sh118,
      I3 => Sh126,
      I4 => Sh114,
      I5 => Sh122,
      O => Sh146
    );
  Sh1471 : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_2_IBUF_34,
      I1 => b_3_IBUF_33,
      I2 => Sh119,
      I3 => Sh127,
      I4 => Sh115,
      I5 => Sh123,
      O => Sh147
    );
  Mmux_y105 : LUT6
    generic map(
      INIT => X"5410763254105410"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_2_IBUF_34,
      I2 => Sh1371,
      I3 => Sh1411,
      I4 => b_3_IBUF_33,
      I5 => Sh125,
      O => Mmux_y104_308
    );
  Mmux_y125 : LUT6
    generic map(
      INIT => X"5410763254105410"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_2_IBUF_34,
      I2 => Sh1381,
      I3 => Sh1421,
      I4 => b_3_IBUF_33,
      I5 => Sh126,
      O => Mmux_y124_311
    );
  Mmux_y145 : LUT6
    generic map(
      INIT => X"5410763254105410"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_2_IBUF_34,
      I2 => Sh1391_279,
      I3 => Sh1431,
      I4 => b_3_IBUF_33,
      I5 => Sh127,
      O => Mmux_y144_314
    );
  Mmux_y85 : LUT6
    generic map(
      INIT => X"5410763254105410"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_2_IBUF_34,
      I2 => Sh1361,
      I3 => Sh1401,
      I4 => b_3_IBUF_33,
      I5 => Sh124,
      O => Mmux_y84_395
    );
  Mmux_y210 : LUT6
    generic map(
      INIT => X"5450141044400400"
    )
    port map (
      I0 => b_2_IBUF_34,
      I1 => b_3_IBUF_33,
      I2 => b_4_IBUF_32,
      I3 => Sh104,
      I4 => Sh120,
      I5 => Sh112,
      O => Mmux_y213
    );
  Mmux_y305 : LUT5
    generic map(
      INIT => X"22022000"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_3_IBUF_33,
      I2 => b_2_IBUF_34,
      I3 => Sh2,
      I4 => Sh6,
      O => Mmux_y304_325
    );
  Mmux_y325 : LUT5
    generic map(
      INIT => X"22022000"
    )
    port map (
      I0 => b_4_IBUF_32,
      I1 => b_3_IBUF_33,
      I2 => b_2_IBUF_34,
      I3 => Sh3,
      I4 => Sh7,
      O => Mmux_y324_329
    );
  Mmux_y542 : LUT5
    generic map(
      INIT => X"F7D5A280"
    )
    port map (
      I0 => b_2_IBUF_34,
      I1 => b_3_IBUF_33,
      I2 => Sh112,
      I3 => Sh104,
      I4 => Sh1281,
      O => Mmux_y541_372
    );
  Mmux_y564 : LUT5
    generic map(
      INIT => X"F7D5A280"
    )
    port map (
      I0 => b_2_IBUF_34,
      I1 => b_3_IBUF_33,
      I2 => Sh113,
      I3 => Sh105,
      I4 => Sh1291,
      O => Mmux_y563_375
    );
  Mmux_y584 : LUT5
    generic map(
      INIT => X"F7D5A280"
    )
    port map (
      I0 => b_2_IBUF_34,
      I1 => b_3_IBUF_33,
      I2 => Sh114,
      I3 => Sh106,
      I4 => Sh1301,
      O => Mmux_y583_378
    );
  Mmux_y344 : LUT6
    generic map(
      INIT => X"E6C4F7D5A280B391"
    )
    port map (
      I0 => b_2_IBUF_34,
      I1 => b_3_IBUF_33,
      I2 => Sh12,
      I3 => Sh20,
      I4 => N5,
      I5 => Sh16,
      O => Mmux_y343_333
    );
  Mmux_y364 : LUT6
    generic map(
      INIT => X"E6C4F7D5A280B391"
    )
    port map (
      I0 => b_2_IBUF_34,
      I1 => b_3_IBUF_33,
      I2 => Sh13,
      I3 => Sh21,
      I4 => N7,
      I5 => Sh17,
      O => Mmux_y363_336
    );
  Sh15511 : LUT5
    generic map(
      INIT => X"57550200"
    )
    port map (
      I0 => b_2_IBUF_34,
      I1 => b_1_IBUF_35,
      I2 => b_0_IBUF_36,
      I3 => a_31_IBUF_0,
      I4 => Sh123,
      O => Sh1551
    );
  Sh15411 : LUT6
    generic map(
      INIT => X"7577755520222000"
    )
    port map (
      I0 => b_2_IBUF_34,
      I1 => b_1_IBUF_35,
      I2 => a_31_IBUF_0,
      I3 => b_0_IBUF_36,
      I4 => a_30_IBUF_1,
      I5 => Sh122,
      O => Sh1541
    );
  Mmux_y104_SW0 : LUT6
    generic map(
      INIT => X"FFFF0145FFFFABEF"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_2_IBUF_34,
      I2 => Sh13,
      I3 => Sh9,
      I4 => b_4_IBUF_32,
      I5 => Sh451,
      O => N21
    );
  Mmux_y124_SW0 : LUT6
    generic map(
      INIT => X"FFFF0145FFFFABEF"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_2_IBUF_34,
      I2 => Sh14,
      I3 => Sh10,
      I4 => b_4_IBUF_32,
      I5 => Sh461_263,
      O => N23
    );
  Mmux_y144_SW0 : LUT6
    generic map(
      INIT => X"FFFF0145FFFFABEF"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_2_IBUF_34,
      I2 => Sh15,
      I3 => Sh11,
      I4 => b_4_IBUF_32,
      I5 => Sh471_264,
      O => N25
    );
  Mmux_y264_SW0 : LUT6
    generic map(
      INIT => X"FF8AFF9BFFCEFFDF"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_2_IBUF_34,
      I2 => Sh124,
      I3 => b_4_IBUF_32,
      I4 => Sh116,
      I5 => Sh120,
      O => N27
    );
  Mmux_y284_SW0 : LUT6
    generic map(
      INIT => X"FF8AFF9BFFCEFFDF"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_2_IBUF_34,
      I2 => Sh125,
      I3 => b_4_IBUF_32,
      I4 => Sh117,
      I5 => Sh121_181,
      O => N29
    );
  Mmux_y304_SW0 : LUT6
    generic map(
      INIT => X"FF8AFF9BFFCEFFDF"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_2_IBUF_34,
      I2 => Sh126,
      I3 => b_4_IBUF_32,
      I4 => Sh118,
      I5 => Sh122,
      O => N31
    );
  Mmux_y324_SW0 : LUT6
    generic map(
      INIT => X"FF8AFF9BFFCEFFDF"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_2_IBUF_34,
      I2 => Sh127,
      I3 => b_4_IBUF_32,
      I4 => Sh119,
      I5 => Sh123,
      O => N33
    );
  Mmux_y47_SW0 : LUT6
    generic map(
      INIT => X"FF8AFF9BFFCEFFDF"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_2_IBUF_34,
      I2 => Sh2,
      I3 => b_4_IBUF_32,
      I4 => Sh10,
      I5 => Sh6,
      O => N41
    );
  Mmux_y504_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_2_IBUF_34,
      I2 => b_3_IBUF_33,
      I3 => b_1_IBUF_35,
      I4 => a_31_IBUF_0,
      I5 => b_4_IBUF_32,
      O => N51
    );
  Mmux_y66_SW0 : LUT6
    generic map(
      INIT => X"FF8AFF9BFFCEFFDF"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_2_IBUF_34,
      I2 => Sh3,
      I3 => b_4_IBUF_32,
      I4 => Sh11,
      I5 => Sh7,
      O => N57
    );
  Mmux_y84_SW0 : LUT6
    generic map(
      INIT => X"FFFF0145FFFFABEF"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_2_IBUF_34,
      I2 => Sh12,
      I3 => Sh8,
      I4 => b_4_IBUF_32,
      I5 => Sh441,
      O => N61
    );
  Mmux_y24_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
    port map (
      I0 => b_3_IBUF_33,
      I1 => b_2_IBUF_34,
      I2 => b_1_IBUF_35,
      I3 => b_0_IBUF_36,
      I4 => a_0_IBUF_31,
      I5 => b_4_IBUF_32,
      O => N69
    );
  Sh13113 : MUXF7
    port map (
      I0 => N71,
      I1 => N72,
      S => b_1_IBUF_35,
      O => Sh1311
    );
  Sh13113_F : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_3_IBUF_33,
      I2 => a_8_IBUF_23,
      I3 => a_16_IBUF_15,
      I4 => a_7_IBUF_24,
      I5 => a_15_IBUF_16,
      O => N71
    );
  Sh13113_G : LUT6
    generic map(
      INIT => X"FD75EC64B931A820"
    )
    port map (
      I0 => b_0_IBUF_36,
      I1 => b_3_IBUF_33,
      I2 => a_10_IBUF_21,
      I3 => a_18_IBUF_13,
      I4 => a_9_IBUF_22,
      I5 => a_17_IBUF_14,
      O => N72
    );
  Mmux_y28 : MUXF7
    port map (
      I0 => N73,
      I1 => N74,
      S => b_0_IBUF_36,
      O => Mmux_y211_419
    );
  Mmux_y28_F : LUT5
    generic map(
      INIT => X"AAC8AA08"
    )
    port map (
      I0 => a_0_IBUF_31,
      I1 => Mmux_y27,
      I2 => b_1_IBUF_35,
      I3 => op_0_1,
      I4 => a_2_IBUF_29,
      O => N73
    );
  Mmux_y28_G : LUT5
    generic map(
      INIT => X"FFFFA820"
    )
    port map (
      I0 => Mmux_y27,
      I1 => b_1_IBUF_35,
      I2 => a_1_IBUF_30,
      I3 => a_3_IBUF_28,
      I4 => op_0_1,
      O => N74
    );
  Mmux_y469 : MUXF7
    port map (
      I0 => N75,
      I1 => N76,
      S => b_4_IBUF_32,
      O => Mmux_y468_358
    );
  Mmux_y469_F : LUT5
    generic map(
      INIT => X"FFFFECA8"
    )
    port map (
      I0 => op_0_1,
      I1 => b_2_IBUF_34,
      I2 => a_2_IBUF_29,
      I3 => Sh1301,
      I4 => Mmux_y467_357,
      O => N75
    );
  Mmux_y469_G : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => op_0_1,
      I1 => a_2_IBUF_29,
      I2 => b_2_IBUF_34,
      I3 => Sh146,
      O => N76
    );

end Structure;

