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
* @file bam_location_matrix_helper_funcs.h
*
* @brief
*
* @version 0.0 (Jan 2014) : Base version.
*/

#ifndef BAM_LOCATION_MATRIX_HELPER_FUNCS_H_
#define BAM_LOCATION_MATRIX_HELPER_FUNCS_H_

#include "algframework.h"
#include "bam_location_matrix.h"
#include <vcop.h>
#include <stdint.h>

/*
1 Internal Block for param register
*/
#define LOCATION_MATRIX_NUM_INTERNAL_BLOCKS 2u

/* Two Input Blocks */
#define LOCATION_MATRIX_NUM_IN_BLOCKS 2u

/* Two ouput Blocks*/
#define LOCATION_MATRIX_NUM_OUT_BLOCKS 2u


/* Index for Internal Blocks */
#define LOCATION_MATRIX_INTERNAL_PARAMS_IDX (0u)
#define LOCATION_MATRIX_INTERNAL_BIN_IDX (1u)

/* Index for Input Blocks */
#define LOCATION_MATRIX_IN_BLK1_IDX    (0u)
#define LOCATION_MATRIX_IN_BLK2_IDX          (1u)

/* Index for output Block */
#define LOCATION_MATRIX_OUT_MATRIX1_IDX     (0u)
#define LOCATION_MATRIX_OUT_MATRIX2_IDX     (1u)

typedef struct bam_location_matrix_context
{
    void *pInternalBlock[LOCATION_MATRIX_NUM_INTERNAL_BLOCKS];
    void *pInBlock[LOCATION_MATRIX_NUM_IN_BLOCKS];
    void *pOutBlock[LOCATION_MATRIX_NUM_OUT_BLOCKS];
    BAM_location_matrix_Args  kernelArgs;
    BAM_KernelCustom kernelCustom;
} BAM_location_matrix_Context;

#endif /* BAM_LOCATION_MATRIX_HELPER_FUNCS_H_*/
