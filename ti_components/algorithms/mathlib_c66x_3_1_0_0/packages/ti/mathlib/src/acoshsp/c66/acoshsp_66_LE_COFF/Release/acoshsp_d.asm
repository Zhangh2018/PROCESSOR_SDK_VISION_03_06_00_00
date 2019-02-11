;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v7.4.2 *
;* Date/Time created: Mon Nov 04 22:10:30 2013                                *
;******************************************************************************
	.compiler_opts --abi=coffabi --c64p_l1d_workaround=off --endian=little --hll_source=on --long_precision_bits=40 --mem_model:code=near --mem_model:const=data --mem_model:data=far --object_format=coff --silicon_version=6600 --symdebug:none 

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C66xx                                          *
;*   Optimization      : Enabled at level 3                                   *
;*   Optimizing for    : Speed                                                *
;*                       Based on options: -o3, no -ms                        *
;*   Endian            : Little                                               *
;*   Interrupt Thrshld : Disabled                                             *
;*   Data Access Model : Far                                                  *
;*   Pipelining        : Enabled                                              *
;*   Speculate Loads   : Enabled with threshold = 0                           *
;*   Memory Aliases    : Presume are aliases (pessimistic)                    *
;*   Debug Info        : No Debug Info                                        *
;*                                                                            *
;******************************************************************************

	.asg	A15, FP
	.asg	B14, DP
	.asg	B15, SP
	.global	$bss

;*****************************************************************************
;* CINIT RECORDS                                                             *
;*****************************************************************************
	.sect	".cinit"
	.align	8
	.field  	$C$IR_1,32
	.field  	_a+0,32
	.word	04957871bh		; _a[0] @ 0
	.word	04908cbd1h		; _a[1] @ 32
	.word	047eecb43h		; _a[2] @ 64
	.word	048ee9b46h		; _a[3] @ 96
	.word	04769c16dh		; _a[4] @ 128
	.word	0490eab2dh		; _a[5] @ 160
	.word	048b6ed1ah		; _a[6] @ 192
	.word	0495ea9a7h		; _a[7] @ 224
	.word	0494dc1fdh		; _a[8] @ 256
	.word	04898b6a0h		; _a[9] @ 288
	.word	04930b6dfh		; _a[10] @ 320
	.word	04944ccfah		; _a[11] @ 352
	.word	047f88b18h		; _a[12] @ 384
	.word	04963d7dah		; _a[13] @ 416
	.word	048b938b1h		; _a[14] @ 448
	.word	048139381h		; _a[15] @ 480
	.word	048cbaa02h		; _a[16] @ 512
	.word	04849ed94h		; _a[17] @ 544
	.word	048045b00h		; _a[18] @ 576
	.word	048f63ebbh		; _a[19] @ 608
	.word	04941aaadh		; _a[20] @ 640
	.word	048f564dfh		; _a[21] @ 672
	.word	048b757c2h		; _a[22] @ 704
	.word	0473703c5h		; _a[23] @ 736
	.word	0496a808ah		; _a[24] @ 768
	.word	0493e1256h		; _a[25] @ 800
	.word	047b88105h		; _a[26] @ 832
	.word	048fc9eeeh		; _a[27] @ 864
	.word	04834bea7h		; _a[28] @ 896
	.word	04911c0d2h		; _a[29] @ 928
	.word	049513659h		; _a[30] @ 960
	.word	048860d4ah		; _a[31] @ 992
	.word	048a89e0ah		; _a[32] @ 1024
	.word	047be1956h		; _a[33] @ 1056
	.word	0494deeddh		; _a[34] @ 1088
	.word	0487faa44h		; _a[35] @ 1120
	.word	0495cd230h		; _a[36] @ 1152
	.word	046b547c8h		; _a[37] @ 1184
	.word	049462ceeh		; _a[38] @ 1216
	.word	046b4a24ah		; _a[39] @ 1248
	.word	04963162fh		; _a[40] @ 1280
	.word	0492bad91h		; _a[41] @ 1312
	.word	047f16f7bh		; _a[42] @ 1344
	.word	04925e39eh		; _a[43] @ 1376
	.word	04792067ah		; _a[44] @ 1408
	.word	047986297h		; _a[45] @ 1440
	.word	049313b6ah		; _a[46] @ 1472
	.word	0496a6642h		; _a[47] @ 1504
	.word	049105773h		; _a[48] @ 1536
	.word	04921834ah		; _a[49] @ 1568
	.word	04825efa4h		; _a[50] @ 1600
	.word	0483683e5h		; _a[51] @ 1632
	.word	04898ffaah		; _a[52] @ 1664
	.word	0490ab25ch		; _a[53] @ 1696
	.word	049106a3ch		; _a[54] @ 1728
	.word	048804359h		; _a[55] @ 1760
	.word	04926cf68h		; _a[56] @ 1792
	.word	048fa39aah		; _a[57] @ 1824
	.word	049318d2bh		; _a[58] @ 1856
	.word	0492d6a0bh		; _a[59] @ 1888
	.word	04931b46ch		; _a[60] @ 1920
	.word	04941e5f9h		; _a[61] @ 1952
	.word	0495d3faeh		; _a[62] @ 1984
	.word	04916d9e3h		; _a[63] @ 2016
	.word	04791cabbh		; _a[64] @ 2048
	.word	0489911deh		; _a[65] @ 2080
	.word	047169421h		; _a[66] @ 2112
	.word	049276bcdh		; _a[67] @ 2144
	.word	049656cbdh		; _a[68] @ 2176
	.word	04909736bh		; _a[69] @ 2208
	.word	0491dd177h		; _a[70] @ 2240
	.word	0484260c2h		; _a[71] @ 2272
	.word	04800c84dh		; _a[72] @ 2304
	.word	0491866b7h		; _a[73] @ 2336
	.word	0494c5549h		; _a[74] @ 2368
	.word	0470af778h		; _a[75] @ 2400
	.word	0476bf3cch		; _a[76] @ 2432
	.word	0482b19f3h		; _a[77] @ 2464
	.word	0489935fah		; _a[78] @ 2496
	.word	049256990h		; _a[79] @ 2528
	.word	0492fa1f6h		; _a[80] @ 2560
	.word	048ed9ea6h		; _a[81] @ 2592
	.word	048b44df1h		; _a[82] @ 2624
	.word	0483b6845h		; _a[83] @ 2656
	.word	0492bbdfbh		; _a[84] @ 2688
	.word	048d1ce69h		; _a[85] @ 2720
	.word	04959df7fh		; _a[86] @ 2752
	.word	04868ceedh		; _a[87] @ 2784
	.word	0484319cah		; _a[88] @ 2816
	.word	048e0c3c8h		; _a[89] @ 2848
	.word	048b5ecb1h		; _a[90] @ 2880
	.word	0479e3e23h		; _a[91] @ 2912
	.word	049723aa5h		; _a[92] @ 2944
	.word	0491a135ah		; _a[93] @ 2976
	.word	04955eaf1h		; _a[94] @ 3008
	.word	04908ebf4h		; _a[95] @ 3040
	.word	048d97097h		; _a[96] @ 3072
	.word	0491145cdh		; _a[97] @ 3104
	.word	047a7b105h		; _a[98] @ 3136
	.word	047f86b73h		; _a[99] @ 3168
	.word	04901f0eah		; _a[100] @ 3200
	.word	0490f1638h		; _a[101] @ 3232
	.word	0487b1acdh		; _a[102] @ 3264
	.word	04946cb74h		; _a[103] @ 3296
	.word	04946e2f5h		; _a[104] @ 3328
	.word	048d817e1h		; _a[105] @ 3360
	.word	0487435e6h		; _a[106] @ 3392
	.word	0487e8188h		; _a[107] @ 3424
	.word	048da3d4eh		; _a[108] @ 3456
	.word	049115d7eh		; _a[109] @ 3488
	.word	048fc9925h		; _a[110] @ 3520
	.word	04927689ah		; _a[111] @ 3552
	.word	0482c0ac6h		; _a[112] @ 3584
	.word	0476c3f9dh		; _a[113] @ 3616
	.word	047d330b5h		; _a[114] @ 3648
	.word	0495e0b86h		; _a[115] @ 3680
	.word	048aad192h		; _a[116] @ 3712
	.word	048df9681h		; _a[117] @ 3744
	.word	049204a29h		; _a[118] @ 3776
	.word	048a8415bh		; _a[119] @ 3808
	.word	0495ad583h		; _a[120] @ 3840
	.word	0497352c7h		; _a[121] @ 3872
	.word	048c1e600h		; _a[122] @ 3904
	.word	042c07aefh		; _a[123] @ 3936
	.word	048aa2d46h		; _a[124] @ 3968
	.word	048eb6cd4h		; _a[125] @ 4000
	.word	048194c2fh		; _a[126] @ 4032
	.word	048e76e3dh		; _a[127] @ 4064
	.word	0494c096ah		; _a[128] @ 4096
	.word	04894d14ah		; _a[129] @ 4128
	.word	048afbbd2h		; _a[130] @ 4160
	.word	0496b7cfeh		; _a[131] @ 4192
	.word	047855ba7h		; _a[132] @ 4224
	.word	048e403ffh		; _a[133] @ 4256
	.word	04661ba32h		; _a[134] @ 4288
	.word	048754124h		; _a[135] @ 4320
	.word	048b02c69h		; _a[136] @ 4352
	.word	04903f5d3h		; _a[137] @ 4384
	.word	0493316fch		; _a[138] @ 4416
	.word	04930195fh		; _a[139] @ 4448
	.word	0491785d5h		; _a[140] @ 4480
	.word	0492e1bb1h		; _a[141] @ 4512
	.word	0492e9093h		; _a[142] @ 4544
	.word	048ad76f3h		; _a[143] @ 4576
	.word	048a4146ah		; _a[144] @ 4608
	.word	04938f2c1h		; _a[145] @ 4640
	.word	04939c9d5h		; _a[146] @ 4672
	.word	0492d6871h		; _a[147] @ 4704
	.word	049163462h		; _a[148] @ 4736
	.word	046f3bdb2h		; _a[149] @ 4768
	.word	0487895cbh		; _a[150] @ 4800
	.word	0496956ech		; _a[151] @ 4832
	.word	048048994h		; _a[152] @ 4864
	.word	048f41007h		; _a[153] @ 4896
	.word	04832e271h		; _a[154] @ 4928
	.word	0494e8b25h		; _a[155] @ 4960
	.word	0482f1064h		; _a[156] @ 4992
	.word	0492f4a61h		; _a[157] @ 5024
	.word	047e8aafah		; _a[158] @ 5056
	.word	049339fd7h		; _a[159] @ 5088
	.word	049158ec5h		; _a[160] @ 5120
	.word	049496a4fh		; _a[161] @ 5152
	.word	04865afa3h		; _a[162] @ 5184
	.word	0490ac894h		; _a[163] @ 5216
	.word	0495e5082h		; _a[164] @ 5248
	.word	0490cb1fch		; _a[165] @ 5280
	.word	04892d18dh		; _a[166] @ 5312
	.word	04955f3fdh		; _a[167] @ 5344
	.word	04805d05dh		; _a[168] @ 5376
	.word	0488edb8ch		; _a[169] @ 5408
	.word	049219af7h		; _a[170] @ 5440
	.word	049434d13h		; _a[171] @ 5472
	.word	0496688a9h		; _a[172] @ 5504
	.word	0495d6498h		; _a[173] @ 5536
	.word	0488962aeh		; _a[174] @ 5568
	.word	0474e9466h		; _a[175] @ 5600
	.word	0490dedffh		; _a[176] @ 5632
	.word	049678fb4h		; _a[177] @ 5664
	.word	0492c6e8bh		; _a[178] @ 5696
	.word	0496b8d3dh		; _a[179] @ 5728
	.word	049584b5ch		; _a[180] @ 5760
	.word	048fdfb29h		; _a[181] @ 5792
	.word	0477d5cfdh		; _a[182] @ 5824
	.word	048d81506h		; _a[183] @ 5856
	.word	04890af8dh		; _a[184] @ 5888
	.word	048a64596h		; _a[185] @ 5920
	.word	047c603f8h		; _a[186] @ 5952
	.word	049727d74h		; _a[187] @ 5984
	.word	0494ed6edh		; _a[188] @ 6016
	.word	0492e1b84h		; _a[189] @ 6048
	.word	048022fbdh		; _a[190] @ 6080
	.word	04930e498h		; _a[191] @ 6112
	.word	0481a83d0h		; _a[192] @ 6144
	.word	04902690ah		; _a[193] @ 6176
	.word	047a8837bh		; _a[194] @ 6208
	.word	0489aed95h		; _a[195] @ 6240
	.word	048d9850dh		; _a[196] @ 6272
	.word	0488ec95ah		; _a[197] @ 6304
	.word	048e9b849h		; _a[198] @ 6336
	.word	0478d102dh		; _a[199] @ 6368
	.word	04901495eh		; _a[200] @ 6400
$C$IR_1:	.set	804

	.global	_a
_a:	.usect	".far",804,8
;	C:\MATHLIB_Tools\CCSV5_4_0\ccsv5\tools\compiler\c6000_7.4.2\bin\opt6x.exe C:\\DOCUME~1\\a0868396\\LOCALS~1\\Temp\\044162 C:\\DOCUME~1\\a0868396\\LOCALS~1\\Temp\\044164 
;**	Parameter deleted: req_flags == 1;
;**	Parameter deleted: tol == 1e-06;
	.sect	".text"
	.clink

;******************************************************************************
;* FUNCTION NAME: allequal                                                    *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,  *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,DP,SP,A16,A17,A18,A19,   *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 24 Save = 24 byte                  *
;******************************************************************************
_allequal:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 10

           STW     .D2T1   A11,*SP--(8)      ; |63| 
||         MVKL    .S2     0xa0b5ed8d,B6

           STDW    .D2T1   A13:A12,*SP--     ; |63| 
||         MVKL    .S1     _output,A11
||         MVKL    .S2     0x3eb0c6f7,B7

           STW     .D2T1   A10,*SP--(8)      ; |63| 
||         MVKH    .S1     _output,A11
||         MVKH    .S2     0xa0b5ed8d,B6

           LDW     .D1T2   *+A11(4),B4       ; |66| 
||         MV      .L1     A4,A6             ; |63| 
||         MVKH    .S2     0x3eb0c6f7,B7
||         MVK     .S1     0x1,A8            ; |66| 

           MV      .L1X    B3,A13            ; |63| 
||         CALLP   .S2     _isequal,B3
||         MV      .S1     A4,A10            ; |63| 
||         LDW     .D1T1   *A11,A4           ; |66| 

$C$RL0:    ; CALL OCCURS {_isequal} {0}      ; |66| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 30
           MVKL    .S2     0x3eb0c6f7,B7
           MVKL    .S2     0xa0b5ed8d,B6

           LDW     .D1T2   *+A11(8),B4       ; |67| 
||         MVKL    .S1     _fcn_pass,A12
||         MVKH    .S2     0x3eb0c6f7,B7

           MV      .L1     A4,A3             ; |66| 
||         LDW     .D1T1   *A11,A4           ; |67| 
||         MVKH    .S1     _fcn_pass,A12
||         MVKH    .S2     0xa0b5ed8d,B6

           CALLP   .S2     _isequal,B3
||         STW     .D1T1   A3,*+A12(4)       ; |66| 
||         MV      .L1     A10,A6            ; |67| 
||         MVK     .S1     0x1,A8            ; |67| 

$C$RL1:    ; CALL OCCURS {_isequal} {0}      ; |67| 
           MVKL    .S2     0xa0b5ed8d,B6
           MVKL    .S2     0x3eb0c6f7,B7

           LDW     .D1T2   *+A11(12),B4      ; |68| 
||         MVKH    .S2     0xa0b5ed8d,B6

           MV      .L1     A4,A3             ; |67| 
||         LDW     .D1T1   *A11,A4           ; |68| 
||         MVKH    .S2     0x3eb0c6f7,B7

           CALLP   .S2     _isequal,B3
||         STW     .D1T1   A3,*+A12(8)       ; |67| 
||         MV      .L1     A10,A6            ; |68| 
||         MVK     .S1     0x1,A8            ; |68| 

$C$RL2:    ; CALL OCCURS {_isequal} {0}      ; |68| 
           MVKL    .S2     0x3eb0c6f7,B7
           MVKL    .S2     0xa0b5ed8d,B6

           STW     .D1T1   A4,*+A12(12)      ; |68| 
||         MVKH    .S2     0x3eb0c6f7,B7

           MV      .L1     A11,A3            ; |66| 
||         LDW     .D1T2   *+A11(16),B4      ; |69| 
||         MVKH    .S2     0xa0b5ed8d,B6

           CALLP   .S2     _isequal,B3
||         LDW     .D1T1   *A3,A4            ; |69| 
||         MV      .L1     A10,A6            ; |69| 
||         MVK     .S1     0x1,A8            ; |69| 

$C$RL3:    ; CALL OCCURS {_isequal} {0}      ; |69| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 12
           ADD     .L2X    4,A12,B4
           LDW     .D2T1   *B4,A0            ; |72| 
           STW     .D1T1   A4,*+A12(16)      ; |69| 
           ADD     .L2X    8,A12,B4
           NOP             2

   [!A0]   BNOP    .S1     $C$L1,5           ; |72| 
|| [ A0]   LDW     .D2T2   *B4,B0            ; |72| 
|| [ A0]   ADD     .L2     4,B4,B4

           ; BRANCHCC OCCURS {$C$L1}         ; |72| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 15
   [ B0]   LDW     .D2T2   *B4,B4            ; |72| 
           CMPEQ   .L1     A4,0,A3           ; |72| 
           MVK     .L1     0x1,A4            ; |72| 
   [!B0]   ZERO    .L1     A0                ; |72| 
           XOR     .L1     1,A3,A3           ; |72| 
   [ B0]   CMPEQ   .L2     B4,0,B4           ; |72| 
   [ B0]   XOR     .L2     1,B4,B4           ; |72| 
           NOP             1

   [ B0]   AND     .L1X    A3,B4,A0          ; |72| 
||         MVKL    .S1     _all_pass,A3

   [ A0]   B       .S2     $C$L2             ; |72| 
||         MVKH    .S1     _all_pass,A3
|| [ A0]   MV      .L2X    A13,B3            ; |74| 

   [ A0]   STW     .D1T1   A4,*A3            ; |72| 
   [ A0]   LDW     .D2T1   *++SP(8),A10      ; |74| 

   [ A0]   RET     .S2     B3                ; |74| 
|| [ A0]   LDDW    .D2T1   *++SP,A13:A12     ; |74| 

   [ A0]   LDW     .D2T1   *++SP(8),A11      ; |74| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L2}         ; |72| 
;** --------------------------------------------------------------------------*
$C$L1:    
;          EXCLUSIVE CPU CYCLES: 7
           MVKL    .S1     _all_pass,A3

           MVKH    .S1     _all_pass,A3
||         ZERO    .L1     A4                ; |72| 

           STW     .D1T1   A4,*A3            ; |72| 

           LDW     .D2T1   *++SP(8),A10      ; |74| 
||         MV      .L2X    A13,B3            ; |74| 

           LDDW    .D2T1   *++SP,A13:A12     ; |74| 
||         RET     .S2     B3                ; |74| 

           LDW     .D2T1   *++SP(8),A11      ; |74| 
           NOP             1
;** --------------------------------------------------------------------------*
$C$L2:    
;          EXCLUSIVE CPU CYCLES: 3
           NOP             3
           ; BRANCH OCCURS {B3}              ; |74| 
	.sect	".text"
	.clink
	.global	_main

;******************************************************************************
;* FUNCTION NAME: main                                                        *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,   *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 8 Args + 20 Auto + 56 Save = 84 byte                 *
;******************************************************************************
_main:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 12
           STW     .D2T1   A11,*SP--(8)      ; |141| 
           STW     .D2T1   A10,*SP--(8)      ; |141| 
           STDW    .D2T2   B13:B12,*SP--     ; |141| 
           STDW    .D2T2   B11:B10,*SP--     ; |141| 
           STDW    .D2T1   A15:A14,*SP--     ; |141| 

           STDW    .D2T1   A13:A12,*SP--     ; |141| 
||         MVKL    .S1     $C$SL1+0,A4

           STW     .D2T2   B3,*SP--(40)      ; |141| 
||         CALLP   .S2     _driver_init,B3
||         MVKH    .S1     $C$SL1+0,A4

$C$RL4:    ; CALL OCCURS {_driver_init} {0}  ; |149| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 3

           MVK     .S2     0xc9,B4
||         MVKL    .S1     _a,A10

           MVKH    .S1     _a,A10

           CALL    .S1     _acoshf           ; |158| 
||         MV      .L1     A10,A11
||         MV      .D1X    B4,A12
||         ZERO    .L2     B10

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
$C$L3:    
;          EXCLUSIVE CPU CYCLES: 5
           LDW     .D1T1   *A11++,A4         ; |158| 
           ADDKPC  .S2     $C$RL5,B3,3       ; |158| 
$C$RL5:    ; CALL OCCURS {_acoshf} {0}       ; |158| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 9

           MVKL    .S2     _output,B4
||         SUB     .L1     A12,1,A0          ; |157| 
||         SUB     .S1     A12,1,A12         ; |157| 

           MVKH    .S2     _output,B4
           LDW     .D2T2   *B4,B4            ; |158| 
   [ A0]   BNOP    .S1     $C$L3,3           ; |157| 

           ADD     .L2     B10,B4,B4         ; |158| 
||         ADD     .S2     4,B10,B10         ; |157| 

   [ A0]   CALL    .S1     _acoshf           ; |158| 
||         STW     .D2T1   A4,*B4            ; |158| 
|| [!A0]   MVKL    .S2     _output,B4

           ; BRANCHCC OCCURS {$C$L3}         ; |157| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 4

           ZERO    .L2     B10
||         MVKH    .S2     _output,B4

           ADD     .L2     4,B4,B11
||         MVK     .S2     0xc9,B4

           MV      .L1     A10,A14

           MV      .L1X    B4,A11
||         CALL    .S1     _acoshsp          ; |161| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
$C$L4:    
;          EXCLUSIVE CPU CYCLES: 5
           LDW     .D1T1   *A10++,A4         ; |161| 
           ADDKPC  .S2     $C$RL6,B3,3       ; |161| 
$C$RL6:    ; CALL OCCURS {_acoshsp} {0}      ; |161| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           LDW     .D2T2   *B11,B4           ; |161| 
||         SUB     .L1     A11,1,A0          ; |160| 
||         SUB     .S1     A11,1,A11         ; |160| 

   [ A0]   BNOP    .S1     $C$L4,3           ; |160| 

           ADD     .L2     B10,B4,B4         ; |161| 
||         ADD     .S2     4,B10,B10         ; |160| 

   [ A0]   CALL    .S1     _acoshsp          ; |161| 
||         STW     .D2T1   A4,*B4            ; |161| 
|| [!A0]   MVK     .S2     0xc9,B4

           ; BRANCHCC OCCURS {$C$L4}         ; |160| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 2

           ZERO    .L2     B10
||         MV      .L1     A14,A11
||         ADD     .S2     4,B11,B11

           MV      .L1X    B4,A10
||         CALL    .S1     _acoshsp_c        ; |164| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
$C$L5:    
;          EXCLUSIVE CPU CYCLES: 5
           LDW     .D1T1   *A11++,A4         ; |164| 
           ADDKPC  .S2     $C$RL7,B3,3       ; |164| 
$C$RL7:    ; CALL OCCURS {_acoshsp_c} {0}    ; |164| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           LDW     .D2T2   *B11,B4           ; |164| 
||         SUB     .L1     A10,1,A0          ; |163| 
||         SUB     .S1     A10,1,A10         ; |163| 

   [ A0]   BNOP    .S2     $C$L5,2           ; |163| 
|| [!A0]   ZERO    .L1     A13
|| [!A0]   ZERO    .D1     A16               ; |92| 
|| [!A0]   MVKL    .S1     0xfefa39ec,A10

   [!A0]   MVKL    .S1     0x3fe62e42,A11

           ADD     .L2     B10,B4,B4         ; |164| 
||         ADD     .S2     4,B10,B10         ; |163| 

   [ A0]   CALL    .S1     _acoshsp_c        ; |164| 
|| [!A0]   ADD     .L2     4,B11,B10
||         STW     .D2T1   A4,*B4            ; |164| 

           ; BRANCHCC OCCURS {$C$L5}         ; |163| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 3

           MVKH    .S1     0xfefa39ec,A10
||         MVK     .S2     0xc9,B1
||         MV      .L1     A14,A9
||         ZERO    .D1     A12               ; |92| 
||         LDW     .D2T2   *B10,B16

           MVKH    .S1     0x3fe62e42,A11
||         ZERO    .L1     A28
||         ZERO    .D1     A27

           ZERO    .L1     A2
||         MV      .D1     A16,A29           ; |127| 
||         SET     .S1     A13,0x14,0x1d,A13

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : C:/builds/DEV_TI_MATHLIB_3_1_0_0/mathlib/ti/mathlib/src/acoshsp/acoshsp_d.c
;*      Loop source line                 : 166
;*      Loop opening brace source line   : 166
;*      Loop closing brace source line   : 168
;*      Known Minimum Trip Count         : 201                    
;*      Known Maximum Trip Count         : 201                    
;*      Known Max Trip Count Factor      : 201
;*      Loop Carried Dependency Bound(^) : 124
;*      Unpartitioned Resource Bound     : 12
;*      Partitioned Resource Bound(*)    : 12
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     5        1     
;*      .S units                    12*      12*    
;*      .D units                     2        1     
;*      .M units                    12*      10     
;*      .X cross paths               9       14*    
;*      .T address paths             2        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           8        6     (.L or .S unit)
;*      Addition ops (.LSD)          4        7     (.L or .S or .D unit)
;*      Bound(.L .S .LS)            13*      10     
;*      Bound(.L .S .D .LS .LSD)    11        9     
;*
;*      Disqualified loop: Loop carried dependency bound too large
;*----------------------------------------------------------------------------*
$C$L6:    
;          EXCLUSIVE CPU CYCLES: 5
           LDW     .D1T1   *A9++,A8          ; |127| 
           NOP             4
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 119
           MPYSP   .M1     A8,A8,A6          ; |127| 
           ZERO    .L1     A3
           SET     .S1     A3,0x17,0x1d,A3
           ZERO    .L1     A7
           FSUBSP  .L1     A6,A3,A3          ; |127| 
           SET     .S1     A7,0x18,0x1d,A7
           ZERO    .S1     A17
           SPDP    .S1     A3,A5:A4          ; |127| 
           MPYSP   .M1     A7,A3,A31         ; |127| 
           RSQRDP  .S1     A5:A4,A5:A4       ; |127| 
           MVKL    .S2     0x3e436581,B4
           DPSP    .L1     A5:A4,A4          ; |127| 
           SET     .S1     A17,0x16,0x1d,A17
           MV      .L1     A17,A30           ; |127| 
           CMPEQSP .S1     A3,A6,A1          ; |127| 
           MPYSP   .M1     A4,A31,A7         ; |127| 
           CMPEQSP .S1     A3,A29,A0         ; |127| 
   [ A1]   MV      .L1     A8,A20            ; |127| 
           MVKH    .S2     0x3e436581,B4
           MPYSP   .M1     A4,A7,A7          ; |127| 
           MVKL    .S2     0xbe804d66,B5
           MVKH    .S2     0xbe804d66,B5
           MVKL    .S2     0xbf000003,B31
           FSUBSP  .L1     A17,A7,A7         ; |127| 
           MVKL    .S1     0xbe6bd0fc,A26
           MVKH    .S2     0xbf000003,B31
           MPYSP   .M1     A4,A7,A4          ; |127| 
           MVKH    .S1     0xbe6bd0fc,A26
           MVKL    .S2     0x7f7fffff,B30
           MVK     .S1     0xfffffc01,A22
           MPYSP   .M1     A4,A4,A7          ; |127| 
           MVKL    .S1     0x3eaaa872,A24
           MVKH    .S1     0x3eaaa872,A24
           MVKL    .S1     _logtable,A23
           MPYSP   .M1     A31,A7,A5         ; |127| 
           MVKH    .S1     _logtable,A23
           MVKH    .S2     0x7f7fffff,B30
           MVKL    .S2     0x3f317218,B29
           FSUBSP  .L1     A30,A5,A5         ; |127| 
           MVKH    .S2     0x3f317218,B29
           SUB     .L2     B1,1,B1           ; |166| 
           MPYSP   .M1     A4,A5,A4          ; |127| 
           SET     .S1     A27,0x18,0x1d,A5
           ZERO    .L1     A31
           NOP             1
   [!A1]   MPYSP   .M1     A3,A4,A20         ; |127| 
           SET     .S1     A28,0x18,0x1d,A4
   [ A0]   MV      .L1     A29,A3            ; |127| 
           MPYSP   .M1     A4,A8,A4          ; |127| 
   [!A0]   MV      .L1     A20,A3            ; |127| 
           MPYSP   .M1     A5,A3,A3          ; |127| 
           NOP             3
           FADDSP  .L1     A4,A3,A3          ; |127| 
           NOP             2
           SPDP    .S1     A3,A5:A4          ; |92| 
           CMPGTSP .S2X    A3,B30,B0         ; |92| 
           RCPDP   .S1     A5:A4,A5:A4       ; |92| 
           NOP             1
           CLR     .S1     A5,0,16,A17       ; |92| 
           MPYSPDP .M1     A3,A17:A16,A5:A4  ; |92| 
           EXTU    .S1     A17,1,21,A25      ; |92| 
           SET     .S1     A2,0x17,0x1d,A3
           CMPLTSP .S1     A8,A3,A0          ; |92| 
           SET     .S1     A31,0x0,0x1e,A3
           NOP             2
           FSUBDP  .L1     A5:A4,A13:A12,A7:A6 ; |92| 
           NOP             2
           DPSP    .L1     A7:A6,A4          ; |92| 
           NOP             3
           MPYSP   .M1     A4,A4,A21         ; |92| 
           MPYSP   .M2X    B4,A4,B4          ; |92| 
           NOP             2
           MPYSP   .M1     A26,A21,A18       ; |92| 

           MPYSP   .M1     A21,A4,A22        ; |92| 
||         ADD     .L1     A22,A25,A4        ; |92| 

           FADDSP  .L2     B5,B4,B4          ; |92| 
           MPYSP   .M1     A21,A21,A19       ; |92| 
           INTDP   .L1     A4,A5:A4          ; |92| 
           FADDSP  .L2X    A18,B4,B4         ; |92| 
           EXTU    .S1     A17,12,29,A18     ; |92| 
           MPYSP   .M1     A24,A22,A17       ; |92| 

           MPYSP   .M2X    A19,B4,B5         ; |92| 
||         LDDW    .D1T1   *+A23[A18],A19:A18 ; |92| 

           FMPYDP  .M1     A11:A10,A5:A4,A5:A4 ; |92| 
           MPYSP   .M2X    B31,A21,B4        ; |92| 
           NOP             1
           FADDSP  .L2X    B5,A17,B5         ; |92| 
           FSUBDP  .L1     A19:A18,A5:A4,A5:A4 ; |92| 
           NOP             1
           FADDSP  .L2     B5,B4,B4          ; |92| 
           FADDDP  .L1     A5:A4,A7:A6,A5:A4 ; |92| 
           NOP             1
           SPDP    .S2     B4,B5:B4          ; |92| 
           NOP             1
           FADDDP  .L2X    B5:B4,A5:A4,B7:B6 ; |92| 
   [ B0]   MVKL    .S2     0x40562e42,B5
   [ B0]   MVKH    .S2     0x40562e42,B5
           DPSP    .L2     B7:B6,B4          ; |92| 
           NOP             3
   [!B0]   SPDP    .S2     B4,B5:B4          ; |92| 
           NOP             1
   [ B0]   MVKL    .S2     0xfeba1ace,B4
   [ B0]   MVKH    .S2     0xfeba1ace,B4
           DPSP    .L2     B5:B4,B4          ; |92| 
           NOP             1
   [ B1]   BNOP    .S1     $C$L6,1           ; |166| 
   [!A0]   FADDSP  .L2     B29,B4,B4         ; |92| 
   [ A0]   MV      .L2X    A3,B4             ; |92| 
   [!B1]   ADD     .L1X    4,B10,A3

   [!B1]   CALL    .S1     _acoshsp_v        ; |169| 
||         STW     .D2T2   B4,*B16++         ; |92| 

           ; BRANCHCC OCCURS {$C$L6}         ; |166| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5

           LDW     .D1T2   *A3,B4            ; |169| 
||         STW     .D2T1   A3,*+SP(16)

           MV      .L1     A14,A4            ; |169| 
           MVK     .S1     0xc9,A6           ; |169| 
           ADDKPC  .S2     $C$RL8,B3,1       ; |169| 
$C$RL8:    ; CALL OCCURS {_acoshsp_v} {0}    ; |169| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 12

           CALLP   .S2     _allequal,B3
||         MVK     .S1     0xc9,A4           ; |172| 

$C$RL9:    ; CALL OCCURS {_allequal} {0}     ; |172| 

           CALLP   .S2     _print_test_results,B3
||         MVK     .L1     0x1,A4            ; |173| 

$C$RL10:   ; CALL OCCURS {_print_test_results} {0}  ; |173| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 11

           MVKL    .S2     _a_sc,B4
||         ZERO    .L2     B8

           MVKH    .S2     _a_sc,B4
||         ZERO    .L2     B13
||         MVK     .D2     0x8,B31

           SET     .S2     B8,0x0,0x1e,B8
||         ZERO    .L2     B12
||         MVK     .D2     -1,B9             ; |187| 

           MV      .L2     B4,B5             ; |181| 
||         MVKH    .S2     0xbf800000,B13
||         STW     .D2T2   B31,*+SP(12)      ; |183| 

           MVKL    .S1     0x7f7fffff,A3
||         MV      .L1X    B4,A14            ; |181| 
||         MV      .L2     B5,B4
||         SET     .S2     B12,0x17,0x1d,B12
||         STDW    .D2T2   B9:B8,*+B5(24)    ; |187| 

           MVKH    .S1     0x7f7fffff,A3
||         ZERO    .L1     A5
||         ADD     .L2     1,B8,B7
||         MV      .S2X    A12,B6            ; |187| 
||         STDW    .D2T2   B13:B12,*+B4(16)  ; |185| 

           ADD     .L1     1,A3,A4
||         MVKH    .S1     0xff800000,A5
||         STDW    .D2T2   B7:B6,*B4         ; |181| 

           STDW    .D2T1   A5:A4,*+B4(8)     ; |183| 
||         CALL    .S1     _acoshf           ; |190| 

           LDW     .D1T1   *A14,A4           ; |190| 
           MV      .L2X    A12,B11           ; |187| 
           MV      .L1     A12,A15
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
$C$L7:    
;          EXCLUSIVE CPU CYCLES: 2
           ADDKPC  .S2     $C$RL11,B3,1      ; |190| 
$C$RL11:   ; CALL OCCURS {_acoshf} {0}       ; |190| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 28
           MVKL    .S2     _output,B12
           MVKH    .S2     _output,B12
           LDW     .D2T2   *B12,B4           ; |190| 
           NOP             4
           ADD     .L2     B11,B4,B4         ; |190| 
           STW     .D2T1   A4,*B4            ; |190| 

           CALLP   .S2     _acoshsp,B3
||         LDW     .D1T1   *A14,A4           ; |191| 

$C$RL12:   ; CALL OCCURS {_acoshsp} {0}      ; |191| 
           LDW     .D2T2   *+B12(4),B4       ; |191| 
           NOP             4
           ADD     .L2     B11,B4,B4         ; |191| 
           STW     .D2T1   A4,*B4            ; |191| 

           CALLP   .S2     _acoshsp_c,B3
||         LDW     .D1T1   *A14,A4           ; |192| 

$C$RL13:   ; CALL OCCURS {_acoshsp_c} {0}    ; |192| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 131
           LDW     .D2T2   *+B12(8),B4       ; |192| 
           ZERO    .L1     A3
           SET     .S1     A3,0x17,0x1d,A3
           ZERO    .L1     A31
           ZERO    .L1     A29
           ADD     .L2     B11,B4,B4         ; |192| 
           STW     .D2T1   A4,*B4            ; |192| 
           LDW     .D1T1   *A14++,A6         ; |193| 
           ZERO    .L1     A28
           MV      .L1     A15,A27           ; |127| 
           ZERO    .L1     A26
           MVKL    .S2     0x3e436581,B31
           MPYSP   .M1     A6,A6,A8          ; |165| 
           MVKH    .S2     0x3e436581,B31
           ZERO    .L1     A20
           MVKL    .S2     0xbe804d66,B5
           FSUBSP  .L1     A8,A3,A7          ; |165| 
           SET     .S1     A31,0x18,0x1d,A3
           MVKL    .S1     0xbe6bd0fc,A25
           SPDP    .S1     A7,A5:A4          ; |127| 
           MPYSP   .M1     A3,A7,A30         ; |127| 
           RSQRDP  .S1     A5:A4,A5:A4       ; |127| 
           MVKH    .S2     0xbe804d66,B5
           DPSP    .L1     A5:A4,A4          ; |127| 
           CMPEQSP .S1     A7,A8,A1          ; |129| 
           CMPEQSP .S1     A7,A27,A0         ; |133| 
           MVKH    .S1     0xbe6bd0fc,A25
           MPYSP   .M1     A4,A30,A3         ; |127| 
           MVKL    .S2     0xbf000003,B30
           MVK     .S1     0xfffffc01,A19
           MVKH    .S2     0xbf000003,B30
           MPYSP   .M1     A4,A3,A9          ; |127| 
           SET     .S1     A29,0x16,0x1d,A3
           MVKL    .S1     0x3eaaa872,A23
           MVKH    .S1     0x3eaaa872,A23
           FSUBSP  .L1     A3,A9,A3          ; |127| 
           MVKL    .S1     _logtable,A21
           MVKH    .S1     _logtable,A21
           MPYSP   .M1     A4,A3,A4          ; |127| 
           MVKL    .S2     0x7f7fffff,B6
           MVKH    .S2     0x7f7fffff,B6
           MVKL    .S2     0x3f317218,B29
           MPYSP   .M1     A4,A4,A3          ; |127| 
           ZERO    .L1     A2
           MVKH    .S2     0x3f317218,B29
           NOP             1
           MPYSP   .M1     A30,A3,A5         ; |127| 
           SET     .S1     A28,0x16,0x1d,A3
           NOP             2
           FSUBSP  .L1     A3,A5,A3          ; |127| 
           NOP             2
           MPYSP   .M1     A4,A3,A3          ; |127| 
           SET     .S1     A26,0x18,0x1d,A4
           MPYSP   .M1     A4,A6,A5          ; |92| 
           NOP             1
           MPYSP   .M1     A7,A3,A3          ; |127| 
           NOP             3
   [ A1]   MV      .L1     A6,A3             ; |130| 
   [ A0]   MV      .L1     A15,A3            ; |130| 
           MPYSP   .M1     A4,A3,A3          ; |92| 
           NOP             3
           FADDSP  .L1     A5,A3,A7          ; |92| 
           NOP             2
           SPDP    .S1     A7,A5:A4          ; |92| 
           CMPGTSP .S2X    A7,B6,B0          ; |94| 
           RCPDP   .S1     A5:A4,A5:A4       ; |92| 
           LDW     .D2T2   *+SP(12),B6       ; |170| 

           MV      .L1     A15,A4            ; |92| 
||         CLR     .S1     A5,0,16,A5        ; |92| 

           MPYSPDP .M1     A7,A5:A4,A9:A8    ; |92| 
           EXTU    .S1     A5,1,21,A24       ; |92| 
           EXTU    .S1     A5,12,29,A22      ; |92| 
           NOP             4
           FSUBDP  .L1     A9:A8,A13:A12,A17:A16 ; |92| 
           NOP             2
           DPSP    .L1     A17:A16,A8        ; |92| 
           NOP             3
           MPYSP   .M1     A8,A8,A4          ; |92| 
           MPYSP   .M2X    B31,A8,B4         ; |92| 
           NOP             2
           MPYSP   .M1     A25,A4,A3         ; |92| 

           MPYSP   .M1     A4,A8,A19         ; |92| 
||         ADD     .L1     A19,A24,A8        ; |92| 

           FADDSP  .L2     B5,B4,B4          ; |92| 
           MPYSP   .M1     A4,A4,A18         ; |92| 
           INTDP   .L1     A8,A9:A8          ; |92| 
           FADDSP  .L2X    A3,B4,B4          ; |92| 
           MPYSP   .M1     A23,A19,A3        ; |92| 
           NOP             1

           MPYSP   .M2X    A18,B4,B5         ; |92| 
||         LDDW    .D1T1   *+A21[A22],A19:A18 ; |92| 

           FMPYDP  .M1     A11:A10,A9:A8,A9:A8 ; |92| 
           MPYSP   .M2X    B30,A4,B4         ; |92| 
           NOP             1
           FADDSP  .L2X    B5,A3,B5          ; |92| 
           FSUBDP  .L1     A19:A18,A9:A8,A5:A4 ; |92| 
           MVKL    .S1     0x42b17218,A3
           FADDSP  .L2     B5,B4,B4          ; |92| 
           FADDDP  .L1     A5:A4,A17:A16,A5:A4 ; |92| 
           MVKH    .S1     0x42b17218,A3
           SPDP    .S2     B4,B5:B4          ; |92| 
           NOP             1
           FADDDP  .L2X    B5:B4,A5:A4,B5:B4 ; |92| 
           NOP             2
           DPSP    .L2     B5:B4,B4          ; |92| 
           NOP             3

   [ B0]   MV      .L2X    A3,B4             ; |95| 
||         SET     .S1     A20,0x17,0x1d,A3

           FADDSP  .L2     B29,B4,B4         ; |167| 
||         LDW     .D2T2   *B10,B29          ; |193| 
||         CMPLTSP .S1     A6,A3,A0          ; |169| 

           SET     .S1     A2,0x0,0x1e,A3
           NOP             1

   [ A0]   MV      .L2X    A3,B4             ; |170| 
||         SUB     .L1X    B6,1,A0           ; |189| 

   [ A0]   B       .S2     $C$L7             ; |189| 
|| [!A0]   MVKL    .S1     _a_sc,A4

           ADD     .L2     B11,B29,B5        ; |193| 

   [ A0]   CALL    .S1     _acoshf           ; |190| 
||         STW     .D2T2   B4,*B5            ; |193| 
||         SUB     .L2     B6,1,B4           ; |189| 

   [!A0]   CALL    .S1     _acoshsp_v        ; |195| 
|| [ A0]   LDW     .D1T1   *A14,A4           ; |190| 
||         STW     .D2T2   B4,*+SP(12)       ; |193| 

   [!A0]   LDW     .D2T2   *+B12(16),B4      ; |195| 
           ADD     .L2     4,B11,B11         ; |189| 
           ; BRANCHCC OCCURS {$C$L7}         ; |189| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 3
           MVKH    .S1     _a_sc,A4
           MVK     .L1     0x8,A6            ; |195| 
           ADDKPC  .S2     $C$RL14,B3,0      ; |195| 
$C$RL14:   ; CALL OCCURS {_acoshsp_v} {0}    ; |195| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 42
           MVKL    .S2     0x3eb0c6f7,B7
           MVKL    .S2     0xa0b5ed8d,B6
           MVKH    .S2     0x3eb0c6f7,B7

           LDW     .D2T1   *B12,A4           ; |66| 
||         MVKH    .S2     0xa0b5ed8d,B6

           CALLP   .S2     _isequal,B3
||         LDW     .D2T2   *+B12(4),B4       ; |66| 
||         MVK     .L1     0x8,A6            ; |66| 
||         MVK     .S1     0x1,A8            ; |66| 

$C$RL15:   ; CALL OCCURS {_isequal} {0}      ; |66| 
           MVKL    .S2     0x3eb0c6f7,B7

           MVKL    .S1     _fcn_pass,A3
||         MVKL    .S2     0xa0b5ed8d,B6

           MVKH    .S1     _fcn_pass,A3
||         MVKH    .S2     0x3eb0c6f7,B7

           STW     .D1T1   A4,*+A3(4)        ; |66| 
||         LDW     .D2T2   *+B12(8),B4       ; |67| 
||         MVKH    .S2     0xa0b5ed8d,B6

           CALLP   .S2     _isequal,B3
||         LDW     .D2T1   *B12,A4           ; |67| 
||         MVK     .L1     0x8,A6            ; |67| 
||         MVK     .S1     0x1,A8            ; |67| 

$C$RL16:   ; CALL OCCURS {_isequal} {0}      ; |67| 
           MVKL    .S2     0x3eb0c6f7,B7

           MVKL    .S1     _fcn_pass,A3
||         MVKL    .S2     0xa0b5ed8d,B6

           MVKH    .S1     _fcn_pass,A3
||         MVKH    .S2     0x3eb0c6f7,B7

           MV      .L1X    B12,A5            ; |195| 
||         STW     .D1T1   A4,*+A3(8)        ; |67| 
||         MVKH    .S2     0xa0b5ed8d,B6

           CALLP   .S2     _isequal,B3
||         LDW     .D1T1   *A5,A4            ; |68| 
||         LDW     .D2T2   *+B12(12),B4      ; |68| 
||         MVK     .L1     0x8,A6            ; |68| 
||         MVK     .S1     0x1,A8            ; |68| 

$C$RL17:   ; CALL OCCURS {_isequal} {0}      ; |68| 
           LDW     .D2T1   *+SP(16),A3       ; |68| 
           MVKL    .S1     _fcn_pass,A5
           MVKL    .S2     0xa0b5ed8d,B6

           MVKH    .S1     _fcn_pass,A5
||         MVKL    .S2     0x3eb0c6f7,B7

           STW     .D1T1   A4,*+A5(12)       ; |68| 
||         MVKH    .S2     0xa0b5ed8d,B6

           MV      .L2X    A3,B4             ; |66| 
||         MV      .L1X    B12,A6            ; |195| 
||         STW     .D2T1   A3,*+SP(20)       ; |68| 
||         MVKH    .S2     0x3eb0c6f7,B7

           CALLP   .S2     _isequal,B3
||         LDW     .D2T2   *B4,B4            ; |69| 
||         LDW     .D1T1   *A6,A4            ; |69| 
||         MVK     .L1     0x8,A6            ; |69| 
||         MVK     .S1     0x1,A8            ; |69| 

$C$RL18:   ; CALL OCCURS {_isequal} {0}      ; |69| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 14
           MVKL    .S2     _fcn_pass,B4
           MVKH    .S2     _fcn_pass,B4
           ADD     .L2     4,B4,B4
           LDW     .D2T2   *B4,B0            ; |72| 
           MVKL    .S1     _fcn_pass,A3
           MVKH    .S1     _fcn_pass,A3
           STW     .D1T1   A4,*+A3(16)       ; |69| 
           ADD     .L2X    8,A3,B11

   [!B0]   B       .S2     $C$L8             ; |72| 
|| [!B0]   MVKL    .S1     _all_pass,A3
|| [!B0]   MV      .L1     A15,A4
||         MV      .L2     B0,B1             ; guard predicate rewrite

   [!B0]   CALL    .S2     _print_test_results ; |199| 
|| [!B0]   MVKH    .S1     _all_pass,A3
|| [ B0]   LDW     .D2T2   *B11,B0           ; |72| 

           MV      .L1X    B13,A14           ; |69| 
           STW     .D2T2   B4,*+SP(24)
   [ B1]   ADD     .L2     4,B11,B4
           NOP             1
           ; BRANCHCC OCCURS {$C$L8}         ; |72| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 10
   [ B0]   LDW     .D2T2   *B4,B4            ; |72| 
           CMPEQ   .L1     A4,0,A3           ; |72| 
           XOR     .L1     1,A3,A3           ; |72| 
           MVK     .L1     0x1,A4            ; |72| 
   [!B0]   MV      .L1     A15,A0            ; |72| 
   [ B0]   CMPEQ   .L2     B4,0,B4           ; |72| 
   [ B0]   XOR     .L2     1,B4,B4           ; |72| 
           NOP             1
   [ B0]   AND     .L1X    A3,B4,A0          ; |72| 
   [!A0]   MV      .L1     A15,A4
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5
           CALL    .S1     _print_test_results ; |199| 
           MVKL    .S1     _all_pass,A3
           MVKH    .S1     _all_pass,A3
           NOP             2
;** --------------------------------------------------------------------------*
$C$L8:    
;          EXCLUSIVE CPU CYCLES: 1

           STW     .D1T1   A4,*A3            ; |72| 
||         MVK     .L1     0x3,A4            ; |199| 
||         ADDKPC  .S2     $C$RL19,B3,0      ; |199| 

$C$RL19:   ; CALL OCCURS {_print_test_results} {0}  ; |199| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S2     _a_ext,B4
           MVK     .S2     0x77,B31

           MVKH    .S2     _a_ext,B4
||         STW     .D2T2   B10,*+SP(28)      ; |92| 
||         ZERO    .L1     A3

           STW     .D2T2   B31,*+SP(12)      ; |202| 
||         SET     .S1     A3,0x17,0x1d,A3

           CALL    .S1     _acoshf           ; |204| 
||         STW     .D2T1   A3,*B4            ; |202| 
||         MV      .L1X    B4,A15            ; |202| 

           LDW     .D1T1   *A15,A4           ; |204| 
||         MVKL    .S2     0xcccccccd,B12

           MVKL    .S2     0x4000cccc,B13
           MVKH    .S2     0xcccccccd,B12

           MVKH    .S2     0x4000cccc,B13
||         MV      .L2X    A12,B10

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
$C$L9:    
;          EXCLUSIVE CPU CYCLES: 1
           ADDKPC  .S2     $C$RL20,B3,0      ; |204| 
$C$RL20:   ; CALL OCCURS {_acoshf} {0}       ; |204| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 30
           MVKL    .S2     _output,B4
           MVKH    .S2     _output,B4
           LDW     .D2T2   *B4,B4            ; |204| 
           NOP             4
           ADD     .L2     B10,B4,B4         ; |204| 
           STW     .D2T1   A4,*B4            ; |204| 

           CALLP   .S2     _acoshsp,B3
||         LDW     .D1T1   *A15,A4           ; |205| 

$C$RL21:   ; CALL OCCURS {_acoshsp} {0}      ; |205| 
           MVKL    .S2     _output,B4
           MVKH    .S2     _output,B4
           LDW     .D2T2   *+B4(4),B4        ; |205| 
           NOP             4
           ADD     .L2     B10,B4,B4         ; |205| 
           STW     .D2T1   A4,*B4            ; |205| 

           CALLP   .S2     _acoshsp_c,B3
||         LDW     .D1T1   *A15,A4           ; |206| 

$C$RL22:   ; CALL OCCURS {_acoshsp_c} {0}    ; |206| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 153
           MVKL    .S2     _output,B4
           MVKH    .S2     _output,B4
           LDW     .D2T2   *+B4(8),B4        ; |206| 
           ZERO    .L1     A3
           SET     .S1     A3,0x17,0x1d,A3
           ZERO    .L1     A31
           ZERO    .L1     A29
           ADD     .L2     B10,B4,B4         ; |206| 
           STW     .D2T1   A4,*B4            ; |206| 
           LDW     .D1T1   *A15,A5           ; |207| 
           ZERO    .L1     A28
           MV      .L1     A12,A27           ; |127| 
           ZERO    .L1     A26
           LDW     .D2T2   *+SP(28),B28
           MPYSP   .M1     A5,A5,A9          ; |165| 
           MVKL    .S1     0xbe6bd0fc,A25
           MVKH    .S1     0xbe6bd0fc,A25
           MVKL    .S2     0x3e436581,B31
           FSUBSP  .L1     A9,A3,A8          ; |165| 
           SET     .S1     A31,0x18,0x1d,A3
           MVKH    .S2     0x3e436581,B31
           SPDP    .S1     A8,A7:A6          ; |127| 
           MPYSP   .M1     A3,A8,A30         ; |127| 
           RSQRDP  .S1     A7:A6,A7:A6       ; |127| 
           MVKL    .S2     0xbe804d66,B30
           DPSP    .L1     A7:A6,A4          ; |127| 
           CMPEQSP .S1     A8,A9,A1          ; |129| 
           CMPEQSP .S1     A8,A27,A0         ; |133| 
           MVK     .S1     0xfffffc01,A24
           MPYSP   .M1     A4,A30,A3         ; |127| 
           MVKL    .S1     0x3eaaa872,A23
           MVKH    .S2     0xbe804d66,B30
           MVKL    .S2     0xbf000003,B29
           MPYSP   .M1     A4,A3,A7          ; |127| 
           SET     .S1     A29,0x16,0x1d,A3
           MVKH    .S1     0x3eaaa872,A23
           MVKH    .S2     0xbf000003,B29
           FSUBSP  .L1     A3,A7,A3          ; |127| 
           MVKL    .S1     _logtable,A2
           MVKL    .S2     0x7f7fffff,B27
           MPYSP   .M1     A4,A3,A4          ; |127| 
           MVKH    .S1     _logtable,A2
           MVKH    .S2     0x7f7fffff,B27
           MVKL    .S2     0x3f317218,B26
           MPYSP   .M1     A4,A4,A3          ; |127| 
           MVKH    .S2     0x3f317218,B26
           LDW     .D2T2   *B28,B6           ; |207| 
           ZERO    .L1     A31
           MPYSP   .M1     A30,A3,A6         ; |127| 
           SET     .S1     A28,0x16,0x1d,A3
           ZERO    .L1     A29
           NOP             1
           FSUBSP  .L1     A3,A6,A3          ; |127| 
           NOP             2
           MPYSP   .M1     A4,A3,A3          ; |127| 
           NOP             3
           MPYSP   .M1     A8,A3,A4          ; |127| 
           SET     .S1     A26,0x18,0x1d,A3
           MPYSP   .M1     A3,A5,A6          ; |92| 
           NOP             1
   [ A1]   MV      .L1     A5,A4             ; |130| 
   [ A0]   MV      .L1     A12,A4            ; |130| 
           MPYSP   .M1     A3,A4,A3          ; |92| 
           NOP             3
           FADDSP  .L1     A6,A3,A16         ; |92| 
           NOP             2
           SPDP    .S1     A16,A7:A6         ; |92| 
           CMPGTSP .S2X    A16,B27,B0        ; |94| 
           RCPDP   .S1     A7:A6,A7:A6       ; |92| 
           NOP             1

           CLR     .S1     A7,0,16,A4        ; |92| 
||         MV      .L1     A12,A6            ; |92| 

           MV      .L1     A4,A7             ; |92| 
           MPYSPDP .M1     A16,A7:A6,A7:A6   ; |92| 
           EXTU    .S1     A4,1,21,A9        ; |92| 
           EXTU    .S1     A4,12,29,A22      ; |92| 
           ADD     .L1     A24,A9,A3         ; |92| 
           NOP             3
           FSUBDP  .L1     A7:A6,A13:A12,A7:A6 ; |92| 
           NOP             2
           DPSP    .L1     A7:A6,A8          ; |92| 
           NOP             3
           MPYSP   .M1     A8,A8,A20         ; |92| 
           MPYSP   .M2X    B31,A8,B5         ; |92| 
           NOP             2
           MPYSP   .M1     A25,A20,A18       ; |92| 
           MPYSP   .M1     A20,A8,A19        ; |92| 
           FADDSP  .L2     B30,B5,B4         ; |92| 
           MPYSP   .M1     A20,A20,A17       ; |92| 
           INTDP   .L1     A3,A9:A8          ; |92| 
           FADDSP  .L2X    A18,B4,B4         ; |92| 
           MPYSP   .M1     A23,A19,A21       ; |92| 
           LDDW    .D1T1   *+A2[A22],A19:A18 ; |92| 
           MPYSP   .M2X    A17,B4,B5         ; |92| 
           FMPYDP  .M1     A11:A10,A9:A8,A9:A8 ; |92| 
           MPYSP   .M2X    B29,A20,B4        ; |92| 
           MVKL    .S1     0x42b17218,A3
           FADDSP  .L2X    B5,A21,B5         ; |92| 
           FSUBDP  .L1     A19:A18,A9:A8,A9:A8 ; |92| 
           MVKH    .S1     0x42b17218,A3
           FADDSP  .L2     B5,B4,B4          ; |92| 
           FADDDP  .L1     A9:A8,A7:A6,A7:A6 ; |92| 
           NOP             1
           SPDP    .S2     B4,B5:B4          ; |92| 
           NOP             1
           FADDDP  .L2X    B5:B4,A7:A6,B5:B4 ; |92| 
           NOP             2
           DPSP    .L2     B5:B4,B5          ; |92| 
           NOP             3

   [ B0]   MV      .L2X    A3,B5             ; |95| 
||         SET     .S1     A31,0x17,0x1d,A3

           FADDSP  .L2     B26,B5,B4         ; |167| 
||         CMPLTSP .S1     A5,A3,A0          ; |169| 

           SET     .S1     A29,0x0,0x1e,A3
           ADD     .S2     B10,B6,B5         ; |207| 
   [ A0]   MV      .L2X    A3,B4             ; |170| 
           STW     .D2T2   B4,*B5            ; |207| 
           LDW     .D1T2   *A15,B4           ; |208| 
           ADD     .L2     4,B10,B10         ; |203| 
           NOP             3
           MPYSPDP .M2     B4,B13:B12,B5:B4  ; |208| 
           NOP             6

           DPSP    .L2     B5:B4,B5          ; |208| 
||         LDW     .D2T2   *+SP(12),B4

           NOP             3
           STW     .D1T2   B5,*++A15         ; |208| 

           SUB     .L1X    B4,1,A0           ; |203| 
||         SUB     .L2     B4,1,B4           ; |203| 

   [ A0]   B       .S1     $C$L9             ; |203| 
|| [!A0]   MVKL    .S2     _output,B10
|| [ A0]   LDW     .D1T1   *A15,A4           ; |204| 
||         STW     .D2T2   B4,*+SP(12)       ; |208| 

   [ A0]   CALL    .S1     _acoshf           ; |204| 
|| [!A0]   MVKH    .S2     _output,B10

   [!A0]   CALL    .S1     _acoshsp_v        ; |210| 
   [!A0]   LDW     .D2T2   *+B10(16),B4      ; |210| 
   [!A0]   MVKL    .S1     _a_ext,A4
           NOP             1
           ; BRANCHCC OCCURS {$C$L9}         ; |203| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 2
           MVKH    .S1     _a_ext,A4

           MVK     .S1     0x77,A6           ; |210| 
||         ADDKPC  .S2     $C$RL23,B3,0      ; |210| 

$C$RL23:   ; CALL OCCURS {_acoshsp_v} {0}    ; |210| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 43
           MVKL    .S2     0x3eb0c6f7,B7
           MVKL    .S2     0xa0b5ed8d,B6
           MVKH    .S2     0x3eb0c6f7,B7

           LDW     .D2T1   *B10,A4           ; |66| 
||         MVKH    .S2     0xa0b5ed8d,B6

           CALLP   .S2     _isequal,B3
||         LDW     .D2T2   *+B10(4),B4       ; |66| 
||         MVK     .S1     0x77,A6           ; |66| 
||         MVK     .L1     0x1,A8            ; |66| 

$C$RL24:   ; CALL OCCURS {_isequal} {0}      ; |66| 
           MVKL    .S2     _fcn_pass,B12
           MVKL    .S2     0x3eb0c6f7,B7
           MVKH    .S2     _fcn_pass,B12
           MVKL    .S2     0xa0b5ed8d,B6

           LDW     .D2T2   *+B10(8),B4       ; |67| 
||         MVKH    .S2     0x3eb0c6f7,B7

           STW     .D2T1   A4,*+B12(4)       ; |66| 
||         MVKH    .S2     0xa0b5ed8d,B6

           CALLP   .S2     _isequal,B3
||         LDW     .D2T1   *B10,A4           ; |67| 
||         MVK     .S1     0x77,A6           ; |67| 
||         MVK     .L1     0x1,A8            ; |67| 

$C$RL25:   ; CALL OCCURS {_isequal} {0}      ; |67| 
           MVKL    .S2     0x3eb0c6f7,B7
           MVKL    .S2     0xa0b5ed8d,B6
           MVKH    .S2     0x3eb0c6f7,B7

           MV      .L1X    B10,A3            ; |67| 
||         STW     .D2T1   A4,*+B12(8)       ; |67| 
||         MVKH    .S2     0xa0b5ed8d,B6

           CALLP   .S2     _isequal,B3
||         LDW     .D1T1   *A3,A4            ; |68| 
||         LDW     .D2T2   *+B10(12),B4      ; |68| 
||         MVK     .S1     0x77,A6           ; |68| 
||         MVK     .L1     0x1,A8            ; |68| 

$C$RL26:   ; CALL OCCURS {_isequal} {0}      ; |68| 
           LDW     .D2T1   *+SP(16),A3       ; |68| 
           MVKL    .S2     0x3eb0c6f7,B7
           MVKL    .S2     0xa0b5ed8d,B6
           MVKH    .S2     0x3eb0c6f7,B7

           MV      .L2     B10,B4            ; |68| 
||         STW     .D2T1   A4,*+B12(12)      ; |68| 
||         MVKH    .S2     0xa0b5ed8d,B6

           CALLP   .S2     _isequal,B3
||         LDW     .D2T1   *B4,A4            ; |69| 
||         LDW     .D1T2   *A3,B4            ; |69| 
||         MVK     .S1     0x77,A6           ; |69| 
||         MVK     .L1     0x1,A8            ; |69| 

$C$RL27:   ; CALL OCCURS {_isequal} {0}      ; |69| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 16
           LDW     .D2T1   *+SP(24),A3       ; |69| 
           STW     .D2T1   A4,*+B12(16)      ; |69| 
           NOP             3
           LDW     .D1T1   *A3,A0            ; |72| 
           NOP             4

   [ A0]   ADD     .L2     4,B11,B4
|| [!A0]   B       .S1     $C$L10            ; |72| 
|| [ A0]   LDW     .D2T2   *B11,B0           ; |72| 

   [!A0]   CALL    .S1     _print_test_results ; |216| 
   [!A0]   MVKL    .S1     _all_pass,A3
   [!A0]   MVKH    .S1     _all_pass,A3
   [!A0]   MV      .L2X    A12,B4
   [!A0]   MV      .L2X    A3,B5
           ; BRANCHCC OCCURS {$C$L10}        ; |72| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 10
   [ B0]   LDW     .D2T2   *B4,B4            ; |72| 
           CMPEQ   .L1     A4,0,A3           ; |72| 
           XOR     .L1     1,A3,A3           ; |72| 
   [!B0]   MV      .L1     A12,A0            ; |72| 
           NOP             1
   [ B0]   CMPEQ   .L2     B4,0,B4           ; |72| 
   [ B0]   XOR     .L2     1,B4,B4           ; |72| 
           NOP             1

   [ B0]   AND     .L1X    A3,B4,A0          ; |72| 
||         MVK     .L2     0x1,B4            ; |72| 

   [!A0]   MV      .L2X    A12,B4
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5
           CALL    .S1     _print_test_results ; |216| 
           MVKL    .S1     _all_pass,A3
           MVKH    .S1     _all_pass,A3
           NOP             1
           MV      .L2X    A3,B5
;** --------------------------------------------------------------------------*
$C$L10:    
;          EXCLUSIVE CPU CYCLES: 1

           MVK     .L1     0x4,A4            ; |216| 
||         STW     .D2T2   B4,*B5            ; |72| 
||         ADDKPC  .S2     $C$RL28,B3,0      ; |216| 

$C$RL28:   ; CALL OCCURS {_print_test_results} {0}  ; |216| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 15
           MVKL    .S1     _cycle_counts+24,A3

           MVKH    .S1     _cycle_counts+24,A3
||         MV      .L2X    A12,B4            ; |114| 
||         MV      .L1     A12,A10           ; |114| 
||         MV      .D1     A12,A11           ; |114| 

           MVC     .S2     B4,TSCL           ; |115| 
||         STDW    .D1T1   A11:A10,*A3       ; |114| 

           MVC     .S2     TSCL,B6           ; |116| 
           MVC     .S2     TSCH,B4           ; |116| 
           MVKL    .S1     _t_start,A3

           MVKH    .S1     _t_start,A3
||         MV      .L2     B4,B7             ; |116| 

           MVC     .S2     TSCL,B4           ; |117| 
||         STDW    .D1T2   B7:B6,*A3         ; |116| 

           MVC     .S2     TSCH,B8           ; |117| 

           MVKL    .S1     _t_offset,A3
||         SUBU    .L2     B4,B6,B5:B4       ; |117| 

           CALL    .S1     _gimme_random     ; |226| 
||         EXT     .S2     B5,24,24,B6       ; |117| 
||         SUB     .L2     B8,B7,B31         ; |117| 

           ADD     .L2     B31,B6,B5         ; |117| 
||         MVKH    .S1     _t_offset,A3

           MVK     .S2     0x80,B4
||         STDW    .D1T2   B5:B4,*A3         ; |117| 
||         MVKL    .S1     0x49742410,A13

           MVKH    .S1     0x49742410,A13
||         MV      .L2X    A12,B10

           MV      .L2X    A14,B4            ; |226| 
||         MV      .L1X    B4,A12            ; |117| 
||         MV      .S1     A13,A4            ; |226| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
$C$L11:    
;          EXCLUSIVE CPU CYCLES: 1
           ADDKPC  .S2     $C$RL29,B3,0      ; |226| 
$C$RL29:   ; CALL OCCURS {_gimme_random} {0}  ; |226| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 141
           MVKL    .S2     _input,B4
           MVKH    .S2     _input,B4
           LDW     .D2T2   *B4,B4            ; |226| 
           NOP             4
           ADD     .L2     B10,B4,B4         ; |226| 

           STW     .D2T1   A4,*B4            ; |226| 
||         MVC     .S2     TSCL,B6           ; |122| 

           MVC     .S2     TSCH,B7           ; |122| 
           MPYSP   .M1     A4,A4,A7          ; |165| 
           ZERO    .L1     A3
           SET     .S1     A3,0x17,0x1d,A3
           ZERO    .L1     A5
           FSUBSP  .L1     A7,A3,A3          ; |165| 
           SET     .S1     A5,0x18,0x1d,A5
           ZERO    .S1     A30
           SPDP    .S1     A3,A9:A8          ; |124| 
           MPYSP   .M1     A5,A3,A31         ; |124| 
           RSQRDP  .S1     A9:A8,A9:A8       ; |124| 
           MVKL    .S2     0x3e436581,B31
           DPSP    .L1     A9:A8,A6          ; |124| 
           MV      .L2X    A11,B4            ; |92| 
           ZERO    .L2     B5
           SET     .S2     B5,0x14,0x1d,B5
           MPYSP   .M1     A6,A31,A5         ; |124| 
           MV      .L1     A10,A28           ; |127| 
           ZERO    .L1     A29
           MVKH    .S2     0x3e436581,B31
           MPYSP   .M1     A6,A5,A9          ; |124| 
           SET     .S1     A30,0x16,0x1d,A5
           ZERO    .L1     A27
           ZERO    .L1     A26
           FSUBSP  .L1     A5,A9,A5          ; |124| 
           MVKL    .S2     0xbe804d66,B30
           MVKL    .S1     0xbe6bd0fc,A25
           MPYSP   .M1     A6,A5,A6          ; |124| 
           MVKH    .S2     0xbe804d66,B30
           MVKH    .S1     0xbe6bd0fc,A25
           CMPEQSP .S1     A3,A7,A0          ; |129| 
           MPYSP   .M1     A6,A6,A5          ; |127| 
           CMPEQSP .S1     A3,A28,A1         ; |133| 
           MVKL    .S2     0xbf000003,B29
           MVK     .S1     0xfffffc01,A23
           MPYSP   .M1     A31,A5,A8         ; |127| 
           SET     .S1     A29,0x16,0x1d,A5
           MVKH    .S2     0xbf000003,B29
           MVKL    .S1     0x3eaaa872,A2
           FSUBSP  .L1     A5,A8,A5          ; |127| 
           MVKL    .S2     _output+12,B9
           MVKL    .S2     0x7f7fffff,B28
           MPYSP   .M1     A6,A5,A5          ; |127| 
           SET     .S1     A27,0x18,0x1d,A6
           MPYSP   .M1     A6,A4,A6          ; |92| 
           MVKH    .S2     _output+12,B9
           MPYSP   .M1     A3,A5,A5          ; |127| 
           SET     .S1     A26,0x18,0x1d,A3
           LDW     .D2T2   *B9,B9            ; |230| 
           MVKH    .S2     0x7f7fffff,B28
   [ A0]   MV      .L1     A4,A5             ; |230| 
   [ A1]   MV      .L1     A10,A5            ; |230| 
           MPYSP   .M1     A3,A5,A3          ; |92| 
           MVKL    .S2     0x42b17218,B8
           ZERO    .L1     A28
           MVKH    .S2     0x42b17218,B8
           FADDSP  .L1     A6,A3,A5          ; |92| 
           MVKH    .S1     0x3eaaa872,A2
           MVKL    .S1     0x3fe62e42,A19
           SPDP    .S1     A5,A7:A6          ; |92| 
           MVKL    .S2     0x3f317218,B27
           RCPDP   .S1     A7:A6,A7:A6       ; |92| 
           MVKH    .S2     0x3f317218,B27

           CLR     .S1     A7,0,16,A16       ; |92| 
||         MV      .L1     A10,A6            ; |92| 

           MV      .L1     A16,A7            ; |92| 
           MPYSPDP .M1     A5,A7:A6,A7:A6    ; |92| 
           MVKL    .S1     0xfefa39ec,A18
           MVKH    .S1     0x3fe62e42,A19
           MVKH    .S1     0xfefa39ec,A18
           MVKL    .S1     _logtable,A31
           MVKH    .S1     _logtable,A31
           EXTU    .S1     A16,1,21,A24      ; |92| 
           FSUBDP  .L1X    A7:A6,B5:B4,A7:A6 ; |92| 
           ADD     .L1     A23,A24,A3        ; |92| 
           EXTU    .S1     A16,12,29,A30     ; |92| 
           DPSP    .L1     A7:A6,A8          ; |92| 
           ADD     .L2     B10,B9,B26        ; |230| 
           ZERO    .L1     A29
           CMPGTSP .S2X    A5,B28,B0         ; |94| 
           MPYSP   .M1     A8,A8,A21         ; |92| 
           MPYSP   .M2X    B31,A8,B5         ; |92| 
           NOP             2
           MPYSP   .M1     A25,A21,A9        ; |92| 
           FADDSP  .L2     B30,B5,B4         ; |92| 
           MPYSP   .M1     A21,A8,A17        ; |92| 
           MPYSP   .M1     A21,A21,A22       ; |92| 
           NOP             1

           FADDSP  .L2X    A9,B4,B4          ; |92| 
||         INTDP   .L1     A3,A9:A8          ; |92| 

           MPYSP   .M1     A2,A17,A20        ; |92| 
           LDDW    .D1T1   *+A31[A30],A17:A16 ; |92| 
           MPYSP   .M2X    A22,B4,B5         ; |92| 
           MPYSP   .M2X    B29,A21,B4        ; |92| 
           FMPYDP  .M1     A19:A18,A9:A8,A9:A8 ; |92| 
           SET     .S1     A29,0x17,0x1d,A3
           FADDSP  .L2X    B5,A20,B5         ; |92| 
           CMPLTSP .S1     A4,A3,A0          ; |169| 
           FSUBDP  .L1     A17:A16,A9:A8,A9:A8 ; |92| 
           FADDSP  .L2     B5,B4,B4          ; |92| 
           SET     .S1     A28,0x0,0x1e,A3
           FADDDP  .L1     A9:A8,A7:A6,A7:A6 ; |92| 
           SPDP    .S2     B4,B5:B4          ; |92| 
           MVKL    .S1     _t_start,A29
           MVKH    .S1     _t_start,A29
           FADDDP  .L2X    B5:B4,A7:A6,B5:B4 ; |92| 
           STDW    .D1T2   B7:B6,*A29
           NOP             1
           DPSP    .L2     B5:B4,B5          ; |92| 
           NOP             3
   [ B0]   MV      .L2     B8,B5             ; |95| 
           FADDSP  .L2     B27,B5,B4         ; |167| 
           NOP             2
   [ A0]   MV      .L2X    A3,B4             ; |170| 

           STW     .D2T2   B4,*B26           ; |230| 
||         MVC     .S2     TSCL,B8           ; |128| 

           MVC     .S2     TSCH,B4           ; |128| 

           MVKL    .S1     _t_offset,A15
||         MV      .L2     B4,B9             ; |128| 
||         SUB     .L1     A12,1,A0          ; |224| 
||         MVKL    .S2     _t_stop,B16
||         ADD     .D2     4,B10,B10         ; |224| 
||         SUB     .D1     A12,1,A12         ; |224| 

           MVKH    .S1     _t_offset,A15
||         MVKH    .S2     _t_stop,B16

           LDDW    .D1T1   *A15,A5:A4        ; |130| 
||         MVKL    .S1     _cycle_counts+24,A3

           MVKH    .S1     _cycle_counts+24,A3
           LDDW    .D1T1   *A3,A7:A6         ; |130| 
           STDW    .D2T2   B9:B8,*B16        ; |128| 
           MV      .L2X    A3,B12            ; |130| 

           ADDU    .L2X    A4,B6,B5:B4       ; |130| 
|| [ A0]   MV      .L1     A13,A4            ; |226| 

           ADD     .S2X    B5,A5,B6          ; |130| 
|| [ A0]   B       .S1     $C$L11            ; |224| 
||         SUBU    .L2     B8,B4,B5:B4       ; |130| 

   [ A0]   CALL    .S1     _gimme_random     ; |226| 
||         ADD     .D2     B6,B7,B6          ; |130| 
||         EXT     .S2     B5,24,24,B17      ; |130| 
||         ADDU    .L2X    A6,B4,B5:B4       ; |130| 

           SUB     .L2     B9,B6,B7          ; |130| 
||         MV      .S2     B4,B6             ; |130| 
||         ADD     .D2X    B5,A7,B4          ; |130| 

           ADD     .L2     B7,B17,B5         ; |130| 

           ADD     .L2     B4,B5,B7          ; |130| 
|| [ A0]   MV      .S2X    A14,B4            ; |226| 

   [!A0]   CALL    .S1     __fltllif         ; |135| 
||         STDW    .D2T2   B7:B6,*B12        ; |130| 

           ; BRANCHCC OCCURS {$C$L11}        ; |224| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5
           LDDW    .D2T1   *B12,A5:A4        ; |135| 
           ADDKPC  .S2     $C$RL30,B3,3      ; |135| 
$C$RL30:   ; CALL OCCURS {__fltllif} {0}     ; |135| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 15
           ZERO    .L1     A3
           SET     .S1     A3,0x1a,0x1d,A3
           MPYSP   .M1     A3,A4,A3          ; |135| 
           ZERO    .L1     A13
           SET     .S1     A13,0x15,0x1d,A13
           MV      .L1     A10,A12           ; |135| 
           SPDP    .S1     A3,A5:A4          ; |135| 
           NOP             2

           CALLP   .S2     __fixdlli,B3
||         FADDDP  .L1     A13:A12,A5:A4,A5:A4 ; |135| 

$C$RL31:   ; CALL OCCURS {__fixdlli} {0}     ; |135| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 11
           MVK     .S1     24,A3

           SUB     .L1X    B12,A3,A3
||         STDW    .D2T1   A5:A4,*B12        ; |135| 
||         MV      .L2X    A11,B4            ; |114| 

           MVC     .S2     B4,TSCL           ; |115| 
||         STDW    .D1T1   A11:A10,*A3       ; |114| 

           MVC     .S2     TSCL,B4           ; |116| 
           MVC     .S2     TSCH,B6           ; |116| 
           MVC     .S2     TSCL,B5           ; |117| 
           MVC     .S2     TSCH,B7           ; |117| 
           SUBU    .L2     B5,B4,B5:B4       ; |117| 

           EXT     .S2     B5,24,24,B6       ; |117| 
||         SUB     .L2     B7,B6,B5          ; |117| 

           ADD     .L2     B5,B6,B5          ; |117| 
||         MVK     .S1     0x80,A3

           MV      .L1     A3,A15            ; |117| 
||         STDW    .D1T2   B5:B4,*A15        ; |117| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
$C$L12:    
;          EXCLUSIVE CPU CYCLES: 15
           MVC     .S2     TSCL,B4           ; |122| 
           MVC     .S2     TSCH,B5           ; |122| 
           MVKL    .S1     _input,A3
           MVKH    .S1     _input,A3
           LDW     .D1T1   *A3,A3            ; |239| 
           MVKL    .S2     _t_start,B6
           MVKH    .S2     _t_start,B6
           STDW    .D2T2   B5:B4,*B6         ; |122| 
           NOP             1

           ADD     .L1     A12,A3,A3         ; |239| 
||         CALL    .S1     _acoshf           ; |239| 

           LDW     .D1T1   *A3,A4            ; |239| 
           ADDKPC  .S2     $C$RL32,B3,3      ; |239| 
$C$RL32:   ; CALL OCCURS {_acoshf} {0}       ; |239| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 25
           MVKL    .S2     _output,B13
           MVKH    .S2     _output,B13
           LDW     .D2T2   *B13,B4           ; |239| 
           NOP             4
           ADD     .L1X    A12,B4,A3         ; |239| 

           STW     .D1T1   A4,*A3            ; |239| 
||         MVC     .S2     TSCL,B8           ; |128| 

           MVC     .S2     TSCH,B4           ; |128| 

           MVKL    .S1     _t_offset,A14
||         MVKL    .S2     _t_start,B5
||         SUB     .L1     A15,1,A0          ; |237| 
||         MV      .L2     B4,B9             ; |128| 
||         SUBAW   .D2     B12,6,B4
||         ADD     .D1     4,A12,A12         ; |237| 

           MVKH    .S1     _t_offset,A14
||         MVKH    .S2     _t_start,B5
||         SUB     .L1     A15,1,A15         ; |237| 

           LDDW    .D1T1   *A14,A5:A4        ; |130| 
||         LDDW    .D2T2   *B5,B7:B6         ; |130| 
||         MVK     .S1     24,A3

           SUB     .L1X    B12,A3,A3
||         MVKL    .S1     _t_stop,A31

           LDDW    .D1T1   *A3,A7:A6         ; |130| 
||         MVKH    .S1     _t_stop,A31

           STDW    .D1T2   B9:B8,*A31        ; |128| 
           NOP             1
           ADDU    .L2X    A4,B6,B17:B16     ; |130| 
           MV      .L2     B16,B5            ; |130| 

           ADD     .S2X    B17,A5,B5         ; |130| 
||         SUBU    .L2     B8,B5,B17:B16     ; |130| 
|| [ A0]   B       .S1     $C$L12            ; |237| 

           ADD     .D2     B5,B7,B5          ; |130| 
||         ADDU    .L2X    A6,B16,B7:B6      ; |130| 
||         EXT     .S2     B17,24,24,B16     ; |130| 

           SUB     .L2     B9,B5,B5          ; |130| 

           ADD     .L2X    B7,A7,B5          ; |130| 
||         ADD     .S2     B5,B16,B7         ; |130| 

           ADD     .L2     B5,B7,B7          ; |130| 
           STDW    .D2T2   B7:B6,*B4         ; |130| 
           ; BRANCHCC OCCURS {$C$L12}        ; |237| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7
           MV      .L1X    B4,A15

           CALLP   .S2     __fltllif,B3
||         LDDW    .D1T1   *A15,A5:A4        ; |135| 

$C$RL33:   ; CALL OCCURS {__fltllif} {0}     ; |135| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 14
           ZERO    .L1     A3
           SET     .S1     A3,0x1a,0x1d,A3
           MPYSP   .M1     A3,A4,A3          ; |135| 
           MV      .L1     A10,A12           ; |135| 
           NOP             2
           SPDP    .S1     A3,A5:A4          ; |135| 
           NOP             1

           CALLP   .S2     __fixdlli,B3
||         FADDDP  .L1     A13:A12,A5:A4,A5:A4 ; |135| 

$C$RL34:   ; CALL OCCURS {__fixdlli} {0}     ; |135| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 10

           STDW    .D1T1   A11:A10,*+A15(16) ; |114| 
||         MV      .L2X    A11,B4            ; |114| 

           MVC     .S2     B4,TSCL           ; |115| 
||         STDW    .D1T1   A5:A4,*A15        ; |135| 

           MVC     .S2     TSCL,B5           ; |116| 
           MVC     .S2     TSCH,B4           ; |116| 
           MVC     .S2     TSCL,B6           ; |117| 
           MVC     .S2     TSCH,B9           ; |117| 
           SUBU    .L2     B6,B5,B7:B6       ; |117| 

           EXT     .S2     B7,24,24,B5       ; |117| 
||         SUB     .L2     B9,B4,B4          ; |117| 
||         MVK     .S1     0x80,A3

           ADD     .L2     B4,B5,B7          ; |117| 
||         MV      .S2X    A14,B8            ; |117| 

           STDW    .D2T2   B7:B6,*B8         ; |117| 
||         MV      .L2X    A3,B10            ; |117| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
$C$L13:    
;          EXCLUSIVE CPU CYCLES: 15
           MVC     .S2     TSCL,B4           ; |122| 
           MVC     .S2     TSCH,B5           ; |122| 
           MVKL    .S1     _input,A3
           MVKH    .S1     _input,A3
           LDW     .D1T1   *A3,A3            ; |248| 
           MVKL    .S2     _t_start,B6
           MVKH    .S2     _t_start,B6
           STDW    .D2T2   B5:B4,*B6         ; |122| 
           NOP             1

           ADD     .L1     A12,A3,A3         ; |248| 
||         CALL    .S1     _acoshsp_c        ; |248| 

           LDW     .D1T1   *A3,A4            ; |248| 
           ADDKPC  .S2     $C$RL35,B3,3      ; |248| 
$C$RL35:   ; CALL OCCURS {_acoshsp_c} {0}    ; |248| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 23
           ADDAD   .D2     B13,1,B4
           LDW     .D2T2   *B4,B4            ; |248| 
           NOP             4
           ADD     .L1X    A12,B4,A3         ; |248| 

           STW     .D1T1   A4,*A3            ; |248| 
||         MVC     .S2     TSCL,B8           ; |128| 

           MVC     .S2     TSCH,B6           ; |128| 

           MVKL    .S2     _t_start,B4
||         LDDW    .D1T1   *A14,A5:A4        ; |130| 
||         SUB     .L1X    B10,1,A0          ; |246| 
||         MV      .L2     B6,B9             ; |128| 
||         MVKL    .S1     _t_stop,A31
||         SUB     .D2     B10,1,B10         ; |246| 

           MVKH    .S2     _t_start,B4
||         ADDAD   .D1     A15,2,A3
||         MVKH    .S1     _t_stop,A31
||         ADD     .L1     4,A12,A12         ; |246| 

           LDDW    .D2T2   *B4,B17:B16       ; |130| 
||         LDDW    .D1T1   *A3,A7:A6         ; |130| 

   [!A0]   MV      .L1     A15,A3
           MVK     .S2     16,B12
           STDW    .D1T2   B9:B8,*A31        ; |128| 
           ADD     .L2X    A15,B12,B12
           ADDU    .L2X    A4,B16,B5:B4      ; |130| 

   [ A0]   B       .S1     $C$L13            ; |246| 
||         ADD     .S2X    B5,A5,B6          ; |130| 
||         SUBU    .L2     B8,B4,B5:B4       ; |130| 

           ADD     .D2     B6,B17,B6         ; |130| 
||         EXT     .S2     B5,24,24,B7       ; |130| 
||         ADDU    .L2X    A6,B4,B5:B4       ; |130| 

           SUB     .L2     B9,B6,B6          ; |130| 

           ADD     .L2X    B5,A7,B6          ; |130| 
||         ADD     .S2     B6,B7,B5          ; |130| 

           ADD     .L2     B6,B5,B5          ; |130| 

   [!A0]   CALL    .S1     __fltllif         ; |135| 
||         STDW    .D2T2   B5:B4,*B12        ; |130| 

           ; BRANCHCC OCCURS {$C$L13}        ; |246| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5
           LDDW    .D1T1   *+A3(16),A5:A4    ; |135| 
           ADDKPC  .S2     $C$RL36,B3,3      ; |135| 
$C$RL36:   ; CALL OCCURS {__fltllif} {0}     ; |135| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 14
           ZERO    .L1     A3
           SET     .S1     A3,0x1a,0x1d,A3
           MPYSP   .M1     A3,A4,A3          ; |135| 
           MV      .L1     A10,A12           ; |135| 
           NOP             2
           SPDP    .S1     A3,A5:A4          ; |135| 
           NOP             1

           CALLP   .S2     __fixdlli,B3
||         FADDDP  .L1     A13:A12,A5:A4,A5:A4 ; |135| 

$C$RL37:   ; CALL OCCURS {__fixdlli} {0}     ; |135| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 10

           MV      .L1     A15,A3            ; |135| 
||         STDW    .D2T1   A5:A4,*B12        ; |135| 
||         MV      .L2X    A11,B4            ; |114| 

           MVC     .S2     B4,TSCL           ; |115| 
||         STDW    .D1T1   A11:A10,*+A3(8)   ; |114| 

           MVC     .S2     TSCL,B5           ; |116| 
           MVC     .S2     TSCH,B4           ; |116| 
           MVC     .S2     TSCL,B6           ; |117| 
           MVC     .S2     TSCH,B8           ; |117| 
           SUBU    .L2     B6,B5,B7:B6       ; |117| 

           EXT     .S2     B7,24,24,B5       ; |117| 
||         SUB     .L2     B8,B4,B4          ; |117| 

           ADD     .L2     B4,B5,B7          ; |117| 
||         MVK     .S1     0x80,A3

           STDW    .D1T2   B7:B6,*A14        ; |117| 
||         STW     .D2T1   A3,*+SP(12)       ; |117| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
$C$L14:    
;          EXCLUSIVE CPU CYCLES: 15
           MVC     .S2     TSCL,B4           ; |122| 
           MVC     .S2     TSCH,B5           ; |122| 
           MVKL    .S1     _input,A3
           MVKH    .S1     _input,A3
           LDW     .D1T1   *A3,A3            ; |257| 
           MVKL    .S2     _t_start,B6
           MVKH    .S2     _t_start,B6
           STDW    .D2T2   B5:B4,*B6         ; |122| 
           NOP             1

           ADD     .L1     A12,A3,A3         ; |257| 
||         CALL    .S1     _acoshsp          ; |257| 

           LDW     .D1T1   *A3,A4            ; |257| 
           ADDKPC  .S2     $C$RL38,B3,3      ; |257| 
$C$RL38:   ; CALL OCCURS {_acoshsp} {0}      ; |257| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 23
           ADD     .L2     4,B13,B4
           LDW     .D2T2   *B4,B4            ; |257| 
           NOP             4
           ADD     .L1X    A12,B4,A3         ; |257| 

           STW     .D1T1   A4,*A3            ; |257| 
||         MVC     .S2     TSCL,B16          ; |128| 

           MVC     .S2     TSCH,B4           ; |128| 

           MVKL    .S2     _t_start,B10
||         LDW     .D2T1   *+SP(12),A31      ; |128| 
||         MVKL    .S1     _cycle_counts+8,A3
||         MV      .L2     B4,B17            ; |128| 
||         ADD     .L1     4,A12,A12         ; |255| 

           MVKH    .S2     _t_start,B10
||         LDDW    .D1T1   *A14,A5:A4        ; |130| 
||         MVKH    .S1     _cycle_counts+8,A3

           LDDW    .D2T2   *B10,B7:B6        ; |130| 
||         LDDW    .D1T1   *A3,A7:A6         ; |130| 
||         MVKL    .S1     _t_stop,A15

           MV      .L2X    A3,B12            ; |128| 
||         MVKH    .S1     _t_stop,A15

           STDW    .D1T2   B17:B16,*A15      ; |128| 
           SUB     .L1     A31,1,A0          ; |255| 

   [!A0]   MVK     .S1     8,A3
||         STW     .D2T1   A0,*+SP(12)       ; |130| 

           ADDU    .L2X    A4,B6,B9:B8       ; |130| 
|| [!A0]   SUB     .L1X    B12,A3,A3

           ADD     .S2X    B9,A5,B6          ; |130| 
|| [ A0]   B       .S1     $C$L14            ; |255| 
||         SUBU    .L2     B16,B8,B5:B4      ; |130| 

           ADD     .D2     B6,B7,B6          ; |130| 
||         EXT     .S2     B5,24,24,B8       ; |130| 
||         ADDU    .L2X    A6,B4,B5:B4       ; |130| 

           SUB     .L2     B17,B6,B7         ; |130| 
||         MV      .S2     B4,B6             ; |130| 
||         ADD     .D2X    B5,A7,B4          ; |130| 

           ADD     .L2     B7,B8,B5          ; |130| 
           ADD     .L2     B4,B5,B7          ; |130| 

   [!A0]   CALL    .S1     __fltllif         ; |135| 
||         STDW    .D2T2   B7:B6,*B12        ; |130| 

           ; BRANCHCC OCCURS {$C$L14}        ; |255| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5
           LDDW    .D1T1   *+A3(8),A5:A4     ; |135| 
           ADDKPC  .S2     $C$RL39,B3,3      ; |135| 
$C$RL39:   ; CALL OCCURS {__fltllif} {0}     ; |135| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 109
           ZERO    .L1     A3
           SET     .S1     A3,0x1a,0x1d,A3
           MPYSP   .M1     A3,A4,A3          ; |135| 
           MV      .L1     A11,A12           ; |135| 
           NOP             2
           SPDP    .S1     A3,A5:A4          ; |135| 
           NOP             1

           CALLP   .S2     __fixdlli,B3
||         FADDDP  .L1     A13:A12,A5:A4,A5:A4 ; |135| 

$C$RL40:   ; CALL OCCURS {__fixdlli} {0}     ; |135| 
           MV      .L1X    B12,A12           ; |135| 
           SUBAW   .D1     A12,2,A3

           MV      .L2X    A10,B4            ; |114| 
||         STDW    .D1T1   A5:A4,*A12        ; |135| 

           STDW    .D1T1   A11:A10,*+A3(32)  ; |114| 
||         MVC     .S2     B4,TSCL           ; |115| 

           MVC     .S2     TSCL,B6           ; |116| 
           MVC     .S2     TSCH,B7           ; |116| 

           STDW    .D2T2   B7:B6,*B10        ; |116| 
||         MVC     .S2     TSCL,B4           ; |117| 

           MVC     .S2     TSCH,B8           ; |117| 

           MVKL    .S1     _input,A3
||         SUBU    .L2     B4,B6,B5:B4       ; |117| 

           MVKH    .S1     _input,A3
||         EXT     .S2     B5,24,24,B6       ; |117| 
||         SUB     .L2     B8,B7,B31         ; |117| 

           ADD     .L2     B31,B6,B5         ; |117| 

           MV      .L2X    A3,B9             ; |264| 
||         MV      .L1X    B13,A10           ; |117| 
||         STDW    .D1T2   B5:B4,*A14        ; |117| 

           CALLP   .S2     _acoshsp_v,B3
||         LDW     .D2T1   *B9,A4            ; |264| 
||         LDW     .D1T2   *+A10(16),B4      ; |264| 
||         MVK     .S1     0x80,A6           ; |264| 

$C$RL41:   ; CALL OCCURS {_acoshsp_v} {0}    ; |264| 
           MVC     .S2     TSCL,B8           ; |128| 
           MVC     .S2     TSCH,B4           ; |128| 

           LDDW    .D1T1   *A14,A5:A4        ; |130| 
||         LDDW    .D2T2   *B10,B7:B6        ; |130| 

           MVK     .S2     24,B10
           ADD     .L2X    A12,B10,B10

           MV      .L2     B4,B9             ; |128| 
||         LDDW    .D2T2   *B10,B5:B4        ; |130| 

           NOP             1
           ADDU    .L1X    A4,B6,A7:A6       ; |130| 

           ADD     .S1     A7,A5,A4          ; |130| 
||         SUBU    .L1X    B8,A6,A7:A6       ; |130| 

           MV      .L1     A6,A3             ; |130| 

           ADDU    .L1X    B4,A3,A5:A4       ; |130| 
||         ADD     .L2X    A4,B7,B4          ; |130| 

           EXT     .S1     A7,24,24,A3       ; |130| 

           SUB     .L2     B9,B4,B7          ; |130| 
||         ADD     .S2X    A5,B5,B5          ; |130| 

           ADD     .L2X    B7,A3,B7          ; |130| 

           ADD     .L2     B5,B7,B5          ; |130| 
||         MV      .S2X    A4,B4             ; |130| 

           MV      .L2X    A15,B6            ; |128| 

           CALLP   .S2     __fltllif,B3
||         DADD    .L1X    0,B5:B4,A5:A4     ; |130| 
||         STDW    .D2T2   B9:B8,*B6         ; |128| 

$C$RL42:   ; CALL OCCURS {__fltllif} {0}     ; |130| 
           ZERO    .L1     A3
           SET     .S1     A3,0x1a,0x1d,A3
           MPYSP   .M1     A3,A4,A3          ; |130| 
           MV      .L1     A11,A12           ; |130| 
           NOP             2
           SPDP    .S1     A3,A5:A4          ; |130| 
           NOP             1

           CALLP   .S2     __fixdlli,B3
||         FADDDP  .L1     A13:A12,A5:A4,A5:A4 ; |130| 

$C$RL43:   ; CALL OCCURS {__fixdlli} {0}     ; |130| 
           MVKL    .S2     0x3eb0c6f7,B7
           MVKL    .S2     0xa0b5ed8d,B6
           MVKH    .S2     0x3eb0c6f7,B7

           STDW    .D2T1   A5:A4,*B10        ; |130| 
||         LDW     .D1T2   *+A10(4),B4       ; |66| 
||         MVKH    .S2     0xa0b5ed8d,B6

           CALLP   .S2     _isequal,B3
||         LDW     .D1T1   *A10,A4           ; |66| 
||         MVK     .L1     0x1,A8            ; |66| 
||         MVK     .S1     0x80,A6           ; |66| 

$C$RL44:   ; CALL OCCURS {_isequal} {0}      ; |66| 
           MVKL    .S2     0xa0b5ed8d,B6

           MVKL    .S1     _fcn_pass,A3
||         MVKL    .S2     0x3eb0c6f7,B7

           LDW     .D1T2   *+A10(8),B4       ; |67| 
||         MVKH    .S1     _fcn_pass,A3
||         MVKH    .S2     0xa0b5ed8d,B6

           MV      .L1     A4,A5             ; |66| 
||         LDW     .D1T1   *A10,A4           ; |67| 
||         MV      .S1     A3,A11            ; |66| 
||         MVKH    .S2     0x3eb0c6f7,B7

           CALLP   .S2     _isequal,B3
||         STW     .D1T1   A5,*+A11(4)       ; |66| 
||         MVK     .S1     0x80,A6           ; |67| 
||         MVK     .L1     0x1,A8            ; |67| 

$C$RL45:   ; CALL OCCURS {_isequal} {0}      ; |67| 
           MVKL    .S2     0x3eb0c6f7,B7
           MVKL    .S2     0xa0b5ed8d,B6

           STW     .D1T1   A4,*+A11(8)       ; |67| 
||         MVKH    .S2     0x3eb0c6f7,B7

           LDW     .D1T2   *+A10(12),B4      ; |68| 
||         MVKH    .S2     0xa0b5ed8d,B6

           CALLP   .S2     _isequal,B3
||         LDW     .D1T1   *A10,A4           ; |68| 
||         MVK     .S1     0x80,A6           ; |68| 
||         MVK     .L1     0x1,A8            ; |68| 

$C$RL46:   ; CALL OCCURS {_isequal} {0}      ; |68| 
           LDW     .D2T2   *+SP(20),B4       ; |68| 
           MVKL    .S2     0x3eb0c6f7,B7
           MVKL    .S2     0xa0b5ed8d,B6
           MVKH    .S2     0x3eb0c6f7,B7

           STW     .D1T1   A4,*+A11(12)      ; |68| 
||         MVKH    .S2     0xa0b5ed8d,B6

           CALLP   .S2     _isequal,B3
||         LDW     .D2T2   *B4,B4            ; |69| 
||         LDW     .D1T1   *A10,A4           ; |69| 
||         MVK     .S1     0x80,A6           ; |69| 
||         MVK     .L1     0x1,A8            ; |69| 

$C$RL47:   ; CALL OCCURS {_isequal} {0}      ; |69| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 16
           LDW     .D2T2   *+SP(24),B4       ; |69| 
           STW     .D1T1   A4,*+A11(16)      ; |69| 
           NOP             3
           LDW     .D2T2   *B4,B0            ; |72| 
           NOP             4

   [!B0]   BNOP    .S1     $C$L15,4          ; |72| 
||         MV      .L2     B0,B1             ; guard predicate rewrite
|| [ B0]   LDW     .D2T2   *B11,B0           ; |72| 

   [ B1]   ADD     .L2     4,B11,B4
           ; BRANCHCC OCCURS {$C$L15}        ; |72| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 15
   [ B0]   LDW     .D2T2   *B4,B4            ; |72| 
   [!B0]   MV      .L1     A12,A0            ; |72| 
           CMPEQ   .L1     A4,0,A3           ; |72| 
           XOR     .L1     1,A3,A3           ; |72| 
           NOP             1
   [ B0]   CMPEQ   .L2     B4,0,B4           ; |72| 
   [ B0]   XOR     .L2     1,B4,B4           ; |72| 
           NOP             1
   [ B0]   AND     .L1X    A3,B4,A0          ; |72| 
   [ A0]   B       .S1     $C$L16            ; |72| 
   [ A0]   CALL    .S1     _print_test_results ; |270| 
           MVK     .L1     0x1,A3            ; |72| 
   [ A0]   MVKL    .S1     _all_pass,A4
   [ A0]   MVKH    .S1     _all_pass,A4
           NOP             1
           ; BRANCHCC OCCURS {$C$L16}        ; |72| 
;** --------------------------------------------------------------------------*
$C$L15:    
;          EXCLUSIVE CPU CYCLES: 5
           CALL    .S1     _print_test_results ; |270| 
           MVKL    .S1     _all_pass,A4
           MVKH    .S1     _all_pass,A4
           MV      .L1     A12,A3
           NOP             1
;** --------------------------------------------------------------------------*
$C$L16:    
;          EXCLUSIVE CPU CYCLES: 1

           STW     .D1T1   A3,*A4            ; |72| 
||         MVK     .L1     0x2,A4            ; |270| 
||         ADDKPC  .S2     $C$RL48,B3,0      ; |270| 

$C$RL48:   ; CALL OCCURS {_print_test_results} {0}  ; |270| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 30
           MVKL    .S2     $C$SL2+0,B4
           MVKH    .S2     $C$SL2+0,B4

           CALLP   .S2     _printf,B3
||         STW     .D2T2   B4,*+SP(4)        ; |271| 

$C$RL49:   ; CALL OCCURS {_printf} {0}       ; |271| 
           MVKL    .S2     $C$SL3+0,B4
           MVKH    .S2     $C$SL3+0,B4

           CALLP   .S2     _printf,B3
||         STW     .D2T2   B4,*+SP(4)        ; |271| 

$C$RL50:   ; CALL OCCURS {_printf} {0}       ; |271| 
           MVKL    .S1     $C$SL1+0,A10
           MVKH    .S1     $C$SL1+0,A10

           CALLP   .S2     _print_profile_results,B3
||         MV      .L1     A10,A4            ; |278| 

$C$RL51:   ; CALL OCCURS {_print_profile_results} {0}  ; |278| 

           CALLP   .S2     _print_memory_results,B3
||         MV      .L1     A10,A4            ; |281| 

$C$RL52:   ; CALL OCCURS {_print_memory_results} {0}  ; |281| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 11
           LDW     .D2T2   *++SP(40),B3      ; |282| 
           LDDW    .D2T1   *++SP,A13:A12     ; |282| 
           LDDW    .D2T1   *++SP,A15:A14     ; |282| 
           LDDW    .D2T2   *++SP,B11:B10     ; |282| 
           LDDW    .D2T2   *++SP,B13:B12     ; |282| 

           LDW     .D2T1   *++SP(8),A10      ; |282| 
||         RET     .S2     B3                ; |282| 

           LDW     .D2T1   *++SP(8),A11      ; |282| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |282| 
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const:.string"
$C$SL1:	.string	"acoshSP",0
$C$SL2:	.string	"----------------------------------------",0
$C$SL3:	.string	"----------------------------------------",10,0
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	_printf
	.global	_acoshf
	.global	_driver_init
	.global	_print_profile_results
	.global	_print_memory_results
	.global	_print_test_results
	.global	_gimme_random
	.global	_isequal
	.global	_acoshsp_c
	.global	_acoshsp
	.global	_acoshsp_v
	.global	_t_start
	.global	_t_stop
	.global	_t_offset
	.global	_cycle_counts
	.global	_fcn_pass
	.global	_all_pass
	.global	_a_ext
	.global	_a_sc
	.global	_output
	.global	_input
	.global	_logtable
	.global	__fltllif
	.global	__fixdlli

;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "TI", Tag_File, 1, Tag_ABI_stack_align_needed(0)
	.battr "TI", Tag_File, 1, Tag_ABI_stack_align_preserved(0)
	.battr "TI", Tag_File, 1, Tag_Tramps_Use_SOC(1)
