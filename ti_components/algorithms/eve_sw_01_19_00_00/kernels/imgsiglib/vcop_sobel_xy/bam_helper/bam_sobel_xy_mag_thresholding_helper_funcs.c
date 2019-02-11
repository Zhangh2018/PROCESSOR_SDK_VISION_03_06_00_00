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


/**
 *  @file       bam_sobel_xy_mag_thresholding_helper_funcs.c
 *
 *  @brief      This file defines interfaces for integrating Sobel XY magnitude thresholding
 *              kernel into BAM.
 */

#include <stdio.h>
#include <stdlib.h>

#include "algframework.h"
#include "bam_sobel_xy_mag_thresholding_int.h"
#include "vcop_sobel_xy_kernel.h" /* compiler should take care of include path */

static BAM_Status BAM_SobelXyMagThresholding_getMemRecFunc( const void *kernelArgs,
                            BAM_MemRec internalBlock[],
                            BAM_MemRec outBlock[],
                            uint8_t *numInternalBlocks,
                            uint8_t *numOutBlocks);

static BAM_Status BAM_SobelXyMagThresholdingBinPack_getMemRecFunc( const void *kernelArgs,
                            BAM_MemRec internalBlock[],
                            BAM_MemRec outBlock[],
                            uint8_t *numInternalBlocks,
                            uint8_t *numOutBlocks);

static BAM_Status BAM_SobelXyMagThresholding_getMemRecFunc( const void *kernelArgs,
                            BAM_MemRec internalBlock[],
                            BAM_MemRec outBlock[],
                            uint8_t *numInternalBlocks,
                            uint8_t *numOutBlocks)

{
    const BAM_SobelXyMagThresholding_Args *args = (const BAM_SobelXyMagThresholding_Args *) kernelArgs;

#if !VCOP_HOST_EMULATION
    internalBlock[SOBEL_XY_MAG_THRESHOLDING_INTERNAL_PARAMS_IDX].size = sizeof(uint16_t) * vcop_sobelXy_3x3_L1_thresholding_param_count();
#else
    internalBlock[SOBEL_XY_MAG_THRESHOLDING_INTERNAL_PARAMS_IDX].size = 4U;
#endif

    outBlock[BAM_SOBEL_XY_MAG_THRESHOLDING_OUTPUT_IMAGE_PORT].size = args->maxBlockWidth * args->maxBlockHeight;
    outBlock[BAM_SOBEL_XY_MAG_THRESHOLDING_OUTPUT_IMAGE_PORT].attrs.memAttrs = BAM_MEMATTRS_SCRATCH;
    outBlock[BAM_SOBEL_XY_MAG_THRESHOLDING_OUTPUT_IMAGE_PORT].space = BAM_MEMSPACE_IBUFHA;

    return BAM_S_SUCCESS;
}


/* For Compute Hough Space index BAM node */
BAM_KernelInfo BAM_SobelXyMagThresholdingKernel =
{
    0,                                      /* kernelId */
    sizeof(BAM_SobelXyMagThresholding_Context),
    sizeof(BAM_SobelXyMagThresholding_Args),
    BAM_EVE,                                /* coreType */
    BAM_NODE_COMPUTE,                       /* nodeType */
    BAM_SOBEL_XY_MAG_THRESHOLDING_NUM_INPUT_BLOCKS,
    BAM_SOBEL_XY_MAG_THRESHOLDING_NUM_OUTPUT_BLOCKS,
    SOBEL_XY_MAG_THRESHOLDING_INTERNAL_NUM_BLOCK
};

BAM_KernelHelperFuncDef gBAM_TI_sobelXyMagThresholdingHelperFunc =
{ &BAM_SobelXyMagThresholding_getMemRecFunc,
  NULL};

static BAM_Status BAM_SobelXyMagThresholdingBinPack_getMemRecFunc( const void *kernelArgs,
                            BAM_MemRec internalBlock[],
                            BAM_MemRec outBlock[],
                            uint8_t *numInternalBlocks,
                            uint8_t *numOutBlocks)

{
    const BAM_SobelXyMagThresholding_Args *args = (const BAM_SobelXyMagThresholding_Args *) kernelArgs;

#if !VCOP_HOST_EMULATION
    internalBlock[SOBEL_XY_MAG_THRESHOLDING_INTERNAL_PARAMS_IDX].size = sizeof(uint16_t) * vcop_sobelXy_3x3_L1_thresholding_binPack_param_count();
#else
    internalBlock[SOBEL_XY_MAG_THRESHOLDING_INTERNAL_PARAMS_IDX].size = 4U;
#endif

    outBlock[BAM_SOBEL_XY_MAG_THRESHOLDING_OUTPUT_IMAGE_PORT].size = (args->maxBlockWidth * args->maxBlockHeight) / 8U;
    outBlock[BAM_SOBEL_XY_MAG_THRESHOLDING_OUTPUT_IMAGE_PORT].attrs.memAttrs = BAM_MEMATTRS_SCRATCH;
    outBlock[BAM_SOBEL_XY_MAG_THRESHOLDING_OUTPUT_IMAGE_PORT].space = BAM_MEMSPACE_IBUFHA;

    return BAM_S_SUCCESS;
}


/* For Compute Hough Space index BAM node */
BAM_KernelInfo BAM_SobelXyMagThresholdingBinPackKernel =
{
    0,                                      /* kernelId */
    sizeof(BAM_SobelXyMagThresholding_Context),
    sizeof(BAM_SobelXyMagThresholding_Args),
    BAM_EVE,                                /* coreType */
    BAM_NODE_COMPUTE,                       /* nodeType */
    BAM_SOBEL_XY_MAG_THRESHOLDING_NUM_INPUT_BLOCKS,
    BAM_SOBEL_XY_MAG_THRESHOLDING_NUM_OUTPUT_BLOCKS,
    SOBEL_XY_MAG_THRESHOLDING_INTERNAL_NUM_BLOCK
};

BAM_KernelHelperFuncDef gBAM_TI_sobelXyMagThresholdingBinPackHelperFunc =
{ &BAM_SobelXyMagThresholdingBinPack_getMemRecFunc,
  NULL};

