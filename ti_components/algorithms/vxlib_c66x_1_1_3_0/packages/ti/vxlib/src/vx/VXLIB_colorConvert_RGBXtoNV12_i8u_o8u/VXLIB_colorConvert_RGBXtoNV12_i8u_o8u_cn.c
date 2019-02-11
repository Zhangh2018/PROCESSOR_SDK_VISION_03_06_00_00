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
/*
 * Copyright (c) 2012-2016 The Khronos Group Inc.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and/or associated documentation files (the
 * "Materials"), to deal in the Materials without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Materials, and to
 * permit persons to whom the Materials are furnished to do so, subject to
 * the following conditions:
 *
 * The above copyright notice and this permission notice shall be included
 * in all copies or substantial portions of the Materials.
 *
 * MODIFICATIONS TO THIS FILE MAY MEAN IT NO LONGER ACCURATELY REFLECTS
 * KHRONOS STANDARDS. THE UNMODIFIED, NORMATIVE VERSIONS OF KHRONOS
 * SPECIFICATIONS AND HEADER INFORMATION ARE LOCATED AT
 *    https://www.khronos.org/registry/
 *
 * THE MATERIALS ARE PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
 * IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
 * CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
 * TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
 * MATERIALS OR THE USE OR OTHER DEALINGS IN THE MATERIALS.
 */

#include "VXLIB_colorConvert_RGBXtoNV12_i8u_o8u_cn.h"

CODE_SECTION(VXLIB_colorConvert_RGBXtoNV12_i8u_o8u_cn,              ".text:ansi")
CODE_SECTION(VXLIB_colorConvert_RGBXtoNV12_i8u_o8u_checkParams_cn,  ".text:ansi")

static uint8_t usat8(int32_t a);

static void rgb2yuv_bt709(uint8_t r, uint8_t g, uint8_t b,
                          uint8_t *y, uint8_t *cb, uint8_t *cr);

static uint8_t usat8(int32_t a)
{
    if (a > 255)
        a = 255;
    if (a < 0)
        a = 0;
    return (uint8_t)a;
}

static void rgb2yuv_bt709(uint8_t r, uint8_t g, uint8_t b,
                          uint8_t *y, uint8_t *cb, uint8_t *cr)
{
    /*
    Y'= 0.2126*R' + 0.7152*G' + 0.0722*B'
    U'=-0.1146*R' - 0.3854*G' + 0.5000*B'
    V'= 0.5000*R' - 0.4542*G' - 0.0458*B'
    */
#if 1
    /* 8 bit Fixed point approximation */
    int32_t i_y = 0 +  54*r + 183*g +  18*b;
    int32_t i_u = 0 -  15*r -  49*g +  64*b;
    int32_t i_v = 0 +  64*r -  58*g -   6*b;
    *y  = usat8((i_y+128)>>8);
    *cb = usat8(((i_u+64)>>7)+128);
    *cr = usat8(((i_v+64)>>7)+128);
#else
    VXLIB_D64 f_r = (VXLIB_D64)r;
    VXLIB_D64 f_g = (VXLIB_D64)g;
    VXLIB_D64 f_b = (VXLIB_D64)b;
    VXLIB_D64 f_y = 0 + 0.2126f*f_r + 0.7152f*f_g + 0.0722f*f_b;
    VXLIB_D64 f_u = 0 - 0.1146f*f_r - 0.3854f*f_g + 0.5000f*f_b;
    VXLIB_D64 f_v = 0 + 0.5000f*f_r - 0.4542f*f_g - 0.0458f*f_b;
    int32_t i_y = (int32_t)f_y;
    int32_t i_u = (int32_t)f_u + 128;
    int32_t i_v = (int32_t)f_v + 128;
    *y  = usat8(i_y);
    *cb = usat8(i_u);
    *cr = usat8(i_v);
#endif
}

VXLIB_STATUS VXLIB_colorConvert_RGBXtoNV12_i8u_o8u_cn(uint8_t src[],
                                  VXLIB_bufParams2D_t *src_addr,
                                  uint8_t dst0[],
                                  VXLIB_bufParams2D_t * dst0_addr,
                                  uint8_t dst1[],
                                  VXLIB_bufParams2D_t * dst1_addr)
{
    uint32_t         x, y, srcIndex00, srcIndex01, srcIndex10, srcIndex11, dst0Index00, dst0Index01, dst0Index10, dst0Index11, dst1Index;
    uint8_t          cb[4], cr[4];
    VXLIB_STATUS     status = VXLIB_SUCCESS;

#ifdef VXLIB_CHECK_PARAMS
    status = VXLIB_colorConvert_RGBXtoNV12_i8u_o8u_checkParams_cn(src, src_addr, dst0, dst0_addr, dst1, dst1_addr);
    if( status == VXLIB_SUCCESS )
#endif
    {
        for( y=0; y < dst0_addr->dim_y; y+=2 ) {

            for( x=0; x < dst0_addr->dim_x; x+=2 ) {

                srcIndex00 = y * src_addr->stride_y + x * 4;
                srcIndex01 = y * src_addr->stride_y + (x+1) * 4;
                srcIndex10 = (y+1) * src_addr->stride_y + x * 4;
                srcIndex11 = (y+1) * src_addr->stride_y + (x+1) * 4;
                dst0Index00 = y * dst0_addr->stride_y + x;
                dst0Index01 = y * dst0_addr->stride_y + (x+1);
                dst0Index10 = (y+1) * dst0_addr->stride_y + x;
                dst0Index11 = (y+1) * dst0_addr->stride_y + (x+1);
                dst1Index   = y * dst1_addr->stride_y / 2 + x;

                rgb2yuv_bt709(src[srcIndex00],src[srcIndex00 + 1],src[srcIndex00 + 2],&dst0[dst0Index00],&cb[0],&cr[0]);
                rgb2yuv_bt709(src[srcIndex01],src[srcIndex01 + 1],src[srcIndex01 + 2],&dst0[dst0Index01],&cb[1],&cr[1]);
                rgb2yuv_bt709(src[srcIndex10],src[srcIndex10 + 1],src[srcIndex10 + 2],&dst0[dst0Index10],&cb[2],&cr[2]);
                rgb2yuv_bt709(src[srcIndex11],src[srcIndex11 + 1],src[srcIndex11 + 2],&dst0[dst0Index11],&cb[3],&cr[3]);

                dst1[dst1Index]   = (cb[0] + cb[1] + cb[2] + cb[3])/4;
                dst1[dst1Index+1] = (cr[0] + cr[1] + cr[2] + cr[3])/4;
            }
        }
    }
    return (status);
}

VXLIB_STATUS VXLIB_colorConvert_RGBXtoNV12_i8u_o8u_checkParams_cn(uint8_t src[],
                                              VXLIB_bufParams2D_t *src_addr,
                                              uint8_t dst0[],
                                              VXLIB_bufParams2D_t *dst0_addr,
                                              uint8_t dst1[],
                                              VXLIB_bufParams2D_t *dst1_addr)
{
    VXLIB_STATUS    status = VXLIB_SUCCESS;

    if((src == NULL) || (dst0 == NULL) || (dst1 == NULL) ) {
        status = VXLIB_ERR_NULL_POINTER;
    } else if( src_addr->dim_x != dst0_addr->dim_x ||
               src_addr->dim_y != dst0_addr->dim_y ||
               src_addr->stride_y < (4*src_addr->dim_x) ||
               dst0_addr->stride_y < (dst0_addr->dim_x) ) {
        status = VXLIB_ERR_INVALID_DIMENSION;
    } else if((src_addr->data_type != VXLIB_UINT32) ||
              (dst0_addr->data_type != VXLIB_UINT8) ||
              (dst1_addr->data_type != VXLIB_UINT8)) {
        status = VXLIB_ERR_INVALID_TYPE;
    }
    return (status);
}

