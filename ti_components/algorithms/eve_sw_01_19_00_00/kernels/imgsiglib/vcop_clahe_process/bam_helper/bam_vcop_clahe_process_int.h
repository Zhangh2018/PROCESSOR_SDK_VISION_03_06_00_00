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
 *  @file       bam_vcop_clahe_process_int.h
 *
 *  @brief      This header defines internal structures  clahe interpolate kernel
 *              into BAM.
 */

#ifndef BAM_CLAHE_INTERP_INT_H_
#define BAM_CLAHE_INTERP_INT_H_

#include <stdint.h>
#include <vcop.h>

#include "algframework.h"
#include "bam_vcop_clahe_process.h"

#define NUM_IN_BLOCKS         (2)
#define NUM_OUT_BLOCKS        (1)
#define NUM_INTERNAL_BLOCKS   (8)

#define CLAHE_INTERP_IN_IDX                          (BAM_CLAHE_INTERP_INPUT_DATA_PORT       )                     
#define CLAHE_INTERP_LUT_IDX                         (BAM_CLAHE_INTERP_INPUT_INDEX_PORT      )                     
#define CLAHE_INTERP_OUT_IDX                         (BAM_CLAHE_INTERP_OUTPUT_DATA_PORT      )                    
#define CLAHE_INTERP_INTERNAL_PARAMS_IDX_0           (0)        
#define CLAHE_INTERP_INTERNAL_PARAMS_IDX_1           (1)        
#define CLAHE_INTERP_INTERNAL_8_WAY_LUT_IDX          (2)     
#define CLAHE_INTERP_INTERNAL_TEMP_LU_VALUES         (3)     
#define CLAHE_INTERP_INTERNAL_HOR_WGT_TAB_0          (4)     
#define CLAHE_INTERP_INTERNAL_VER_WGT_TAB_0          (5)     
#define CLAHE_INTERP_INTERNAL_HOR_WGT_TAB_1          (6)     
#define CLAHE_INTERP_INTERNAL_VER_WGT_TAB_1          (7)     


typedef struct
{
    /* Must always follow this order: pInternalBlock[], pInBlock[], pOutputBlock[], args */
    void *pInternalBlock[NUM_INTERNAL_BLOCKS];
    void *pInBlock[NUM_IN_BLOCKS];
    void *pOutBlock[NUM_OUT_BLOCKS];
    BAM_clahe_interpolate_Args kernelArgs;
    uint16_t subTileIdx;
} BAM_claheInterpolate_Context;

#endif /* BAM_CLAHE_INTERP_INT_H_*/
