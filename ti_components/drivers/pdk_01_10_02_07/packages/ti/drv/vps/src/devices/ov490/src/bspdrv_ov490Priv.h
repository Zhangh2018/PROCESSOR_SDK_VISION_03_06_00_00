/*
 *  Copyright (c) Texas Instruments Incorporated 2018
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *    Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 *    Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the
 *    distribution.
 *
 *    Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 *  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 *  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 *  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 *  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 *  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 *  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 *  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 *  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/**
 *  \file bspdrv_ov490Priv.h
 *
 *  \brief ov490 decoder internal header file.
 *
 */

#ifndef BSPDRV_OV490_PRIV_H_
#define BSPDRV_OV490_PRIV_H_

/* ========================================================================== */
/*                             Include Files                                  */
/* ========================================================================== */

#include <ti/csl/tistdtypes.h>
#include <ti/drv/vps/include/common/bsp_types.h>
#include <ti/drv/vps/include/common/bsp_config.h>
#include <ti/drv/vps/include/common/trace.h>
#include <ti/drv/vps/include/osal/bsp_osal.h>
#include <ti/drv/vps/include/common/bsp_utils.h>
#include <ti/drv/vps/include/fvid2/fvid2_drvMgr.h>
#include <ti/drv/vps/include/platforms/bsp_platform.h>
#include <ti/drv/vps/include/devices/bsp_videoSensor.h>
#include <ov490/bspdrv_ov490.h>

#ifdef __cplusplus
extern "C" {
#endif

/* ========================================================================== */
/*                           Macros & Typedefs                                */
/* ========================================================================== */

/** \brief Driver object state - NOT IN USE. */
#define BSP_OV490_OBJ_STATE_UNUSED  (0U)
/** \brief Driver object state - IN USE and IDLE. */
#define BSP_OV490_OBJ_STATE_IDLE    (1U)

#define BSP_OV490_PID       ((UInt32) (0x300aU))
#define BSP_OV490_VER       ((UInt32) (0x300bU))
#define BSP_OV490_MAN_HIGH  ((UInt32) (0x3038U))
#define BSP_OV490_MAN_LOW   ((UInt32) (0x3039U))
#define BSP_OV490_BANK_HIGH ((UInt16) (0xfffdU))
#define BSP_OV490_BANK_LOW  ((UInt16) (0xfffeU))

#define BSP_OV490_MIPI_TX_LANE_CTRL2        (0x8029202DU)
#define BSP_OV490_MIPI_TX_LANE_CTRL0        (0x80292015U)
#define BSP_OV490_IMAGE_CONTROL_REGISTER    (0x80296010U)

/* IDs */
#define BSP_OV490_VERSION_VAL   (0x0490U)
#define BSP_OV490_VERSION(pid, ver) (((pid) << 8U) | ((ver) & 0xffU))

#define BSP_OV490_MAX_WIDTH         (1280U)
#define BSP_OV490_MAX_HEIGHT        (1080U)

#define BSP_OV490_ACTIVE_PIXELS_H   (1280U)
#define BSP_OV490_ACTIVE_PIXELS_V   (800U)

#define BSP_OV490_NUM_REGS (19)

/**
 *  \brief OV490 driver handle object.
 */
typedef struct
{
    UInt32                    state;
    /**< Handle state - used or free. */
    UInt32                    handleId;
    /**< Handle ID, 0..BSP_DEVICE_MAX_HANDLES-1. */
    UInt32                    nDrvId;
    /**< Driver Id - MULDES_OV, OV */
    BspOsal_SemHandle         lock;
    /**< Driver lock. */
    Bsp_VidSensorCreateParams createPrms;
    /**< Create time arguments. */
    Bsp_VidSensorFeatures     sensorFeature;
    /**< Sensor capabilities */
    Bsp_VidSensorConfigParams sensorConfig;
} Bsp_Ov490HandleObj;

/**
 *  \brief OV490 Global driver object.
 */
typedef struct
{
    BspOsal_SemHandle    lock;
    /* Global driver lock. */
    Bsp_Ov490HandleObj handlePool[BSP_DEVICE_MAX_HANDLES];
    /**< Handle objects. */
} Bsp_Ov490Obj;

Int32 Bsp_ov490GetChipId(const Bsp_Ov490HandleObj           *pObj,
                         Bsp_VidSensorChipIdStatus          *pStatus);

Int32 Bsp_ov490GetSensorFeatures(const Bsp_Ov490HandleObj   *pObj,
                                 Bsp_VidSensorFeatures      *pSenFeature);

Int32 Bsp_ov490SoftwareReset(const Bsp_Ov490HandleObj *pObj);

Int32 Bsp_ov490SensorStartStop(const Bsp_Ov490HandleObj *pObj,
                               UInt32                   bStartSensor);

Int32 Bsp_ov490SetConfig(const Bsp_Ov490HandleObj           *pObj,
                         const Bsp_VidSensorConfigParams    *configParams);

Int32 Bsp_ov490SensorConfig(const Bsp_Ov490HandleObj    *pObj,
                            Bsp_VidSensorConfigRegs     *sensorConfig,
                            UInt32                      numSensorConfigEntries);

Int32 Bsp_ov490RegWrite(const Bsp_Ov490HandleObj            *pObj,
                        const Bsp_VidSensorRegRdWrParams    *pPrm);

Int32 Bsp_ov490RegWrite32(const Bsp_Ov490HandleObj            *pObj,
                          const Bsp_VidSensorRegRdWrParams    *pPrm);

Int32 Bsp_ov490RegRead(const Bsp_Ov490HandleObj     *pObj,
                       const Bsp_VidSensorRegRdWrParams   *pPrm);

Int32 Bsp_ov490RegRead32(const Bsp_Ov490HandleObj     *pObj,
                         const Bsp_VidSensorRegRdWrParams   *pPrm);

Int32 Bsp_ov490SetFlipParams(const Bsp_Ov490HandleObj       *pObj,
                             const Bsp_VidSensorFlipParams  *pPrm);

Int32 Bsp_ov490I2cWrite32(const Bsp_Ov490HandleObj  *pObj,
                          UInt32                    addr,
                          UInt8                     val);

Int32 Bsp_ov490I2cRead32(const Bsp_Ov490HandleObj   *pObj,
                         UInt32                     addr,
                         UInt8                      *val);

#ifdef __cplusplus
}
#endif

#endif /* #ifndef BSPDRV_OV490_PRIV_H_  */
