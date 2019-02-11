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

#ifndef VXLIB_FASTCORNERS_I8U_H_
#define VXLIB_FASTCORNERS_I8U_H_ 1

#include "../../../common/VXLIB_types.h"

/** @defgroup VXLIB_fastCorners_i8u */
/** @ingroup  VXLIB_fastCorners_i8u */
/* @{ */
/**
 * @par Description:
 *  Computes the corners in an 8 bit image using the FAST9 algorithm.  
 *
 * @par Method:
 *  FAST9 algorithm, with optional non-maximum suppression.
 *
 * @par
 *   @param [in]  src[]             Pointer to array containing input image (UQ8.0)
 *   @param [in]  src_addr[]        Pointer to structure containing dimensional information of src
 *   @param [out] corners[]         Pointer to array containing corner keypoint list (UQ32.0)
 *   @param [out] strengths[]       Pointer to array containing strength list corresponding to corners[] (UQ8.0)
 *   @param [in]  corners_capacity  Number of keypoints allocated in the corners buffer.
 *   @param [in]  strength_thresh   Threshold on difference between intensity of the central pixel and
 *                                   pixels on the Bresenham's circlue of radius 3.
 *   @param [out] *num_corners      Total number of corners found in the image.
 *   @param [in]  do_nonmax         Flag to enable (1) or disable (0) nonmax suppression and strength calculation.
 *   @param [in]  scratch[]         Pointer to scratch buffer (UQ8.0)
 *   @param [in]  scratch_size      Size of the scratch buffer (for parameter checking)
 *
 * @par Assumptions:
 *    - I/O buffer pointers are assumed to be not aliased.
 *    - The minimum image width and height are both 7.
 *    - Corners can not be detected in the 3 pixels that make up the image border.
 *    - Each 32-bit word in corners[] array is composed of 2 16-bit half words representing
 *      x and y coordinates, such that corners[i] = (y(i) << 16) | x(i);
 *    - The scratch buffer should be 8 byte aligned.
 *    - The strengths pointer may be set to NULL if only the feature locations are needed AND do_nonmax is set to 0.
 *    - If do_nonmax == 0
 *      - The strengths[] pointer may be set to NULL.
 *      - If the strengths[] pointer is set to NULL, the scratch buffer size should be at least 64 bytes.
 *      - If the strengths[] pointer is not set to NULL, the scratch buffer size should be at least 463 bytes.
 *    - If do_nonmax == 1
 *      - The strengths[] pointer must not be set to NULL, since strength values are needed to perform the
 *        non-maximum suppression.
 *      - The scratch buffer should be at least MAX(463, (4 * src_addr->dim_x) + num_corners_in + 30) bytes.
 *
 * @par Performance Considerations:
 *    - For best performance, the following parameter settings are recommended:
 *      - Set widths equal each other and equal to strides (allows processing over whole image in single loop)
 */
VXLIB_STATUS    VXLIB_fastCorners_i8u(const uint8_t src[],
                                   const VXLIB_bufParams2D_t * src_addr,
                                   uint32_t corners[],
                                   uint8_t strengths[],
                                   uint32_t corners_capacity,
                                   uint8_t strength_thresh,
                                   uint32_t *num_corners,
                                   uint8_t do_nonmax,
                                   uint8_t scratch[],
                                   uint32_t scratch_size);

/**
 * @par Description:
 *  Checks the parameters for programming errors for the VXLIB_fastCorners_i8u function.
 *
 * @par Method:
 *  The following checks are made:
 *    - There shall be no NULL pointers (exception: strenghts can be NULL if do_nonmax == 0)
 *    - The strides of the image shall be equal to or greater than the x dimension
 *    - The scratch_size shall be checked according to the parameter settings listed in the function description
 *      of the VXLIB_fastCorners_i8u function.
 *
 * @par
 *   @param [in]  src[]             Pointer to array containing input image (UQ8.0)
 *   @param [in]  src_addr[]        Pointer to structure containing dimensional information of src
 *   @param [out] corners[]         Pointer to array containing corner keypoint list (UQ32.0)
 *   @param [out] strengths[]       Pointer to array containing strength list corresponding to corners[] (UQ8.0)
 *   @param [in]  corners_capacity  Number of keypoints allocated in the corners buffer.
 *   @param [in]  strength_thresh   Threshold on difference between intensity of the central pixel and
 *                                   pixels on the Bresenham's circlue of radius 3.
 *   @param [out] *num_corners      Total number of corners found in the image.
 *   @param [in]  do_nonmax         Flag to enable (1) or disable (0) nonmax suppression and strength calculation.
 *   @param [in]  scratch[]         Pointer to scratch buffer (UQ8.0)
 *   @param [in]  scratch_size      Size of the scratch buffer (for parameter checking)
 *
 */
VXLIB_STATUS    VXLIB_fastCorners_i8u_checkParams(const uint8_t src[],
                                               const VXLIB_bufParams2D_t * src_addr,
                                               const uint32_t corners[],
                                               const uint8_t strengths[],
                                               uint32_t corners_capacity,
                                               uint8_t strength_thresh,
                                               const uint32_t *num_corners,
                                               uint8_t do_nonmax,
                                               const uint8_t scratch[],
                                               uint32_t scratch_size);
/** @} */
#endif

