/******************************************************************************
Copyright (c) [2018] Texas Instruments Incorporated

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

/*******************************************************************************
 *  INCLUDE FILES
 *******************************************************************************
 */
#include "chains_cascadeRadarDataCollect_priv.h"
#include <src/hlos/adas/include/chains.h>
#include <src/hlos/adas/include/chains_common_radar.h>
#include <src/hlos/common/chains_common.h>

#define SSD_MOUNT_DIR "/mnt/ssd"

char Chains_cascadeRadarDataCollect_runTimeMenu();

typedef struct {
    UInt32   usecaseId;
    UInt32   fps;
    UInt32   enableLumaOnlyDump;
    UInt32   numBuf;
    UInt32   numCh;
    char     filePath[256];
    uint32_t disableChannel[SYSTEM_MAX_CH_PER_OUT_QUE];
} DataCollectApp_Cfg;

/**
 *******************************************************************************
 *
 *  \brief  Chains_cascadeRadarDataCollectObj
 *
 *        This structure contains all the LinksId's and create Params.
 *        The same is passed to all create, start, stop functions.
 *
 *******************************************************************************
*/
typedef struct {

    chains_cascadeRadarDataCollectObj ucObj;

    Chains_Ctrl *chainsCfg;

    DataCollectApp_Cfg cfg;

    AppCtrl_RadarConfigFiles radarConfigFiles;

} Chains_cascadeRadarDataCollectAppObj;

void DataCollectApp_Cfg_SetDefault(DataCollectApp_Cfg *cfg)
{
    cfg->usecaseId = 0;
    cfg->fps = 60;
    cfg->enableLumaOnlyDump = FALSE;
    cfg->numBuf = 12;
    cfg->numCh = 1;
    memset(&cfg->disableChannel, 0, sizeof(cfg->disableChannel));
    strncpy(cfg->filePath, SSD_MOUNT_DIR, sizeof(cfg->filePath));
}

/**
 *******************************************************************************
 *
 * \brief   Start the Links
 *
 *          Function sends a control command to all the links to
 *          to Start them. Links are started in reverce
 *          order as information of next link is required to connect.
 *          System_linkStart is called with LinkId to start the links.
 *
 * \param   pObj  [IN] Chains_cascadeRadarDataCollectAppObj
 *
 * /return  SYSTEM_LINK_STATUS_SOK on success
 *
 *******************************************************************************
*/
Void chains_cascadeRadarDataCollect_StartApp(Chains_cascadeRadarDataCollectAppObj *pObj)
{
    ChainsCommon_memPrintHeapStatus();

    System_linkControl(SYSTEM_LINK_ID_APP_CTRL,
                       APP_CTRL_LINK_CMD_START_RADAR,
                       NULL, 0, TRUE);

    chains_cascadeRadarDataCollect_Start(&pObj->ucObj);

    ChainsCommon_prfLoadCalcEnable(TRUE, FALSE, FALSE);
}

/**
 *******************************************************************************
 *
 * \brief   Delete the usecase Links
 *
 *          Function sends a control command to all usecase links to
 *          to delete them
 *          System_linkDelete is called with LinkId to delete the links.
 *
 * \param   pObj   [IN]   Chains_cascadeRadarDataCollectAppObj
 *
 *******************************************************************************
*/
Void chains_cascadeRadarDataCollect_StopAndDeleteApp(Chains_cascadeRadarDataCollectAppObj *pObj)
{
    Int32 i;
    chains_cascadeRadarDataCollect_Stop(&pObj->ucObj);
    chains_cascadeRadarDataCollect_Delete(&pObj->ucObj);

    System_linkControl(SYSTEM_LINK_ID_APP_CTRL,
                       APP_CTRL_LINK_CMD_STOP_RADAR,
                       NULL, 0, TRUE);

    /* Print the HWI, SWI and all tasks load */
    /* Reset the accumulated timer ticks */
    ChainsCommon_prfLoadCalcEnable(FALSE, FALSE, FALSE);

    for (i = 0; i < pObj->radarConfigFiles.numFiles; i++)
    {
        ChainsCommon_Osal_memFree(pObj->radarConfigFiles.fileParams[i].pConfigBuf,
                                  pObj->radarConfigFiles.fileParams[i].bufSize);
    }
}

/**
 *******************************************************************************
 *
 * \brief   Set link Parameters
 *
 *          It is called in Create function of the auto generated use-case file.
 *
 * \param pUcObj    [IN] Auto-generated usecase object
 * \param appObj    [IN] Application specific object
 *
 *******************************************************************************
*/
Void chains_cascadeRadarDataCollect_SetAppPrms(chains_cascadeRadarDataCollectObj *pUcObj, Void *appObj)
{
    Chains_cascadeRadarDataCollectAppObj *pObj
            = (Chains_cascadeRadarDataCollectAppObj *)appObj;
    UInt32 i, j;
    Int32 status;

    status = ChainsCommon_OpenRadarConfigFile(RADAR_CONFIG_FILE_DIR, &pObj->radarConfigFiles);

    if (0 == status)
    {
        System_linkControl(SYSTEM_LINK_ID_APP_CTRL,
                           APP_CTRL_LINK_CMD_INIT_RADAR,
                           &pObj->radarConfigFiles,
                           sizeof(AppCtrl_RadarConfigFiles),
                           TRUE);
    }
    else
    {
        System_linkControl(SYSTEM_LINK_ID_APP_CTRL,
                           APP_CTRL_LINK_CMD_INIT_RADAR,
                           NULL, 0, TRUE);
    }

    System_linkControl(SYSTEM_LINK_ID_APP_CTRL,
                       APP_CTRL_LINK_CMD_SET_RADAR_CAPTURE_PARAM,
                       &pUcObj->CapturePrm, sizeof(CaptureLink_CreateParams), TRUE);

    pUcObj->SyncPrm.syncDelta = 50;
    pUcObj->SyncPrm.syncThreshold = 100;

    pUcObj->DataCollectPrm.dumpDataType = DATA_COLLECT_LINK_COPY_TYPE_FILE;
    strncpy(pUcObj->DataCollectPrm.filePath, pObj->cfg.filePath, sizeof(pUcObj->DataCollectPrm.filePath));

    UTILS_assert(pObj->radarConfigFiles.numFiles <= DATA_COLLECT_LINK_MAX_NUM_FILES);
    pUcObj->DataCollectPrm.numConfigFiles = pObj->radarConfigFiles.numFiles;
    for (i = 0; i < pObj->radarConfigFiles.numFiles; i++)
    {
        pUcObj->DataCollectPrm.configBufParams[i].pConfigBuf = pObj->radarConfigFiles.fileParams[i].pConfigBuf;
        pUcObj->DataCollectPrm.configBufParams[i].bufSize = pObj->radarConfigFiles.fileParams[i].bufSize;
    }

    for (j = 0; j < SYSTEM_MAX_CH_PER_OUT_QUE; ++j)
    {
        pUcObj->DataCollectPrm.disableChannel[j] = pObj->cfg.disableChannel[j];
    }

    return;
}

/**
 *******************************************************************************
 *
 * \brief   Cascade 4 channel radar sensor (AWR1243) capture and network output
 *
 *          This functions executes the create, start functions
 *
 *          Further in a while loop displays run time menu and waits
 *          for user inputs to print the statistics or to end the demo.
 *
 *          Once the user inputs end of demo stop and delete
 *          functions are executed.
 *
 * \param   chainsCfg       [IN]   Chains_Ctrl
 *
 *******************************************************************************
*/
Void Chains_cascadeRadarDataCollect(Chains_Ctrl *chainsCfg)
{
    char ch;
    UInt32 done = FALSE;
    Chains_cascadeRadarDataCollectAppObj chainsObj;

    chainsObj.chainsCfg = chainsCfg;

    DataCollectApp_Cfg_SetDefault(&chainsObj.cfg);

    chains_cascadeRadarDataCollect_Create(&chainsObj.ucObj, &chainsObj);

    chains_cascadeRadarDataCollect_StartApp(&chainsObj);

    while(!done)
    {
        ch = Chains_cascadeRadarDataCollect_runTimeMenu();

        switch(ch)
        {
            case '0':
                done = TRUE;
                break;
            case 'p':
            case 'P':
                ChainsCommon_PrintStatistics();
                chains_cascadeRadarDataCollect_printStatistics(&chainsObj.ucObj);
                break;
            default:
                Vps_printf("\nUnsupported option '%c'. Please try again\n", ch);
                break;
        }
    }

    chains_cascadeRadarDataCollect_StopAndDeleteApp(&chainsObj);
}

/**
 *******************************************************************************
 * \brief Run Time Menu string.
 *******************************************************************************
 */
char gChains_cascadeRadarDataCollect_customRunTimeMenu[] = {
    "\r\n "
    "\r\n ===================="
    "\r\n Chains Run-time Menu"
    "\r\n ===================="
    "\r\n "
    "\r\n 0: Stop Chain"
    "\r\n "
    "\r\n p: Print Performance Statistics "
    "\r\n "
    "\r\n Enter Choice: "
    "\r\n "
};

char Chains_cascadeRadarDataCollect_runTimeMenu()
{
    Vps_printf(gChains_cascadeRadarDataCollect_customRunTimeMenu);

    return Chains_readChar();
}

