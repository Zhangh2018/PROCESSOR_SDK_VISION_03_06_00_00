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
**|        Copyright (c) 2017 Texas Instruments Incorporated                 |**
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

#include "cpu.h"
#include "BAM_VXLIB_meanStdDev_i8u_o32f_int.h"
#include "../VXLIB_meanStdDev_i8u_o32f.h"

/***********************************************************************************************/
/*  Below are the helper  functions related to VXLIB_meanStdDev_i8u_o32f kernel                */
/***********************************************************************************************/
static BAM_Status BAM_VXLIB_meanStdDev_i8u_o32f_initFrame(void *kernelContext);
static BAM_Status BAM_VXLIB_meanStdDev_i8u_o32f_compute(void *kernelContext);
static BAM_Status BAM_VXLIB_meanStdDev_i8u_o32f_control(void *kernelContext, void *kernelCtlArg);

static BAM_Status BAM_VXLIB_meanStdDev_i8u_o32f_initFrame(void *kernelContext)
{
    BAM_VXLIB_meanStdDev_i8u_o32f_Context *context = \
                            (BAM_VXLIB_meanStdDev_i8u_o32f_Context *)kernelContext;

    context->blockContext.blkCntTotal = context->blockContext.numBlocksTotal;
    context->blockContext.blkCntHorz = 0;
    context->blockContext.blkCntVert = 0;
    context->currentSum = 0.0f;
    context->currentSqSum = 0.0f;
    context->pixelsProcessed = 0U;

    context->bufParamsLast.dim_x = context->lastSize.lastWidth;
    context->bufParamsLast.dim_y = context->kernelInitArgs.bufParams[0].dim_y;

    return BAM_S_SUCCESS;
}

static BAM_Status BAM_VXLIB_meanStdDev_i8u_o32f_compute(void *kernelContext)
{
    BAM_VXLIB_meanStdDev_i8u_o32f_Context *context = \
                            (BAM_VXLIB_meanStdDev_i8u_o32f_Context *)kernelContext;

    VXLIB_bufParams2D_t *bufParams = &context->kernelInitArgs.bufParams[0];
    VXLIB_STATUS    status_vx;
    BAM_Status     status_bam = BAM_S_SUCCESS;

    context->blockContext.blkCntTotal--;
    context->blockContext.blkCntHorz++;

    if(0 == context->blockContext.blkCntTotal)
    {
        context->bufParamsLast.dim_x = context->lastSize.lastWidth;
        context->bufParamsLast.dim_y = context->lastSize.lastHeight;
        bufParams = &context->bufParamsLast;
    }
    else if(context->blockContext.blkCntHorz == context->blockContext.numBlocksHorz)
    {
        bufParams = &context->bufParamsLast;
        context->blockContext.blkCntHorz = 0;
        context->blockContext.blkCntVert++;
    }
    else if(context->blockContext.blkCntVert == (context->blockContext.numBlocksVert-1))
    {
        context->bufParamsLast.dim_x = context->kernelInitArgs.bufParams[0].dim_x;
        context->bufParamsLast.dim_y = context->lastSize.lastHeight;
        bufParams = &context->bufParamsLast;
    }
    else
    {
        /* Do nothing, MISRAC requirement */
    }

    status_vx = VXLIB_meanStdDev_i8u_o32f((const uint8_t*)context->pInBlock[BAM_VXLIB_MEANSTDDEV_I8U_O32F_INPUT_IMAGE_PORT],
                             bufParams,
                             &context->mean,
                             &context->stdDev,
                             &context->pixelsProcessed,
                             &context->currentSum,
                             &context->currentSqSum);

    if( status_vx != VXLIB_SUCCESS )
    {
        status_bam = BAM_E_FAIL_RUNTIME;
    }

    return status_bam;
}

static BAM_Status BAM_VXLIB_meanStdDev_i8u_o32f_control(void *kernelContext, void *kernelCtlArg)
{
    BAM_Status status = BAM_E_UNSUPPORTED;

    BAM_VXLIB_meanStdDev_i8u_o32f_Context *context = \
                            (BAM_VXLIB_meanStdDev_i8u_o32f_Context *)kernelContext;

    BAM_KernelCommonControlArgs *message = \
                            (BAM_KernelCommonControlArgs *)kernelCtlArg;

    BAM_KernelCommonControlFrameArgs *ctrlArgs = \
                            (BAM_KernelCommonControlFrameArgs *)message->payload;

    if (message->cmdId == BAM_CTRL_CMD_ID_SET_FRAME_ARGS) {
        uint16_t lastWidth, lastHeight;

        context->blockContext.numBlocksHorz = ((ctrlArgs->frameWidth-1) / ctrlArgs->blockWidth) + 1;
        context->blockContext.numBlocksVert = ((ctrlArgs->frameHeight-1) / ctrlArgs->blockHeight) + 1;
        context->blockContext.numBlocksTotal = context->blockContext.numBlocksHorz * context->blockContext.numBlocksVert;

        lastWidth = (uint16_t)(ctrlArgs->frameWidth - ((context->blockContext.numBlocksHorz-1) * ctrlArgs->blockWidth));
        lastHeight = (uint16_t)(ctrlArgs->frameHeight - ((context->blockContext.numBlocksVert-1) * ctrlArgs->blockHeight));

        memcpy(&context->bufParamsLast, &context->kernelInitArgs.bufParams[0], sizeof(VXLIB_bufParams2D_t));

        context->lastSize.lastWidth = lastWidth;
        context->lastSize.lastHeight = lastHeight;

        status = BAM_S_SUCCESS;
    }
    else if(message->cmdId == VXLIB_MEANSTDDEV_I8U_O32F_CMD_GET_MEAN_VAL)
    {
        *(VXLIB_F32*)message->payload = context->mean;

        status = BAM_S_SUCCESS;
    }
    else if(message->cmdId == VXLIB_MEANSTDDEV_I8U_O32F_CMD_GET_STDDEV_VAL)
    {
        *(VXLIB_F32*)message->payload = context->stdDev;

        status = BAM_S_SUCCESS;
    }
    else
    {
        /* Do nothing, MISRAC requirement */
    }

    return status;
}

BAM_KernelExecFuncDef gBAM_VXLIB_meanStdDev_i8u_o32f_execFunc =
{
    NULL,
    &BAM_VXLIB_meanStdDev_i8u_o32f_initFrame,
    &BAM_VXLIB_meanStdDev_i8u_o32f_compute,
    NULL,
    &BAM_VXLIB_meanStdDev_i8u_o32f_control,
    NULL
};
