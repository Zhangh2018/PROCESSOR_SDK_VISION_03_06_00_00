;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v7.4.2 *
;* Date/Time created: Mon Nov 04 22:23:09 2013                                *
;******************************************************************************
	.compiler_opts --abi=coffabi --c64p_l1d_workaround=off --endian=big --hll_source=on --long_precision_bits=40 --mem_model:code=near --mem_model:const=data --mem_model:data=far --object_format=coff --silicon_version=6600 --symdebug:none 

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C66xx                                          *
;*   Optimization      : Enabled at level 3                                   *
;*   Optimizing for    : Speed                                                *
;*                       Based on options: -o3, no -ms                        *
;*   Endian            : Big                                                  *
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
	.word	03b55a20dh		; _a[0] @ 0
	.word	03ba3065dh		; _a[1] @ 32
	.word	0bc23065fh		; _a[2] @ 64
	.word	03c74898ah		; _a[3] @ 96
	.word	0bca30660h		; _a[4] @ 128
	.word	03ccbc7f5h		; _a[5] @ 160
	.word	0bcf4898fh		; _a[6] @ 192
	.word	03d0ea592h		; _a[7] @ 224
	.word	0bd23065dh		; _a[8] @ 256
	.word	03d37672ah		; _a[9] @ 288
	.word	0bd4bc7f5h		; _a[10] @ 320
	.word	03d6028c2h		; _a[11] @ 352
	.word	0bd74898dh		; _a[12] @ 384
	.word	03d84752dh		; _a[13] @ 416
	.word	0bd8ea592h		; _a[14] @ 448
	.word	03d98d5f8h		; _a[15] @ 480
	.word	0bda3065eh		; _a[16] @ 512
	.word	03dad36c4h		; _a[17] @ 544
	.word	0bdb7672ah		; _a[18] @ 576
	.word	03dc1978fh		; _a[19] @ 608
	.word	0bdcbc7f6h		; _a[20] @ 640
	.word	03dd5f85ah		; _a[21] @ 672
	.word	0bde028bdh		; _a[22] @ 704
	.word	03dea592dh		; _a[23] @ 736
	.word	0bdf4898fh		; _a[24] @ 768
	.word	03dfeb9f2h		; _a[25] @ 800
	.word	0be04752ah		; _a[26] @ 832
	.word	03e098d62h		; _a[27] @ 864
	.word	0be0ea594h		; _a[28] @ 896
	.word	03e13bdc5h		; _a[29] @ 928
	.word	0be18d5f6h		; _a[30] @ 960
	.word	03e1dee2eh		; _a[31] @ 992
	.word	0be230660h		; _a[32] @ 1024
	.word	03e281e91h		; _a[33] @ 1056
	.word	0be2d36c2h		; _a[34] @ 1088
	.word	03e324efah		; _a[35] @ 1120
	.word	0be37672ch		; _a[36] @ 1152
	.word	03e3c7f5dh		; _a[37] @ 1184
	.word	0be41978eh		; _a[38] @ 1216
	.word	03e46afc6h		; _a[39] @ 1248
	.word	0be4bc7f7h		; _a[40] @ 1280
	.word	03e50e029h		; _a[41] @ 1312
	.word	0be55f85ah		; _a[42] @ 1344
	.word	03e5b1092h		; _a[43] @ 1376
	.word	0be6028c3h		; _a[44] @ 1408
	.word	03e6540f5h		; _a[45] @ 1440
	.word	0be6a5926h		; _a[46] @ 1472
	.word	03e6f7157h		; _a[47] @ 1504
	.word	0be74898fh		; _a[48] @ 1536
	.word	03e79a1c1h		; _a[49] @ 1568
	.word	0be7eb9f2h		; _a[50] @ 1600
	.word	03e81e912h		; _a[51] @ 1632
	.word	0be84752eh		; _a[52] @ 1664
	.word	03e870146h		; _a[53] @ 1696
	.word	0be898d5fh		; _a[54] @ 1728
	.word	03e8c1978h		; _a[55] @ 1760
	.word	0be8ea594h		; _a[56] @ 1792
	.word	03e9131ach		; _a[57] @ 1824
	.word	0be93bdc5h		; _a[58] @ 1856
	.word	03e9649deh		; _a[59] @ 1888
	.word	0be98d5fah		; _a[60] @ 1920
	.word	03e9b6212h		; _a[61] @ 1952
	.word	0be9dee2bh		; _a[62] @ 1984
	.word	03ea07a44h		; _a[63] @ 2016
	.word	0bea30660h		; _a[64] @ 2048
	.word	03ea59278h		; _a[65] @ 2080
	.word	0bea81e91h		; _a[66] @ 2112
	.word	03eaaaaaah		; _a[67] @ 2144
	.word	0bead36c6h		; _a[68] @ 2176
	.word	03eafc2deh		; _a[69] @ 2208
	.word	0beb24ef7h		; _a[70] @ 2240
	.word	03eb4db10h		; _a[71] @ 2272
	.word	0beb7672ch		; _a[72] @ 2304
	.word	03eb9f344h		; _a[73] @ 2336
	.word	0bebc7f5dh		; _a[74] @ 2368
	.word	03ebf0b75h		; _a[75] @ 2400
	.word	0bec19792h		; _a[76] @ 2432
	.word	03ec423aah		; _a[77] @ 2464
	.word	0bec6afc3h		; _a[78] @ 2496
	.word	03ec93bdbh		; _a[79] @ 2528
	.word	0becbc7f7h		; _a[80] @ 2560
	.word	03ece5410h		; _a[81] @ 2592
	.word	0bed0e029h		; _a[82] @ 2624
	.word	03ed36c41h		; _a[83] @ 2656
	.word	0bed5f85dh		; _a[84] @ 2688
	.word	03ed88476h		; _a[85] @ 2720
	.word	0bedb108fh		; _a[86] @ 2752
	.word	03edd9ca7h		; _a[87] @ 2784
	.word	0bee028c3h		; _a[88] @ 2816
	.word	03ee2b4dch		; _a[89] @ 2848
	.word	0bee540f5h		; _a[90] @ 2880
	.word	03ee7cd0dh		; _a[91] @ 2912
	.word	0beea5926h		; _a[92] @ 2944
	.word	03eece542h		; _a[93] @ 2976
	.word	0beef715bh		; _a[94] @ 3008
	.word	03ef1fd73h		; _a[95] @ 3040
	.word	0bef4898ch		; _a[96] @ 3072
	.word	03ef715a8h		; _a[97] @ 3104
	.word	0bef9a1c1h		; _a[98] @ 3136
	.word	03efc2dd9h		; _a[99] @ 3168
	.word	0befeb9f2h		; _a[100] @ 3200
	.word	03f00a305h		; _a[101] @ 3232
	.word	0bf01e913h		; _a[102] @ 3264
	.word	03f032f20h		; _a[103] @ 3296
	.word	0bf04752eh		; _a[104] @ 3328
	.word	03f05bb38h		; _a[105] @ 3360
	.word	0bf070146h		; _a[106] @ 3392
	.word	03f084753h		; _a[107] @ 3424
	.word	0bf098d61h		; _a[108] @ 3456
	.word	03f0ad36bh		; _a[109] @ 3488
	.word	0bf0c1979h		; _a[110] @ 3520
	.word	03f0d5f86h		; _a[111] @ 3552
	.word	0bf0ea592h		; _a[112] @ 3584
	.word	03f0feb9eh		; _a[113] @ 3616
	.word	0bf1131ach		; _a[114] @ 3648
	.word	03f1277b9h		; _a[115] @ 3680
	.word	0bf13bdc5h		; _a[116] @ 3712
	.word	03f1503d1h		; _a[117] @ 3744
	.word	0bf1649dfh		; _a[118] @ 3776
	.word	03f178fech		; _a[119] @ 3808
	.word	0bf18d5f8h		; _a[120] @ 3840
	.word	03f1a1c04h		; _a[121] @ 3872
	.word	0bf1b6212h		; _a[122] @ 3904
	.word	03f1ca81fh		; _a[123] @ 3936
	.word	0bf1dee2bh		; _a[124] @ 3968
	.word	03f1f3437h		; _a[125] @ 4000
	.word	0bf207a45h		; _a[126] @ 4032
	.word	03f21c052h		; _a[127] @ 4064
	.word	0bf23065eh		; _a[128] @ 4096
	.word	03f244c6ah		; _a[129] @ 4128
	.word	0bf259278h		; _a[130] @ 4160
	.word	03f26d885h		; _a[131] @ 4192
	.word	0bf281e91h		; _a[132] @ 4224
	.word	03f29649dh		; _a[133] @ 4256
	.word	0bf2aaaabh		; _a[134] @ 4288
	.word	03f2bf0b8h		; _a[135] @ 4320
	.word	0bf2d36c4h		; _a[136] @ 4352
	.word	03f2e7cd0h		; _a[137] @ 4384
	.word	0bf2fc2deh		; _a[138] @ 4416
	.word	03f3108ebh		; _a[139] @ 4448
	.word	0bf324ef7h		; _a[140] @ 4480
	.word	03f339503h		; _a[141] @ 4512
	.word	0bf34db11h		; _a[142] @ 4544
	.word	03f36211eh		; _a[143] @ 4576
	.word	0bf37672ah		; _a[144] @ 4608
	.word	03f38ad36h		; _a[145] @ 4640
	.word	0bf39f344h		; _a[146] @ 4672
	.word	03f3b3951h		; _a[147] @ 4704
	.word	0bf3c7f5dh		; _a[148] @ 4736
	.word	03f3dc569h		; _a[149] @ 4768
	.word	0bf3f0b75h		; _a[150] @ 4800
	.word	03f405184h		; _a[151] @ 4832
	.word	0bf419790h		; _a[152] @ 4864
	.word	03f42dd9eh		; _a[153] @ 4896
	.word	0bf4423a8h		; _a[154] @ 4928
	.word	03f4569b6h		; _a[155] @ 4960
	.word	0bf46afc3h		; _a[156] @ 4992
	.word	03f47f5d1h		; _a[157] @ 5024
	.word	0bf493bdbh		; _a[158] @ 5056
	.word	03f4a81e9h		; _a[159] @ 5088
	.word	0bf4bc7f6h		; _a[160] @ 5120
	.word	03f4d0e04h		; _a[161] @ 5152
	.word	0bf4e540eh		; _a[162] @ 5184
	.word	03f4f9a1ch		; _a[163] @ 5216
	.word	0bf50e029h		; _a[164] @ 5248
	.word	03f522635h		; _a[165] @ 5280
	.word	0bf536c41h		; _a[166] @ 5312
	.word	03f54b24fh		; _a[167] @ 5344
	.word	0bf55f85ch		; _a[168] @ 5376
	.word	03f573e68h		; _a[169] @ 5408
	.word	0bf588474h		; _a[170] @ 5440
	.word	03f59ca82h		; _a[171] @ 5472
	.word	0bf5b108fh		; _a[172] @ 5504
	.word	03f5c569bh		; _a[173] @ 5536
	.word	0bf5d9ca7h		; _a[174] @ 5568
	.word	03f5ee2b5h		; _a[175] @ 5600
	.word	0bf6028c2h		; _a[176] @ 5632
	.word	03f616eceh		; _a[177] @ 5664
	.word	0bf62b4dah		; _a[178] @ 5696
	.word	03f63fae8h		; _a[179] @ 5728
	.word	0bf6540f5h		; _a[180] @ 5760
	.word	03f668701h		; _a[181] @ 5792
	.word	0bf67cd0dh		; _a[182] @ 5824
	.word	03f69131bh		; _a[183] @ 5856
	.word	0bf6a5928h		; _a[184] @ 5888
	.word	03f6b9f34h		; _a[185] @ 5920
	.word	0bf6ce540h		; _a[186] @ 5952
	.word	03f6e2b4eh		; _a[187] @ 5984
	.word	0bf6f715bh		; _a[188] @ 6016
	.word	03f70b767h		; _a[189] @ 6048
	.word	0bf71fd73h		; _a[190] @ 6080
	.word	03f734381h		; _a[191] @ 6112
	.word	0bf74898eh		; _a[192] @ 6144
	.word	03f75cf9ah		; _a[193] @ 6176
	.word	0bf7715a6h		; _a[194] @ 6208
	.word	03f785bb4h		; _a[195] @ 6240
	.word	0bf79a1c1h		; _a[196] @ 6272
	.word	03f7ae7cdh		; _a[197] @ 6304
	.word	0bf7c2dd9h		; _a[198] @ 6336
	.word	03f7d73e7h		; _a[199] @ 6368
	.word	0bf7eb9f4h		; _a[200] @ 6400
$C$IR_1:	.set	804

	.global	_a
_a:	.usect	".far",804,8
;	C:\MATHLIB_Tools\CCSV5_4_0\ccsv5\tools\compiler\c6000_7.4.2\bin\opt6x.exe C:\\DOCUME~1\\a0868396\\LOCALS~1\\Temp\\164002 C:\\DOCUME~1\\a0868396\\LOCALS~1\\Temp\\164004 
;**	Parameter deleted: req_flags == 9;
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
||         MVK     .S1     0x9,A8            ; |66| 

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
||         MVK     .S1     0x9,A8            ; |67| 

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
||         MVK     .S1     0x9,A8            ; |68| 

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
||         MVK     .S1     0x9,A8            ; |69| 

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
;*   Local Frame Size  : 8 Args + 4 Auto + 56 Save = 68 byte                  *
;******************************************************************************
_main:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 12
           STW     .D2T1   A11,*SP--(8)      ; |121| 
           STW     .D2T1   A10,*SP--(8)      ; |121| 
           STDW    .D2T2   B13:B12,*SP--     ; |121| 
           STDW    .D2T2   B11:B10,*SP--     ; |121| 
           STDW    .D2T1   A15:A14,*SP--     ; |121| 

           STDW    .D2T1   A13:A12,*SP--     ; |121| 
||         MVKL    .S1     $C$SL1+0,A4

           STW     .D2T2   B3,*SP--(24)      ; |121| 
||         CALLP   .S2     _driver_init,B3
||         MVKH    .S1     $C$SL1+0,A4

$C$RL4:    ; CALL OCCURS {_driver_init} {0}  ; |129| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 3

           MVK     .S2     0xc9,B4
||         MVKL    .S1     _a,A11

           MVKH    .S1     _a,A11
||         MVKL    .S2     _output,B13

           CALL    .S1     _atanhf           ; |138| 
||         MV      .L1     A11,A13
||         MV      .D1X    B4,A12
||         MVKH    .S2     _output,B13
||         ZERO    .L2     B10

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
$C$L3:    
;          EXCLUSIVE CPU CYCLES: 5
           LDW     .D1T1   *A13++,A4         ; |138| 
           ADDKPC  .S2     $C$RL5,B3,3       ; |138| 
$C$RL5:    ; CALL OCCURS {_atanhf} {0}       ; |138| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           LDW     .D2T2   *B13,B4           ; |138| 
||         SUB     .L1     A12,1,A0          ; |137| 
||         SUB     .S1     A12,1,A12         ; |137| 

   [ A0]   BNOP    .S1     $C$L3,3           ; |137| 

           ADD     .L2     B10,B4,B4         ; |138| 
||         ADD     .S2     4,B10,B10         ; |137| 

   [ A0]   CALL    .S1     _atanhf           ; |138| 
||         STW     .D2T1   A4,*B4            ; |138| 
|| [!A0]   MVK     .S2     0xc9,B4

           ; BRANCHCC OCCURS {$C$L3}         ; |137| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 2

           ZERO    .L2     B10
||         MV      .L1     A11,A10
||         ADD     .S2     4,B13,B11

           MV      .L1X    B4,A12
||         CALL    .S1     _atanhsp          ; |141| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
$C$L4:    
;          EXCLUSIVE CPU CYCLES: 5
           LDW     .D1T1   *A10++,A4         ; |141| 
           ADDKPC  .S2     $C$RL6,B3,3       ; |141| 
$C$RL6:    ; CALL OCCURS {_atanhsp} {0}      ; |141| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           LDW     .D2T2   *B11,B4           ; |141| 
||         SUB     .L1     A12,1,A0          ; |140| 
||         SUB     .S1     A12,1,A12         ; |140| 

   [ A0]   BNOP    .S1     $C$L4,3           ; |140| 

           ADD     .L2     B10,B4,B4         ; |141| 
||         ADD     .S2     4,B10,B10         ; |140| 

   [ A0]   CALL    .S1     _atanhsp          ; |141| 
||         STW     .D2T1   A4,*B4            ; |141| 
|| [!A0]   MVK     .S2     0xc9,B4

           ; BRANCHCC OCCURS {$C$L4}         ; |140| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 2

           ZERO    .L2     B10
||         MV      .L1     A11,A12
||         ADD     .S2     4,B11,B11

           MV      .L1X    B4,A10
||         CALL    .S1     _atanhsp_c        ; |144| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
$C$L5:    
;          EXCLUSIVE CPU CYCLES: 5
           LDW     .D1T1   *A12++,A4         ; |144| 
           ADDKPC  .S2     $C$RL7,B3,3       ; |144| 
$C$RL7:    ; CALL OCCURS {_atanhsp_c} {0}    ; |144| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           LDW     .D2T2   *B11,B4           ; |144| 
||         SUB     .L1     A10,1,A0          ; |143| 
||         SUB     .S1     A10,1,A10         ; |143| 

   [ A0]   BNOP    .S2     $C$L5,3           ; |143| 
|| [!A0]   MVKL    .S1     0x3e4edd9b,A14
|| [!A0]   ZERO    .L1     A12
|| [!A0]   ADD     .L2     4,B11,B16
|| [!A0]   ZERO    .D1     A13

           ADD     .L2     B10,B4,B4         ; |144| 
||         ADD     .S2     4,B10,B10         ; |143| 

   [ A0]   CALL    .S1     _atanhsp_c        ; |144| 
||         STW     .D2T1   A4,*B4            ; |144| 

           ; BRANCHCC OCCURS {$C$L5}         ; |143| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 2

           MVK     .S2     0xc9,B0
||         MVKH    .S1     0x3e4edd9b,A14
||         MV      .L1     A11,A16
||         ZERO    .D1     A28
||         LDW     .D2T1   *B16,A9

           MVK     .S2     0xfffffc01,B29
||         MV      .L1     A13,A18           ; |93| 
||         SET     .S1     A12,0x17,0x1e,A12

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L6:    
;          EXCLUSIVE CPU CYCLES: 14

           ZERO    .L1     A4
||         ZERO    .S1     A7
||         LDW     .D1T1   *A16++,A3         ; |147| 

           MVKL    .S2     0x3dcccccd,B4
           SET     .S1     A7,0x17,0x1d,A7
           MVKH    .S2     0x3dcccccd,B4
           MVKH    .S1     0xbf800000,A4
           ABSSP   .S1     A3,A8             ; |155| 
           CMPLTSP .S1     A3,A13,A0         ; |158| 

           CMPGTSP .S2X    A8,B4,B1          ; |162| 
||         ZERO    .L2     B4
|| [ A0]   MV      .L1     A4,A7             ; |158| 

   [!B1]   MPYSP   .M1     A3,A3,A4          ; |171| 
|| [!B1]   B       .S1     $C$L7             ; |162| 
||         SET     .S2     B4,0x17,0x1d,B4

           FSUBSP  .L2X    B4,A8,B4          ; |93| 
   [ B1]   ZERO    .L2     B7
   [ B1]   SET     .S2     B7,0x1e,0x1e,B7

   [!B1]   MPYSP   .M1     A4,A4,A3          ; |171| 
||         RCPSP   .S2     B4,B5             ; |93| 

           MPYSP   .M2     B5,B4,B6          ; |93| 
|| [!B1]   MVKL    .S2     0x3eaaa9d8,B4

           ; BRANCHCC OCCURS {$C$L7}         ; |162| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 79
           MV      .L2     B7,B31            ; |93| 
           ZERO    .L1     A3
           MVKL    .S2     0xbe6bd0fc,B30
           FSUBSP  .L2     B7,B6,B6          ; |93| 
           SET     .S1     A3,0x17,0x1d,A3
           FADDSP  .L1     A3,A8,A3          ; |93| 
           MPYSP   .M2     B5,B6,B5          ; |93| 
           MVKL    .S1     0x3e436581,A17
           ZERO    .L1     A19
           MVKH    .S2     0xbe6bd0fc,B30
           MPYSP   .M2     B5,B4,B4          ; |93| 
           SET     .S1     A19,0x14,0x1d,A19
           MVKH    .S1     0x3e436581,A17
           MVKL    .S2     0x3eaaa872,B8
           FSUBSP  .L2     B31,B4,B4         ; |93| 
           MVKH    .S2     0x3eaaa872,B8
           MVKL    .S2     _logtable,B27
           MPYSP   .M2     B5,B4,B4          ; |93| 
           MVKL    .S1     0xbe804d66,A31
           MVKH    .S2     _logtable,B27
           MVKH    .S1     0xbe804d66,A31
           MVKL    .S2     0xfefa39ec,B18
           MPYSP   .M1X    B4,A3,A3          ; |93| 
           MVKL    .S1     0xbf000003,A29
           MVKH    .S1     0xbf000003,A29
           MVKL    .S2     0x3fe62e42,B19
           SPDP    .S1     A3,A5:A4          ; |93| 
           MVKH    .S2     0xfefa39ec,B18
           RCPDP   .S1     A5:A4,A5:A4       ; |93| 
           MVKH    .S2     0x3fe62e42,B19

           CLR     .S1     A5,0,16,A20       ; |93| 
||         MV      .L1     A13,A4            ; |93| 

           MV      .L1     A20,A5            ; |93| 
           MPYSPDP .M1     A3,A5:A4,A5:A4    ; |93| 
           EXTU    .S1     A20,1,21,A30      ; |93| 
           MV      .L2X    A20,B28           ; |93| Define a twin register
           ADD     .L2X    B29,A30,B4        ; |93| 
           INTDP   .L2     B4,B7:B6          ; |93| 
           EXTU    .S2     B28,12,29,B4      ; |93| 
           NOP             1
           FSUBDP  .L1     A5:A4,A19:A18,A5:A4 ; |93| 
           NOP             2
           DPSP    .L1     A5:A4,A6          ; |93| 
           FMPYDP  .M2     B19:B18,B7:B6,B19:B18 ; |93| 
           NOP             2
           MPYSP   .M1     A6,A6,A3          ; |93| 
           MPYSP   .M1     A17,A6,A17        ; |93| 
           NOP             3

           MPYSP   .M2X    B30,A3,B5         ; |93| 
||         FADDSP  .L1     A31,A17,A19       ; |93| 

           MPYSP   .M1     A3,A6,A17         ; |93| 
           MPYSP   .M1     A3,A3,A6          ; |93| 
           MPYSP   .M1     A29,A3,A3         ; |93| 
           FADDSP  .L2X    B5,A19,B5         ; |93| 
           NOP             1
           MPYSP   .M2X    B8,A17,B8         ; |93| 
           MPYSP   .M2X    A6,B5,B9          ; |93| 
           LDDW    .D2T2   *+B27[B4],B5:B4   ; |93| 
           NOP             2
           FADDSP  .L2     B9,B8,B6          ; |93| 
           NOP             1
           FSUBDP  .L2     B5:B4,B19:B18,B5:B4 ; |93| 
           FADDSP  .L2X    B6,A3,B6          ; |93| 
           SET     .S1     A28,0x18,0x1d,A3
           FADDDP  .L2X    B5:B4,A5:A4,B9:B8 ; |93| 
           SPDP    .S2     B6,B5:B4          ; |93| 
           NOP             1
           FADDDP  .L2     B5:B4,B9:B8,B5:B4 ; |93| 
           NOP             2

           BNOP    .S1     $C$L8,4           ; |180| 
||         DPSP    .L2     B5:B4,B4          ; |93| 

           MPYSP   .M1X    A3,B4,A3          ; |93| 
           ; BRANCH OCCURS {$C$L8}           ; |180| 
;** --------------------------------------------------------------------------*
$C$L7:    
;          EXCLUSIVE CPU CYCLES: 14
           MVKH    .S2     0x3eaaa9d8,B4
           MPYSP   .M2X    B4,A4,B4          ; |171| 
           MPYSP   .M1     A14,A3,A3         ; |171| 
           NOP             3
           FADDSP  .L1X    A3,B4,A3          ; |171| 
           NOP             2
           MPYSP   .M1     A8,A3,A3          ; |171| 
           NOP             3
           FADDSP  .L1     A8,A3,A3          ; |171| 
;** --------------------------------------------------------------------------*
$C$L8:    
;          EXCLUSIVE CPU CYCLES: 9

           ZERO    .L1     A4
||         SUB     .L2     B0,1,B0           ; |146| 

           SET     .S1     A4,0x17,0x1d,A4
           CMPEQSP .S1     A8,A4,A0          ; |184| 

   [ A0]   MV      .L1     A12,A3            ; |184| 
|| [ B0]   B       .S1     $C$L6             ; |146| 

           MPYSP   .M1     A7,A3,A3          ; |184| 
   [!B0]   ADD     .L2     4,B16,B12
           NOP             2

   [!B0]   CALL    .S1     _atanhsp_v        ; |149| 
||         STW     .D1T1   A3,*A9++          ; |184| 

           ; BRANCHCC OCCURS {$C$L6}         ; |146| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5
           LDW     .D2T2   *B12,B4           ; |149| 
           MV      .L1     A11,A4            ; |149| 
           MVK     .S1     0xc9,A6           ; |149| 
           ADDKPC  .S2     $C$RL8,B3,1       ; |149| 
$C$RL8:    ; CALL OCCURS {_atanhsp_v} {0}    ; |149| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 12

           CALLP   .S2     _allequal,B3
||         MVK     .S1     0xc9,A4           ; |154| 

$C$RL9:    ; CALL OCCURS {_allequal} {0}     ; |154| 

           CALLP   .S2     _print_test_results,B3
||         MVK     .L1     0x1,A4            ; |155| 

$C$RL10:   ; CALL OCCURS {_print_test_results} {0}  ; |155| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           ZERO    .L1     A4
||         MVKL    .S2     _a_sc,B10

           MVKH    .S1     0x80000000,A4
||         MVKH    .S2     _a_sc,B10
||         ZERO    .L2     B4
||         ZERO    .L1     A3

           SET     .S1     A3,0x17,0x1d,A3
||         MVKH    .S2     0xff800000,B4
||         ZERO    .L1     A31
||         MV      .L2X    A12,B5            ; |165| 

           STDW    .D2T2   B5:B4,*+B10(8)    ; |165| 
||         MVKH    .S1     0xbf800000,A31
||         MV      .L1     A13,A5            ; |163| 

           STDW    .D2T1   A5:A4,*B10        ; |163| 
||         MV      .L2X    A3,B7             ; |167| 
||         ADD     .L1     -1,A4,A7
||         MVK     .S1     -1,A6             ; |169| 

           STDW    .D2T1   A7:A6,*+B10(24)   ; |169| 
||         MV      .L2X    A31,B6            ; |167| 
||         MV      .L1X    B13,A15           ; |172| 

           CALL    .S1     _atanhf           ; |172| 
||         STDW    .D2T2   B7:B6,*+B10(16)   ; |167| 
||         MV      .L1X    B10,A10           ; |163| 
||         MVK     .L2     0x8,B11
||         MV      .D1     A13,A11           ; |163| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L9:    
;          EXCLUSIVE CPU CYCLES: 5
           LDW     .D1T1   *A10,A4           ; |172| 
           ADDKPC  .S2     $C$RL11,B3,3      ; |172| 
$C$RL11:   ; CALL OCCURS {_atanhf} {0}       ; |172| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 26
           LDW     .D1T2   *A15,B4           ; |172| 
           NOP             4
           ADD     .L2X    A11,B4,B4         ; |172| 
           STW     .D2T1   A4,*B4            ; |172| 

           CALLP   .S2     _atanhsp,B3
||         LDW     .D1T1   *A10,A4           ; |173| 

$C$RL12:   ; CALL OCCURS {_atanhsp} {0}      ; |173| 
           LDW     .D1T2   *+A15(4),B4       ; |173| 
           NOP             4
           ADD     .L2X    A11,B4,B4         ; |173| 
           STW     .D2T1   A4,*B4            ; |173| 

           CALLP   .S2     _atanhsp_c,B3
||         LDW     .D1T1   *A10,A4           ; |174| 

$C$RL13:   ; CALL OCCURS {_atanhsp_c} {0}    ; |174| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 20
           LDW     .D1T1   *+A15(8),A3       ; |174| 
           ZERO    .L1     A5
           ZERO    .L1     A31
           MVKL    .S2     0x3dcccccd,B4
           MVKH    .S1     0xbf800000,A5
           ADD     .L1     A11,A3,A3         ; |174| 
           STW     .D1T1   A4,*A3            ; |174| 
           LDW     .D1T1   *A10++,A3         ; |175| 
           MVKH    .S2     0x3dcccccd,B4
           SET     .S1     A31,0x17,0x1d,A4
           NOP             2

           ABSSP   .S2X    A3,B9             ; |155| 
||         CMPLTSP .S1     A3,A13,A0         ; |158| 

           CMPGTSP .S2     B9,B4,B0          ; |162| 
||         ZERO    .L2     B4
|| [ A0]   MV      .L1     A5,A4             ; |158| 

   [!B0]   B       .S1     $C$L10            ; |162| 
||         SET     .S2     B4,0x17,0x1d,B4
|| [!B0]   MPYSP   .M1     A3,A3,A3          ; |171| 
|| [ B0]   ZERO    .L2     B31

           FSUBSP  .L2     B4,B9,B5          ; |76| 
|| [!B0]   MVKL    .S2     0x3eaaa9d8,B4

   [!B0]   MVKH    .S2     0x3eaaa9d8,B4
   [ B0]   SET     .S2     B31,0x1e,0x1e,B4

           RCPSP   .S2     B5,B6             ; |76| 
|| [!B0]   MPYSP   .M1     A3,A3,A5          ; |171| 

           MPYSP   .M2     B6,B5,B7          ; |76| 
           ; BRANCHCC OCCURS {$C$L10}        ; |162| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 77
           ZERO    .L2     B29
           ZERO    .L2     B30
           MVKL    .S2     0xbe6bd0fc,B27
           FSUBSP  .L2     B4,B7,B4          ; |76| 
           MVKL    .S1     0x3e436581,A3
           MV      .L1     A13,A6            ; |76| 
           MPYSP   .M2     B6,B4,B6          ; |76| 
           SET     .S2     B30,0x1e,0x1e,B4
           ZERO    .L1     A7
           MVKH    .S2     0xbe6bd0fc,B27
           MPYSP   .M2     B6,B5,B5          ; |76| 
           MVK     .S2     0xfffffc01,B26
           MVKL    .S2     0x3eaaa872,B24
           SET     .S1     A7,0x14,0x1d,A7
           FSUBSP  .L2     B4,B5,B4          ; |76| 
           MVKH    .S1     0x3e436581,A3
           MVKL    .S1     0xbe804d66,A31

           MPYSP   .M2     B6,B4,B5          ; |76| 
||         SET     .S2     B29,0x17,0x1d,B4

           FADDSP  .L2     B4,B9,B4          ; |76| 
           MVKH    .S2     0x3eaaa872,B24
           MVKH    .S1     0xbe804d66,A31
           MPYSP   .M2     B5,B4,B6          ; |76| 
           MVKL    .S2     _logtable,B22
           MVKH    .S2     _logtable,B22
           MVKL    .S1     0xbf000003,A30
           SPDP    .S2     B6,B5:B4          ; |76| 
           MVKH    .S1     0xbf000003,A30
           RCPDP   .S2     B5:B4,B5:B4       ; |76| 
           ZERO    .L1     A29

           CLR     .S2     B5,0,16,B8        ; |76| 
||         MV      .L2X    A13,B4            ; |76| 

           MV      .L2     B8,B5             ; |76| 
           MPYSPDP .M2     B6,B5:B4,B5:B4    ; |76| 
           EXTU    .S2     B8,1,21,B28       ; |93| 
           EXTU    .S2     B8,12,29,B23      ; |93| 
           NOP             4
           FSUBDP  .L2X    B5:B4,A7:A6,B17:B16 ; |76| 
           MVKL    .S1     0x3fe62e42,A7
           ADD     .S2     B26,B28,B5        ; |93| 
           DPSP    .L2     B17:B16,B19       ; |93| 
           MVKL    .S1     0xfefa39ec,A6
           INTDP   .L2     B5,B7:B6          ; |93| 
           MVKH    .S1     0x3fe62e42,A7
           MPYSP   .M2     B19,B19,B18       ; |93| 
           MPYSP   .M1X    A3,B19,A5         ; |93| 
           MVKH    .S1     0xfefa39ec,A6
           NOP             1
           MPYSP   .M2     B27,B18,B4        ; |93| 
           MPYSP   .M2     B18,B19,B19       ; |93| 
           FADDSP  .L1     A31,A5,A3         ; |93| 
           MPYSP   .M2     B18,B18,B25       ; |93| 
           FMPYDP  .M1X    A7:A6,B7:B6,A7:A6 ; |93| 
           FADDSP  .L1X    B4,A3,A3          ; |93| 
           LDDW    .D2T2   *+B22[B23],B5:B4  ; |93| 
           MPYSP   .M2     B24,B19,B6        ; |93| 
           MPYSP   .M1X    B25,A3,A5         ; |93| 
           MPYSP   .M1X    A30,B18,A3        ; |93| 
           NOP             2
           FADDSP  .L1X    A5,B6,A5          ; |93| 
           FSUBDP  .L2X    B5:B4,A7:A6,B5:B4 ; |93| 
           NOP             1
           FADDSP  .L1     A5,A3,A3          ; |93| 
           FADDDP  .L2     B5:B4,B17:B16,B5:B4 ; |93| 
           NOP             1
           SPDP    .S1     A3,A7:A6          ; |93| 
           NOP             1
           FADDDP  .L1X    A7:A6,B5:B4,A7:A6 ; |93| 
           SET     .S1     A29,0x18,0x1d,A3
           B       .S1     $C$L11            ; |180| 
           DPSP    .L1     A7:A6,A5          ; |93| 
           NOP             3
           MPYSP   .M1     A3,A5,A3          ; |93| 
           ; BRANCH OCCURS {$C$L11}          ; |180| 
;** --------------------------------------------------------------------------*
$C$L10:    
;          EXCLUSIVE CPU CYCLES: 14
           MPYSP   .M2X    B4,A3,B4          ; |171| 
           NOP             1
           MPYSP   .M1     A14,A5,A3         ; |171| 
           NOP             3
           FADDSP  .L1X    A3,B4,A3          ; |171| 
           NOP             2
           MPYSP   .M1X    B9,A3,A3          ; |171| 
           NOP             3
           FADDSP  .L1X    B9,A3,A3          ; |171| 
;** --------------------------------------------------------------------------*
$C$L11:    
;          EXCLUSIVE CPU CYCLES: 9

           ZERO    .L2     B4
||         ADDAW   .D1     A15,3,A5
||         SUB     .L1X    B11,1,A0          ; |171| 

           SET     .S2     B4,0x17,0x1d,B4
||         LDW     .D1T1   *A5,A5            ; |175| 

           CMPEQSP .S2     B9,B4,B0          ; |183| 

   [ B0]   MV      .L1     A12,A3            ; |184| 
|| [ A0]   B       .S1     $C$L9             ; |171| 

           MPYSP   .M1     A4,A3,A3          ; |175| 
           SUB     .L2     B11,1,B11         ; |171| 
           ADD     .L1     A11,A5,A4         ; |175| 
           ADD     .L1     4,A11,A11         ; |171| 

   [ A0]   CALL    .S1     _atanhf           ; |172| 
||         STW     .D1T1   A3,*A4            ; |175| 

           ; BRANCHCC OCCURS {$C$L9}         ; |171| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
           CALL    .S1     _atanhsp_v        ; |177| 
           LDW     .D2T2   *+B13(16),B4      ; |177| 
           ADDKPC  .S2     $C$RL14,B3,2      ; |177| 

           MV      .L1X    B10,A4
||         MVK     .S1     0x8,A6            ; |177| 

$C$RL14:   ; CALL OCCURS {_atanhsp_v} {0}    ; |177| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 40
           MVKL    .S2     0x3eb0c6f7,B7
           MVKL    .S2     0xa0b5ed8d,B6
           MVKH    .S2     0x3eb0c6f7,B7

           LDW     .D2T1   *B13,A4           ; |66| 
||         MVKH    .S2     0xa0b5ed8d,B6

           CALLP   .S2     _isequal,B3
||         LDW     .D2T2   *+B13(4),B4       ; |66| 
||         MVK     .L1     0x8,A6            ; |66| 
||         MVK     .S1     0x9,A8            ; |66| 

$C$RL15:   ; CALL OCCURS {_isequal} {0}      ; |66| 
           MVKL    .S2     0x3eb0c6f7,B7

           MVKL    .S1     _fcn_pass,A15
||         MVKL    .S2     0xa0b5ed8d,B6

           MVKH    .S1     _fcn_pass,A15
||         MVKH    .S2     0x3eb0c6f7,B7

           STW     .D1T1   A4,*+A15(4)       ; |66| 
||         LDW     .D2T2   *+B13(8),B4       ; |67| 
||         MVKH    .S2     0xa0b5ed8d,B6

           CALLP   .S2     _isequal,B3
||         LDW     .D2T1   *B13,A4           ; |67| 
||         MVK     .L1     0x8,A6            ; |67| 
||         MVK     .S1     0x9,A8            ; |67| 

$C$RL16:   ; CALL OCCURS {_isequal} {0}      ; |67| 
           MVKL    .S2     0x3eb0c6f7,B7
           MVKL    .S2     0xa0b5ed8d,B6
           MVKH    .S2     0x3eb0c6f7,B7

           MV      .L1X    B13,A3            ; |177| 
||         STW     .D1T1   A4,*+A15(8)       ; |67| 
||         MVKH    .S2     0xa0b5ed8d,B6

           CALLP   .S2     _isequal,B3
||         LDW     .D1T1   *A3,A4            ; |68| 
||         LDW     .D2T2   *+B13(12),B4      ; |68| 
||         MVK     .L1     0x8,A6            ; |68| 
||         MVK     .S1     0x9,A8            ; |68| 

$C$RL17:   ; CALL OCCURS {_isequal} {0}      ; |68| 
           MVKL    .S2     0x3eb0c6f7,B7
           MVKL    .S2     0xa0b5ed8d,B6
           MVKH    .S2     0x3eb0c6f7,B7

           MV      .L1X    B13,A3            ; |69| 
||         STW     .D1T1   A4,*+A15(12)      ; |68| 
||         MVKH    .S2     0xa0b5ed8d,B6

           CALLP   .S2     _isequal,B3
||         LDW     .D1T1   *A3,A4            ; |69| 
||         LDW     .D2T2   *B12,B4           ; |69| 
||         MVK     .L1     0x8,A6            ; |69| 
||         MVK     .S1     0x9,A8            ; |69| 

$C$RL18:   ; CALL OCCURS {_isequal} {0}      ; |69| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 12
           ADD     .L2X    4,A15,B11
           LDW     .D2T2   *B11,B0           ; |72| 
           STW     .D1T1   A4,*+A15(16)      ; |69| 
           ADD     .L2X    8,A15,B10
           NOP             2

   [!B0]   MVKL    .S1     _all_pass,A3
|| [!B0]   B       .S2     $C$L12            ; |72| 
|| [!B0]   MV      .L1     A13,A4
||         MV      .L2     B0,B1             ; guard predicate rewrite

   [!B0]   CALL    .S2     _print_test_results ; |181| 
|| [!B0]   MVKH    .S1     _all_pass,A3
|| [ B0]   LDW     .D2T2   *B10,B0           ; |72| 

   [ B1]   ADD     .L2     4,B10,B4
           NOP             3
           ; BRANCHCC OCCURS {$C$L12}        ; |72| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 10
   [ B0]   LDW     .D2T2   *B4,B4            ; |72| 
           CMPEQ   .L1     A4,0,A3           ; |72| 
           XOR     .L1     1,A3,A3           ; |72| 
           MVK     .L1     0x1,A4            ; |72| 
   [!B0]   MV      .L1     A13,A0            ; |72| 
   [ B0]   CMPEQ   .L2     B4,0,B4           ; |72| 
   [ B0]   XOR     .L2     1,B4,B4           ; |72| 
           NOP             1
   [ B0]   AND     .L1X    A3,B4,A0          ; |72| 
   [!A0]   MV      .L1     A13,A4
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5
           CALL    .S1     _print_test_results ; |181| 
           MVKL    .S1     _all_pass,A3
           MVKH    .S1     _all_pass,A3
           NOP             2
;** --------------------------------------------------------------------------*
$C$L12:    
;          EXCLUSIVE CPU CYCLES: 1

           STW     .D1T1   A4,*A3            ; |72| 
||         MVK     .L1     0x3,A4            ; |181| 
||         ADDKPC  .S2     $C$RL19,B3,0      ; |181| 

$C$RL19:   ; CALL OCCURS {_print_test_results} {0}  ; |181| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7
           MVKL    .S1     _a_ext,A3
           MVKH    .S1     _a_ext,A3

           MVK     .S2     0xd7,B31
||         ZERO    .L1     A4

           MV      .L2X    A3,B4             ; |184| 
||         STW     .D2T2   B31,*+SP(12)      ; |184| 
||         SET     .S1     A4,0x17,0x17,A4

           CALL    .S1     _atanhf           ; |186| 
||         STW     .D2T1   A4,*B4            ; |184| 
||         MV      .L1     A3,A10            ; |184| 

           LDW     .D1T1   *A10,A4           ; |186| 
           MV      .L2X    A13,B13
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L13:    
;          EXCLUSIVE CPU CYCLES: 3
           ADDKPC  .S2     $C$RL20,B3,2      ; |186| 
$C$RL20:   ; CALL OCCURS {_atanhf} {0}       ; |186| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 28
           MVKL    .S1     _output,A11
           MVKH    .S1     _output,A11
           LDW     .D1T1   *A11,A3           ; |186| 
           NOP             4
           ADD     .L1X    B13,A3,A3         ; |186| 
           STW     .D1T1   A4,*A3            ; |186| 

           CALLP   .S2     _atanhsp,B3
||         LDW     .D1T1   *A10,A4           ; |187| 

$C$RL21:   ; CALL OCCURS {_atanhsp} {0}      ; |187| 
           LDW     .D1T1   *+A11(4),A3       ; |187| 
           NOP             4
           ADD     .L1X    B13,A3,A3         ; |187| 
           STW     .D1T1   A4,*A3            ; |187| 

           CALLP   .S2     _atanhsp_c,B3
||         LDW     .D1T1   *A10,A4           ; |188| 

$C$RL22:   ; CALL OCCURS {_atanhsp_c} {0}    ; |188| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 21
           LDW     .D1T1   *+A11(8),A3       ; |188| 
           ZERO    .L1     A30
           ZERO    .L1     A31
           MVKL    .S2     0x3dcccccd,B31
           MVKH    .S1     0xbf800000,A30
           ADD     .L2X    B13,A3,B4         ; |188| 
           STW     .D2T1   A4,*B4            ; |188| 
           LDW     .D1T1   *A10,A4           ; |189| 
           MVKH    .S2     0x3dcccccd,B31
           SET     .S1     A31,0x17,0x1d,A3
           ZERO    .L2     B4
           SET     .S2     B4,0x17,0x1d,B4
           ABSSP   .S1     A4,A16            ; |155| 
           CMPLTSP .S1     A4,A13,A0         ; |158| 

           CMPGTSP .S2X    A16,B31,B0        ; |162| 
|| [!A0]   MV      .L1     A3,A7             ; |158| 
|| [ A0]   MV      .S1     A30,A7            ; |158| 

   [!B0]   B       .S1     $C$L14            ; |162| 
||         FSUBSP  .L2X    B4,A16,B5         ; |76| 
|| [!B0]   MPYSP   .M1     A4,A4,A3          ; |171| 
|| [!B0]   MVKL    .S2     0x3eaaa9d8,B4
|| [ B0]   ZERO    .D2     B31

   [!B0]   MVKH    .S2     0x3eaaa9d8,B4
   [ B0]   SET     .S2     B31,0x1e,0x1e,B4
           RCPSP   .S2     B5,B6             ; |76| 

   [!B0]   MPYSP   .M1     A3,A3,A4          ; |171| 
||         MPYSP   .M2     B6,B5,B7          ; |76| 

   [!B0]   MPYSP   .M2X    B4,A3,B4          ; |171| 
           ; BRANCHCC OCCURS {$C$L14}        ; |162| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 77
           ZERO    .L2     B30
           MVKL    .S2     0xbe6bd0fc,B29
           FSUBSP  .L2     B4,B7,B4          ; |76| 
           MV      .L1     A13,A18           ; |76| 
           ZERO    .L1     A19
           MPYSP   .M2     B6,B4,B6          ; |76| 
           SET     .S2     B30,0x1e,0x1e,B4
           ZERO    .L1     A3
           SET     .S1     A3,0x17,0x1d,A3
           MPYSP   .M2     B6,B5,B5          ; |76| 
           FADDSP  .L1     A3,A16,A3         ; |76| 
           MVKH    .S2     0xbe6bd0fc,B29
           MVK     .S2     0xfffffc01,B28
           FSUBSP  .L2     B4,B5,B4          ; |76| 
           SET     .S1     A19,0x14,0x1d,A19
           MVKL    .S1     0x3e436581,A31
           MPYSP   .M2     B6,B4,B4          ; |76| 
           MVKH    .S1     0x3e436581,A31
           MVKL    .S2     0x3eaaa872,B26
           MVKH    .S2     0x3eaaa872,B26
           MVKL    .S1     0xbe804d66,A30
           MPYSP   .M1X    B4,A3,A3          ; |76| 
           MVKL    .S2     _logtable,B25
           MVKH    .S1     0xbe804d66,A30
           MVKL    .S1     0xbf000003,A28
           SPDP    .S1     A3,A5:A4          ; |76| 
           MVKH    .S2     _logtable,B25
           RCPDP   .S1     A5:A4,A5:A4       ; |76| 
           MVKL    .S2     0xfefa39ec,B8

           MV      .L1     A13,A4            ; |76| 
||         CLR     .S1     A5,0,16,A5        ; |76| 

           MPYSPDP .M1     A3,A5:A4,A9:A8    ; |76| 
           MVKH    .S1     0xbf000003,A28
           MVKL    .S2     0x3fe62e42,B9
           MVKH    .S2     0xfefa39ec,B8
           MVKH    .S2     0x3fe62e42,B9
           EXTU    .S1     A5,1,21,A29       ; |93| 
           MV      .L2X    A5,B27            ; |76| Define a twin register
           FSUBDP  .L1     A9:A8,A19:A18,A9:A8 ; |76| 
           ADD     .L2X    B28,A29,B4        ; |93| 
           INTDP   .L2     B4,B7:B6          ; |93| 
           DPSP    .L1     A9:A8,A6          ; |93| 
           ZERO    .L1     A27
           NOP             2
           MPYSP   .M1     A6,A6,A4          ; |93| 
           MPYSP   .M1     A31,A6,A17        ; |93| 
           FMPYDP  .M2     B9:B8,B7:B6,B7:B6 ; |93| 
           NOP             2

           MPYSP   .M2X    B29,A4,B5         ; |93| 
||         FADDSP  .L1     A30,A17,A18       ; |93| 

           MPYSP   .M1     A4,A6,A17         ; |93| 
           MPYSP   .M1     A4,A4,A3          ; |93| 
           NOP             1
           FADDSP  .L2X    B5,A18,B17        ; |93| 
           EXTU    .S2     B27,12,29,B5      ; |93| 
           MPYSP   .M2X    B26,A17,B16       ; |93| 
           MPYSP   .M2X    A3,B17,B17        ; |93| 
           LDDW    .D2T2   *+B25[B5],B5:B4   ; |93| 
           MPYSP   .M1     A28,A4,A3         ; |93| 
           NOP             1
           FADDSP  .L2     B17,B16,B8        ; |93| 
           NOP             1
           FSUBDP  .L2     B5:B4,B7:B6,B5:B4 ; |93| 
           FADDSP  .L2X    B8,A3,B6          ; |93| 
           SET     .S1     A27,0x18,0x1d,A3
           FADDDP  .L2X    B5:B4,A9:A8,B5:B4 ; |93| 
           SPDP    .S2     B6,B7:B6          ; |93| 
           NOP             1
           FADDDP  .L2     B7:B6,B5:B4,B5:B4 ; |93| 
           NOP             2

           BNOP    .S1     $C$L15,4          ; |180| 
||         DPSP    .L2     B5:B4,B4          ; |93| 

           MPYSP   .M1X    A3,B4,A4          ; |93| 
           ; BRANCH OCCURS {$C$L15}          ; |180| 
;** --------------------------------------------------------------------------*
$C$L14:    
;          EXCLUSIVE CPU CYCLES: 14
           NOP             2
           MPYSP   .M1     A14,A4,A3         ; |171| 
           NOP             3
           FADDSP  .L1X    A3,B4,A3          ; |171| 
           NOP             2
           MPYSP   .M1     A16,A3,A3         ; |171| 
           NOP             3
           FADDSP  .L1     A16,A3,A4         ; |171| 
;** --------------------------------------------------------------------------*
$C$L15:    
;          EXCLUSIVE CPU CYCLES: 21

           MVK     .S2     12,B4
||         ZERO    .L1     A3

           ADD     .L2X    A11,B4,B4
||         SET     .S1     A3,0x17,0x1d,A3

           LDW     .D2T2   *B4,B4            ; |189| 
||         CMPEQSP .S1     A16,A3,A0         ; |183| 

   [ A0]   MV      .L1     A12,A4            ; |184| 
           MPYSP   .M1     A7,A4,A3          ; |189| 
           ZERO    .L1     A31
           MVKH    .S1     0xbfc00000,A31
           ADD     .L2     B13,B4,B4         ; |189| 
           STW     .D2T1   A3,*B4            ; |189| 

           LDW     .D1T1   *A10,A4           ; |190| 
||         LDW     .D2T2   *+SP(12),B4

           ADD     .L2     4,B13,B13         ; |185| 
           NOP             3

           MPYSP   .M1     A31,A4,A3         ; |190| 
||         SUB     .L1X    B4,1,A0           ; |185| 
||         SUB     .L2     B4,1,B4           ; |185| 

   [ A0]   BNOP    .S2     $C$L13,2          ; |185| 
|| [!A0]   MV      .L2X    A11,B13
|| [!A0]   MVKL    .S1     _a_ext,A4

   [ A0]   CALL    .S1     _atanhf           ; |186| 
||         STW     .D1T1   A3,*++A10         ; |190| 
||         STW     .D2T2   B4,*+SP(12)       ; |190| 

   [!A0]   CALL    .S1     _atanhsp_v        ; |192| 
|| [ A0]   LDW     .D1T1   *A10,A4           ; |186| 

   [!A0]   LDW     .D2T2   *+B13(16),B4      ; |192| 
           ; BRANCHCC OCCURS {$C$L13}        ; |185| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 4
           MVKH    .S1     _a_ext,A4
           MVK     .S1     0xd7,A6           ; |192| 
           ADDKPC  .S2     $C$RL23,B3,1      ; |192| 
$C$RL23:   ; CALL OCCURS {_atanhsp_v} {0}    ; |192| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 40
           MVKL    .S2     0x3eb0c6f7,B7
           MVKL    .S2     0xa0b5ed8d,B6
           MVKH    .S2     0x3eb0c6f7,B7

           LDW     .D2T1   *B13,A4           ; |66| 
||         MVKH    .S2     0xa0b5ed8d,B6

           CALLP   .S2     _isequal,B3
||         LDW     .D2T2   *+B13(4),B4       ; |66| 
||         MVK     .S1     0xd7,A6           ; |66| 
||         MVK     .L1     0x9,A8            ; |66| 

$C$RL24:   ; CALL OCCURS {_isequal} {0}      ; |66| 
           MVKL    .S2     0x3eb0c6f7,B7
           MVKL    .S2     0xa0b5ed8d,B6

           MV      .L1     A15,A3            ; |66| 
||         MVKH    .S2     0x3eb0c6f7,B7

           STW     .D1T1   A4,*+A3(4)        ; |66| 
||         LDW     .D2T2   *+B13(8),B4       ; |67| 
||         MVKH    .S2     0xa0b5ed8d,B6

           CALLP   .S2     _isequal,B3
||         LDW     .D2T1   *B13,A4           ; |67| 
||         MVK     .S1     0xd7,A6           ; |67| 
||         MVK     .L1     0x9,A8            ; |67| 

$C$RL25:   ; CALL OCCURS {_isequal} {0}      ; |67| 
           MVKL    .S2     0x3eb0c6f7,B7
           MVKL    .S2     0xa0b5ed8d,B6

           MV      .L1     A15,A5            ; |67| 
||         MVKH    .S2     0x3eb0c6f7,B7

           MV      .L1     A11,A3            ; |67| 
||         STW     .D1T1   A4,*+A5(8)        ; |67| 
||         MVKH    .S2     0xa0b5ed8d,B6

           CALLP   .S2     _isequal,B3
||         LDW     .D1T1   *A3,A4            ; |68| 
||         LDW     .D2T2   *+B13(12),B4      ; |68| 
||         MVK     .S1     0xd7,A6           ; |68| 
||         MVK     .L1     0x9,A8            ; |68| 

$C$RL26:   ; CALL OCCURS {_isequal} {0}      ; |68| 
           MVKL    .S2     0x3eb0c6f7,B7
           MVKL    .S2     0xa0b5ed8d,B6

           MV      .L1     A15,A5            ; |68| 
||         MVKH    .S2     0x3eb0c6f7,B7

           MV      .L1     A11,A3            ; |68| 
||         STW     .D1T1   A4,*+A5(12)       ; |68| 
||         MVKH    .S2     0xa0b5ed8d,B6

           CALLP   .S2     _isequal,B3
||         LDW     .D1T1   *A3,A4            ; |69| 
||         LDW     .D2T2   *B12,B4           ; |69| 
||         MVK     .S1     0xd7,A6           ; |69| 
||         MVK     .L1     0x9,A8            ; |69| 

$C$RL27:   ; CALL OCCURS {_isequal} {0}      ; |69| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 11
           LDW     .D2T2   *B11,B0           ; |72| 
           MV      .L1     A15,A3            ; |72| 
           STW     .D1T1   A4,*+A3(16)       ; |69| 
           NOP             2

   [!B0]   B       .S2     $C$L16            ; |72| 
|| [!B0]   MVKL    .S1     _all_pass,A3
|| [!B0]   MV      .L1     A13,A4
||         MV      .L2     B0,B1             ; guard predicate rewrite

   [!B0]   CALL    .S2     _print_test_results ; |196| 
|| [!B0]   MVKH    .S1     _all_pass,A3
|| [ B0]   LDW     .D2T2   *B10,B0           ; |72| 

   [ B1]   ADD     .L2     4,B10,B4
           NOP             3
           ; BRANCHCC OCCURS {$C$L16}        ; |72| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 10
   [ B0]   LDW     .D2T2   *B4,B4            ; |72| 
           CMPEQ   .L1     A4,0,A3           ; |72| 
           XOR     .L1     1,A3,A3           ; |72| 
           MVK     .L1     0x1,A4            ; |72| 
   [!B0]   MV      .L1     A13,A0            ; |72| 
   [ B0]   CMPEQ   .L2     B4,0,B4           ; |72| 
   [ B0]   XOR     .L2     1,B4,B4           ; |72| 
           NOP             1
   [ B0]   AND     .L1X    A3,B4,A0          ; |72| 
   [!A0]   MV      .L1     A13,A4
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5
           CALL    .S1     _print_test_results ; |196| 
           MVKL    .S1     _all_pass,A3
           MVKH    .S1     _all_pass,A3
           NOP             2
;** --------------------------------------------------------------------------*
$C$L16:    
;          EXCLUSIVE CPU CYCLES: 1

           STW     .D1T1   A4,*A3            ; |72| 
||         MVK     .L1     0x4,A4            ; |196| 
||         ADDKPC  .S2     $C$RL28,B3,0      ; |196| 

$C$RL28:   ; CALL OCCURS {_print_test_results} {0}  ; |196| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 14
           MVKL    .S1     _cycle_counts+24,A3

           MVKH    .S1     _cycle_counts+24,A3
||         MV      .L2X    A13,B4            ; |114| 
||         MV      .L1     A13,A10           ; |114| 
||         MV      .D1     A13,A11           ; |114| 

           MVC     .S2     B4,TSCL           ; |115| 
||         STDW    .D1T1   A11:A10,*A3       ; |114| 

           MVC     .S2     TSCL,B4           ; |116| 
           MVC     .S2     TSCH,B5           ; |116| 
           MVKL    .S1     _t_start,A3
           MVKH    .S1     _t_start,A3

           MVC     .S2     TSCL,B6           ; |117| 
||         STDW    .D1T2   B5:B4,*A3         ; |116| 

           MVC     .S2     TSCH,B8           ; |117| 

           SUBU    .L2     B6,B4,B7:B6       ; |117| 
||         MVKL    .S2     0xbf000003,B31

           EXT     .S2     B7,24,24,B5       ; |117| 
||         SUB     .L2     B8,B5,B4          ; |117| 
||         MVKL    .S1     _t_offset,A3

           ADD     .L2     B4,B5,B7          ; |117| 
||         MVKH    .S1     _t_offset,A3
||         MVKH    .S2     0xbf000003,B31

           STDW    .D1T2   B7:B6,*A3         ; |117| 
||         ADD     .L2     -3,B31,B4
||         MVK     .S1     0x80,A15
||         ZERO    .L1     A4

           CALL    .S2     _gimme_random     ; |206| 
||         STW     .D2T2   B4,*+SP(12)       ; |117| 
||         SET     .S1     A4,0x17,0x1d,A4
||         MV      .L2X    A13,B13           ; |117| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L17:    
;          EXCLUSIVE CPU CYCLES: 5
           LDW     .D2T2   *+SP(12),B4       ; |206| 
           ADDKPC  .S2     $C$RL29,B3,3      ; |206| 
$C$RL29:   ; CALL OCCURS {_gimme_random} {0}  ; |206| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 21
           MVKL    .S1     _input,A3
           MVKH    .S1     _input,A3
           LDW     .D1T1   *A3,A3            ; |206| 
           NOP             4
           ADD     .L2X    B13,A3,B4         ; |206| 

           STW     .D2T1   A4,*B4            ; |206| 
||         MVC     .S2     TSCL,B4           ; |122| 

           NOP             1

           MV      .L1X    B4,A6             ; |122| Define a twin register
||         MVC     .S2     TSCH,B5           ; |122| 

           MVKL    .S2     0x3dcccccd,B4
||         ZERO    .L1     A3
||         CMPLTSP .S1     A4,A13,A0         ; |158| 
||         ZERO    .D1     A31

           MVKH    .S2     0x3dcccccd,B4
||         SET     .S1     A3,0x17,0x1d,A3
||         MV      .L1X    B5,A7             ; |122| 

           ABSSP   .S2X    A4,B9             ; |155| 
|| [!A0]   MV      .L1     A3,A8             ; |158| 
||         MVKH    .S1     0xbf800000,A31

           CMPGTSP .S2     B9,B4,B0          ; |162| 
||         ZERO    .L2     B4
|| [ A0]   MV      .L1     A31,A8            ; |158| 

           SET     .S2     B4,0x17,0x1d,B4
|| [!B0]   MPYSP   .M1     A4,A4,A3          ; |171| 
|| [!B0]   B       .S1     $C$L18            ; |162| 
|| [ B0]   ZERO    .L2     B31

           FSUBSP  .L2     B4,B9,B5          ; |76| 
|| [!B0]   MVKL    .S2     0x3eaaa9d8,B4

   [!B0]   MVKH    .S2     0x3eaaa9d8,B4
   [ B0]   SET     .S2     B31,0x1e,0x1e,B4

   [!B0]   MPYSP   .M1     A3,A3,A4          ; |171| 
||         RCPSP   .S2     B5,B6             ; |76| 

           MPYSP   .M2     B6,B5,B7          ; |76| 
           ; BRANCHCC OCCURS {$C$L18}        ; |162| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 77
           ZERO    .L2     B30
           ZERO    .L2     B29
           MVKL    .S2     0xbe6bd0fc,B28
           FSUBSP  .L2     B4,B7,B4          ; |76| 
           MVKL    .S1     0x3e436581,A3
           MV      .L1     A13,A4            ; |76| 
           MPYSP   .M2     B6,B4,B6          ; |76| 
           SET     .S2     B30,0x1e,0x1e,B4
           MVKH    .S2     0xbe6bd0fc,B28
           MVK     .S2     0xfffffc01,B27
           MPYSP   .M2     B6,B5,B5          ; |76| 
           ZERO    .L1     A5
           SET     .S1     A5,0x14,0x1d,A5
           MVKH    .S1     0x3e436581,A3
           FSUBSP  .L2     B4,B5,B4          ; |76| 
           MVKL    .S2     0x3eaaa872,B26
           MVKL    .S1     0xbe804d66,A31

           MPYSP   .M2     B6,B4,B5          ; |76| 
||         SET     .S2     B29,0x17,0x1d,B4

           FADDSP  .L2     B4,B9,B4          ; |76| 
           MVKH    .S2     0x3eaaa872,B26
           MVKH    .S1     0xbe804d66,A31
           MPYSP   .M2     B5,B4,B6          ; |76| 
           MVKL    .S2     _logtable,B25
           MVKH    .S2     _logtable,B25
           MVKL    .S1     0xbf000003,A30
           SPDP    .S2     B6,B5:B4          ; |76| 
           MVKH    .S1     0xbf000003,A30
           RCPDP   .S2     B5:B4,B5:B4       ; |76| 
           ZERO    .L1     A29

           CLR     .S2     B5,0,16,B8        ; |76| 
||         MV      .L2X    A10,B4            ; |76| 

           MV      .L2     B8,B5             ; |76| 
           MPYSPDP .M2     B6,B5:B4,B5:B4    ; |76| 
           EXTU    .S2     B8,1,21,B16       ; |93| 
           EXTU    .S2     B8,12,29,B8       ; |93| 
           NOP             4
           FSUBDP  .L2X    B5:B4,A5:A4,B7:B6 ; |76| 
           MVKL    .S1     0xfefa39ec,A4
           ADD     .S2     B27,B16,B4        ; |93| 
           DPSP    .L2     B7:B6,B19         ; |93| 
           MVKH    .S1     0xfefa39ec,A4
           INTDP   .L2     B4,B17:B16        ; |93| 
           NOP             1
           MPYSP   .M2     B19,B19,B18       ; |93| 
           MPYSP   .M1X    A3,B19,A5         ; |93| 
           NOP             2
           MPYSP   .M2     B28,B18,B20       ; |93| 

           MVKL    .S1     0x3fe62e42,A5
||         FADDSP  .L1     A31,A5,A3         ; |93| 

           MPYSP   .M2     B18,B18,B5        ; |93| 
           MPYSP   .M2     B18,B19,B19       ; |93| 
           MVKH    .S1     0x3fe62e42,A5
           FADDSP  .L1X    B20,A3,A3         ; |93| 
           FMPYDP  .M1X    A5:A4,B17:B16,A5:A4 ; |93| 
           MPYSP   .M2     B26,B19,B16       ; |93| 

           MPYSP   .M1X    B5,A3,A9          ; |93| 
||         LDDW    .D2T2   *+B25[B8],B5:B4   ; |93| 

           MPYSP   .M1X    A30,B18,A3        ; |93| 
           NOP             2
           FADDSP  .L1X    A9,B16,A9         ; |93| 
           FSUBDP  .L2X    B5:B4,A5:A4,B5:B4 ; |93| 
           NOP             1
           FADDSP  .L1     A9,A3,A3          ; |93| 
           FADDDP  .L2     B5:B4,B7:B6,B5:B4 ; |93| 
           NOP             1
           SPDP    .S1     A3,A5:A4          ; |93| 
           NOP             1

           SET     .S1     A29,0x18,0x1d,A3
||         FADDDP  .L1X    A5:A4,B5:B4,A5:A4 ; |93| 
||         MVKL    .S2     _output+12,B4

           MVKH    .S2     _output+12,B4

           LDW     .D2T2   *B4,B4            ; |210| 
||         B       .S1     $C$L19            ; |180| 

           DPSP    .L1     A5:A4,A4          ; |93| 
           ZERO    .L2     B5
           SET     .S2     B5,0x17,0x1d,B5
           CMPEQSP .S2     B9,B5,B0          ; |183| 

           ADD     .L2     B13,B4,B4         ; |210| 
||         MPYSP   .M1     A3,A4,A3          ; |93| 
||         MVKL    .S1     _t_start,A4

           ; BRANCH OCCURS {$C$L19}          ; |180| 
;** --------------------------------------------------------------------------*
$C$L18:    
;          EXCLUSIVE CPU CYCLES: 14
           MPYSP   .M2X    B4,A3,B4          ; |171| 
           ZERO    .L2     B5
           MPYSP   .M1     A14,A4,A3         ; |171| 
           SET     .S2     B5,0x17,0x1d,B5
           CMPEQSP .S2     B9,B5,B0          ; |183| 
           MVKL    .S1     _t_start,A4

           FADDSP  .L1X    A3,B4,A3          ; |171| 
||         MVKL    .S2     _output+12,B4

           MVKH    .S2     _output+12,B4
           LDW     .D2T2   *B4,B4            ; |210| 
           MPYSP   .M1X    B9,A3,A3          ; |171| 
           NOP             3

           ADD     .L2     B13,B4,B4         ; |210| 
||         FADDSP  .L1X    B9,A3,A3          ; |171| 

;** --------------------------------------------------------------------------*
$C$L19:    
;          EXCLUSIVE CPU CYCLES: 25
           MVKH    .S1     _t_start,A4
           STDW    .D1T1   A7:A6,*A4
           NOP             1
   [ B0]   MV      .L1     A12,A3            ; |184| 
           MPYSP   .M1     A8,A3,A3          ; |210| 
           NOP             3

           STW     .D2T1   A3,*B4            ; |210| 
||         MVC     .S2     TSCL,B8           ; |128| 

           MVC     .S2     TSCH,B4           ; |128| 

           MVKL    .S1     _t_offset,A3
||         MVKL    .S2     _cycle_counts+24,B5
||         SUB     .L1     A15,1,A0          ; |204| 
||         MV      .L2     B4,B9             ; |128| 
||         ADD     .D2     4,B13,B13         ; |204| 
||         SUB     .D1     A15,1,A15         ; |204| 

           MVKH    .S1     _t_offset,A3
||         MVKH    .S2     _cycle_counts+24,B5

           LDDW    .D1T1   *A3,A9:A8         ; |130| 
           MVKL    .S1     _t_stop,A31
           LDDW    .D2T2   *B5,B7:B6         ; |130| 
           MVKH    .S1     _t_stop,A31
           STDW    .D1T2   B9:B8,*A31        ; |128| 
           ADDU    .L1     A8,A6,A5:A4       ; |130| 
           ADD     .L1     A5,A9,A5          ; |130| 

           ADD     .L1     A5,A7,A3          ; |130| 
|| [ A0]   B       .S1     $C$L17            ; |204| 
||         SUBU    .L2X    B8,A4,B5:B4       ; |130| 
|| [ A0]   ZERO    .D1     A4

           EXT     .S2     B5,24,24,B16      ; |130| 
||         ADDU    .L2     B6,B4,B5:B4       ; |130| 
|| [ A0]   SET     .S1     A4,0x17,0x1d,A4

           SUB     .L2X    B9,A3,B6          ; |130| 
||         ADD     .S2     B5,B7,B5          ; |130| 
||         MVKL    .S1     _cycle_counts+24,A3

           ADD     .L2     B6,B16,B6         ; |130| 
||         MVKH    .S1     _cycle_counts+24,A3

           ADD     .L2     B5,B6,B5          ; |130| 

   [ A0]   CALL    .S1     _gimme_random     ; |206| 
||         STDW    .D1T2   B5:B4,*A3         ; |130| 

           ; BRANCHCC OCCURS {$C$L17}        ; |204| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
           CALL    .S1     __fltllif         ; |135| 
           LDDW    .D1T1   *A3,A5:A4         ; |135| 
           ADDKPC  .S2     $C$RL30,B3,3      ; |135| 
$C$RL30:   ; CALL OCCURS {__fltllif} {0}     ; |135| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 15
           ZERO    .L1     A3
           SET     .S1     A3,0x1a,0x1d,A3
           MPYSP   .M1     A3,A4,A3          ; |135| 
           ZERO    .L1     A13
           SET     .S1     A13,0x15,0x1d,A13
           MV      .L1     A11,A12           ; |135| 
           SPDP    .S1     A3,A5:A4          ; |135| 
           NOP             2

           CALLP   .S2     __fixdlli,B3
||         FADDDP  .L1     A13:A12,A5:A4,A5:A4 ; |135| 

$C$RL31:   ; CALL OCCURS {__fixdlli} {0}     ; |135| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 15
           MVKL    .S1     _cycle_counts+24,A3
           MVKH    .S1     _cycle_counts+24,A3
           MV      .L2X    A10,B31           ; |114| 
           MV      .L2X    A3,B4
           STDW    .D2T1   A5:A4,*B4         ; |135| 
           SUBAW   .D2     B4,6,B5

           STDW    .D2T1   A11:A10,*B5       ; |114| 
||         MVC     .S2     B31,TSCL          ; |115| 

           MVC     .S2     TSCL,B5           ; |116| 
           MVC     .S2     TSCH,B4           ; |116| 
           MVC     .S2     TSCL,B6           ; |117| 
           MVC     .S2     TSCH,B8           ; |117| 
           SUBU    .L2     B6,B5,B7:B6       ; |117| 

           EXT     .S2     B7,24,24,B5       ; |117| 
||         MVKL    .S1     _t_offset,A3
||         SUB     .L2     B8,B4,B4          ; |117| 

           ADD     .L2     B4,B5,B7          ; |117| 
||         MVKH    .S1     _t_offset,A3

           STDW    .D1T2   B7:B6,*A3         ; |117| 
||         MV      .L1     A12,A15           ; |117| 
||         MVK     .S1     0x80,A12

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
$C$L20:    
;          EXCLUSIVE CPU CYCLES: 15
           MVC     .S2     TSCL,B4           ; |122| 
           MVC     .S2     TSCH,B5           ; |122| 
           MVKL    .S1     _input,A3
           MVKH    .S1     _input,A3
           LDW     .D1T1   *A3,A3            ; |219| 
           MVKL    .S2     _t_start,B6
           MVKH    .S2     _t_start,B6
           STDW    .D2T2   B5:B4,*B6         ; |122| 
           NOP             1

           ADD     .L1     A15,A3,A3         ; |219| 
||         CALL    .S1     _atanhf           ; |219| 

           LDW     .D1T1   *A3,A4            ; |219| 
           ADDKPC  .S2     $C$RL32,B3,3      ; |219| 
$C$RL32:   ; CALL OCCURS {_atanhf} {0}       ; |219| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 24
           MVKL    .S2     _output,B4
           MVKH    .S2     _output,B4
           LDW     .D2T2   *B4,B4            ; |219| 
           NOP             4
           ADD     .L1X    A15,B4,A3         ; |219| 

           STW     .D1T1   A4,*A3            ; |219| 
||         MVC     .S2     TSCL,B16          ; |128| 

           MVC     .S2     TSCH,B4           ; |128| 

           MVKL    .S1     _t_offset,A14
||         MVKL    .S2     _t_start,B5
||         SUB     .L1     A12,1,A0          ; |217| 
||         MV      .L2     B4,B17            ; |128| 
||         SUB     .D1     A12,1,A12         ; |217| 

           MVKH    .S1     _t_offset,A14
||         MVKH    .S2     _t_start,B5
||         ADD     .L1     4,A15,A15         ; |217| 

           LDDW    .D1T1   *A14,A5:A4        ; |130| 
||         LDDW    .D2T2   *B5,B7:B6         ; |130| 
||         MVKL    .S1     _cycle_counts,A3
||         MVKL    .S2     _cycle_counts,B4

           MVKH    .S1     _cycle_counts,A3
||         MVKH    .S2     _cycle_counts,B4

           LDDW    .D1T1   *A3,A7:A6         ; |130| 
||         MVKL    .S1     _t_stop,A31

           MVKH    .S1     _t_stop,A31
|| [!A0]   MV      .L1X    B4,A15

           STDW    .D1T2   B17:B16,*A31      ; |128| 
           ADDU    .L2X    A4,B6,B9:B8       ; |130| 

           ADD     .S2X    B9,A5,B5          ; |130| 
|| [ A0]   B       .S1     $C$L20            ; |217| 
||         SUBU    .L2     B16,B8,B9:B8      ; |130| 

           ADD     .D2     B5,B7,B5          ; |130| 
||         ADDU    .L2X    A6,B8,B7:B6       ; |130| 
||         EXT     .S2     B9,24,24,B8       ; |130| 

           SUB     .L2     B17,B5,B5         ; |130| 

           ADD     .L2X    B7,A7,B5          ; |130| 
||         ADD     .S2     B5,B8,B7          ; |130| 

           ADD     .L2     B5,B7,B7          ; |130| 

   [!A0]   CALL    .S1     __fltllif         ; |135| 
||         STDW    .D2T2   B7:B6,*B4         ; |130| 

           ; BRANCHCC OCCURS {$C$L20}        ; |217| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5
           LDDW    .D1T1   *A15,A5:A4        ; |135| 
           ADDKPC  .S2     $C$RL33,B3,3      ; |135| 
$C$RL33:   ; CALL OCCURS {__fltllif} {0}     ; |135| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 14
           ZERO    .L1     A3
           SET     .S1     A3,0x1a,0x1d,A3
           MPYSP   .M1     A3,A4,A3          ; |135| 
           MV      .L1     A11,A12           ; |135| 
           NOP             2
           SPDP    .S1     A3,A5:A4          ; |135| 
           NOP             1

           CALLP   .S2     __fixdlli,B3
||         FADDDP  .L1     A13:A12,A5:A4,A5:A4 ; |135| 

$C$RL34:   ; CALL OCCURS {__fixdlli} {0}     ; |135| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 10

           STDW    .D1T1   A11:A10,*+A15(16) ; |114| 
||         MV      .L2X    A10,B4            ; |114| 

           MVC     .S2     B4,TSCL           ; |115| 
||         STDW    .D1T1   A5:A4,*A15        ; |135| 

           MVC     .S2     TSCL,B4           ; |116| 
           MVC     .S2     TSCH,B6           ; |116| 
           MVC     .S2     TSCL,B5           ; |117| 
           MVC     .S2     TSCH,B8           ; |117| 
           SUBU    .L2     B5,B4,B5:B4       ; |117| 

           EXT     .S2     B5,24,24,B6       ; |117| 
||         SUB     .L2     B8,B6,B5          ; |117| 
||         MVK     .S1     0x80,A3

           ADD     .L2     B5,B6,B5          ; |117| 
||         STW     .D2T1   A3,*+SP(12)       ; |117| 
||         MV      .S2X    A14,B7            ; |117| 

           STDW    .D2T2   B5:B4,*B7         ; |117| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
$C$L21:    
;          EXCLUSIVE CPU CYCLES: 15
           MVC     .S2     TSCL,B4           ; |122| 
           MVC     .S2     TSCH,B5           ; |122| 
           MVKL    .S1     _input,A3
           MVKH    .S1     _input,A3
           LDW     .D1T1   *A3,A3            ; |228| 
           MVKL    .S2     _t_start,B6
           MVKH    .S2     _t_start,B6
           STDW    .D2T2   B5:B4,*B6         ; |122| 
           NOP             1

           ADD     .L1     A12,A3,A3         ; |228| 
||         CALL    .S1     _atanhsp_c        ; |228| 

           LDW     .D1T1   *A3,A4            ; |228| 
           ADDKPC  .S2     $C$RL35,B3,3      ; |228| 
$C$RL35:   ; CALL OCCURS {_atanhsp_c} {0}    ; |228| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 24
           MVKL    .S2     _output+8,B4
           MVKH    .S2     _output+8,B4
           LDW     .D2T2   *B4,B4            ; |228| 
           NOP             4
           ADD     .L1X    A12,B4,A3         ; |228| 

           STW     .D1T1   A4,*A3            ; |228| 
||         MVC     .S2     TSCL,B16          ; |128| 

           MVC     .S2     TSCH,B4           ; |128| 

           MVKL    .S2     _t_start,B5
||         LDW     .D2T1   *+SP(12),A30      ; |128| 
||         ADDAD   .D1     A15,2,A3
||         MV      .L2     B4,B17            ; |128| 
||         MVKL    .S1     _t_stop,A31
||         ADD     .L1     4,A12,A12         ; |226| 

           MVKH    .S2     _t_start,B5
||         LDDW    .D1T1   *A14,A5:A4        ; |130| 
||         MVKH    .S1     _t_stop,A31

           LDDW    .D2T2   *B5,B7:B6         ; |130| 
||         LDDW    .D1T1   *A3,A7:A6         ; |130| 
||         MVK     .S2     16,B13

           STDW    .D1T2   B17:B16,*A31      ; |128| 
           ADD     .L2X    A15,B13,B13
           SUB     .L1     A30,1,A0          ; |226| 

   [!A0]   MV      .L1     A15,A3
||         STW     .D2T1   A0,*+SP(12)       ; |130| 

           ADDU    .L2X    A4,B6,B9:B8       ; |130| 

           ADD     .S2X    B9,A5,B6          ; |130| 
|| [ A0]   B       .S1     $C$L21            ; |226| 
||         SUBU    .L2     B16,B8,B5:B4      ; |130| 

           ADD     .D2     B6,B7,B6          ; |130| 
||         EXT     .S2     B5,24,24,B7       ; |130| 
||         ADDU    .L2X    A6,B4,B5:B4       ; |130| 

           SUB     .L2     B17,B6,B6         ; |130| 
||         ADD     .S2X    B5,A7,B5          ; |130| 

           ADD     .L2     B6,B7,B6          ; |130| 
           ADD     .L2     B5,B6,B5          ; |130| 

   [!A0]   CALL    .S1     __fltllif         ; |135| 
||         STDW    .D2T2   B5:B4,*B13        ; |130| 

           ; BRANCHCC OCCURS {$C$L21}        ; |226| 
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
||         STDW    .D2T1   A5:A4,*B13        ; |135| 
||         MV      .L2X    A11,B4            ; |114| 

           MVC     .S2     B4,TSCL           ; |115| 
||         STDW    .D1T1   A11:A10,*+A3(8)   ; |114| 

           MVC     .S2     TSCL,B4           ; |116| 
           MVC     .S2     TSCH,B6           ; |116| 
           MVC     .S2     TSCL,B5           ; |117| 
           MVC     .S2     TSCH,B7           ; |117| 
           SUBU    .L2     B5,B4,B5:B4       ; |117| 

           EXT     .S2     B5,24,24,B6       ; |117| 
||         SUB     .L2     B7,B6,B5          ; |117| 

           ADD     .L2     B5,B6,B5          ; |117| 
||         MVK     .S1     0x80,A3

           STDW    .D1T2   B5:B4,*A14        ; |117| 
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
$C$L22:    
;          EXCLUSIVE CPU CYCLES: 15
           MVC     .S2     TSCL,B4           ; |122| 
           MVC     .S2     TSCH,B5           ; |122| 
           MVKL    .S1     _input,A3
           MVKH    .S1     _input,A3
           LDW     .D1T1   *A3,A3            ; |237| 
           MVKL    .S2     _t_start,B6
           MVKH    .S2     _t_start,B6
           STDW    .D2T2   B5:B4,*B6         ; |122| 
           NOP             1

           ADD     .L1     A12,A3,A3         ; |237| 
||         CALL    .S1     _atanhsp          ; |237| 

           LDW     .D1T1   *A3,A4            ; |237| 
           ADDKPC  .S2     $C$RL38,B3,3      ; |237| 
$C$RL38:   ; CALL OCCURS {_atanhsp} {0}      ; |237| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 24
           MVKL    .S2     _output+4,B4
           MVKH    .S2     _output+4,B4
           LDW     .D2T2   *B4,B4            ; |237| 
           NOP             4
           ADD     .L1X    A12,B4,A3         ; |237| 

           STW     .D1T1   A4,*A3            ; |237| 
||         MVC     .S2     TSCL,B16          ; |128| 

           MVC     .S2     TSCH,B4           ; |128| 

           MVKL    .S2     _t_start,B13
||         LDW     .D2T1   *+SP(12),A31      ; |130| 
||         MVKL    .S1     _cycle_counts+8,A3
||         MV      .L2     B4,B17            ; |128| 
||         ADD     .L1     4,A12,A12         ; |235| 

           MVKH    .S2     _t_start,B13
||         LDDW    .D1T1   *A14,A5:A4        ; |130| 
||         MVKH    .S1     _cycle_counts+8,A3

           LDDW    .D2T2   *B13,B9:B8        ; |130| 
||         LDDW    .D1T1   *A3,A7:A6         ; |130| 
||         MVKL    .S1     _t_stop,A15

           MVKH    .S1     _t_stop,A15
           STDW    .D1T2   B17:B16,*A15      ; |128| 
           SUB     .L1     A31,1,A0          ; |235| 
           STW     .D2T1   A0,*+SP(12)       ; |130| 
           ADDU    .L2X    A4,B8,B7:B6       ; |130| 

           SUBU    .L2     B16,B6,B5:B4      ; |130| 
||         ADD     .S2X    B7,A5,B6          ; |130| 
|| [ A0]   B       .S1     $C$L22            ; |235| 

           ADD     .L2     B6,B9,B6          ; |130| 
||         EXT     .S2     B5,24,24,B5       ; |130| 

           SUB     .S2     B17,B6,B4         ; |130| 
||         ADDU    .L2X    A6,B4,B7:B6       ; |130| 

           ADD     .L2     B4,B5,B5          ; |130| 
||         ADD     .S2X    B7,A7,B4          ; |130| 

           ADD     .L2     B4,B5,B7          ; |130| 
||         MV      .S2X    A3,B4             ; |130| 
|| [!A0]   MVK     .S1     8,A3

           STDW    .D2T2   B7:B6,*B4         ; |130| 
           ; BRANCHCC OCCURS {$C$L22}        ; |235| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6

           SUB     .L1X    B4,A3,A3
||         CALL    .S1     __fltllif         ; |135| 

           LDDW    .D1T1   *+A3(8),A5:A4     ; |135| 
           ADDKPC  .S2     $C$RL39,B3,3      ; |135| 
$C$RL39:   ; CALL OCCURS {__fltllif} {0}     ; |135| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 110
           ZERO    .L1     A3
           SET     .S1     A3,0x1a,0x1d,A3
           MPYSP   .M1     A3,A4,A3          ; |135| 
           MV      .L1     A10,A12           ; |135| 
           NOP             2
           SPDP    .S1     A3,A5:A4          ; |135| 
           NOP             1

           CALLP   .S2     __fixdlli,B3
||         FADDDP  .L1     A13:A12,A5:A4,A5:A4 ; |135| 

$C$RL40:   ; CALL OCCURS {__fixdlli} {0}     ; |135| 
           MVKL    .S1     _cycle_counts+8,A12
           MVKH    .S1     _cycle_counts+8,A12
           SUBAW   .D1     A12,2,A3

           MV      .L2X    A11,B4            ; |114| 
||         STDW    .D1T1   A5:A4,*A12        ; |135| 

           STDW    .D1T1   A11:A10,*+A3(32)  ; |114| 
||         MVC     .S2     B4,TSCL           ; |115| 

           MVC     .S2     TSCL,B4           ; |116| 
           MVC     .S2     TSCH,B5           ; |116| 

           STDW    .D2T2   B5:B4,*B13        ; |116| 
||         MVC     .S2     TSCL,B6           ; |117| 

           MVC     .S2     TSCH,B8           ; |117| 
           MVKL    .S1     _output,A3
           MVKH    .S1     _output,A3

           MV      .L1     A3,A10            ; |117| 
||         MVKL    .S1     _input,A3
||         SUBU    .L2     B6,B4,B7:B6       ; |117| 

           MVKH    .S1     _input,A3
||         SUB     .L2     B8,B5,B4          ; |117| 
||         EXT     .S2     B7,24,24,B5       ; |117| 

           ADD     .L2     B4,B5,B7          ; |117| 

           MV      .L2X    A3,B9             ; |244| 
||         STDW    .D1T2   B7:B6,*A14        ; |117| 

           CALLP   .S2     _atanhsp_v,B3
||         LDW     .D2T1   *B9,A4            ; |244| 
||         LDW     .D1T2   *+A10(16),B4      ; |244| 
||         MVK     .S1     0x80,A6           ; |244| 

$C$RL41:   ; CALL OCCURS {_atanhsp_v} {0}    ; |244| 
           MVC     .S2     TSCL,B8           ; |128| 
           MVC     .S2     TSCH,B4           ; |128| 

           LDDW    .D1T1   *A14,A5:A4        ; |130| 
||         LDDW    .D2T2   *B13,B7:B6        ; |130| 
||         MVK     .S2     24,B13

           ADD     .L2X    A12,B13,B13

           MV      .L2     B4,B9             ; |128| 
||         LDDW    .D2T2   *B13,B5:B4        ; |130| 

           NOP             2
           ADDU    .L1X    A4,B6,A7:A6       ; |130| 

           ADD     .S1     A7,A5,A3          ; |130| 
||         SUBU    .L1X    B8,A6,A5:A4       ; |130| 

           ADDU    .L1X    B4,A4,A7:A6       ; |130| 

           ADD     .L2X    A3,B7,B4          ; |130| 
||         EXT     .S1     A5,24,24,A3       ; |130| 

           SUB     .L2     B9,B4,B7          ; |130| 
||         ADD     .S2X    A7,B5,B5          ; |130| 

           ADD     .L2X    B7,A3,B7          ; |130| 

           ADD     .L2     B5,B7,B5          ; |130| 
||         MV      .S2X    A6,B4             ; |130| 

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

           STDW    .D2T1   A5:A4,*B13        ; |130| 
||         LDW     .D1T2   *+A10(4),B4       ; |66| 
||         MVKH    .S2     0xa0b5ed8d,B6

           CALLP   .S2     _isequal,B3
||         LDW     .D1T1   *A10,A4           ; |66| 
||         MVK     .L1     0x9,A8            ; |66| 
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
||         MVK     .L1     0x9,A8            ; |67| 

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
||         MVK     .L1     0x9,A8            ; |68| 

$C$RL46:   ; CALL OCCURS {_isequal} {0}      ; |68| 
           MVKL    .S2     0x3eb0c6f7,B7
           MVKL    .S2     0xa0b5ed8d,B6
           MVKH    .S2     0x3eb0c6f7,B7

           STW     .D1T1   A4,*+A11(12)      ; |68| 
||         MVKH    .S2     0xa0b5ed8d,B6

           CALLP   .S2     _isequal,B3
||         LDW     .D1T1   *A10,A4           ; |69| 
||         LDW     .D2T2   *B12,B4           ; |69| 
||         MVK     .S1     0x80,A6           ; |69| 
||         MVK     .L1     0x9,A8            ; |69| 

$C$RL47:   ; CALL OCCURS {_isequal} {0}      ; |69| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 11
           LDW     .D2T2   *B11,B0           ; |72| 
           STW     .D1T1   A4,*+A11(16)      ; |69| 
           NOP             3

   [!B0]   BNOP    .S1     $C$L23,4          ; |72| 
||         MV      .L2     B0,B1             ; guard predicate rewrite
|| [ B0]   LDW     .D2T2   *B10,B0           ; |72| 

   [ B1]   ADD     .L2     4,B10,B4
           ; BRANCHCC OCCURS {$C$L23}        ; |72| 
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
   [ A0]   B       .S1     $C$L24            ; |72| 
   [ A0]   CALL    .S1     _print_test_results ; |250| 
           MVK     .L1     0x1,A3            ; |72| 
   [ A0]   MVKL    .S1     _all_pass,A4
   [ A0]   MVKH    .S1     _all_pass,A4
           NOP             1
           ; BRANCHCC OCCURS {$C$L24}        ; |72| 
;** --------------------------------------------------------------------------*
$C$L23:    
;          EXCLUSIVE CPU CYCLES: 5
           CALL    .S1     _print_test_results ; |250| 
           MVKL    .S1     _all_pass,A4
           MVKH    .S1     _all_pass,A4
           MV      .L1     A12,A3
           NOP             1
;** --------------------------------------------------------------------------*
$C$L24:    
;          EXCLUSIVE CPU CYCLES: 1

           STW     .D1T1   A3,*A4            ; |72| 
||         MVK     .L1     0x2,A4            ; |250| 
||         ADDKPC  .S2     $C$RL48,B3,0      ; |250| 

$C$RL48:   ; CALL OCCURS {_print_test_results} {0}  ; |250| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 30
           MVKL    .S2     $C$SL2+0,B4
           MVKH    .S2     $C$SL2+0,B4

           CALLP   .S2     _printf,B3
||         STW     .D2T2   B4,*+SP(4)        ; |251| 

$C$RL49:   ; CALL OCCURS {_printf} {0}       ; |251| 
           MVKL    .S2     $C$SL3+0,B4
           MVKH    .S2     $C$SL3+0,B4

           CALLP   .S2     _printf,B3
||         STW     .D2T2   B4,*+SP(4)        ; |251| 

$C$RL50:   ; CALL OCCURS {_printf} {0}       ; |251| 
           MVKL    .S1     $C$SL1+0,A10
           MVKH    .S1     $C$SL1+0,A10

           CALLP   .S2     _print_profile_results,B3
||         MV      .L1     A10,A4            ; |258| 

$C$RL51:   ; CALL OCCURS {_print_profile_results} {0}  ; |258| 

           CALLP   .S2     _print_memory_results,B3
||         MV      .L1     A10,A4            ; |261| 

$C$RL52:   ; CALL OCCURS {_print_memory_results} {0}  ; |261| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 11
           LDW     .D2T2   *++SP(24),B3      ; |262| 
           LDDW    .D2T1   *++SP,A13:A12     ; |262| 
           LDDW    .D2T1   *++SP,A15:A14     ; |262| 
           LDDW    .D2T2   *++SP,B11:B10     ; |262| 
           LDDW    .D2T2   *++SP,B13:B12     ; |262| 

           LDW     .D2T1   *++SP(8),A10      ; |262| 
||         RET     .S2     B3                ; |262| 

           LDW     .D2T1   *++SP(8),A11      ; |262| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |262| 
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const:.string"
$C$SL1:	.string	"atanhSP",0
$C$SL2:	.string	"----------------------------------------",0
$C$SL3:	.string	"----------------------------------------",10,0
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	_printf
	.global	_atanhf
	.global	_driver_init
	.global	_print_profile_results
	.global	_print_memory_results
	.global	_print_test_results
	.global	_gimme_random
	.global	_isequal
	.global	_atanhsp_c
	.global	_atanhsp
	.global	_atanhsp_v
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
