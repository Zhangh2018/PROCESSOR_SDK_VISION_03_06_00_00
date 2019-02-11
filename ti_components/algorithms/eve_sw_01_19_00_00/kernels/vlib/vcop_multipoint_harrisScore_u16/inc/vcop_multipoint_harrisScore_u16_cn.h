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

/*     TEXAS INSTRUMENTS, INC.                                              */
/*                                                                          */
/*     @file : vcop_multipoint_harrisScore_u16_cn                           */
/*                                                                          */
/*     @brief : This is the C-reference for the vcop_multipoint_harrisScore */
/*         _u16 kernel. This routine accepts a buffer containing sequence   */
/*         of 'numPoints' 8-bit image blocks of dimension (winWidth+2) by   */
/*         (winHeight+2). The function computes 16-bit Harris score for     */
/*         each of the numPoints points based on the winWidth x winHeight   */
/*         X and Y-gradients and packs this with the image pyramid level    */
/*         and a unique index starting with user specified start_idx.       */
/*                                                                          */
/*     USAGE:                                                               */
/*     This routine is C-callable and can be called as:                     */
/*                                                                          */
/*     void vcop_multipoint_harrisScore_u16_cn                              */
/*     (                                                                    */
/*         uint8_t  *pImgBlocks,                                            */
/*         uint16_t *pHarrisScore,                                          */
/*         uint16_t  numPoints,                                             */
/*         uint8_t   winWidth,                                              */
/*         uint8_t   winHeight,                                             */
/*         uint16_t  inputStride,                                           */
/*         uint16_t  interBlockOffset,                                      */
/*         uint16_t  sensitivityParam,                                      */
/*         uint8_t   level,                                                 */
/*         uint16_t  start_id                                               */
/*     )                                                                    */
/*                                                                          */
/*     pImgBlocks       : Image blocks. 'numPoints' image blocks of size    */
/*                        (winWidth+2) x (winHeight+2) are expected.        */
/*     pHarrisScore     : Output Harris Score. The 16-bit MSB contains the  */
/*                        computed score. Next 5-bits contain the image     */
/*                        pyramid level and last 11-bits contain an id.     */
/*     numPoints        : Number of points for which score is computed      */
/*     winWidth         : Width of window used for score computation        */
/*     winHeight        : Height of window used for score computation       */
/*     interBlockOffset : Offset between two adjacent image blocks in bytes */
/*     sensitivityParam : Harris score tunable sensitivity parameter        */
/*     level            : Image pyramid level information to be packed with */
/*                        in bits 12-15 of Harris score                     */
/*     start_id         : Start value of index to be packed with the scores */
/*                                                                          */
/*     Returns :  None or void.                                             */
/*                                                                          */
/*     @version 1.0 (Nov 2013) : Base version.                              */
/*                                                                          */
/*==========================================================================*/

#ifndef _VCOP_MULTIPOINT_HARRISSCORE_U16_CN
#define _VCOP_MULTIPOINT_HARRISSCORE_U16_CN

void vcop_multipoint_harrisScore_u16_cn
(
    uint8_t    *pImgBlocks,
    uint16_t   *pHarrisScore,
    uint16_t    numPoints,
    uint8_t     winWidth,
    uint8_t     winHeight,
    uint16_t    inputStride,
    uint16_t    interBlockOffset,
    uint16_t    sensitivityParam,
    uint16_t    start_id
);

#endif /* _VCOP_MULTIPOINT_HARRISSCORE_U16_CN */
