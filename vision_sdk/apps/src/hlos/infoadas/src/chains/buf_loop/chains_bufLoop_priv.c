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
#include "chains_bufLoop_priv.h"
Void chains_bufLoop_SetLinkId(chains_bufLoopObj *pObj){
       pObj->EpSourceLinkID                 = System_linkIdAlloc( SYSTEM_PROC_A15_0, SYSTEM_LINK_TYPE_EP );
       pObj->EpSinkLinkID                   = System_linkIdAlloc( SYSTEM_PROC_A15_0, SYSTEM_LINK_TYPE_EP );
}

Void chains_bufLoop_FreeLinkId(chains_bufLoopObj *pObj){
       System_linkIdFree( SYSTEM_LINK_TYPE_EP, pObj->EpSourceLinkID);
       System_linkIdFree( SYSTEM_LINK_TYPE_EP, pObj->EpSinkLinkID);
}

Void chains_bufLoop_ResetLinkPrms(chains_bufLoopObj *pObj){
}

Void chains_bufLoop_SetPrms(chains_bufLoopObj *pObj){
}

Void chains_bufLoop_ConnectLinks(chains_bufLoopObj *pObj){

       //EpSource -> EpSink
       pObj->EpSourcePrm.outQueParams.nextLink = pObj->EpSinkLinkID;
       pObj->EpSinkPrm.inQueParams.prevLinkId = pObj->EpSourceLinkID;
       pObj->EpSinkPrm.inQueParams.prevLinkQueId = 0;

}

Int32 chains_bufLoop_Create(chains_bufLoopObj *pObj, Void *appObj){

       Int32 status;

       chains_bufLoop_ResetLinkPrms(pObj);

       chains_bufLoop_SetPrms(pObj);
       chains_bufLoop_SetAppPrms(pObj, appObj);

       chains_bufLoop_ConnectLinks(pObj);
       status = System_linkCreate(pObj->EpSourceLinkID, &pObj->EpSourcePrm, sizeof(pObj->EpSourcePrm));
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkCreate(pObj->EpSinkLinkID, &pObj->EpSinkPrm, sizeof(pObj->EpSinkPrm));
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       return status;
}

Int32 chains_bufLoop_Start(chains_bufLoopObj *pObj){

       Int32 status;

       status = System_linkStart(pObj->EpSinkLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStart(pObj->EpSourceLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       return status;
}

Int32 chains_bufLoop_Stop(chains_bufLoopObj *pObj){

       Int32 status;

       status = System_linkStop(pObj->EpSinkLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkStop(pObj->EpSourceLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       return status;
}

Int32 chains_bufLoop_Delete(chains_bufLoopObj *pObj){

       Int32 status;

       status = System_linkDelete(pObj->EpSinkLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       status = System_linkDelete(pObj->EpSourceLinkID);
       UTILS_assert(status == SYSTEM_LINK_STATUS_SOK);

       chains_bufLoop_FreeLinkId(pObj);
       return status;
}

Void chains_bufLoop_printBufferStatistics(chains_bufLoopObj *pObj){
       System_linkPrintBufferStatistics(pObj->EpSourceLinkID);
       System_linkPrintBufferStatistics(pObj->EpSinkLinkID);
       Task_sleep(500);
}

Void chains_bufLoop_printStatistics(chains_bufLoopObj *pObj){
       System_linkPrintStatistics(pObj->EpSourceLinkID);
       System_linkPrintStatistics(pObj->EpSinkLinkID);
       Task_sleep(500);
}

