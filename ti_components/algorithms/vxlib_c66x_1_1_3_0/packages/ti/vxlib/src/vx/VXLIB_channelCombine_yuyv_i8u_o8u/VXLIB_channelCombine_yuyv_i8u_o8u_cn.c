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

#include "VXLIB_channelCombine_yuyv_i8u_o8u_cn.h"

CODE_SECTION(VXLIB_channelCombine_yuyv_i8u_o8u_cn,              ".text:ansi")
CODE_SECTION(VXLIB_channelCombine_yuyv_i8u_o8u_checkParams_cn,  ".text:ansi")

VXLIB_STATUS VXLIB_channelCombine_yuyv_i8u_o8u_cn(uint8_t src0[],
                                           VXLIB_bufParams2D_t *src0_addr,
                                           uint8_t src1[],
                                           VXLIB_bufParams2D_t *src1_addr,
                                           uint8_t src2[],
                                           VXLIB_bufParams2D_t *src2_addr,
                                           uint8_t dst[],
                                           VXLIB_bufParams2D_t *dst_addr,
                                           int8_t yidx)
{
    uint32_t        x, y, src0Index, src01Index, src1Index, src2Index, dstIndex, dst1Index;
    VXLIB_STATUS    status = VXLIB_SUCCESS;

#ifdef VXLIB_CHECK_PARAMS
    status = VXLIB_channelCombine_yuyv_i8u_o8u_checkParams_cn(src0, src0_addr, src1, src1_addr, src2, src2_addr, dst, dst_addr);
    if( status == VXLIB_SUCCESS )
#endif
    {
        for( y=0; y < dst_addr->dim_y; y++) {

            for( x=0; x < dst_addr->dim_x; x += 2 ) {

                src0Index = (y * src0_addr->stride_y) + x;
                src01Index = (y * src0_addr->stride_y) + (x + 1);
                src1Index = (y * src1_addr->stride_y) + (x / 2);
                src2Index = (y * src2_addr->stride_y) + (x / 2);
                dstIndex = (y * dst_addr->stride_y) + (x * 2);
                dst1Index = (y * dst_addr->stride_y) + ((x + 1) * 2);

                dst[dstIndex + yidx] = src0[src0Index];
                dst[dst1Index + yidx] = src0[src01Index];
                dst[dstIndex + (1 - yidx)] = src1[src1Index];
                dst[dst1Index + (1 - yidx)] = src2[src2Index];
            }
        }
    }
    return (status);
}

VXLIB_STATUS VXLIB_channelCombine_yuyv_i8u_o8u_checkParams_cn(uint8_t src0[],
                                                       VXLIB_bufParams2D_t *src0_addr,
                                                       uint8_t src1[],
                                                       VXLIB_bufParams2D_t *src1_addr,
                                                       uint8_t src2[],
                                                       VXLIB_bufParams2D_t *src2_addr,
                                                       uint8_t dst[],
                                                       VXLIB_bufParams2D_t *dst_addr)
{
    VXLIB_STATUS    status = VXLIB_SUCCESS;

    if((src0 == NULL) || (src1 == NULL) || (src2 == NULL) || (dst == NULL)) {
        status = VXLIB_ERR_NULL_POINTER;
    } else if((src0_addr->dim_x != (2 * src1_addr->dim_x)) ||
              (src0_addr->dim_x != (2 * src2_addr->dim_x)) ||
              (src0_addr->dim_x != dst_addr->dim_x) ||
              (src0_addr->dim_y != src1_addr->dim_y) ||
              (src0_addr->dim_y != dst_addr->dim_y) ||
              (src0_addr->stride_y < src0_addr->dim_x) ||
              (src1_addr->stride_y < src1_addr->dim_x) ||
              (src2_addr->stride_y < src2_addr->dim_x) ||
              (dst_addr->stride_y < (2 * dst_addr->dim_x))) {
        status = VXLIB_ERR_INVALID_DIMENSION;
    } else if((src0_addr->data_type != VXLIB_UINT8) ||
               (src1_addr->data_type != VXLIB_UINT8) ||
               (src2_addr->data_type != VXLIB_UINT8) ||
               (dst_addr->data_type != VXLIB_UINT16)) {
        status = VXLIB_ERR_INVALID_TYPE;
    }
    return (status);
}

