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

/*-----------------------------------------------------------------------*/
/*  NAME : morphology_dma_auto_incr.h                                          */
/*                                                                       */
/*  DESCRIPTION:                                                         */
/*                                                                       */
/*  This file demonstrates double buffering of data from external ->     */
/*  internal memory, and internal -> external memory on an image frame.  */
/*  Data from the image frame is transferred to internal memory on a     */
/*  block by block basis.                                                */
/*                                                                       */
/*  2D -> 1D transfers are used for incoming data and 1D -> 2D transfers */
/*  are used for outgoing data. Two parameter registers are used, 1 for  */
/*  the incoming ping/pong buffers and 1 for the outgoing ping/pong      */
/*  buffers.                                                             */
/*                                                                       */
/*  Autoincrementing at each DMA block transfer completion is used to    */
/*  to reduce the number of times entries in the parameter ram need to   */
/*  be updated. At the end of each block-row, the src and dst pointers   */
/*  are updated in the parameter ram to reflect the starting addresses   */
/*  of the next row of blocks.                                           */
/*-----------------------------------------------------------------------*/

#ifndef MORPHOLOGY_DMA_AUTOINCR_H
#define MORPHOLOGY_DMA_AUTOINCR_H

#include <vcop.h>
#include <stdint.h>

typedef uint16_t *EVELIB_KernelContextType;
typedef void    (*EVELIB_KernelFuncType)(EVELIB_KernelContextType pblock);

/* --------------------------------------------------------------------- */
/*  Start of the main test_harness code.                                 */
/* --------------------------------------------------------------------- */
int32_t morphology_DMAAutoIncrInit(
      uint8_t       *autoIncrementContext,
      uint8_t       *src,
      uint32_t       srcImageWidth,
      uint32_t       srcImageHeight,
      int32_t        srcImagePitch,
      uint8_t       *dst,
      uint32_t       dstImageWidth,
      uint32_t       dstImageHeight,
      int32_t        dstImagePitch,
      uint8_t       *srcBlk,
      uint32_t       srcBlkWidth,
      uint32_t       srcBlkHeight,
      int32_t        srcBlkPitch,
      uint8_t       *dstBlk,
      uint32_t       dstBlkWidth,
      uint32_t       dstBlkHeight,
      int32_t        dstBlkPitch,
      uint32_t       srcBlkPadX,
      uint32_t       srcBlkPadY);


void morphology_DMAAutoIncrDeInit(void);


void morphology_DMAAutoIncrExec(
    uint8_t                 *autoIncrementContext,
    EVELIB_KernelFuncType    execFunc[],
    EVELIB_KernelContextType context[],
    uint8_t                  numKernels);

#endif /* MORPHOLOGY_DMA_AUTOINCR_H */

