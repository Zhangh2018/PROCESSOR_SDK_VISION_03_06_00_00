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
 *  \file st_dcanUtCommon.c
 *
 *  \brief Common code that can be shared across test case files.
 *
 */

/* ========================================================================== */
/*                             Include Files                                  */
/* ========================================================================== */
#include <math.h>
#include <stdlib.h>
#include <ti/csl/soc.h>
#include <st_dcanUt.h>
#include <ti/csl/arch/csl_arch.h>
#include <ti/drv/stw_lld/platform/irq_xbar.h>

/* ========================================================================== */
/*                           Macros & Typedefs                                */
/* ========================================================================== */
volatile unsigned char        gErrStatus = 0;

extern volatile unsigned char gTxDoneFlag;
extern volatile unsigned char gRxDoneFlag;
extern volatile unsigned char gTestModeTxDoneFlag;
extern volatile unsigned char gTestModeRxDoneFlag;

extern volatile unsigned int  gMsgObj[20];
extern volatile unsigned char gIsrCnt;
extern volatile unsigned char gRxAppCnt;

uint32_t        gDcanAppTestModeTxIfReg = 0;
uint32_t        gDcanAppTestModeRxIfReg = 0;

uint32_t        gDcanAppInstance;
uint32_t        gDcanAppIntrLineNum;
uint32_t        gDcanAppIfReg;
uint32_t        gDcanAppTxMsgObj;
uint32_t        gDcanAppRxMsgObj;
uint32_t        gtraceMask = TRUE;

extern uint32_t gTestCaseType;

/* ========================================================================== */
/*                         Structure Declarations                             */
/* ========================================================================== */
/* None */

/* ========================================================================== */
/*                          Function Declarations                             */
/* ========================================================================== */
/**
 * \brief   This API will intialize DCAN Config Params
 */
void st_dcanAppInitCfgParams(dcanCfgParams_t *pDcanCfgPrms);
static void st_dcanAppTxIntIsr();
static void st_dcanAppRxIntIsr();
static void st_dcanAppIntIsr();

/* ========================================================================== */
/*                            Global Variables                                */
/* ========================================================================== */
/* None */

/* ========================================================================== */
/*                          Function Definitions                              */
/* ========================================================================== */

void st_dcanAppConfigIntr(st_DCANTestcaseParams_t *testParams)
{
    xbar_irq_t intrSource = DCAN1_IRQ_INT0;

    gDcanAppInstance = testParams->dcanAppInstance;
    gDcanAppIfReg    = testParams->dcanAppIfReg;

    if ((testParams->dcanAppInstance == DCAN1_APP_INST) &&
        (testParams->dcanCfgPrms.intrLine0Enable == TRUE))
    {
        intrSource          = DCAN1_IRQ_INT0;
        gDcanAppIntrLineNum = DCAN_INTR_LINE_NUM_0;
    }
    else if ((testParams->dcanAppInstance == DCAN1_APP_INST) &&
             (testParams->dcanCfgPrms.intrLine1Enable == TRUE))
    {
        intrSource          = DCAN1_IRQ_INT1;
        gDcanAppIntrLineNum = DCAN_INTR_LINE_NUM_1;
    }
    else if ((testParams->dcanAppInstance == DCAN2_APP_INST) &&
             (testParams->dcanCfgPrms.intrLine0Enable == TRUE))
    {
        intrSource = DCAN2_IRQ_INT0;
    }
    else if ((testParams->dcanAppInstance == DCAN2_APP_INST) &&
             (testParams->dcanCfgPrms.intrLine1Enable == TRUE))
    {
        intrSource = DCAN2_IRQ_INT1;
    }

#if defined (__TI_ARM_V7M4__)
    IRQXBARConnect(SOC_IRQ_DMARQ_CROSSBAR_REGISTERS_BASE, CPU_IPU1,
                   XBAR_INST_IPU1_IRQ_28, intrSource);

    Intc_Init();
    Intc_IntEnable(0);

    if (testParams->testcaseType == ST_TCT_DCAN_TX)
    {
        Intc_IntRegister(28, (IntrFuncPtr) st_dcanAppTxIntIsr, (void *) 0);
    }
    else if (testParams->testcaseType == ST_TCT_DCAN_RX)
    {
        Intc_IntRegister(28, (IntrFuncPtr) st_dcanAppRxIntIsr, (void *) 0);
    }
    else if ((testParams->testcaseType == ST_TCT_DCAN_TEST_MODE) ||
             (testParams->testcaseType == ST_TCT_DCAN_ERR))
    {
        Intc_IntRegister(28, (IntrFuncPtr) st_dcanAppIntIsr, (void *) 0);
    }

    Intc_IntPrioritySet(28, 1, 0);

    Intc_SystemEnable(28);
#elif defined (__ARM_ARCH_7A__)
    IRQXBARConnect(SOC_IRQ_DMARQ_CROSSBAR_REGISTERS_BASE, CPU_MPUSS,
                   XBAR_INST_MPU_IRQ_77, intrSource);

    Intc_Init();
    Intc_IntEnable(0);

    if (testParams->testcaseType == ST_TCT_DCAN_TX)
    {
        Intc_IntRegister(77, (IntrFuncPtr) st_dcanAppTxIntIsr, (void *) 0);
    }
    else if (testParams->testcaseType == ST_TCT_DCAN_RX)
    {
        Intc_IntRegister(77, (IntrFuncPtr) st_dcanAppRxIntIsr, (void *) 0);
    }
    else if ((testParams->testcaseType == ST_TCT_DCAN_TEST_MODE) ||
             (testParams->testcaseType == ST_TCT_DCAN_ERR))
    {
        Intc_IntRegister(77, (IntrFuncPtr) st_dcanAppIntIsr, (void *) 0);
    }

    Intc_IntPrioritySet(77, 1, 0);

    Intc_SystemEnable(77);
#endif
}

static void st_dcanAppTxIntIsr()
{
    uint32_t intrStatus, errStatus;
    uint32_t msgObj;

    st_dcanAppWaitForIfReg(gDcanAppInstance, gDcanAppIfReg);
    intrStatus = DCANGetIntrStatus(gDcanAppInstance, gDcanAppIntrLineNum);
    if ((intrStatus == DCAN_ERR_STS_UPDATED) ||
        ((intrStatus >= 0x1) && (intrStatus <= 0x80)))
    {
        st_dcanAppWaitForIfReg(gDcanAppInstance, gDcanAppIfReg);
        errStatus = DCANGetErrStatus(gDcanAppInstance);
        if (errStatus != DCAN_ES_MASK_TX_OK)
        {
            gErrStatus = errStatus;
        }
        else
        {
            msgObj = DCANGetIntrStatus(gDcanAppInstance, gDcanAppIntrLineNum);
            if ((DCANIsMsgObjIntrPending(gDcanAppInstance, msgObj)) == TRUE)
            {
                st_dcanAppWaitForIfReg(gDcanAppInstance, gDcanAppIfReg);
                /* Clear the interrupts  of MSG_OBJ 1 for transmit */
                DCANIntrClearStatus(gDcanAppInstance, msgObj, gDcanAppIfReg);
            }
        }
    }
}

static void st_dcanAppRxIntIsr()
{
    uint32_t intrStatus, errStatus;
    uint32_t msgObj;

    st_dcanAppWaitForIfReg(gDcanAppInstance, gDcanAppIfReg);
    intrStatus = DCANGetIntrStatus(gDcanAppInstance, gDcanAppIntrLineNum);
    if ((intrStatus == DCAN_ERR_STS_UPDATED) ||
        ((intrStatus >= 0x1) && (intrStatus <= 0x80)))
    {
        st_dcanAppWaitForIfReg(gDcanAppInstance, gDcanAppIfReg);
        errStatus = DCANGetErrStatus(gDcanAppInstance);
        if (errStatus != DCAN_ES_MASK_RX_OK)
        {
            gErrStatus = errStatus;
        }
        else
        {
            msgObj = DCANGetIntrStatus(gDcanAppInstance, gDcanAppIntrLineNum);
            gMsgObj[gIsrCnt++] = msgObj;
            if (gIsrCnt == 20)
                gIsrCnt = 0;
            if ((DCANIsMsgObjIntrPending(gDcanAppInstance, msgObj)) == TRUE)
            {
                st_dcanAppWaitForIfReg(gDcanAppInstance, gDcanAppIfReg);
                /* Clear the interrupts  of MSG_OBJ 2 for Receive */
                DCANIntrClearStatus(gDcanAppInstance, msgObj, gDcanAppIfReg);
                gRxDoneFlag = 1;
            }
        }
    }
}

static void st_dcanAppIntIsr()
{
    if ((DCANIsMsgObjIntrPending(gDcanAppInstance, gDcanAppTxMsgObj)) == TRUE)
    {
        st_dcanAppWaitForIfReg(gDcanAppInstance, gDcanAppTestModeTxIfReg);
        /* Clear the interrupts  of MSG_OBJ for transmit */
        DCANIntrClearStatus(gDcanAppInstance, gDcanAppTxMsgObj,
                            gDcanAppTestModeTxIfReg);
        st_dcanAppWaitForIfReg(gDcanAppInstance, gDcanAppTestModeTxIfReg);
        if (gTestCaseType == ST_TCT_DCAN_TEST_MODE)
        {
            gTestModeTxDoneFlag = 1;
        }
    }
    if ((DCANIsMsgObjIntrPending(gDcanAppInstance, gDcanAppRxMsgObj)) == TRUE)
    {
        st_dcanAppWaitForIfReg(gDcanAppInstance, gDcanAppTestModeRxIfReg);
        /* Clear the interrupts  of MSG_OBJ for Receive */
        DCANIntrClearStatus(gDcanAppInstance, gDcanAppRxMsgObj,
                            gDcanAppTestModeRxIfReg);
        st_dcanAppWaitForIfReg(gDcanAppInstance, gDcanAppTestModeRxIfReg);
        if (gTestCaseType == ST_TCT_DCAN_TEST_MODE)
        {
            gTestModeRxDoneFlag = 1;
        }
    }
}

void st_dcanAppWaitForIfReg(uint32_t baseAddr, uint32_t ifRegNum)
{
    do
    {
        if (TRUE != DCANIsIfRegBusy(baseAddr, ifRegNum))
        {
            break;
        }
    }
    while (1);
}

uint32_t st_dcanAppCalculateBitTimeParams(uint32_t             clkFreq,
                                          uint32_t             bitRate,
                                          uint32_t             refSamplePnt,
                                          uint32_t             propDelay,
                                          dcanBitTimeParams_t *pBitTimePrms)
{
    Double  tBitRef = 1000 * 1000 / bitRate;
    Double  newBaud = 0, newNProp = 0, newNSeg = 0, newSjw = 0, newP = 0;
    Double  nQRef, nProp, fCan, nQ, nSeg, baud, sp, p, newSp = 0;
    int32_t errStatus = STW_SOK;
    float   tQ;

    for (p = 1; p <= 1024; p++)
    {
        tQ    = ((p / clkFreq) * 1000.0);
        nQRef = tBitRef / tQ;

        if ((nQRef >= 8) && (nQRef <= 25))
        {
            nProp = ceil(propDelay / tQ);
            fCan  = clkFreq / p;
            nQ    = fCan / bitRate * 1000;
            nSeg  = ceil((nQ - nProp - 1) / 2);

            if ((nProp <= 8) && (nProp > 0) && (nSeg <= 8) && (nSeg > 0))
            {
                baud = fCan / (1 + nProp + 2 * nSeg) * 1000;

                sp = (1 + nProp + nSeg) / (1 + nProp + nSeg + nSeg) * 100;

                if ((abs(baud - bitRate)) < (abs(newBaud - bitRate)))
                {
                    newBaud  = baud;
                    newNProp = nProp;
                    newNSeg  = nSeg;
                    newSjw   = (nSeg < 4) ? nSeg : 4;
                    newP     = p - 1;
                    newSp    = sp;
                }
                else if ((abs(baud - bitRate)) == (abs(newBaud - bitRate)))
                {
                    if ((abs(sp - refSamplePnt)) < (abs(newSp - refSamplePnt)))
                    {
                        newBaud  = baud;
                        newNProp = nProp;
                        newNSeg  = nSeg;
                        newSjw   = (nSeg < 4) ? nSeg : 4;
                        newP     = p - 1;
                        newSp    = sp;
                    }
                }
            }
        }
    }
    if ((newBaud == 0) || (newBaud > 1000))
    {
        errStatus = STW_EFAIL;
        return errStatus;
    }

    pBitTimePrms->baudRatePrescaler    = (((uint32_t) newP) & 0x3F);
    pBitTimePrms->baudRatePrescalerExt =
        ((((uint32_t) newP) & 0x3C0) ? (((uint32_t) newP) & 0x3C0) >> 6 : 0);
    pBitTimePrms->syncJumpWidth = ((uint32_t) newSjw) - 1;

    /* propSeg = newNProp, phaseSeg = newNSeg, samplePoint = newSp
     * nominalBitTime = (1 + newNProp + 2 * newNSeg), nominalBitRate = newBaud
     * brpFreq  = clkFreq / (brp + 1), brpeFreq = clkFreq / (newP + 1)
     * brp      = pBitTimePrms->baudRatePrescaler;
     */

    pBitTimePrms->timeSegment1 = newNProp + newNSeg - 1;
    pBitTimePrms->timeSegment2 = newNSeg - 1;

    return errStatus;
}

void sampleDelay(int32_t delay)
{
    volatile int32_t i, j;

    for (i = 0; i < delay; i++)
    {
        for (j = 0; j < 1000; j++) ;
    }
}

