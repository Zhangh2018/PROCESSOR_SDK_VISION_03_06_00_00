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

#ifndef _chains_avbRxSgx3DSrv_H_
#define _chains_avbRxSgx3DSrv_H_

#include <include/link_api/system.h>
#include <include/link_api/avbRxLink.h>
#include <include/link_api/decLink.h>
#include <include/link_api/syncLink.h>
#include <include/link_api/dupLink.h>
#include <include/alglink_api/algorithmLink_geometricAlignment3D.h>
#include <include/alglink_api/algorithmLink_synthesis.h>
#include <include/alglink_api/algorithmLink_photoAlignment.h>
#include <include/link_api/sgx3DsrvLink.h>
#include <include/link_api/ipcLink.h>
#include <include/link_api/nullLink.h>
#include <include/link_api/grpxSrcLink.h>
#include <include/link_api/displayLink.h>

typedef struct {
       UInt32    AvbRxLinkID;
       UInt32    DecodeLinkID;
       UInt32    SyncLinkID;
       UInt32    Dup_svLinkID;
       UInt32    IPCOut_IPU1_0_A15_0_2LinkID;
       UInt32    IPCIn_A15_0_IPU1_0_0LinkID;
       UInt32    IPCOut_IPU1_0_DSP1_1LinkID;
       UInt32    IPCIn_DSP1_IPU1_0_1LinkID;
       UInt32    IPCOut_IPU1_0_DSP1_0LinkID;
       UInt32    IPCIn_DSP1_IPU1_0_0LinkID;
       UInt32    Alg_GeoAlign3DLinkID;
       UInt32    IPCOut_DSP1_A15_0_1LinkID;
       UInt32    IPCIn_A15_0_DSP1_2LinkID;
       UInt32    Alg_SynthesisLinkID;
       UInt32    IPCOut_DSP1_A15_0_2LinkID;
       UInt32    IPCIn_A15_0_DSP1_3LinkID;
       UInt32    Alg_PhotoAlignLinkID;
       UInt32    IPCOut_DSP1_A15_0_0LinkID;
       UInt32    IPCIn_A15_0_DSP1_1LinkID;
       UInt32    Sgx3DsrvLinkID;
       UInt32    IPCOut_A15_0_IPU1_0_0LinkID;
       UInt32    IPCIn_IPU1_0_A15_0_0LinkID;
       UInt32    Display_M4LinkID;
       UInt32    NullLinkID;
       UInt32    GrpxSrcLinkID;
       UInt32    Display_GrpxLinkID;

       AvbRxLink_CreateParams                  AvbRxPrm;
       DecLink_CreateParams                    DecodePrm;
       SyncLink_CreateParams                   SyncPrm;
       DupLink_CreateParams                    Dup_svPrm;
       IpcLink_CreateParams                    IPCOut_IPU1_0_A15_0_2Prm;
       IpcLink_CreateParams                    IPCIn_A15_0_IPU1_0_0Prm;
       IpcLink_CreateParams                    IPCOut_IPU1_0_DSP1_1Prm;
       IpcLink_CreateParams                    IPCIn_DSP1_IPU1_0_1Prm;
       IpcLink_CreateParams                    IPCOut_IPU1_0_DSP1_0Prm;
       IpcLink_CreateParams                    IPCIn_DSP1_IPU1_0_0Prm;
       AlgorithmLink_GAlign3DCreateParams      Alg_GeoAlign3DPrm;
       IpcLink_CreateParams                    IPCOut_DSP1_A15_0_1Prm;
       IpcLink_CreateParams                    IPCIn_A15_0_DSP1_2Prm;
       AlgorithmLink_SynthesisCreateParams     Alg_SynthesisPrm;
       IpcLink_CreateParams                    IPCOut_DSP1_A15_0_2Prm;
       IpcLink_CreateParams                    IPCIn_A15_0_DSP1_3Prm;
       AlgorithmLink_PAlignCreateParams        Alg_PhotoAlignPrm;
       IpcLink_CreateParams                    IPCOut_DSP1_A15_0_0Prm;
       IpcLink_CreateParams                    IPCIn_A15_0_DSP1_1Prm;
       Sgx3DsrvLink_CreateParams               Sgx3DsrvPrm;
       IpcLink_CreateParams                    IPCOut_A15_0_IPU1_0_0Prm;
       IpcLink_CreateParams                    IPCIn_IPU1_0_A15_0_0Prm;
       DisplayLink_CreateParams                Display_M4Prm;
       NullLink_CreateParams                   NullPrm;
       GrpxSrcLink_CreateParams                GrpxSrcPrm;
       DisplayLink_CreateParams                Display_GrpxPrm;
} chains_avbRxSgx3DSrvObj;

Void chains_avbRxSgx3DSrv_SetLinkId(chains_avbRxSgx3DSrvObj *pObj);

Void chains_avbRxSgx3DSrv_ResetLinkPrms(chains_avbRxSgx3DSrvObj *pObj);

Void chains_avbRxSgx3DSrv_SetPrms(chains_avbRxSgx3DSrvObj *pObj);

Void chains_avbRxSgx3DSrv_ConnectLinks(chains_avbRxSgx3DSrvObj *pObj);

Int32 chains_avbRxSgx3DSrv_Create(chains_avbRxSgx3DSrvObj *pObj, Void *appObj);

Int32 chains_avbRxSgx3DSrv_Start(chains_avbRxSgx3DSrvObj *pObj);

Int32 chains_avbRxSgx3DSrv_Stop(chains_avbRxSgx3DSrvObj *pObj);

Int32 chains_avbRxSgx3DSrv_Delete(chains_avbRxSgx3DSrvObj *pObj);

Void chains_avbRxSgx3DSrv_printBufferStatistics(chains_avbRxSgx3DSrvObj *pObj);

Void chains_avbRxSgx3DSrv_printStatistics(chains_avbRxSgx3DSrvObj *pObj);

Void chains_avbRxSgx3DSrv_SetAppPrms(chains_avbRxSgx3DSrvObj *pObj, Void *appObj);

#endif /* _chains_avbRxSgx3DSrv_H_ */
