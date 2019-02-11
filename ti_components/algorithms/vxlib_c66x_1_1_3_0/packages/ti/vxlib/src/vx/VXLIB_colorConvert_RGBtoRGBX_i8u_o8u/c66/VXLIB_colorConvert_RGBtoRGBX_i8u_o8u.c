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

#include "VXLIB_colorConvert_RGBtoRGBX_i8u_o8u.h"

CODE_SECTION(VXLIB_colorConvert_RGBtoRGBX_i8u_o8u,              ".text:optimized")
CODE_SECTION(VXLIB_colorConvert_RGBtoRGBX_i8u_o8u_core,         ".text:optimized")
CODE_SECTION(VXLIB_colorConvert_RGBtoRGBX_i8u_o8u_checkParams,  ".text:optimized")

static void VXLIB_colorConvert_RGBtoRGBX_i8u_o8u_core(const uint8_t src[restrict],
                                            uint8_t dst[restrict],
                                            int32_t width);

static void VXLIB_colorConvert_RGBtoRGBX_i8u_o8u_core(const uint8_t src[restrict],
                                            uint8_t dst[restrict],
                                            int32_t width)
{
    int32_t    x;
    int64_t src_8A, src_8B, src_8C;
    uint32_t dst0_4, dst1_4, dst2_4, dst3_4, dst4_4, dst5_4, dst6_4, dst7_4;
    uint64_t dst0, dst1, dst2, dst3;

#if !defined(VXLIB_ALIGNED8_PTRS_STRIDES) && !defined(VXLIB_COLORCONVERT_RGBTORGBX_I8U_O8U_ALIGNED8_PTRS_STRIDES)

    if((((uint32_t)src % 8U) == 0) &&
       (((uint32_t)dst % 8U) == 0))
#endif
    {
        _nassert(((uint32_t)src % 8U) == 0);
        _nassert(((uint32_t)dst % 8U) == 0);
        /* Case 1: All pointers are aligned to 8 byte boundaries, SIMD of 8 pixels at a time*/
        /* 4/8 = 0.50 cycles per pixel */
        for( x=0; x < ((width / 8) * 8); x+=8 ) {

            src_8A = _amem8_const(&src[(x*3)]);
            src_8B = _amem8_const(&src[(x*3)+8]);
            src_8C = _amem8_const(&src[(x*3)+16]);

            dst0_4 = _loll(src_8A);
            dst1_4 = _packlh2(_hill(src_8A), _loll(src_8A)) >> 8;
            dst2_4 = _packlh2(_loll(src_8B), _hill(src_8A));
            dst3_4 = _loll(src_8B) >> 8;
            dst4_4 = _hill(src_8B);
            dst5_4 = _packlh2(_loll(src_8C), _hill(src_8B)) >> 8;
            dst6_4 = _packlh2(_hill(src_8C), _loll(src_8C));
            dst7_4 = _hill(src_8C) >> 8;

            dst0 = (uint64_t)_itoll(dst1_4, dst0_4) | 0xff000000ff000000U;
            dst1 = (uint64_t)_itoll(dst3_4, dst2_4) | 0xff000000ff000000U;
            dst2 = (uint64_t)_itoll(dst5_4, dst4_4) | 0xff000000ff000000U;
            dst3 = (uint64_t)_itoll(dst7_4, dst6_4) | 0xff000000ff000000U;

            _amem8(&dst[(x * 4)])      = (int64_t)dst0;
            _amem8(&dst[(x * 4) + 8])  = (int64_t)dst1;
            _amem8(&dst[(x * 4) + 16]) = (int64_t)dst2;
            _amem8(&dst[(x * 4) + 24]) = (int64_t)dst3;
        }
    }
#if !defined(VXLIB_ALIGNED8_PTRS_STRIDES) && !defined(VXLIB_COLORCONVERT_RGBTORGBX_I8U_O8U_ALIGNED8_PTRS_STRIDES)
    else {
        /* Case 2: Not all pointers are aligned to 8 byte boundaries, SIMD of 8 pixels at a time*/
        /* 7/8 = 0.875 cycles per pixel */
        for( x=0; x < ((width / 8) * 8); x+=8 ) {

            src_8A = _mem8_const(&src[(x*3)]);
            src_8B = _mem8_const(&src[(x*3)+8]);
            src_8C = _mem8_const(&src[(x*3)+16]);

            dst0_4 = _loll(src_8A);
            dst1_4 = _packlh2(_hill(src_8A), _loll(src_8A)) >> 8;
            dst2_4 = _packlh2(_loll(src_8B), _hill(src_8A));
            dst3_4 = _loll(src_8B) >> 8;
            dst4_4 = _hill(src_8B);
            dst5_4 = _packlh2(_loll(src_8C), _hill(src_8B)) >> 8;
            dst6_4 = _packlh2(_hill(src_8C), _loll(src_8C));
            dst7_4 = _hill(src_8C) >> 8;

            dst0 = (uint64_t)_itoll(dst1_4, dst0_4) | 0xff000000ff000000U;
            dst1 = (uint64_t)_itoll(dst3_4, dst2_4) | 0xff000000ff000000U;
            dst2 = (uint64_t)_itoll(dst5_4, dst4_4) | 0xff000000ff000000U;
            dst3 = (uint64_t)_itoll(dst7_4, dst6_4) | 0xff000000ff000000U;

            _mem8(&dst[(x * 4)])      = (int64_t)dst0;
            _mem8(&dst[(x * 4) + 8])  = (int64_t)dst1;
            _mem8(&dst[(x * 4) + 16]) = (int64_t)dst2;
            _mem8(&dst[(x * 4) + 24]) = (int64_t)dst3;
        }
    }
#endif

#if !defined(VXLIB_ALIGNED8_WIDTHS) && !defined(VXLIB_COLORCONVERT_RGBTORGBX_I8U_O8U_ALIGNED8_WIDTHS)
    /* Case 2: Process remaining pixels beyond multiple of 8 */
    /* 4 cycle per pixel */
    for(; x < width; x++ ) {
            dst[x*4]     = src[x*3];
            dst[(x*4)+1] = src[(x*3)+1];
            dst[(x*4)+2] = src[(x*3)+2];
            dst[(x*4)+3] = (uint8_t)255;
    }

#endif
}

VXLIB_STATUS    VXLIB_colorConvert_RGBtoRGBX_i8u_o8u(const uint8_t src[restrict],
                                  const VXLIB_bufParams2D_t * src_addr,
                                  uint8_t dst[restrict],
                                  const VXLIB_bufParams2D_t * dst_addr)
{
    VXLIB_STATUS    status = VXLIB_SUCCESS;

#if defined(VXLIB_CHECK_PARAMS) || defined(VXLIB_COLORCONVERT_RGBTORGBX_I8U_O8U_CHECK_PARAMS)
    status = VXLIB_colorConvert_RGBtoRGBX_i8u_o8u_checkParams(src, src_addr, dst, dst_addr);
    if( status == VXLIB_SUCCESS )
#endif
    {
#if !defined(VXLIB_EQUAL_WIDTH_STRIDE) && !defined(VXLIB_COLORCONVERT_RGBTORGBX_I8U_O8U_EQUAL_WIDTH_STRIDE)
        if(((3 * src_addr->dim_x) == src_addr->stride_y) &&
           ((4 * dst_addr->dim_x) == dst_addr->stride_y))
#endif
        {
            VXLIB_colorConvert_RGBtoRGBX_i8u_o8u_core(src, dst, dst_addr->dim_x * dst_addr->dim_y);
        }
#if !defined(VXLIB_EQUAL_WIDTH_STRIDE) && !defined(VXLIB_COLORCONVERT_RGBTORGBX_I8U_O8U_EQUAL_WIDTH_STRIDE)
        else {
            int32_t    y;

            for( y=0; y < dst_addr->dim_y; y++ ) {

                const uint8_t   *src_t = (const uint8_t *)&src[ (y * src_addr->stride_y)];
                uint8_t         *dst_t  = (uint8_t *)&dst[ (y * dst_addr->stride_y)];

                VXLIB_colorConvert_RGBtoRGBX_i8u_o8u_core(src_t, dst_t, dst_addr->dim_x);
            }
        }
#endif
    }
    return (status);
}

#if (!defined(VXLIB_REMOVE_CHECK_PARAMS) && !defined(VXLIB_COLORCONVERT_RGBTORGBX_I8U_O8U_REMOVE_CHECK_PARAMS)) || (defined(VXLIB_CHECK_PARAMS)) || (defined(VXLIB_COLORCONVERT_RGBTORGBX_I8U_O8U_CHECK_PARAMS))

VXLIB_STATUS VXLIB_colorConvert_RGBtoRGBX_i8u_o8u_checkParams(const uint8_t src[],
                                           const VXLIB_bufParams2D_t *src_addr,
                                           const uint8_t dst[],
                                           const VXLIB_bufParams2D_t *dst_addr)
{
    VXLIB_STATUS    status = VXLIB_SUCCESS;

    if((src == NULL) || (dst == NULL)) {
        status = VXLIB_ERR_NULL_POINTER;
    } else if((src_addr->dim_x != dst_addr->dim_x) ||
               (src_addr->dim_y != dst_addr->dim_y) ||
               (src_addr->stride_y < (3*src_addr->dim_x)) ||
               (dst_addr->stride_y < (4*dst_addr->dim_x)) ) {
        status = VXLIB_ERR_INVALID_DIMENSION;
    } else if((src_addr->data_type != VXLIB_UINT24) ||
               (dst_addr->data_type != VXLIB_UINT32)) {
        status = VXLIB_ERR_INVALID_TYPE;
    }
#if defined(VXLIB_EQUAL_WIDTH_STRIDE) || defined(VXLIB_COLORCONVERT_RGBTORGBX_I8U_O8U_EQUAL_WIDTH_STRIDE)
    else if((3 * src_addr->dim_x != src_addr->stride_y) ||
            ((4 * dst_addr->dim_x) != dst_addr->stride_y)) {
        status = VXLIB_ERR_NOT_EQUAL_WIDTH_STRIDE;
    }
#endif
#if defined(VXLIB_ALIGNED8_PTRS_STRIDES) || defined(VXLIB_COLORCONVERT_RGBTORGBX_ALIGNED8_PTRS_STRIDES)
    else if((((uint32_t)src % 8U) != 0) ||
            (((uint32_t)dst % 8U) != 0) ||
            ((src_addr->stride_y % 8U) != 0) ||
            ((dst_addr->stride_y % 8U) != 0)) {
        status = VXLIB_ERR_NOT_ALIGNED_PTRS_STRIDES;
    }
#endif
#if defined(VXLIB_ALIGNED8_WIDTHS) || defined(VXLIB_COLORCONVERT_RGBTORGBX_ALIGNED8_WIDTHS)
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
