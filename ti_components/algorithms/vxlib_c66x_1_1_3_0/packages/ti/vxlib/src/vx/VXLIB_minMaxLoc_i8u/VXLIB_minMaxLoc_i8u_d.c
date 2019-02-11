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

#include "VXLIB_minMaxLoc_i8u.h"
#include "VXLIB_minMaxLoc_i8u_cn.h"
#include "VXLIB_minMaxLoc_i8u_idat.h"

#define min(a, b) ((a < b) ? a : b)

/* VXLIB_minMaxLoc_i8u_d:  Test Driver Routine */
void VXLIB_minMaxLoc_i8u_d(uint8_t LevelOfFeedback)
{
    int32_t    tpi;  /* test parameter index */

    /* Test Parameters */
    minMaxLoc_i8u_testParams_t   *prm;

    minMaxLoc_i8u_getTestParams(&prm, &test_cases);

    /* Initialize profiling */
    TI_profile_init(3, "VXLIB_minMaxLoc_i8u");

    /* Run each test case */
    for( tpi=0; tpi < test_cases; tpi++ ) {

        /* Initialize status flags */
        int32_t         status_nat_vs_opt_val = TI_TEST_KERNEL_PASS; /* Test status : Natural c vs. Optimized */
        int32_t         status_nat_vs_ref_val = TI_TEST_KERNEL_PASS; /* Test status : Natural c vs. Static Reference */
        int32_t         status_nat_vs_opt_arr = TI_TEST_KERNEL_PASS; /* Test status : Natural c vs. Optimized */
        int32_t         status_nat_vs_ref_arr = TI_TEST_KERNEL_PASS; /* Test status : Natural c vs. Static Reference */
        VXLIB_STATUS    status_opt = VXLIB_SUCCESS;
        VXLIB_STATUS    status_nat = VXLIB_SUCCESS;

        /* Compute buffer sizes */
        uint32_t    inp_size =   prm[tpi].stride * prm[tpi].height;
        uint32_t    img_size =   prm[tpi].width * prm[tpi].height;

        /* Allocate buffers for each test vector */
        uint8_t    *src           =  (uint8_t *) TI_malloc(inp_size * sizeof(uint8_t));
        uint8_t    *pMinVal       = (uint8_t *) TI_malloc(sizeof(uint8_t));
        uint8_t    *pMinVal_cn    = (uint8_t *) malloc(sizeof(uint8_t));
        uint8_t    *pMaxVal       = (uint8_t *) TI_malloc(sizeof(uint8_t));
        uint8_t    *pMaxVal_cn    = (uint8_t *) malloc(sizeof(uint8_t));

        uint32_t   *pMinCount = NULL, *pMinCount_cn = NULL, *pMaxCount = NULL, *pMaxCount_cn = NULL;
        uint32_t   *minLoc = NULL, *minLoc_cn = NULL, *maxLoc = NULL, *maxLoc_cn = NULL;

        if(prm[tpi].mode > 1) {
            pMinCount     = (uint32_t *) TI_malloc(sizeof(uint32_t));
            pMinCount_cn  = (uint32_t *) malloc(sizeof(uint32_t));
            pMaxCount     = (uint32_t *) TI_malloc(sizeof(uint32_t));
            pMaxCount_cn  = (uint32_t *) malloc(sizeof(uint32_t));

            if(prm[tpi].mode > 2) {
                minLoc        = (uint32_t *) TI_malloc(prm[tpi].minLocCapacity * 2 * sizeof(uint32_t));
                minLoc_cn     = (uint32_t *) malloc(prm[tpi].minLocCapacity * 2 * sizeof(uint32_t));
                maxLoc        = (uint32_t *) TI_malloc(prm[tpi].maxLocCapacity * 2 * sizeof(uint32_t));
                maxLoc_cn     = (uint32_t *) malloc(prm[tpi].maxLocCapacity * 2 * sizeof(uint32_t));
            }
        }

        /* Only run the test if the buffer allocations fit in the heap */
        if( src && pMinVal && pMinVal_cn && pMaxVal && pMaxVal_cn &&
            (
                (prm[tpi].mode == 1) ||
                (prm[tpi].mode > 1 && pMinCount && pMinCount_cn && pMaxCount && pMaxCount_cn &&
                    (
                        (prm[tpi].mode == 2) ||
                        (prm[tpi].mode > 2 && maxLoc && maxLoc_cn && minLoc && minLoc_cn)
                    )
                )
            )
        ) {

            int32_t                          fail, mode;
            VXLIB_bufParams2D_t    src_addr;
            size_t minLocCapacity = 0, maxLocCapacity = 0;

            /* Fill input arrays according to desired test pattern */
            TI_fillBuffer(prm[tpi].testPattern,
                          (uint8_t)255,
                          src, prm[tpi].staticIn,
                          prm[tpi].width, prm[tpi].height, prm[tpi].stride,
                          sizeof(uint8_t), testPatternString);

            *pMinVal   = *pMinVal_cn   = 255;
            *pMaxVal   = *pMaxVal_cn   = 0;
            if(pMinCount && pMinCount_cn) *pMinCount = *pMinCount_cn = 0;
            if(pMaxCount && pMaxCount_cn) *pMaxCount = *pMaxCount_cn = 0;
            if(minLoc && minLoc_cn) minLocCapacity = prm[tpi].minLocCapacity;
            if(maxLoc && maxLoc_cn) maxLocCapacity = prm[tpi].maxLocCapacity;
          
            
            src_addr.dim_x = prm[tpi].width;
            src_addr.dim_y = prm[tpi].height;
            src_addr.stride_y = prm[tpi].stride;
            src_addr.data_type = VXLIB_UINT8;

            /* Test optimized kernel */
            TI_profile_start(TI_PROFILE_KERNEL_OPT);
            status_opt = VXLIB_minMaxLoc_i8u(src, &src_addr, pMinVal, pMaxVal, pMinCount,
                                          pMaxCount, minLocCapacity, maxLocCapacity,
                                          minLoc, maxLoc, 0, 0);
            TI_profile_stop();

            /* Test _cn kernel */
            TI_profile_start(TI_PROFILE_KERNEL_CN);
            status_nat = VXLIB_minMaxLoc_i8u_cn(src, &src_addr, pMinVal_cn, pMaxVal_cn, pMinCount_cn,
                                             pMaxCount_cn, minLocCapacity, maxLocCapacity,
                                             minLoc_cn, maxLoc_cn, 0, 0);
            TI_profile_stop();

            /* Compare natural C Output and Optimized Output */
            if((*pMinVal_cn == *pMinVal) && (*pMaxVal_cn == *pMaxVal) && (
                    (prm[tpi].mode == 1) ||
                    (prm[tpi].mode > 1 && *pMinCount == *pMinCount_cn && *pMaxCount == *pMaxCount_cn))) {
                status_nat_vs_opt_val = TI_TEST_KERNEL_PASS;
            } else {
                status_nat_vs_opt_val = TI_TEST_KERNEL_FAIL;
            }

            if(prm[tpi].mode > 2) {
                if((TI_compare_mem((void *) minLoc, (void *)minLoc_cn, min(*pMinCount, prm[tpi].minLocCapacity) * 2 * sizeof(uint32_t)) == 1) &&
                   (TI_compare_mem((void *) maxLoc, (void *)maxLoc_cn, min(*pMaxCount, prm[tpi].maxLocCapacity) * 2 * sizeof(uint32_t)) == 1)) {
                    status_nat_vs_opt_arr = TI_TEST_KERNEL_PASS;
                } else {
                    status_nat_vs_opt_arr = TI_TEST_KERNEL_FAIL;
                }
            }

            /* If static output is available, then additionally compares natural C output with static reference output data */
            if( prm[tpi].pMinVal != NULL && prm[tpi].pMaxVal != NULL &&
                prm[tpi].pMinCount != NULL && prm[tpi].pMaxCount != NULL ) {
                if((*pMinVal_cn == *prm[tpi].pMinVal) && (*pMaxVal_cn == *prm[tpi].pMaxVal) && (
                    (prm[tpi].mode == 1) ||
                    (prm[tpi].mode > 1 && *pMinCount_cn == *prm[tpi].pMinCount && *pMaxCount_cn == *prm[tpi].pMaxCount))) {
                    status_nat_vs_ref_val = TI_TEST_KERNEL_PASS;
                } else {
                    status_nat_vs_ref_val = TI_TEST_KERNEL_FAIL;
                }
            }

            if( prm[tpi].minLoc != NULL && prm[tpi].maxLoc != NULL ) {
                if(prm[tpi].mode > 2) {
                    if((TI_compare_mem((void *) prm[tpi].minLoc, (void *)minLoc_cn, min(*pMinCount, prm[tpi].minLocCapacity) * 2 * sizeof(uint32_t)) == 1) &&
                       (TI_compare_mem((void *) prm[tpi].maxLoc, (void *)maxLoc_cn, min(*pMaxCount, prm[tpi].maxLocCapacity) * 2 * sizeof(uint32_t)) == 1)) {
                        status_nat_vs_ref_arr = TI_TEST_KERNEL_PASS;
                    } else {
                        status_nat_vs_ref_arr = TI_TEST_KERNEL_FAIL;
                    }
                }
            }

            /* Set the 'fail' flag based on test vector comparison results */
            fail = ((status_nat_vs_opt_val == TI_TEST_KERNEL_FAIL) ||
                    (status_nat_vs_opt_arr == TI_TEST_KERNEL_FAIL) ||
                    (status_nat_vs_ref_val == TI_TEST_KERNEL_FAIL) ||
                    (status_nat_vs_ref_arr == TI_TEST_KERNEL_FAIL) ||
                    (status_opt != VXLIB_SUCCESS) ||
                    (status_nat != VXLIB_SUCCESS)) ? 1 : 0;

            est_test=1;

            mode = prm[tpi].mode;
            if(prm[tpi].width != prm[tpi].stride)
                mode += 3;

            /* Profile display and preparation for cycle estimation */
            sprintf(desc, "%s generated input | width=%d, height=%d, out size=%d, mode = %d",
                    testPatternString, prm[tpi].width, prm[tpi].height, img_size, mode);
            TI_profile_formula_add_test(img_size, prm[tpi].height, NULL, fail, desc, mode);

        } else {
            /* Display the error printout for this test vector before moving on to the next test vector */
            sprintf(desc, "width=%d, height=%d, buffer size=%d",
                    prm[tpi].width, prm[tpi].height, inp_size);
            TI_profile_skip_test(desc);
        }

        /* Free buffers for each test vector */
        free(maxLoc_cn);
        TI_free(maxLoc);
        free(minLoc_cn);
        TI_free(minLoc);
        free(pMaxCount_cn);
        TI_free(pMaxCount);
        free(pMinCount_cn);
        TI_free(pMinCount);
        free(pMaxVal_cn);
        TI_free(pMaxVal);
        free(pMinVal_cn);
        TI_free(pMinVal);
        TI_free(src);
    }

    /* Calculate and display cycle formula and/or cycle range (and testing success) */
    TI_profile_setMode(1, 2, "Compute only max/min values; stride == width", 0); /* Mode 1 */
    TI_profile_cycle_report(TI_PROFILE_FORMULA_RANGE,
                            "N = width * height",
                            "width * height");

    TI_profile_setMode(2, 2, "Compute max/min values and counts; stride == width", 0); /* Mode 2 */
    TI_profile_cycle_report(TI_PROFILE_FORMULA_RANGE,
                            "N = width * height",
                            "width * height");

    TI_profile_setMode(3, 2, "Compute max/min values and counts and locations; stride == width", 0); /* Mode 3 */
    TI_profile_cycle_report(TI_PROFILE_RANGE,
                            NULL,
                            "width * height");

    TI_profile_setMode(4, 3, "Compute only max/min values; stride != width", 0); /* Mode 4 */
    TI_profile_cycle_report(TI_PROFILE_FORMULA_RANGE,
                            "N = width * height; M = height",
                            "width * height");

    TI_profile_setMode(5, 3, "Compute max/min values and counts; stride != width", 0); /* Mode 5 */
    TI_profile_cycle_report(TI_PROFILE_FORMULA_RANGE,
                            "N = width * height; M = height",
                            "width * height");

    TI_profile_setMode(6, 3, "Compute max/min values and counts and locations; stride != width", 1); /* Mode 6 */
    TI_profile_cycle_report(TI_PROFILE_RANGE,
                            NULL,
                            "width * height");


    /* Provide memory requirements */
    TI_kernel_memory();

}

/* Main call for individual test projects */
#ifndef __ONESHOTTEST

main() {
    if( TI_cache_init()) {
        TI_memError("VXLIB_minMaxLoc_i8u");
    } else {
        VXLIB_minMaxLoc_i8u_d(0);
    }
}
#endif /* __ONESHOTTEST */

/* ======================================================================== */
/*  End of file:  VXLIB_minMaxLoc_i8u_d.c                                      */
/* ======================================================================== */
