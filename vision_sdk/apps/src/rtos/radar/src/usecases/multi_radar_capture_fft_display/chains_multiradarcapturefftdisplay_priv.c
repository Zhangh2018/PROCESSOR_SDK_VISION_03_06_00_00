/****************************************************************************
Copyright (c) [2012 - 2017] Texas Instruments Incorporated

All rights reserved not granted herein.

Limited License.

 Texas Instruments Incorporated grants a world-wide, royalty-free, non-exclusive
 license under copyrights and patents it now or hereafter owns or controls to
 make,  have made, use, import, offer to sell and sell ('Utilize') this software
 subject to the terms herein.  With respect to the foregoing patent license,
 such license is granted  solely to the extent that any such patent is necessary
 to Utilize the software alone.  The patent license shall not apply to any
 combinations which include this software, other than combinations with devices
 manufactured by or for TI ('TI Devices').  No hardware patent is licensed
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

 THIS SOFTWARE IS PROVIDED BY TI AND TI�S LICENSORS 'AS IS' AND ANY EXPRESS OR
 IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 IN NO EVENT SHALL TI AND TI�S LICENSORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
 OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
 ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
******************************************************************************
*/
/*
*******************************************************************************
*
* IMPORTANT NOTE:
*  This file is AUTO-GENERATED by Vision SDK use case generation tool
*
*******************************************************************************
*/
#include "chains_multiradarcapturefftdisplay_priv.h"
Void chains_multiradarcapturefftdisplay_SetLinkId(chains_multiradarcapturefftdisplayObj *pObj){
       pObj->IssCaptureLinkID               = SYSTEM_LINK_ID_ISSCAPTURE_0;
       pObj->SelectLinkID                   = IPU1_0_LINK (SYSTEM_LINK_ID_SELECT_0);
       pObj->IPCOut_IPU1_0_DSP1_0LinkID     = IPU1_0_LINK (SYSTEM_LINK_ID_IPC_OUT_0);
       pObj->IPCIn_DSP1_IPU1_0_0LinkID      = DSP1_LINK (SYSTEM_LINK_ID_IPC_IN_0);
       pObj->Alg_RadarProcess_fftLinkID     = DSP1_LINK (SYSTEM_LINK_ID_ALG_1);
       pObj->Alg_RadarProcess_drawLinkID    = DSP1_LINK (SYSTEM_LINK_ID_ALG_0);
       pObj->IPCOut_DSP1_IPU1_0_0LinkID     = DSP1_LINK (SYSTEM_LINK_ID_IPC_OUT_0);
       pObj->IPCIn_IPU1_0_DSP1_0LinkID      = IPU1_0_LINK (SYSTEM_LINK_ID_IPC_IN_0);
       pObj->Display_VideoLinkID            = SYSTEM_LINK_ID_DISPLAY_0;
       pObj->GrpxSrcLinkID                  = IPU1_0_LINK (SYSTEM_LINK_ID_GRPX_SRC_0);
       pObj->Display_GrpxLinkID             = SYSTEM_LINK_ID_DISPLAY_1;
}

Void chains_multiradarcapturefftdisplay_ResetLinkPrms(chains_multiradarcapturefftdisplayObj *pObj){
       IssCaptureLink_CreateParams_Init(&pObj->IssCapturePrm);
       SelectLink_CreateParams_Init(&pObj->SelectPrm);
       IpcLink_CreateParams_Init(&pObj->IPCOut_IPU1_0_DSP1_0Prm);
       IpcLink_CreateParams_Init(&pObj->IPCIn_DSP1_IPU1_0_0Prm);
       AlgorithmLink_RadarProcess_Init(pObj->Alg_RadarProcess_fftPrm);
       AlgorithmLink_RadarProcess_Init(pObj->Alg_RadarProcess_drawPrm);
       IpcLink_CreateParams_Init(&pObj->IPCOut_DSP1_IPU1_0_0Prm);
       IpcLink_CreateParams_Init(&pObj->IPCIn_IPU1_0_DSP1_0Prm);
       DisplayLink_CreateParams_Init(&pObj->Display_VideoPrm);
       GrpxSrcLink_CreateParams_Init(&pObj->GrpxSrcPrm);
       DisplayLink_CreateParams_Init(&pObj->Display_GrpxPrm);
}

Void chains_multiradarcapturefftdisplay_SetPrms(chains_multiradarcapturefftdisplayObj *pObj){
       (pObj->SelectPrm).numOutQue = 1;
       pObj->Alg_RadarProcess_fftPrm->baseClassCreate.algId  = ALGORITHM_LINK_DSP_ALG_RADAR_PROCESS;
       pObj->Alg_RadarProcess_drawPrm->baseClassCreate.algId  = ALGORITHM_LINK_DSP_ALG_RADAR_PROCESS;
}

Void chains_multiradarcapturefftdisplay_ConnectLinks(chains_multiradarcapturefftdisplayObj *pObj){

       //IssCapture -> Select
       pObj->IssCapturePrm.outQueParams.nextLink = pObj->SelectLinkID;
       pObj->SelectPrm.inQueParams.prevLinkId = pObj->IssCaptureLinkID;
       pObj->SelectPrm.inQueParams.prevLinkQueId = 0;

       //Select -> IPCOut_IPU1_0_DSP1_0
       pObj->SelectPrm.outQueParams[0].nextLink = pObj->IPCOut_IPU1_0_DSP1_0LinkID;
       pObj->IPCOut_IPU1_0_DSP1_0Prm.inQueParams.prevLinkId = pObj->SelectLinkID;
       pObj->IPCOut_IPU1_0_DSP1_0Prm.inQueParams.prevLinkQueId = 0;

       //IPCOut_IPU1_0_DSP1_0 -> IPCIn_DSP1_IPU1_0_0
       pObj->IPCOut_IPU1_0_DSP1_0Prm.outQueParams.nextLink = pObj->IPCIn_DSP1_IPU1_0_0LinkID;
       pObj->IPCIn_DSP1_IPU1_0_0Prm.inQueParams.prevLinkId = pObj->IPCOut_IPU1_0_DSP1_0LinkID;
       pObj->IPCIn_DSP1_IPU1_0_0Prm.inQueParams.prevLinkQueId = 0;

       //IPCIn_DSP1_IPU1_0_0 -> Alg_RadarProcess_fft
       pObj->IPCIn_DSP1_IPU1_0_0Prm.outQueParams.nextLink = pObj->Alg_RadarProcess_fftLinkID;
       pObj->Alg_RadarProcess_fftPrm->inQueParams.prevLinkId = pObj->IPCIn_DSP1_IPU1_0_0LinkID;
       pObj->Alg_RadarProcess_fftPrm->inQueParams.prevLinkQueId = 0;

       //Alg_RadarProcess_fft -> Alg_RadarProcess_draw
       pObj->Alg_RadarProcess_fftPrm->outQueParams.nextLink = pObj->Alg_RadarProcess_drawLinkID;
       pObj->Alg_RadarProcess_drawPrm->inQueParams.prevLinkId = pObj->Alg_RadarProcess_fftLinkID;
       pObj->Alg_RadarProcess_drawPrm->inQueParams.prevLinkQueId = 0;

       //Alg_RadarProcess_draw -> IPCOut_DSP1_IPU1_0_0
       pObj->Alg_RadarProcess_drawPrm->outQueParams.nextLink = pObj->IPCOut_DSP1_IPU1_0_0LinkID;
       pObj->IPCOut_DSP1_IPU1_0_0Prm.inQueParams.prevLinkId = pObj->Alg_RadarProcess_drawLinkID;
       pObj->IPCOut_DSP1_IPU1_0_0Prm.inQueParams.prevLinkQueId = 0;

       //IPCOut_DSP1_IPU1_0_0 -> IPCIn_IPU1_0_DSP1_0
       pObj->IPCOut_DSP1_IPU1_0_0Prm.outQueParams.nextLink = pObj->IPCIn_IPU1_0_DSP1_0LinkID;
       pObj->IPCIn_IPU1_0_DSP1_0Prm.inQueParams.prevLinkId = pObj->IPCOut_DSP1_IPU1_0_0LinkID;
       pObj->IPCIn_IPU1_0_DSP1_0Prm.inQueParams.prevLinkQueId = 0;

       //IPCIn_IPU1_0_DSP1_0 -> Display_Video
       pObj->IPCIn_IPU1_0_DSP1_0Prm.outQueParams.nextLink = pObj->Display_VideoLinkID;
       pObj->Display_VideoPrm.inQueParams.prevLinkId = pObj->IPCIn_IPU1_0_DSP1_0LinkID;
       pObj->Display_VideoPrm.inQueParams.prevLinkQueId = 0;

       //GrpxSrc -> Display_Grpx
       pObj->GrpxSrcPrm.outQueParams.nextLink = pObj->Display_GrpxLinkID;
       pObj->Display_GrpxPrm.inQueParams.prevLinkId = pObj->GrpxSrcLinkID;
       pObj->Display_GrpxPrm.inQueParams.prevLinkQueId = 0;

}

Int32 chains_multiradarcapturefftdisplay_Create(chains_multiradarcapturefftdisplayObj *pObj, Void *appObj){

       Int32 status;

       chains_multiradarcapturefftdisplay_SetLinkId(pObj);
       chains_multiradarcapturefftdisplay_ResetLinkPrms(pObj);

       chains_multiradarcapturefftdisplay_SetPrms(pObj);
       chains_multiradarcapturefftdisplay_SetAppPrms(pObj, appObj);

       chains_multiradarcapturefftdisplay_ConnectLinks(pObj);
       status = System_linkCreate(pObj->IssCaptureLinkID, &pObj->IssCapturePrm, sizeof(pObj->IssCapturePrm));
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkCreate(pObj->SelectLinkID, &pObj->SelectPrm, sizeof(pObj->SelectPrm));
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkCreate(pObj->IPCOut_IPU1_0_DSP1_0LinkID, &pObj->IPCOut_IPU1_0_DSP1_0Prm, sizeof(pObj->IPCOut_IPU1_0_DSP1_0Prm));
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkCreate(pObj->IPCIn_DSP1_IPU1_0_0LinkID, &pObj->IPCIn_DSP1_IPU1_0_0Prm, sizeof(pObj->IPCIn_DSP1_IPU1_0_0Prm));
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkCreate(pObj->Alg_RadarProcess_fftLinkID, pObj->Alg_RadarProcess_fftPrm, pObj->Alg_RadarProcess_fftPrm->baseClassCreate.size);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkCreate(pObj->Alg_RadarProcess_drawLinkID, pObj->Alg_RadarProcess_drawPrm, pObj->Alg_RadarProcess_drawPrm->baseClassCreate.size);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkCreate(pObj->IPCOut_DSP1_IPU1_0_0LinkID, &pObj->IPCOut_DSP1_IPU1_0_0Prm, sizeof(pObj->IPCOut_DSP1_IPU1_0_0Prm));
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkCreate(pObj->IPCIn_IPU1_0_DSP1_0LinkID, &pObj->IPCIn_IPU1_0_DSP1_0Prm, sizeof(pObj->IPCIn_IPU1_0_DSP1_0Prm));
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkCreate(pObj->Display_VideoLinkID, &pObj->Display_VideoPrm, sizeof(pObj->Display_VideoPrm));
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkCreate(pObj->GrpxSrcLinkID, &pObj->GrpxSrcPrm, sizeof(pObj->GrpxSrcPrm));
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkCreate(pObj->Display_GrpxLinkID, &pObj->Display_GrpxPrm, sizeof(pObj->Display_GrpxPrm));
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       return status;
}

Int32 chains_multiradarcapturefftdisplay_Start(chains_multiradarcapturefftdisplayObj *pObj){

       Int32 status;

       status = System_linkStart(pObj->Display_GrpxLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStart(pObj->GrpxSrcLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStart(pObj->Display_VideoLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStart(pObj->IPCIn_IPU1_0_DSP1_0LinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStart(pObj->IPCOut_DSP1_IPU1_0_0LinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStart(pObj->Alg_RadarProcess_drawLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStart(pObj->Alg_RadarProcess_fftLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStart(pObj->IPCIn_DSP1_IPU1_0_0LinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStart(pObj->IPCOut_IPU1_0_DSP1_0LinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStart(pObj->SelectLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStart(pObj->IssCaptureLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       return status;
}

Int32 chains_multiradarcapturefftdisplay_Stop(chains_multiradarcapturefftdisplayObj *pObj){

       Int32 status;

       status = System_linkStop(pObj->Display_GrpxLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStop(pObj->GrpxSrcLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStop(pObj->Display_VideoLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStop(pObj->IPCIn_IPU1_0_DSP1_0LinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStop(pObj->IPCOut_DSP1_IPU1_0_0LinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStop(pObj->Alg_RadarProcess_drawLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStop(pObj->Alg_RadarProcess_fftLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStop(pObj->IPCIn_DSP1_IPU1_0_0LinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStop(pObj->IPCOut_IPU1_0_DSP1_0LinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStop(pObj->SelectLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStop(pObj->IssCaptureLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       return status;
}

Int32 chains_multiradarcapturefftdisplay_Delete(chains_multiradarcapturefftdisplayObj *pObj){

       Int32 status;

       status = System_linkDelete(pObj->Display_GrpxLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkDelete(pObj->GrpxSrcLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkDelete(pObj->Display_VideoLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkDelete(pObj->IPCIn_IPU1_0_DSP1_0LinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkDelete(pObj->IPCOut_DSP1_IPU1_0_0LinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkDelete(pObj->Alg_RadarProcess_drawLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkDelete(pObj->Alg_RadarProcess_fftLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkDelete(pObj->IPCIn_DSP1_IPU1_0_0LinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkDelete(pObj->IPCOut_IPU1_0_DSP1_0LinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkDelete(pObj->SelectLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkDelete(pObj->IssCaptureLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       return status;
}

Void chains_multiradarcapturefftdisplay_printBufferStatistics(chains_multiradarcapturefftdisplayObj *pObj){
       System_linkPrintBufferStatistics(pObj->IssCaptureLinkID);
       System_linkPrintBufferStatistics(pObj->SelectLinkID);
       System_linkPrintBufferStatistics(pObj->IPCOut_IPU1_0_DSP1_0LinkID);
       Task_sleep(500);
       System_linkPrintBufferStatistics(pObj->IPCIn_DSP1_IPU1_0_0LinkID);
       System_linkPrintBufferStatistics(pObj->Alg_RadarProcess_fftLinkID);
       System_linkPrintBufferStatistics(pObj->Alg_RadarProcess_drawLinkID);
       System_linkPrintBufferStatistics(pObj->IPCOut_DSP1_IPU1_0_0LinkID);
       Task_sleep(500);
       System_linkPrintBufferStatistics(pObj->IPCIn_IPU1_0_DSP1_0LinkID);
       System_linkPrintBufferStatistics(pObj->Display_VideoLinkID);
       System_linkPrintBufferStatistics(pObj->GrpxSrcLinkID);
       System_linkPrintBufferStatistics(pObj->Display_GrpxLinkID);
       Task_sleep(500);
}

Void chains_multiradarcapturefftdisplay_printStatistics(chains_multiradarcapturefftdisplayObj *pObj){
       System_linkPrintStatistics(pObj->IssCaptureLinkID);
       System_linkPrintStatistics(pObj->SelectLinkID);
       System_linkPrintStatistics(pObj->IPCOut_IPU1_0_DSP1_0LinkID);
       Task_sleep(500);
       System_linkPrintStatistics(pObj->IPCIn_DSP1_IPU1_0_0LinkID);
       System_linkPrintStatistics(pObj->Alg_RadarProcess_fftLinkID);
       System_linkPrintStatistics(pObj->Alg_RadarProcess_drawLinkID);
       System_linkPrintStatistics(pObj->IPCOut_DSP1_IPU1_0_0LinkID);
       Task_sleep(500);
       System_linkPrintStatistics(pObj->IPCIn_IPU1_0_DSP1_0LinkID);
       System_linkPrintStatistics(pObj->Display_VideoLinkID);
       System_linkPrintStatistics(pObj->GrpxSrcLinkID);
       System_linkPrintStatistics(pObj->Display_GrpxLinkID);
       Task_sleep(500);
}

