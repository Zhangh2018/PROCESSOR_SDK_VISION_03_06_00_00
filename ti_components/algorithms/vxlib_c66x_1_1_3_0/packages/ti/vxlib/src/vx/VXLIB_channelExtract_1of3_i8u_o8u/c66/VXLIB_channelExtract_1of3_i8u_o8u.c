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

#include "VXLIB_channelExtract_1of3_i8u_o8u.h"

CODE_SECTION(VXLIB_channelExtract_1of3_i8u_o8u,              ".text:optimized")
CODE_SECTION(VXLIB_channelExtract_1of3_i8u_o8u_core,         ".text:optimized")
CODE_SECTION(VXLIB_channelExtract_1of3_i8u_o8u_checkParams,  ".text:optimized")

static void VXLIB_channelExtract_1of3_i8u_o8u_core(const uint8_t src[restrict],
                                               uint8_t dst[restrict],
                                               int32_t width,
                                               uint8_t channelOffset);

static void VXLIB_channelExtract_1of3_i8u_o8u_core(const uint8_t src[restrict],
                                               uint8_t dst[restrict],
                                               int32_t width,
                                               uint8_t channelOffset)
{
    int32_t    x;
    int64_t src8_0, src8_1, src8_2;
    uint32_t src0_4, src1_4, src2_4, src3_4, src4_4, src5_4, src6_4, src7_4;
    int64_t x40, x51, x62, x73;
    int64_t x5410, x7632;
    uint32_t shift = (uint32_t)channelOffset*8U;

#if !defined(VXLIB_ALIGNED8_PTRS_STRIDES) && !defined(VXLIB_CHANNELEXTRACT_1OF3_I8U_O8U_ALIGNED8_PTRS_STRIDES)

    if((((uint32_t)src % 8U) == 0) &&
       (((uint32_t)dst % 8U) == 0))
#endif
    {
        /* Case 1: All pointers are aligned to 8 byte boundaries, SIMD of 16 pixels at a time */
        /* 7/16 = 0.4375 cycles per pixel */
        #pragma MUST_ITERATE(,,2)
        #pragma UNROLL(2)
        for( x=0; x < ((width / 16) * 2); x++ ) {

            /* Fetch 8 3-channel inputs */
            src8_0 = _amem8_const(&src[(x*24)+0]);
            src8_1 = _amem8_const(&src[(x*24)+8]);
            src8_2 = _amem8_const(&src[(x*24)+16]);

            /* Rearrange them into the 8 inputs */
            src0_4 = _loll(src8_0);
            src1_4 = _packlh2(_hill(src8_0), _loll(src8_0));
            src2_4 = _packlh2(_loll(src8_1), _hill(src8_0));
            src3_4 = _loll(src8_1);
            src4_4 = _hill(src8_1);
            src5_4 = _packlh2(_loll(src8_2), _hill(src8_1));
            src6_4 = _packlh2(_hill(src8_2), _loll(src8_2));
            src7_4 = _hill(src8_2);

            /* Shift to the selected channel */
            x40 = _dshru(_itoll(src4_4, src0_4), shift);
            x51 = _dshru(_itoll(src5_4, src1_4), shift+8U);
            x62 = _dshru(_itoll(src6_4, src2_4), shift);
            x73 = _dshru(_itoll(src7_4, src3_4), shift+8U);

            /* Repack to cull down the other channels */
            x5410 = _dpackl4(x51, x40);
            x7632 = _dpackl4(x73, x62);
            _amem8(&dst[x*8]) = _dpackl4(x7632, x5410);
        }
    }
#if !defined(VXLIB_ALIGNED8_PTRS_STRIDES) && !defined(VXLIB_CHANNELEXTRACT_1OF3_I8U_O8U_ALIGNED8_PTRS_STRIDES)
    else {

        /* Case 2: Not all pointers are aligned to 8 byte boundaries, SIMD of 8 pixels at a time */
        /* 4/8 = 0.5 cycles per pixel */
        for( x=0; x < (width / 8); x++ ) {

            /* Fetch 8 3-channel inputs */
            src8_0 = _mem8_const(&src[(x*24)+0]);
            src8_1 = _mem8_const(&src[(x*24)+8]);
            src8_2 = _mem8_const(&src[(x*24)+16]);

            /* Rearrange them into the 8 inputs */
            src0_4 = _loll(src8_0);
            src1_4 = _packlh2(_hill(src8_0), _loll(src8_0));
            src2_4 = _packlh2(_loll(src8_1), _hill(src8_0));
            src3_4 = _loll(src8_1);
            src4_4 = _hill(src8_1);
            src5_4 = _packlh2(_loll(src8_2), _hill(src8_1));
            src6_4 = _packlh2(_hill(src8_2), _loll(src8_2));
            src7_4 = _hill(src8_2);

            /* Shift to the selected channel */
            x40 = _dshru(_itoll(src4_4, src0_4), shift);
            x51 = _dshru(_itoll(src5_4, src1_4), shift+8U);
            x62 = _dshru(_itoll(src6_4, src2_4), shift);
            x73 = _dshru(_itoll(src7_4, src3_4), shift+8U);

            /* Repack to cull down the other channels */
            x5410 = _dpackl4(x51, x40);
            x7632 = _dpackl4(x73, x62);
            _mem8(&dst[x*8]) = _dpackl4(x7632, x5410);
        }
    }
#endif

#if !defined(VXLIB_ALIGNED8_WIDTHS) && !defined(VXLIB_CHANNELEXTRACT_1OF3_I8U_O8U_ALIGNED8_WIDTHS)

    /* Case 3: Process remaining pixels beyond multiple of 8 or 16 */
    /* 1 cycle per pixel */
    for(x*=8; x < width; x++ ) {
        dst[x] = src[(x*3)+(int32_t)channelOffset];
    }

#endif
}

VXLIB_STATUS VXLIB_channelExtract_1of3_i8u_o8u(const uint8_t src[restrict],
                                   const VXLIB_bufParams2D_t *src_addr,
                                   uint8_t dst[restrict],
                                   const VXLIB_bufParams2D_t *dst_addr,
                                   uint8_t channelOffset)
{
    VXLIB_STATUS    status = VXLIB_SUCCESS;

#if defined(VXLIB_CHECK_PARAMS) || defined(VXLIB_CHANNELEXTRACT_1OF3_I8U_O8U_CHECK_PARAMS)
    status = VXLIB_channelExtract_1of3_i8u_o8u_checkParams(src, src_addr, dst, dst_addr, channelOffset);
    if( status == VXLIB_SUCCESS )
#endif
    {

#if !defined(VXLIB_EQUAL_WIDTH_STRIDE) && !defined(VXLIB_CHANNELEXTRACT_1OF3_I8U_O8U_EQUAL_WIDTH_STRIDE)
        if(((src_addr->dim_x*3U) == src_addr->stride_y) &&
            (dst_addr->dim_x == dst_addr->stride_y) )
#endif
        {
            VXLIB_channelExtract_1of3_i8u_o8u_core(src, dst, dst_addr->dim_x * dst_addr->dim_y, channelOffset);
        }
#if !defined(VXLIB_EQUAL_WIDTH_STRIDE) && !defined(VXLIB_CHANNELEXTRACT_1OF3_I8U_O8U_EQUAL_WIDTH_STRIDE)
        else {
            int32_t    y;
            const uint8_t   *src_t;
            uint8_t         *dst_t;

            for( y=0; y < dst_addr->dim_y; y++ ) {

                src_t = (const uint8_t *)&src[ (y * src_addr->stride_y)];
                dst_t  = (uint8_t *)&dst[ (y * dst_addr->stride_y)];

                VXLIB_channelExtract_1of3_i8u_o8u_core(src_t, dst_t, dst_addr->dim_x, channelOffset);
            }
        }
#endif
    }
    return (status);
}

#if (!defined(VXLIB_REMOVE_CHECK_PARAMS) && !defined(VXLIB_CHANNELEXTRACT_1OF3_I8U_O8U_REMOVE_CHECK_PARAMS)) || (defined(VXLIB_CHECK_PARAMS)) || (defined(VXLIB_CHANNELEXTRACT_1OF3_I8U_O8U_CHECK_PARAMS))

VXLIB_STATUS VXLIB_channelExtract_1of3_i8u_o8u_checkParams(const uint8_t src[],
                                               const VXLIB_bufParams2D_t *src_addr,
                                               const uint8_t dst[],
                                               const VXLIB_bufParams2D_t *dst_addr,
                                               uint8_t channelOffset)
{
    VXLIB_STATUS    status;

    if((src == NULL) || (dst == NULL)) {
        status = VXLIB_ERR_NULL_POINTER;
    } else if((src_addr->dim_x != dst_addr->dim_x)  ||
               (src_addr->dim_y != dst_addr->dim_y)  ||
               (src_addr->stride_y < (3U*src_addr->dim_x)) ||
               (dst_addr->stride_y < dst_addr->dim_x) ) {
        status = VXLIB_ERR_INVALID_DIMENSION;
    } else if((src_addr->data_type != VXLIB_UINT24) ||
               (dst_addr->data_type != VXLIB_UINT8)) {
        status = VXLIB_ERR_INVALID_TYPE;
    } else if(channelOffset > 2U) {
        status = VXLIB_ERR_INVALID_VALUE;
    }
#if defined(VXLIB_EQUAL_WIDTH_STRIDE) || defined(VXLIB_CHANNELEXTRACT_1OF3_I8U_O8U_EQUAL_WIDTH_STRIDE)
    else if(((3U*src_addr->dim_x) != src_addr->stride_y) ||
            (dst_addr->dim_x != dst_addr->stride_y) ) {
        status = VXLIB_ERR_NOT_EQUAL_WIDTH_STRIDE;
    }
#endif
#if defined(VXLIB_ALIGNED8_PTRS_STRIDES) || defined(VXLIB_CHANNELEXTRACT_1OF3_I8U_O8U_ALIGNED8_PTRS_STRIDES)
    else if((((uint32_t)src % 8U) != 0) ||
            (((uint32_t)dst % 8U) != 0) ||
            ((src_addr->stride_y % 8U) != 0) ||
            ((dst_addr->stride_y % 8U) != 0)) {
        status = VXLIB_ERR_NOT_ALIGNED_PTRS_STRIDES;
    }
#endif
#if defined(VXLIB_ALIGNED8_WIDTHS) || defined(VXLIB_CHANNELEXTRACT_1OF3_I8U_O8U_ALIGNED8_WIDTHS)
    else if(((src_addr->dim_x % 8U) != 0) ||
            ((dst_addr->dim_x % 8U) != 0)) {
        status = VXLIB_ERR_NOT_ALIGNED_WIDTHS;
    }
#endif
    else {
        status = VXLIB_SUCCESS;
    }
    return (status);
}

#endif

