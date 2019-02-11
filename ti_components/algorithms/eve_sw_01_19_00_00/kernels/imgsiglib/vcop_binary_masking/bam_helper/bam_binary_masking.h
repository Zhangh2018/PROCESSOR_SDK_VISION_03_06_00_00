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
 *  @file       bam_binary_masking.h
 *
 *  @brief      This header defines interfaces for integrating Binary Masking kernel
 *              into BAM.
 */

#ifndef BAM_BINARY_MASKING_H_
#define BAM_BINARY_MASKING_H_

#include "bam_common.h"

typedef struct
{
  uint16_t  maxBlockWidth;
  uint16_t  maxBlockHeight;
} BAM_BinaryMasking_Args;

typedef struct
{
  uint16_t  computeWidth;
  uint16_t  computeHeight;
  uint16_t  inputByteDataPitch;
  uint16_t  inputBitDataPitch;
  uint16_t  outputPitch;
} BAM_BinaryMasking_CtrlArgs;


extern BAM_KernelInfo gBAM_TI_binaryMaskingKernel;
extern BAM_KernelHelperFuncDef gBAM_TI_binaryMaskingHelperFunc;
extern BAM_KernelExecFuncDef gBAM_TI_binaryMaskingExecFunc;

typedef enum
{
  BAM_BINARY_MASKING_INPUT_BYTE_DATA_IMAGE_PORT= 0,
  BAM_BINARY_MASKING_INPUT_BIT_DATA_IMAGE_PORT,
  BAM_BINARY_MASKING_NUM_INPUT_BLOCKS
} eBAM_BINARY_MASKING_INPUT_PORTS;

typedef enum
{
  BAM_BINARY_MASKING_OUTPUT_PORT = 0,
  BAM_BINARY_MASKING_NUM_OUTPUT_BLOCKS
} eBAM_BINARY_MASKING_OUTPUT_PORTS;

#endif /* BAM_BINARY_MASKING_H_ */

