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
**|        Copyright (c) 2016 - 2017 Texas Instruments Incorporated          |**
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

#ifndef VXLIB_MAGNITUDE_I16S_I16S_O16S_H_
#define VXLIB_MAGNITUDE_I16S_I16S_O16S_H_ 1

#include "../../../common/VXLIB_types.h"

/** @defgroup VXLIB_magnitude_i16s_i16s_o16s */
/** @ingroup  VXLIB_magnitude_i16s_i16s_o16s */
/* @{ */
/**
 * @par Description:
 *  This kernel takes two gradients in S16 format and computes the S16 normalized magnitude.
 *
 * @par Method:
 *  The magnitude is computed using the following equation:
 *
 * @verbatim

    dst(x,y) = sqrt(src0(x,y)^2+src1(x,y)^2)

   @endverbatim
 *
 *
 * @par
 *   @param [in]  src0[]        Pointer to array containing first gradient input image (SQ15.0)
 *   @param [in]  src0_addr[]   Pointer to structure containing dimensional information of src0
 *   @param [in]  src1[]        Pointer to array containing second gradient input image (SQ15.0)
 *   @param [in]  src1_addr[]   Pointer to structure containing dimensional information of src1
 *   @param [out] dst[]         Pointer to array containing magnitude output image (SQ15.0)
 *   @param [in]  dst_addr[]    Pointer to structure containing dimensional information of dst
 *
 * @par Assumptions:
 *    - I/O buffer pointers are assumed to be not aliased.
 *
 * @par Performance Considerations:
 *    - For best performance, the following parameter settings are recommended:
 *      - Set widths equal to strides
 */
VXLIB_STATUS    VXLIB_magnitude_i16s_i16s_o16s(const int16_t src0[restrict],
                                  const VXLIB_bufParams2D_t * src0_addr,
                                  const int16_t src1[restrict],
                                  const VXLIB_bufParams2D_t * src1_addr,
                                  int16_t dst[restrict],
                                  const VXLIB_bufParams2D_t * dst_addr);

/**
 * @par Description:
 *  Checks the parameters for programming errors for the VXLIB_magnitude_i16s_i16s_o16s function.
 *
 * @par Method:
 *  The following checks are made:
 *    - There shall be no NULL pointers
 *    - All images shall have the same x and y dimensions
 *    - The strides of each image shall be equal to or greater than the x dimension
 *
 * @par
 *   @param [in]  src0[]        Pointer to array containing first gradient input image (SQ15.0)
 *   @param [in]  src0_addr[]   Pointer to structure containing dimensional information of src0
 *   @param [in]  src1[]        Pointer to array containing second gradient input image (SQ15.0)
 *   @param [in]  src1_addr[]   Pointer to structure containing dimensional information of src1
 *   @param [out] dst[]         Pointer to array containing magnitude output image (SQ15.0)
 *   @param [in]  dst_addr[]    Pointer to structure containing dimensional information of dst
 *
 */

VXLIB_STATUS VXLIB_magnitude_i16s_i16s_o16s_checkParams(const int16_t src0[],
                                           const VXLIB_bufParams2D_t *src0_addr,
                                           const int16_t src1[],
                                           const VXLIB_bufParams2D_t *src1_addr,
                                           const int16_t dst[],
                                           const VXLIB_bufParams2D_t *dst_addr);
/** @} */
#endif

