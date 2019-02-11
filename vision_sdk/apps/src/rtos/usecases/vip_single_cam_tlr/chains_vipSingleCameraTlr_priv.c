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

 THIS SOFTWARE IS PROVIDED BY TI AND TI�S LICENSORS "AS IS" AND ANY EXPRESS OR
 IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 IN NO EVENT SHALL TI AND TI�S LICENSORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
 OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
 ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
******************************************************************************/

/*
*******************************************************************************
*
* IMPORTANT NOTE:
*  This file is AUTO-GENERATED by Vision SDK use case generation tool
*
*******************************************************************************
*/
#include "chains_vipSingleCameraTlr_priv.h"
Void chains_vipSingleCameraTlr_SetLinkId(chains_vipSingleCameraTlrObj *pObj){
       pObj->CaptureLinkID                  = SYSTEM_LINK_ID_CAPTURE_0;
       pObj->Dup_captureLinkID              = IPU1_0_LINK (SYSTEM_LINK_ID_DUP_0);
       pObj->IPCOut_IPU1_0_DSP1_0LinkID     = IPU1_0_LINK (SYSTEM_LINK_ID_IPC_OUT_0);
       pObj->IPCIn_DSP1_IPU1_0_0LinkID      = DSP1_LINK (SYSTEM_LINK_ID_IPC_IN_0);
       pObj->Alg_ClrLinkID                  = DSP1_LINK (SYSTEM_LINK_ID_ALG_0);
       pObj->IPCOut_DSP1_IPU1_0_0LinkID     = DSP1_LINK (SYSTEM_LINK_ID_IPC_OUT_0);
       pObj->IPCIn_IPU1_0_DSP1_0LinkID      = IPU1_0_LINK (SYSTEM_LINK_ID_IPC_IN_0);
       pObj->Merge_algLinkID                = IPU1_0_LINK (SYSTEM_LINK_ID_MERGE_0);
       pObj->Sync_algLinkID                 = IPU1_0_LINK (SYSTEM_LINK_ID_SYNC_0);
       pObj->Alg_ObjectDrawLinkID           = IPU1_0_LINK (SYSTEM_LINK_ID_ALG_0);
       pObj->Display_algLinkID              = SYSTEM_LINK_ID_DISPLAY_0;
       pObj->GrpxSrcLinkID                  = IPU1_0_LINK (SYSTEM_LINK_ID_GRPX_SRC_0);
       pObj->Display_GrpxLinkID             = SYSTEM_LINK_ID_DISPLAY_1;
}

Void chains_vipSingleCameraTlr_ResetLinkPrms(chains_vipSingleCameraTlrObj *pObj){
       CaptureLink_CreateParams_Init(&pObj->CapturePrm);
       DupLink_CreateParams_Init(&pObj->Dup_capturePrm);
       IpcLink_CreateParams_Init(&pObj->IPCOut_IPU1_0_DSP1_0Prm);
       IpcLink_CreateParams_Init(&pObj->IPCIn_DSP1_IPU1_0_0Prm);
       AlgorithmLink_Clr_Init(&pObj->Alg_ClrPrm);
       IpcLink_CreateParams_Init(&pObj->IPCOut_DSP1_IPU1_0_0Prm);
       IpcLink_CreateParams_Init(&pObj->IPCIn_IPU1_0_DSP1_0Prm);
       MergeLink_CreateParams_Init(&pObj->Merge_algPrm);
       SyncLink_CreateParams_Init(&pObj->Sync_algPrm);
       AlgorithmLink_ObjectDraw_Init(&pObj->Alg_ObjectDrawPrm);
       DisplayLink_CreateParams_Init(&pObj->Display_algPrm);
       GrpxSrcLink_CreateParams_Init(&pObj->GrpxSrcPrm);
       DisplayLink_CreateParams_Init(&pObj->Display_GrpxPrm);
}

Void chains_vipSingleCameraTlr_SetPrms(chains_vipSingleCameraTlrObj *pObj){
       (pObj->Dup_capturePrm).numOutQue = 2;
       (pObj->Alg_ClrPrm).baseClassCreate.size  = sizeof(AlgorithmLink_ClrCreateParams);
       (pObj->Alg_ClrPrm).baseClassCreate.algId  = ALGORITHM_LINK_DSP_ALG_CLR;
       (pObj->Merge_algPrm).numInQue = 2;
       (pObj->Alg_ObjectDrawPrm).baseClassCreate.size  = sizeof(AlgorithmLink_ObjectDrawCreateParams);
       (pObj->Alg_ObjectDrawPrm).baseClassCreate.algId  = ALGORITHM_LINK_IPU_ALG_OBJECT_DRAW;
}

Void chains_vipSingleCameraTlr_ConnectLinks(chains_vipSingleCameraTlrObj *pObj){

       //Capture -> Dup_capture
       pObj->CapturePrm.outQueParams.nextLink = pObj->Dup_captureLinkID;
       pObj->Dup_capturePrm.inQueParams.prevLinkId = pObj->CaptureLinkID;
       pObj->Dup_capturePrm.inQueParams.prevLinkQueId = 0;

       //Dup_capture -> Merge_alg
       pObj->Dup_capturePrm.outQueParams[0].nextLink = pObj->Merge_algLinkID;
       pObj->Merge_algPrm.inQueParams[0].prevLinkId = pObj->Dup_captureLinkID;
       pObj->Merge_algPrm.inQueParams[0].prevLinkQueId = 0;

       //Dup_capture -> IPCOut_IPU1_0_DSP1_0
       pObj->Dup_capturePrm.outQueParams[1].nextLink = pObj->IPCOut_IPU1_0_DSP1_0LinkID;
       pObj->IPCOut_IPU1_0_DSP1_0Prm.inQueParams.prevLinkId = pObj->Dup_captureLinkID;
       pObj->IPCOut_IPU1_0_DSP1_0Prm.inQueParams.prevLinkQueId = 1;

       //IPCOut_IPU1_0_DSP1_0 -> IPCIn_DSP1_IPU1_0_0
       pObj->IPCOut_IPU1_0_DSP1_0Prm.outQueParams.nextLink = pObj->IPCIn_DSP1_IPU1_0_0LinkID;
       pObj->IPCIn_DSP1_IPU1_0_0Prm.inQueParams.prevLinkId = pObj->IPCOut_IPU1_0_DSP1_0LinkID;
       pObj->IPCIn_DSP1_IPU1_0_0Prm.inQueParams.prevLinkQueId = 0;

       //IPCIn_DSP1_IPU1_0_0 -> Alg_Clr
       pObj->IPCIn_DSP1_IPU1_0_0Prm.outQueParams.nextLink = pObj->Alg_ClrLinkID;
       pObj->Alg_ClrPrm.inQueParams.prevLinkId = pObj->IPCIn_DSP1_IPU1_0_0LinkID;
       pObj->Alg_ClrPrm.inQueParams.prevLinkQueId = 0;

       //Alg_Clr -> IPCOut_DSP1_IPU1_0_0
       pObj->Alg_ClrPrm.outQueParams.nextLink = pObj->IPCOut_DSP1_IPU1_0_0LinkID;
       pObj->IPCOut_DSP1_IPU1_0_0Prm.inQueParams.prevLinkId = pObj->Alg_ClrLinkID;
       pObj->IPCOut_DSP1_IPU1_0_0Prm.inQueParams.prevLinkQueId = 0;

       //IPCOut_DSP1_IPU1_0_0 -> IPCIn_IPU1_0_DSP1_0
       pObj->IPCOut_DSP1_IPU1_0_0Prm.outQueParams.nextLink = pObj->IPCIn_IPU1_0_DSP1_0LinkID;
       pObj->IPCIn_IPU1_0_DSP1_0Prm.inQueParams.prevLinkId = pObj->IPCOut_DSP1_IPU1_0_0LinkID;
       pObj->IPCIn_IPU1_0_DSP1_0Prm.inQueParams.prevLinkQueId = 0;

       //IPCIn_IPU1_0_DSP1_0 -> Merge_alg
       pObj->IPCIn_IPU1_0_DSP1_0Prm.outQueParams.nextLink = pObj->Merge_algLinkID;
       pObj->Merge_algPrm.inQueParams[1].prevLinkId = pObj->IPCIn_IPU1_0_DSP1_0LinkID;
       pObj->Merge_algPrm.inQueParams[1].prevLinkQueId = 0;

       //Merge_alg -> Sync_alg
       pObj->Merge_algPrm.outQueParams.nextLink = pObj->Sync_algLinkID;
       pObj->Sync_algPrm.inQueParams.prevLinkId = pObj->Merge_algLinkID;
       pObj->Sync_algPrm.inQueParams.prevLinkQueId = 0;

       //Sync_alg -> Alg_ObjectDraw
       pObj->Sync_algPrm.outQueParams.nextLink = pObj->Alg_ObjectDrawLinkID;
       pObj->Alg_ObjectDrawPrm.inQueParams.prevLinkId = pObj->Sync_algLinkID;
       pObj->Alg_ObjectDrawPrm.inQueParams.prevLinkQueId = 0;

       //Alg_ObjectDraw -> Display_alg
       pObj->Alg_ObjectDrawPrm.outQueParams.nextLink = pObj->Display_algLinkID;
       pObj->Display_algPrm.inQueParams.prevLinkId = pObj->Alg_ObjectDrawLinkID;
       pObj->Display_algPrm.inQueParams.prevLinkQueId = 0;

       //GrpxSrc -> Display_Grpx
       pObj->GrpxSrcPrm.outQueParams.nextLink = pObj->Display_GrpxLinkID;
       pObj->Display_GrpxPrm.inQueParams.prevLinkId = pObj->GrpxSrcLinkID;
       pObj->Display_GrpxPrm.inQueParams.prevLinkQueId = 0;

}

Int32 chains_vipSingleCameraTlr_Create(chains_vipSingleCameraTlrObj *pObj, Void *appObj){

       Int32 status;

       chains_vipSingleCameraTlr_SetLinkId(pObj);
       chains_vipSingleCameraTlr_ResetLinkPrms(pObj);

       chains_vipSingleCameraTlr_SetPrms(pObj);
       chains_vipSingleCameraTlr_SetAppPrms(pObj, appObj);

       chains_vipSingleCameraTlr_ConnectLinks(pObj);
       status = System_linkCreate(pObj->CaptureLinkID, &pObj->CapturePrm, sizeof(pObj->CapturePrm));
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkCreate(pObj->Dup_captureLinkID, &pObj->Dup_capturePrm, sizeof(pObj->Dup_capturePrm));
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkCreate(pObj->IPCOut_IPU1_0_DSP1_0LinkID, &pObj->IPCOut_IPU1_0_DSP1_0Prm, sizeof(pObj->IPCOut_IPU1_0_DSP1_0Prm));
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkCreate(pObj->IPCIn_DSP1_IPU1_0_0LinkID, &pObj->IPCIn_DSP1_IPU1_0_0Prm, sizeof(pObj->IPCIn_DSP1_IPU1_0_0Prm));
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkCreate(pObj->Alg_ClrLinkID, &pObj->Alg_ClrPrm, sizeof(pObj->Alg_ClrPrm));
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkCreate(pObj->IPCOut_DSP1_IPU1_0_0LinkID, &pObj->IPCOut_DSP1_IPU1_0_0Prm, sizeof(pObj->IPCOut_DSP1_IPU1_0_0Prm));
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkCreate(pObj->IPCIn_IPU1_0_DSP1_0LinkID, &pObj->IPCIn_IPU1_0_DSP1_0Prm, sizeof(pObj->IPCIn_IPU1_0_DSP1_0Prm));
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkCreate(pObj->Merge_algLinkID, &pObj->Merge_algPrm, sizeof(pObj->Merge_algPrm));
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkCreate(pObj->Sync_algLinkID, &pObj->Sync_algPrm, sizeof(pObj->Sync_algPrm));
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkCreate(pObj->Alg_ObjectDrawLinkID, &pObj->Alg_ObjectDrawPrm, sizeof(pObj->Alg_ObjectDrawPrm));
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkCreate(pObj->Display_algLinkID, &pObj->Display_algPrm, sizeof(pObj->Display_algPrm));
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkCreate(pObj->GrpxSrcLinkID, &pObj->GrpxSrcPrm, sizeof(pObj->GrpxSrcPrm));
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkCreate(pObj->Display_GrpxLinkID, &pObj->Display_GrpxPrm, sizeof(pObj->Display_GrpxPrm));
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       return status;
}

Int32 chains_vipSingleCameraTlr_Start(chains_vipSingleCameraTlrObj *pObj){

       Int32 status;

       status = System_linkStart(pObj->Display_GrpxLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStart(pObj->GrpxSrcLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStart(pObj->Display_algLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStart(pObj->Alg_ObjectDrawLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStart(pObj->Sync_algLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStart(pObj->Merge_algLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStart(pObj->IPCIn_IPU1_0_DSP1_0LinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStart(pObj->IPCOut_DSP1_IPU1_0_0LinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStart(pObj->Alg_ClrLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStart(pObj->IPCIn_DSP1_IPU1_0_0LinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStart(pObj->IPCOut_IPU1_0_DSP1_0LinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStart(pObj->Dup_captureLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStart(pObj->CaptureLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       return status;
}

Int32 chains_vipSingleCameraTlr_Stop(chains_vipSingleCameraTlrObj *pObj){

       Int32 status;

       status = System_linkStop(pObj->Display_GrpxLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStop(pObj->GrpxSrcLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStop(pObj->Display_algLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStop(pObj->Alg_ObjectDrawLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStop(pObj->Sync_algLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStop(pObj->Merge_algLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStop(pObj->IPCIn_IPU1_0_DSP1_0LinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStop(pObj->IPCOut_DSP1_IPU1_0_0LinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStop(pObj->Alg_ClrLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStop(pObj->IPCIn_DSP1_IPU1_0_0LinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStop(pObj->IPCOut_IPU1_0_DSP1_0LinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStop(pObj->Dup_captureLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStop(pObj->CaptureLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       return status;
}

Int32 chains_vipSingleCameraTlr_Delete(chains_vipSingleCameraTlrObj *pObj){

       Int32 status;

       status = System_linkDelete(pObj->Display_GrpxLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkDelete(pObj->GrpxSrcLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkDelete(pObj->Display_algLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkDelete(pObj->Alg_ObjectDrawLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkDelete(pObj->Sync_algLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkDelete(pObj->Merge_algLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkDelete(pObj->IPCIn_IPU1_0_DSP1_0LinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkDelete(pObj->IPCOut_DSP1_IPU1_0_0LinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkDelete(pObj->Alg_ClrLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkDelete(pObj->IPCIn_DSP1_IPU1_0_0LinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkDelete(pObj->IPCOut_IPU1_0_DSP1_0LinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkDelete(pObj->Dup_captureLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkDelete(pObj->CaptureLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       return status;
}

Void chains_vipSingleCameraTlr_printBufferStatistics(chains_vipSingleCameraTlrObj *pObj){
       System_linkPrintBufferStatistics(pObj->CaptureLinkID);
       System_linkPrintBufferStatistics(pObj->Dup_captureLinkID);
       System_linkPrintBufferStatistics(pObj->IPCOut_IPU1_0_DSP1_0LinkID);
       Task_sleep(500);
       System_linkPrintBufferStatistics(pObj->IPCIn_DSP1_IPU1_0_0LinkID);
       System_linkPrintBufferStatistics(pObj->Alg_ClrLinkID);
       System_linkPrintBufferStatistics(pObj->IPCOut_DSP1_IPU1_0_0LinkID);
       Task_sleep(500);
       System_linkPrintBufferStatistics(pObj->IPCIn_IPU1_0_DSP1_0LinkID);
       System_linkPrintBufferStatistics(pObj->Merge_algLinkID);
       System_linkPrintBufferStatistics(pObj->Sync_algLinkID);
       System_linkPrintBufferStatistics(pObj->Alg_ObjectDrawLinkID);
       System_linkPrintBufferStatistics(pObj->Display_algLinkID);
       System_linkPrintBufferStatistics(pObj->GrpxSrcLinkID);
       System_linkPrintBufferStatistics(pObj->Display_GrpxLinkID);
       Task_sleep(500);
}

Void chains_vipSingleCameraTlr_printStatistics(chains_vipSingleCameraTlrObj *pObj){
       System_linkPrintStatistics(pObj->CaptureLinkID);
       System_linkPrintStatistics(pObj->Dup_captureLinkID);
       System_linkPrintStatistics(pObj->IPCOut_IPU1_0_DSP1_0LinkID);
       Task_sleep(500);
       System_linkPrintStatistics(pObj->IPCIn_DSP1_IPU1_0_0LinkID);
       System_linkPrintStatistics(pObj->Alg_ClrLinkID);
       System_linkPrintStatistics(pObj->IPCOut_DSP1_IPU1_0_0LinkID);
       Task_sleep(500);
       System_linkPrintStatistics(pObj->IPCIn_IPU1_0_DSP1_0LinkID);
       System_linkPrintStatistics(pObj->Merge_algLinkID);
       System_linkPrintStatistics(pObj->Sync_algLinkID);
       System_linkPrintStatistics(pObj->Alg_ObjectDrawLinkID);
       System_linkPrintStatistics(pObj->Display_algLinkID);
       System_linkPrintStatistics(pObj->GrpxSrcLinkID);
       System_linkPrintStatistics(pObj->Display_GrpxLinkID);
       Task_sleep(500);
}

