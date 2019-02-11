/*******************************************************************************
**+--------------------------------------------------------------------------+**
**|                            ****                                          |**
**|                            ****                                          |**
**|                            ******o***                                    |**
**|                      ********_///_****                                   |**
**|                      ***** /_//_/ ****                                   |**
**|                       ** ** (__/ ****                                    |**
**|                           *********                                      |**
**|                            ****                                          |**
**|                            ***                                           |**
**|                                                                          |**
**|         Copyright (c) 2016 - 2017 Texas Instruments Incorporated         |**
**|                                                                          |**
**|              All rights reserved not granted herein.                     |**
**|                                                                          |**
**|                         Limited License.                                 |**
**|                                                                          |**
**|  Texas Instruments Incorporated grants a world-wide, royalty-free,       |**
**|  non-exclusive license under copyrights and patents it now or            |**
**|  hereafter owns or controls to make, have made, use, import, offer to    |**
**|  sell and sell ("Utilize") this software subject to the terms herein.    |**
**|  With respect to the foregoing patent license, such license is granted   |**
**|  solely to the extent that any such patent is necessary to Utilize the   |**
**|  software alone.  The patent license shall not apply to any              |**
**|  combinations which include this software, other than combinations       |**
**|  with devices manufactured by or for TI ("TI Devices").  No hardware     |**
**|  patent is licensed hereunder.                                           |**
**|                                                                          |**
**|  Redistributions must preserve existing copyright notices and            |**
**|  reproduce this license (including the above copyright notice and the    |**
**|  disclaimer and (if applicable) source code license limitations below)   |**
**|  in the documentation and/or other materials provided with the           |**
**|  distribution                                                            |**
**|                                                                          |**
**|  Redistribution and use in binary form, without modification, are        |**
**|  permitted provided that the following conditions are met:               |**
**|                                                                          |**
**|    *  No reverse engineering, decompilation, or disassembly of this      |**
**|  software is permitted with respect to any software provided in binary   |**
**|  form.                                                                   |**
**|                                                                          |**
**|    *  any redistribution and use are licensed by TI for use only with    |**
**|  TI Devices.                                                             |**
**|                                                                          |**
**|    *  Nothing shall obligate TI to provide you with source code for      |**
**|  the software licensed and provided to you in object code.               |**
**|                                                                          |**
**|  If software source code is provided to you, modification and            |**
**|  redistribution of the source code are permitted provided that the       |**
**|  following conditions are met:                                           |**
**|                                                                          |**
**|    *  any redistribution and use of the source code, including any       |**
**|  resulting derivative works, are licensed by TI for use only with TI     |**
**|  Devices.                                                                |**
**|                                                                          |**
**|    *  any redistribution and use of any object code compiled from the    |**
**|  source code and any resulting derivative works, are licensed by TI      |**
**|  for use only with TI Devices.                                           |**
**|                                                                          |**
**|  Neither the name of Texas Instruments Incorporated nor the names of     |**
**|  its suppliers may be used to endorse or promote products derived from   |**
**|  this software without specific prior written permission.                |**
**|                                                                          |**
**|  DISCLAIMER.                                                             |**
**|                                                                          |**
**|  THIS SOFTWARE IS PROVIDED BY TI AND TI'S LICENSORS "AS IS" AND ANY      |**
**|  EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE       |**
**|  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR      |**
**|  PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL TI AND TI'S LICENSORS BE      |**
**|  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR     |**
**|  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF    |**
**|  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR         |**
**|  BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,   |**
**|  WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE    |**
**|  OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,       |**
**|  EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.                      |**
**+--------------------------------------------------------------------------+**
*******************************************************************************/

#include "../../common/TI_test.h"
#include "../../common/TI_memory.h"
#include "../../common/TI_profile.h"

#include "VXLIB_warpAffineBilinear_bc_i8u_c32f_o8u.h"
#include "VXLIB_warpAffineBilinear_bc_i8u_c32f_o8u_cn.h"
#include "VXLIB_warpAffineBilinear_bc_i8u_c32f_o8u_idat.h"

/* VXLIB_warpAffineBilinear_bc_i8u_c32f_o8u_d:  Test Driver Routine */
void VXLIB_warpAffineBilinear_bc_i8u_c32f_o8u_d(uint8_t LevelOfFeedback)
{
    int32_t    tpi;  /* test parameter index */

    /* Test Parameters */
    warpAffineBilinear_bc_i8u_c32f_o8u_testParams_t   *prm;

    warpAffineBilinear_bc_i8u_c32f_o8u_getTestParams(&prm, &test_cases);

    /* Initialize profiling */
    TI_profile_init(3, "VXLIB_warpAffineBilinear_bc_i8u_c32f_o8u");

    /* Run each test case */
    for( tpi=0; tpi < test_cases; tpi++ ) {

        /* Initialize status flags */
        int32_t         status_nat_vs_opt = TI_TEST_KERNEL_PASS; /* Test status : Natural c vs. Optimized */
        int32_t         status_nat_vs_ref = TI_TEST_KERNEL_PASS; /* Test status : Natural c vs. Static Reference */
        int32_t         status_nat_vs_opt_tile = TI_TEST_KERNEL_PASS; /* Test status : Natural c vs. Optimized */
        VXLIB_STATUS    status_opt = VXLIB_SUCCESS;
        VXLIB_STATUS    status_nat = VXLIB_SUCCESS;

        /* Compute buffer sizes */
        uint32_t    inp_size =   prm[tpi].srcStride * prm[tpi].srcHeight;
        uint32_t    out_size =   prm[tpi].dstStride * prm[tpi].dstHeight;
        uint32_t    img_size =   prm[tpi].dstWidth * prm[tpi].dstHeight;

        /* Allocate buffers for each test vector */
        uint8_t   *src    =  (uint8_t *) TI_malloc(inp_size * sizeof(uint8_t));
        uint8_t   *dst     =  (uint8_t *) TI_malloc(out_size * sizeof(uint8_t));
        uint8_t   *dst_cn  =  (uint8_t *) malloc(out_size * sizeof(uint8_t));

        /* Only run the test if the buffer allocations fit in the heap */
        if( src && dst && dst_cn ) {

            int32_t                          fail;
            VXLIB_bufParams2D_t    src_addr, dst_addr;
            VXLIB_F32 warpMatrix[6];

            /* Fill input arrays according to desired test pattern */
            TI_fillBuffer(prm[tpi].testPattern,
                          (uint8_t)255,
                          src, prm[tpi].staticIn,
                          prm[tpi].srcWidth, prm[tpi].srcHeight, prm[tpi].srcStride,
                          sizeof(uint8_t), testPatternString);

            src_addr.dim_x = prm[tpi].srcWidth;
            src_addr.dim_y = prm[tpi].srcHeight;
            src_addr.stride_y = prm[tpi].srcStride;
            src_addr.data_type = VXLIB_UINT8;

            dst_addr.dim_x = prm[tpi].dstWidth;
            dst_addr.dim_y = prm[tpi].dstHeight;
            dst_addr.stride_y = prm[tpi].dstStride;
            dst_addr.data_type = VXLIB_UINT8;

            memcpy(warpMatrix, prm[tpi].warpMatrixIn, 6*sizeof(warpMatrix[0]));

            /* Check for rotation matrix*/
            if(warpMatrix[0] == 0.707106781f) {
                warpMatrix[4] = (float)prm[tpi].srcWidth/2.0 - warpMatrix[0]*(float)prm[tpi].dstWidth/2.0 - warpMatrix[2]*(float)prm[tpi].dstHeight/2.0;
                warpMatrix[5] = (float)prm[tpi].srcHeight/2.0 - warpMatrix[1]*(float)prm[tpi].dstWidth/2.0 - warpMatrix[3]*(float)prm[tpi].dstHeight/2.0;
            }

            /* Test optimized kernel */
            TI_profile_start(TI_PROFILE_KERNEL_OPT);
            status_opt = VXLIB_warpAffineBilinear_bc_i8u_c32f_o8u(src, &src_addr, dst, &dst_addr, warpMatrix, prm[tpi].borderValue, 0, 0, 0, 0);
            TI_profile_stop();

            /* Test _cn kernel */
            TI_profile_start(TI_PROFILE_KERNEL_CN);
            status_nat = VXLIB_warpAffineBilinear_bc_i8u_c32f_o8u_cn(src, &src_addr, dst_cn, &dst_addr, warpMatrix, prm[tpi].borderValue, 0, 0, 0, 0);
            TI_profile_stop();

            /* Compare natural C Output and Optimized Output */
            status_nat_vs_opt = TI_compare_mem_2D((void *) dst, (void *)dst_cn, 1, 0, prm[tpi].dstWidth, prm[tpi].dstHeight, prm[tpi].dstStride, sizeof(dst[0]));

            /* If static output is available, then additionally compares natural C output with static reference output data */
            if( prm[tpi].staticOut != NULL ) {
                status_nat_vs_ref = TI_compare_mem_2D((void *) prm[tpi].staticOut, (void *)dst_cn, 0, 0, prm[tpi].dstWidth, prm[tpi].dstHeight, prm[tpi].dstStride, sizeof(dst[0]));
            }

#if 1
            memset(dst, 0, out_size);

            /* Test the tiling support by dividing the image into 4 quadrants and processing */
            dst_addr.dim_x = prm[tpi].dstWidth / 2;
            dst_addr.dim_y = prm[tpi].dstHeight / 2;

            /* Process quadrant 1 */
            status_opt = VXLIB_warpAffineBilinear_bc_i8u_c32f_o8u(src, &src_addr, dst, &dst_addr, warpMatrix, prm[tpi].borderValue, 0, 0, 0, 0);

            if(prm[tpi].dstWidth % 2) {
                dst_addr.dim_x = prm[tpi].dstWidth / 2 + 1;
            }

            /* Process quadrant 2 */
            status_opt = VXLIB_warpAffineBilinear_bc_i8u_c32f_o8u(src, &src_addr,
                                                              &dst[prm[tpi].dstWidth / 2], &dst_addr,
                                                              warpMatrix, prm[tpi].borderValue, 0, 0, prm[tpi].dstWidth / 2, 0);

            dst_addr.dim_x = prm[tpi].dstWidth / 2;
            if(prm[tpi].dstHeight % 2) {
                dst_addr.dim_y = prm[tpi].dstHeight / 2 + 1;
            }

            /* Process quadrant 3 */
            status_opt = VXLIB_warpAffineBilinear_bc_i8u_c32f_o8u(src, &src_addr,
                                                              &dst[dst_addr.stride_y * prm[tpi].dstHeight / 2], &dst_addr,
                                                              warpMatrix, prm[tpi].borderValue, 0, 0, 0, prm[tpi].dstHeight / 2);

            if(prm[tpi].dstWidth % 2) {
                dst_addr.dim_x = prm[tpi].dstWidth / 2 + 1;
            }

            /* Process quadrant 4 */
            status_opt = VXLIB_warpAffineBilinear_bc_i8u_c32f_o8u(src, &src_addr,
                                                              &dst[dst_addr.stride_y * prm[tpi].dstHeight / 2 + prm[tpi].dstWidth / 2], &dst_addr,
                                                              warpMatrix, prm[tpi].borderValue, 0, 0, prm[tpi].dstWidth / 2, prm[tpi].dstHeight / 2);

            /* Compare natural C Output and Optimized Output */
            status_nat_vs_opt_tile = TI_compare_mem_2D((void *) dst, (void *)dst_cn, 1, 0, prm[tpi].dstWidth, prm[tpi].dstHeight, prm[tpi].dstStride, sizeof(dst[0]));
#endif

            /* Set the 'fail' flag based on test vector comparison results */
            fail = ((status_nat_vs_opt == TI_TEST_KERNEL_FAIL) ||
                    (status_nat_vs_ref == TI_TEST_KERNEL_FAIL) ||
                    (status_nat_vs_opt_tile == TI_TEST_KERNEL_FAIL) ||
                    (status_opt != VXLIB_SUCCESS) ||
                    (status_nat != VXLIB_SUCCESS)) ? 1 : 0;

            est_test=1;

            /* Profile display and preparation for cycle estimation */
            sprintf(desc, "%s generated input | width=%d, height=%d, out size=%d",
                    testPatternString, prm[tpi].dstWidth, prm[tpi].dstHeight, img_size);
            TI_profile_formula_add_test(img_size, prm[tpi].dstHeight, NULL, fail, desc, NULL);

        } else {
            /* Display the error printout for this test vector before moving on to the next test vector */
            sprintf(desc, "width=%d, height=%d, buffer size=%d",
                    prm[tpi].srcWidth, prm[tpi].srcHeight, inp_size);
            TI_profile_skip_test(desc);
        }

        /* Free buffers for each test vector */
        free(dst_cn);
        TI_free(dst);
        TI_free(src);
    }

    /* Calculate and display cycle formula and/or cycle range (and testing success) */
    TI_profile_cycle_report(TI_PROFILE_FORMULA_RANGE,
                            "N = width * height; M = height",
                            "width * height");

    /* Provide memory requirements */
    TI_kernel_memory();

}

/* Main call for individual test projects */
#ifndef __ONESHOTTEST

main() {
    if( TI_cache_init()) {
        TI_memError("VXLIB_warpAffineBilinear_bc_i8u_c32f_o8u");
    } else {
        VXLIB_warpAffineBilinear_bc_i8u_c32f_o8u_d(0);
    }
}
#endif /* __ONESHOTTEST */

/* ======================================================================== */
/*  End of file:  VXLIB_warpAffineBilinear_bc_i8u_c32f_o8u_d.c                  */
/* ======================================================================== */
