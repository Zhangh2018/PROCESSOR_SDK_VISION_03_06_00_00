/******************************************************************************
Copyright (c) [2012 - 2017] Texas Instruments Incorporated

All rights reserved not granted herein.

Limited License.

 Texas Instruments Incorporated grants a world-wide, royalty-free, non-exclusive
 license under copyrights and patents it now or hereafter owns or controls to
 make,  have made, use, import, offer to sell and sell ("Utilize") this software
 subject to the terms herein.  With respect to the foregoing patent license,
 such license is granted  solely to the extent that any such patent is necessary
 to Utilize the software alone.  The patent license shall not apply to any
 combinations which include this software, other than combinations with devices
 manufactured by or for TI ("TI Devices").  No hardware patent is licensed
 hereunder.

 Redistributions must preserve existing copyright notices and reproduce this
 license (including the above copyright notice and the disclaimer and
 (if applicable) source code license limitations below) in the documentation
 and/or other materials provided with the distribution

 Redistribution and use in binary form, without modification, are permitted
 provided that the following conditions are met:

 * No reverse engineering, decompilation, or disassembly of this software
   is permitted with respect to any software provided in binary form.

 * Any redistribution and use are licensed by TI for use only with TI Devices.

 * Nothing shall obligate TI to provide you with source code for the software
   licensed and provided to you in object code.

 If software source code is provided to you, modification and redistribution of
 the source code are permitted provided that the following conditions are met:

 * Any redistribution and use of the source code, including any resulting
   derivative works, are licensed by TI for use only with TI Devices.

 * Any redistribution and use of any object code compiled from the source code
   and any resulting derivative works, are licensed by TI for use only with TI
   Devices.

 Neither the name of Texas Instruments Incorporated nor the names of its
 suppliers may be used to endorse or promote products derived from this software
 without specific prior written permission.

 DISCLAIMER.

 THIS SOFTWARE IS PROVIDED BY TI AND TI’S LICENSORS "AS IS" AND ANY EXPRESS OR
 IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 IN NO EVENT SHALL TI AND TI’S LICENSORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
 OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
 ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
******************************************************************************/

#ifndef _TIOP_LINK_PRIV_H_
#define _TIOP_LINK_PRIV_H_

#ifdef __cplusplus
extern "C" {
#endif

/*******************************************************************************
 *  Include files
 *******************************************************************************
 */
#include <include/link_api/system.h>
#include <include/link_api/algorithmLink.h>
#include <include/alglink_api/algorithmLink_tiop.h>
#include <include/link_api/algorithmLink_algPluginSupport.h>
#include <src/rtos/utils_common/include/utils_link_stats_if.h>
#include <src/rtos/links_common/algorithm/algorithmLink_priv.h>

#include "iop_ti.h"
#include "itidl_ti.h"

/*******************************************************************************
 *  Enums
 *******************************************************************************
 */

/*******************************************************************************
 *  Defines
 *******************************************************************************
 */
#define TIOP_LINK_NUM_BUF_QUEUE     (4)

/* Minimum DSP L1 SIZE */
#define TIOP_LINK_MIN_DSPL1_SIZE    (8 * KB)

/* TIOP each object size */
#define TIOP_OBJECT_SIZE            (7U)

#define TIOP_FREE_BUFFER            (0U)
#define TIOP_LOCKED_BUFFER          (1U)

/*******************************************************************************
 *  Data structures
 *******************************************************************************
 */
typedef struct IM_Fxns
{
    IVISION_Fxns *ivision;

}IM_Fxns;

typedef struct
{
    System_Buffer *buffer;
    UInt32 status;
    UInt32 bufferId;
}AlgorithmLink_tiopInputBufferObj;

/**
 *******************************************************************************
 *
 *   \brief Structure containing algorithm link
 *          parameters
 *
 *          This structure holds any algorithm parameters specific to this link.
 *
 *******************************************************************************
*/
typedef struct
{
    AlgorithmLink_tiopCreateParams algLinkCreateParams;
    /**< Copy of alg plugin create parameters in the alg plugin obj */
    System_LinkStatistics *linkStatsInfo;
    /**< Pointer to the Link statistics information,
         used to store below information
            1, min, max and average latency of the link
            2, min, max and average latency from source to this link
            3, links statistics like frames captured, dropped etc
        Pointer is assigned at the link create time from shared
        memory maintained by utils_link_stats layer */
    System_LinkInfo prevLinkInfo[TIOP_LINK_MAX_NUMQUEUES];
    /**< Previous link information */
    void *metaDataBuf[TIOP_LINK_MAX_NUMQUEUES];
    /**< local buffer to hold output of algorithm */
    UInt32 metaDataBufSize[TIOP_LINK_MAX_NUMQUEUES];
    /**< Size of the local meta data buffer */
    AlgorithmLink_SysBufferQue tmpInQueue[TIOP_LINK_MAX_NUMQUEUES];
    /**< Temp Input queues to hold the input full buffers */
    AlgorithmLink_tiopInputBufferObj inBufStats[TIOP_MAX_ALG_IN_BUFS];
    /**< Status of the local meta data buffer */
    System_Buffer *inBufList[TIOP_MAX_ALG_IN_BUFS];
    /**< List of input buffers received from previous links */
    AlgorithmLink_OutputQueueInfo outputQInfo[TIOP_LINK_MAX_NUMQUEUES];
    /**< Output Queue Info */
    AlgorithmLink_InputQueueInfo  inputQInfo[TIOP_LINK_MAX_NUMQUEUES];
    /**< Input Queue Info */
    UInt32 numInBufReceived;
    /**< Count of the number of input buffers received */
    UInt32 numOutBufReceived;
    /**< Count of the number of output buffers received */
    Bool isFirstFrameRecv;
    /**< Flag to indicate if first frame is received */
    UInt32 numInputQueues;
    /**< Number of Input Queues */
    UInt32 numOutputQueues;
    /**< Number of Output Queues */
    UInt32 numInputBuffers;
    /**< Number of Input Buffers */
    UInt32 numOutputBuffers;
    /**< Number of Output Buffers */
    IVISION_BufDesc inBufDesc[TIOP_MAX_ALG_IN_BUFS];
    /**< Input Buffer Descriptor */
    IVISION_BufDesc *inBufDescList[TIOP_MAX_ALG_IN_BUFS];
    /**< Input Buffer Descriptor */
    IVISION_BufDesc outBufDesc[TIOP_MAX_ALG_OUT_BUFS];
    /**< Output Buffer Descriptor */
    IVISION_BufDesc *outBufDescList[TIOP_MAX_ALG_OUT_BUFS];
    /**< Output Buffer Descriptor */
    UInt32 numMemRec;
    /**< TIOP Num MemRec */
    UInt32 memRecSize;
    /**< TIOP Mem Rec Structure Size */
    IALG_MemRec *memRec;
    /**< TIOP Mem Rec Pointer */
    IM_Fxns *handle;
    /**< TIOP Algorithm Handle */
    UInt32 inBufSize[TIOP_MAX_ALG_IN_BUFS][TIOP_MAX_ALG_IN_BUFS];
    /**< Size of Input Buffer for each Output Queue */
    UInt32 outBufSize[TIOP_MAX_ALG_OUT_BUFS];
    /**< Size of Output Buffer for each Output Queue */

}AlgorithmLink_tiopObj;

/*******************************************************************************
 *  Algorithm Link Private Functions
 *******************************************************************************
 */
Int32 AlgorithmLink_tiopCreate(void *pObj,void *pCreateParams);
Int32 AlgorithmLink_tiopDelete(void *pObj);
Int32 AlgorithmLink_tiopProcess(void *pObj);
Int32 AlgorithmLink_tiopControl(void *pObj,void *pControlParams);

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif

/*@}*/

/* Nothing beyond this point */