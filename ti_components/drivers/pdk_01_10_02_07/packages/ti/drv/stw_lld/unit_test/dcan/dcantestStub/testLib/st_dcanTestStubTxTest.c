/*
 *  Copyright (C) 2014 Texas Instruments Incorporated
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
 *
 */

/**
 *  \file st_dcanTestStubTxTest.c
 *
 *  \brief  DCAN board which transmits the data from one Node to other
 */

/* ========================================================================== */
/*                             Include Files                                  */
/* ========================================================================== */
#include <stdio.h>
#include <st_dcanTestStub.h>
#include <ti/drv/stw_lld/platform/platform.h>
#include <ti/csl/csl_dcan.h>

/* ========================================================================== */
/*                           Macros & Typedefs                                */
/* ========================================================================== */
volatile unsigned char        gTestStubTxDoneFlag = 0;
extern volatile unsigned char gTestStubErrStatus;
/** \brief DCAN FIFO Buffer depth used */
#define DCAN_APP_FIFO_BUF_DEPTH            (8U)
/** \brief DCAN TX FIFO Buffer start index used */
#define DCAN_APP_TX_FIFO_BUF_START_IDX        (1U)
/* ========================================================================== */
/*                            Global Variables                                */
/* ========================================================================== */

/* ========================================================================== */
/*                         Structure Declarations                             */
/* ========================================================================== */
/* None */

/* ========================================================================== */
/*                          Function Declarations                             */
/* ========================================================================== */

/* ========================================================================== */
/*                          Function Definitions                              */
/* ========================================================================== */
int32_t st_dcanTestStubTxTest_main(st_DCANTestcaseParams_t *testParams)
{
    int32_t  retVal    = STW_SOK;
    int32_t  errStatus = STW_SOK;
    uint32_t timeOut   = 100U;
    dcanBitTimeParams_t appDcanBitTimePrms;
    uint32_t msgCnt;
    uint32_t fifoBufIdx;
    uint32_t fifoBufCnt = 1U;

    UARTprintf("\nDCAN Transmit Test App: DCAN1 MSG OBJ 1 (TX) \n");

    gTestStubTxDoneFlag = 0;

#if defined (__TI_ARM_V7M4__)
    /* DRM_SUSPEND_CTRL_DCAN1 - SUSPEND_SEL(Suspend source selection) as
     * IPU1_C0 & SENS_CTRL(Sensitivity control) as 1 means suspend signal must
     * reach the peripheral-IP  */
    HW_WR_REG32(DRM_SUSPEND_CTRL_DCAN1,
                ((DRM_SUSPEND_SRC_IPU1_C0 << 4) | 0x1));
#elif defined (__ARM_ARCH_7A__)
    /* DRM_SUSPEND_CTRL_DCAN1 - SUSPEND_SEL(Suspend source selection) as
     * MPU_C0 & SENS_CTRL(Sensitivity control) as 1 means suspend signal must
     * reach the peripheral-IP  */
    HW_WR_REG32(DRM_SUSPEND_CTRL_DCAN1,
                ((DRM_SUSPEND_SRC_MPU_C0 << 4) | 0x1));
#endif

    /*Unlock the Crossbar register */
    PlatformUnlockMMR();

    /* Clock Configuration. */
    PlatformDCAN1PrcmEnable();

    /* Perform the DCAN pinmux. */
    PlatformDCAN1SetPinMux();

    /* Initialize the DCAN message RAM. */
    PlatformDcanMessageRamInit(0);

    /* Register Crossbars and IRQ numbers */
    st_dcanAppTestStubConfigIntr(testParams);

    /* Reset the DCAN IP */
    retVal = DCANReset(DCAN1_APP_INST, timeOut);
    if (retVal == STW_SOK)
    {
        /* Set the desired bit rate based on input clock */
        DCANSetMode(DCAN1_APP_INST, DCAN_MODE_INIT);
        errStatus = st_dcanAppTestStubCalculateBitTimeParams(
            testParams->clkFreq / 1000000,
            testParams->bitrate / 1000,
            testParams->refSamplePoint,
            testParams->propDelay,
            &appDcanBitTimePrms);
        if (errStatus != STW_SOK)
        {
            return errStatus;
        }
        DCANSetBitTime(DCAN1_APP_INST, &appDcanBitTimePrms);
        DCANSetMode(DCAN1_APP_INST, DCAN_MODE_NORMAL);

        /* Configure DCAN controller */
        DCANConfig(DCAN1_APP_INST, &testParams->dcanCfgPrms);
    }
    /* Configuring FIFO Buffer of depth DCAN_APP_FIFO_BUF_DEPTH*/
    for (fifoBufIdx = DCAN_APP_TX_FIFO_BUF_START_IDX;
         fifoBufIdx < (DCAN_APP_TX_FIFO_BUF_START_IDX + DCAN_APP_FIFO_BUF_DEPTH);
         fifoBufIdx++)
    {
        /*
         * Enable message object interrupt to route interrupt line 1
         */
        DCANConfigIntrMux(DCAN1_APP_INST, DCAN_INTR_LINE_NUM_0, fifoBufIdx);

        if (fifoBufIdx ==
            ((DCAN_APP_TX_FIFO_BUF_START_IDX + DCAN_APP_FIFO_BUF_DEPTH) - 1))
        {
            testParams->dcanTxCfgPrms.fifoEOBFlag = TRUE;
        }
        else
        {
            testParams->dcanTxCfgPrms.fifoEOBFlag = FALSE;
        }
        if (retVal == STW_SOK)
        {
            /* Wait for interface to become free */
            st_dcanAppTestStubWaitForIfReg(DCAN1_APP_INST,
                                           DCAN_IF_REG_NUM_1);
            retVal = DCANConfigMsgObj(DCAN1_APP_INST,
                                      fifoBufIdx,
                                      DCAN_IF_REG_NUM_1,
                                      &testParams->dcanTxCfgPrms);
            /* Wait for config to be copied to internal message RAM */
            st_dcanAppTestStubWaitForIfReg(DCAN1_APP_INST,
                                           DCAN_IF_REG_NUM_1);
        }
    }

    for (msgCnt = 0; msgCnt < testParams->numMsg; msgCnt++)
    {
        gTestStubErrStatus = 0;

        if (retVal == STW_SOK)
        {
            while (DCANIsTxMsgPending(DCAN1_APP_INST, fifoBufCnt)) ;

            /* Wait for interface to become free */
            st_dcanAppTestStubWaitForIfReg(DCAN1_APP_INST,
                                           DCAN_IF_REG_NUM_1);
            retVal = DCANTransmitData(DCAN1_APP_INST,
                                      fifoBufCnt,
                                      DCAN_IF_REG_NUM_1,
                                      &testParams->dcanTxPrms,
                                      timeOut);
            /* Wait for config to be copied to internal message RAM */
            st_dcanAppTestStubWaitForIfReg(DCAN1_APP_INST,
                                           DCAN_IF_REG_NUM_1);
            fifoBufCnt++;

            if (fifoBufCnt > DCAN_APP_FIFO_BUF_DEPTH)
                fifoBufCnt = 1;
        }
        if (retVal == STW_SOK)
        {
            /* check for Error is occured or not */
            if (gTestStubErrStatus != 0)
            {
                retVal = STW_EFAIL;
                break;
            }
        }
        else
        {
            break;
        }
    }

    for (fifoBufCnt = 1; fifoBufCnt <= DCAN_APP_FIFO_BUF_DEPTH; fifoBufCnt++)
    {
        while (DCANIsTxMsgPending(DCAN1_APP_INST, fifoBufCnt)) ;
    }

    if (retVal == STW_EFAIL)
    {
        UARTPuts("\nDCAN -- Board to Board Test (TX) Failed!! \n", -1);
    }
    else
    {
        UARTPuts("\nDCAN -- Board to Board Test (TX) Passed!! \n", -1);
    }

    return retVal;
}

