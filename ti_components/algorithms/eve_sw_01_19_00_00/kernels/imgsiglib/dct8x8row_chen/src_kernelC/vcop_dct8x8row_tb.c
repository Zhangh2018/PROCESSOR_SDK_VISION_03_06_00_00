/*
*
* Copyright (c) 2009-2017 Texas Instruments Incorporated
*
* All rights reserved not granted herein.
*
* Limited License.
*
* Texas Instruments Incorporated grants a world-wide, royalty-free, non-exclusive
* license under copyrights and patents it now or hereafter owns or controls to make,
* have made, use, import, offer to sell and sell ("Utilize") this software subject to the
* terms herein.  With respect to the foregoing patent license, such license is granted
* solely to the extent that any such patent is necessary to Utilize the software alone.
* The patent license shall not apply to any combinations which include this software,
* other than combinations with devices manufactured by or for TI ("TI Devices").
* No hardware patent is licensed hereunder.
*
* Redistributions must preserve existing copyright notices and reproduce this license
* (including the above copyright notice and the disclaimer and (if applicable) source
* code license limitations below) in the documentation and/or other materials provided
* with the distribution
*
* Redistribution and use in binary form, without modification, are permitted provided
* that the following conditions are met:
*
* *       No reverse engineering, decompilation, or disassembly of this software is
* permitted with respect to any software provided in binary form.
*
* *       any redistribution and use are licensed by TI for use only with TI Devices.
*
* *       Nothing shall obligate TI to provide you with source code for the software
* licensed and provided to you in object code.
*
* If software source code is provided to you, modification and redistribution of the
* source code are permitted provided that the following conditions are met:
*
* *       any redistribution and use of the source code, including any resulting derivative
* works, are licensed by TI for use only with TI Devices.
*
* *       any redistribution and use of any object code compiled from the source code
* and any resulting derivative works, are licensed by TI for use only with TI Devices.
*
* Neither the name of Texas Instruments Incorporated nor the names of its suppliers
*
* may be used to endorse or promote products derived from this software without
* specific prior written permission.
*
* DISCLAIMER.
*
* THIS SOFTWARE IS PROVIDED BY TI AND TI'S LICENSORS "AS IS" AND ANY EXPRESS
* OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
* OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
* IN NO EVENT SHALL TI AND TI'S LICENSORS BE LIABLE FOR ANY DIRECT, INDIRECT,
* INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
* BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
* DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
* OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
* OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
* OF THE POSSIBILITY OF SUCH DAMAGE.
*
*/


#include <string.h>
#include <stdio.h>
#include <vcop.h>

#include "test_profile.h"

typedef unsigned char  Uint8;
typedef unsigned short Uint16;
typedef unsigned int   Uint32;

typedef signed char    Int8;
typedef signed short   Int16;
typedef signed int     Int32;

#define   IN_W       (16)
#define   IN_H       (16)
#define   OUT_W      (16)
#define   OUT_H      (16)
#define   COEF_W     (8)
#define   COEF_H     (8)

#define   N0         (IN_W * IN_H)
#define   N1         (2 * (IN_W + (IN_W / 8)) * (IN_H + (IN_H / 8)) )

#define calc_HBLKS   (IN_W/8)
#define calc_VBLKS   (IN_H/8)

#define SAT_EN   0

#define INPUT_TYPE           3  // 0 - UBYTE, 1 - BYTE, 2 - USHORT, 3 - SHORT
#define COEF_TYPE_IGNORE     2  // 0 - UBYTE, 1 - BYTE, 2 - USHORT, 3 - SHORT
#define OUTPUT_TYPE          1  // 0 - BYTE,  1 - SHORT

#define RND_SHIFT      16

#pragma DATA_SECTION(A, "Adata");
Int16 A[N0] =
{
0x141f, 0x064d, 0xfbba, 0xfd7b, 0xf72e, 0x019f, 0x028d, 0xfb9b, 0x141f, 0x064d, 0xfbba, 0xfd7b, 0xf72e, 0x019f, 0x028d, 0xfb9b,
0x1b5d, 0x0128, 0x00cd, 0x0a0e, 0xfc76, 0xfde3, 0xf8f5, 0x015b, 0x1b5d, 0x0128, 0x00cd, 0x0a0e, 0xfc76, 0xfde3, 0xf8f5, 0x015b,
0x0528, 0xfcc6, 0x0117, 0xfe87, 0x02fa, 0x1184, 0x0ac7, 0xfe45, 0x0528, 0xfcc6, 0x0117, 0xfe87, 0x02fa, 0x1184, 0x0ac7, 0xfe45,
0x17d7, 0xf83e, 0x01d8, 0xfd60, 0x095b, 0x0750, 0x02b5, 0x056a, 0x17d7, 0xf83e, 0x01d8, 0xfd60, 0x095b, 0x0750, 0x02b5, 0x056a,
0xffd5, 0x07d7, 0x034d, 0x0c38, 0xfc29, 0x0ae4, 0x0408, 0x15bf, 0xffd5, 0x07d7, 0x034d, 0x0c38, 0xfc29, 0x0ae4, 0x0408, 0x15bf,
0x2ccf, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x2ccf, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x1021, 0x03bb, 0xf4fa, 0x0238, 0x02a1, 0x03be, 0x0223, 0x0255, 0x1021, 0x03bb, 0xf4fa, 0x0238, 0x02a1, 0x03be, 0x0223, 0x0255,
0x064a, 0x06b2, 0x0e5f, 0x0a57, 0xfa39, 0x003b, 0xf95a, 0x0163, 0x064a, 0x06b2, 0x0e5f, 0x0a57, 0xfa39, 0x003b, 0xf95a, 0x0163,

0x141f, 0x064d, 0xfbba, 0xfd7b, 0xf72e, 0x019f, 0x028d, 0xfb9b, 0x141f, 0x064d, 0xfbba, 0xfd7b, 0xf72e, 0x019f, 0x028d, 0xfb9b,
0x1b5d, 0x0128, 0x00cd, 0x0a0e, 0xfc76, 0xfde3, 0xf8f5, 0x015b, 0x1b5d, 0x0128, 0x00cd, 0x0a0e, 0xfc76, 0xfde3, 0xf8f5, 0x015b,
0x0528, 0xfcc6, 0x0117, 0xfe87, 0x02fa, 0x1184, 0x0ac7, 0xfe45, 0x0528, 0xfcc6, 0x0117, 0xfe87, 0x02fa, 0x1184, 0x0ac7, 0xfe45,
0x17d7, 0xf83e, 0x01d8, 0xfd60, 0x095b, 0x0750, 0x02b5, 0x056a, 0x17d7, 0xf83e, 0x01d8, 0xfd60, 0x095b, 0x0750, 0x02b5, 0x056a,
0xffd5, 0x07d7, 0x034d, 0x0c38, 0xfc29, 0x0ae4, 0x0408, 0x15bf, 0xffd5, 0x07d7, 0x034d, 0x0c38, 0xfc29, 0x0ae4, 0x0408, 0x15bf,
0x2ccf, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x2ccf, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x1021, 0x03bb, 0xf4fa, 0x0238, 0x02a1, 0x03be, 0x0223, 0x0255, 0x1021, 0x03bb, 0xf4fa, 0x0238, 0x02a1, 0x03be, 0x0223, 0x0255,
0x064a, 0x06b2, 0x0e5f, 0x0a57, 0xfa39, 0x003b, 0xf95a, 0x0163, 0x064a, 0x06b2, 0x0e5f, 0x0a57, 0xfa39, 0x003b, 0xf95a, 0x0163,

};


#pragma DATA_SECTION(ignore_ptr, "Bdata");
Int16 ignore_ptr[64] = {0};

#pragma DATA_SECTION(B, "Cdata");
Int16 B[N1] = {0};

#pragma DATA_SECTION(ref, "EOutdata");
Int16 ref[N1] = {
0x32c1, 0x02c7, 0x0007, 0x116e, 0xf0aa, 0x0472, 0x0383, 0xe1f8, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x0536, 0xfc51, 0x0784, 0x0601, 0x040a, 0xfa5b, 0xfeb9, 0x06fc, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x0229, 0xfbee, 0x0020, 0xf6f8, 0x089e, 0xf486, 0x062c, 0xfc11, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x09fa, 0xfb18, 0x01cf, 0xfebc, 0x0257, 0xf245, 0xf950, 0x033d, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0xfd85, 0xfe0e, 0xf5f7, 0xfa36, 0xfc0f, 0x07f5, 0xfdf3, 0xfc2f, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x0ddc, 0x02c3, 0xf568, 0xf98e, 0x0052, 0x037b, 0x0436, 0x0acd, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x0302, 0x038f, 0xf7ff, 0xffcd, 0xfedc, 0x078f, 0x052c, 0x0894, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x093b, 0xfaaf, 0xf31a, 0x0314, 0x07d9, 0xf7eb, 0xf7ba, 0x06ff, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,

0x32c1, 0x02c7, 0x0007, 0x116e, 0xf0aa, 0x0472, 0x0383, 0xe1f8, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x0536, 0xfc51, 0x0784, 0x0601, 0x040a, 0xfa5b, 0xfeb9, 0x06fc, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x0229, 0xfbee, 0x0020, 0xf6f8, 0x089e, 0xf486, 0x062c, 0xfc11, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x09fa, 0xfb18, 0x01cf, 0xfebc, 0x0257, 0xf245, 0xf950, 0x033d, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0xfd85, 0xfe0e, 0xf5f7, 0xfa36, 0xfc0f, 0x07f5, 0xfdf3, 0xfc2f, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x0ddc, 0x02c3, 0xf568, 0xf98e, 0x0052, 0x037b, 0x0436, 0x0acd, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x0302, 0x038f, 0xf7ff, 0xffcd, 0xfedc, 0x078f, 0x052c, 0x0894, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x093b, 0xfaaf, 0xf31a, 0x0314, 0x07d9, 0xf7eb, 0xf7ba, 0x06ff, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,

0x32c1, 0x02c7, 0x0007, 0x116e, 0xf0aa, 0x0472, 0x0383, 0xe1f8, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x0536, 0xfc51, 0x0784, 0x0601, 0x040a, 0xfa5b, 0xfeb9, 0x06fc, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x0229, 0xfbee, 0x0020, 0xf6f8, 0x089e, 0xf486, 0x062c, 0xfc11, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x09fa, 0xfb18, 0x01cf, 0xfebc, 0x0257, 0xf245, 0xf950, 0x033d, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0xfd85, 0xfe0e, 0xf5f7, 0xfa36, 0xfc0f, 0x07f5, 0xfdf3, 0xfc2f, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x0ddc, 0x02c3, 0xf568, 0xf98e, 0x0052, 0x037b, 0x0436, 0x0acd, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x0302, 0x038f, 0xf7ff, 0xffcd, 0xfedc, 0x078f, 0x052c, 0x0894, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x093b, 0xfaaf, 0xf31a, 0x0314, 0x07d9, 0xf7eb, 0xf7ba, 0x06ff, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,

0x32c1, 0x02c7, 0x0007, 0x116e, 0xf0aa, 0x0472, 0x0383, 0xe1f8, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x0536, 0xfc51, 0x0784, 0x0601, 0x040a, 0xfa5b, 0xfeb9, 0x06fc, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x0229, 0xfbee, 0x0020, 0xf6f8, 0x089e, 0xf486, 0x062c, 0xfc11, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x09fa, 0xfb18, 0x01cf, 0xfebc, 0x0257, 0xf245, 0xf950, 0x033d, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0xfd85, 0xfe0e, 0xf5f7, 0xfa36, 0xfc0f, 0x07f5, 0xfdf3, 0xfc2f, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x0ddc, 0x02c3, 0xf568, 0xf98e, 0x0052, 0x037b, 0x0436, 0x0acd, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x0302, 0x038f, 0xf7ff, 0xffcd, 0xfedc, 0x078f, 0x052c, 0x0894, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x093b, 0xfaaf, 0xf31a, 0x0314, 0x07d9, 0xf7eb, 0xf7ba, 0x06ff, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


};


#if VCOP_HOST_EMULATION
  #include "vcop_dct8x8row_kernel.k"    // kernel source
#else
  #include "vcop_dct8x8row_kernel.h"    // translated kernel
#endif

int main()
{
    int    i, j;
    int    fail = 0;

    /*-------------------------------------------------------------------*/
    /* Actual filtering operation happens here as part of the test bench */
    /* and the results are written out so as to be compared with EVE     */
    /* results.                                                          */
    /*-------------------------------------------------------------------*/
#ifdef REPORT
    FILE* fpReport = fopen("../../../report.csv","a+");
    #ifdef SCTM
    unsigned int sctm_t1, sctm_t2, exec_diff;
    unsigned int overflow;
    EVE_SCTM_Enable(CTM);
    EVE_SCTM_CounterConfig(CTM, SCTM_Counter_0, VCOP_BUSY, SCTM_DURATION);
    EVE_SCTM_CounterTimerEnable(CTM, SCTM_Counter_0);

    sctm_t1 = EVE_SCTM_CounterRead (CTM, SCTM_Counter_0);
    #endif
#endif

    if ( ( INPUT_TYPE == 3) && (OUTPUT_TYPE == 1) )
    {
        vcop_dct8x8row_int_int
        (
             A,
             ignore_ptr,
             B,
             IN_W,
             IN_H,
             OUT_W,
             OUT_H,
             calc_HBLKS,
             calc_VBLKS,
             INPUT_TYPE,
             COEF_TYPE_IGNORE,
             OUTPUT_TYPE,
             RND_SHIFT
         );
    }

#ifdef REPORT
    #ifdef SCTM
    sctm_t2 = EVE_SCTM_CounterRead (CTM, SCTM_Counter_0);
    overflow = EVE_SCTM_OverflowCheck(CTM,SCTM_Counter_0);
    assert(overflow!=1);

    exec_diff = sctm_t2 - sctm_t1;
    EVE_SCTM_CounterTimerDisable(CTM, SCTM_Counter_0);
    #endif

    fprintf(fpReport,"vcop_dct8x8row_chen,");
    fprintf(fpReport,"%d,",IN_W);
    fprintf(fpReport,"%d,",IN_H);
    fprintf(fpReport,"%d,",IN_W);
    fprintf(fpReport,"%d,",IN_H);
    fprintf(fpReport,"1,");
#endif

    /*-------------------------------------------------------------------*/
    /* Here we print out the data in a coherent manner for use on EVE    */
    /* simulator.                                                        */
    /*-------------------------------------------------------------------*/
#ifdef CONSOLE

    printf("\nInput values are: \n");
    for ( i = 0; i < IN_H; i++)
    {
        for ( j = 0; j < IN_W; j++)
        {
            printf("%6d", A[(i * IN_W)+j]);
        }
        printf("\n");
    }

    printf("\n---Output values are: ---\n\n");
    for ( i = 0; i < OUT_H + (OUT_H/8); i++)
    {
        for ( j = 0; j < (OUT_W + (OUT_W/8)); j++)
        {
            printf("%6d", B[(i * (OUT_W + OUT_W/8)) + j]);

        }
        printf("\n");
    }

    printf("\n---Reference values are: ---\n\n");
    for ( i = 0; i < OUT_H + (OUT_H/8); i++)
    {
        for ( j = 0; j < (OUT_W + (OUT_W/8)); j++)
        {
            printf("%6d", ref[(i * (OUT_W + OUT_W/8)) + j]);

        }
        printf("\n");
    }
#endif

    /*-------------------------------------------------------------------*/
    /*  Perform a "memcmp" of the processed results in array "C" with    */
    /*  the expected output array in "EOut" over the "N" points of       */
    /*  computation.                                                     */
    /*-------------------------------------------------------------------*/

    fail = memcmp (B, ref, sizeof(ref));

    /*-------------------------------------------------------------------*/
    /*  If there is a mis-compare, print out a memory trace, else print  */
    /*  pass.                                                            */
    /*-------------------------------------------------------------------*/


#ifdef CONSOLE
    if (fail)
    {
        for (i = 0; i < N0; i++)
        {
           printf ("i:%d, C:%d, EOut:%d, %c \n",
                    i, B[i], ref[i], (B[i] == ref[i]) ? ' ' : '*'
                  );
        }
    }
    else      printf ("\n\n\n\n  DCT8x8 row processing (Chen's) Kernel-C code !!!! PASS !!!!\n\n\n");
#endif

#ifdef REPORT
    if(!fail) {
        fprintf(fpReport,"PASS,");
    }
    else {
        fprintf(fpReport,"FAIL,");
    }
    #ifdef SCTM
        fprintf(fpReport,"%d\n",exec_diff);
    #endif
    if(fpReport) {
        fclose(fpReport);
    }
#endif

    return 0;
}
