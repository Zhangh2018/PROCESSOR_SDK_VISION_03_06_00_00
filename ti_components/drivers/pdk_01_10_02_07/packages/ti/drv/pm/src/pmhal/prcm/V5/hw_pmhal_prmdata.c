/* =============================================================================
 *   Copyright (c) Texas Instruments Incorporated 2017
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
 * \file hw_pmhal_prmdata.c
 *
 * \brief   PRCM Interrupt Internal API Implementation specific to the device.
 */

/* ========================================================================== */
/*                             Include Files                                  */
/* ========================================================================== */

#include <stdint.h>
#include <stddef.h>
#include <ti/csl/hw_types.h>
#include "pm_types.h"
#include "pmhal_prcm.h"
#include <ti/csl/soc.h>
#include "common/hw_pmhal_prmdata.h"

/* ========================================================================== */
/*                           Macros & Typedefs                                */
/* ========================================================================== */

/* None */

/* ========================================================================== */
/*                            Global Variables                                */
/* ========================================================================== */

/* None */

/* ========================================================================== */
/*                 Internal Function Declarations                             */
/* ========================================================================== */

/* None */

/* ========================================================================== */
/*                          Function Definitions                              */
/* ========================================================================== */

pmErrCode_t PmhalPrmIntGetIrqEnAddrShift(pmhalPrcmSocCpuId_t cpuId,
                                         pmhalPrcmPrmIntId_t intId,
                                         uint32_t           *addr,
                                         uint32_t           *shift)
{
    pmErrCode_t status = PM_SUCCESS;

    switch (cpuId)
    {
        case PMHAL_PRCM_SOC_CPU_ID_MPU:
            if (intId == PMHAL_PRCM_PRM_INT_ABB_MPU_DONE)
            {
                *addr  = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQENABLE_MPU_2;
                *shift = PRM_IRQENABLE_MPU_2_ABB_MPU_DONE_EN_SHIFT;
            }
            else
            {
                *addr = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQENABLE_MPU;

                if ((intId == PMHAL_PRCM_PRM_INT_DPLL_DSP_RECAL) ||
                    (intId == PMHAL_PRCM_PRM_INT_DPLL_EVE_RECAL))
                {
                    *shift = (uint32_t) intId - 1U;
                }
                else if (intId > PMHAL_PRCM_PRM_INT_DPLL_EVE_RECAL)
                {
                    *shift = (uint32_t) intId + 1U;
                }
                else
                {
                    *shift = (uint32_t) intId;
                }
            }
            break;
        case PMHAL_PRCM_SOC_CPU_ID_IPU1:
            *addr  = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQENABLE_IPU1;
            *shift = (uint32_t) intId;
            break;
        case PMHAL_PRCM_SOC_CPU_ID_IPU2:
            *addr  = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQENABLE_IPU2;
            *shift = (uint32_t) intId;
            break;
        case PMHAL_PRCM_SOC_CPU_ID_DSP1:
            *addr  = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQENABLE_DSP1;
            *shift = (uint32_t) intId;
            break;
        case PMHAL_PRCM_SOC_CPU_ID_DSP2:
            *addr  = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQENABLE_DSP2;
            *shift = (uint32_t) intId;
            break;
        case PMHAL_PRCM_SOC_CPU_ID_EVE1:
            *addr  = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQENABLE_EVE1;
            *shift = (uint32_t) intId;
            break;
        case PMHAL_PRCM_SOC_CPU_ID_EVE2:
            *addr  = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQENABLE_EVE2;
            *shift = (uint32_t) intId;
            break;
        default:
            status = PM_INPUT_PARAM_BAD_CPU_ID;
            break;
    }

    return status;
}

pmErrCode_t PmhalPrmIntGetIrqStAddrShift(pmhalPrcmSocCpuId_t cpuId,
                                         pmhalPrcmPrmIntId_t intId,
                                         uint32_t           *addr,
                                         uint32_t           *shift)
{
    pmErrCode_t status = PM_SUCCESS;

    switch (cpuId)
    {
        case PMHAL_PRCM_SOC_CPU_ID_MPU:
            if (intId == PMHAL_PRCM_PRM_INT_ABB_MPU_DONE)
            {
                *addr  = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQSTATUS_MPU_2;
                *shift = PRM_IRQSTATUS_MPU_2_ABB_MPU_DONE_ST_SHIFT;
            }
            else
            {
                *addr = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQSTATUS_MPU;

                if ((intId == PMHAL_PRCM_PRM_INT_DPLL_DSP_RECAL) ||
                    (intId == PMHAL_PRCM_PRM_INT_DPLL_EVE_RECAL))
                {
                    *shift = (uint32_t) intId - 1U;
                }
                else if (intId > PMHAL_PRCM_PRM_INT_DPLL_EVE_RECAL)
                {
                    *shift = (uint32_t) intId + 1U;
                }
                else
                {
                    *shift = (uint32_t) intId;
                }
            }
            break;
        case PMHAL_PRCM_SOC_CPU_ID_IPU1:
            *addr  = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQSTATUS_IPU1;
            *shift = (uint32_t) intId;
            break;
        case PMHAL_PRCM_SOC_CPU_ID_IPU2:
            *addr  = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQSTATUS_IPU2;
            *shift = (uint32_t) intId;
            break;
        case PMHAL_PRCM_SOC_CPU_ID_DSP1:
            *addr  = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQSTATUS_DSP1;
            *shift = (uint32_t) intId;
            break;
        case PMHAL_PRCM_SOC_CPU_ID_DSP2:
            *addr  = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQSTATUS_DSP2;
            *shift = (uint32_t) intId;
            break;
        case PMHAL_PRCM_SOC_CPU_ID_EVE1:
            *addr  = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQSTATUS_EVE1;
            *shift = (uint32_t) intId;
            break;
        case PMHAL_PRCM_SOC_CPU_ID_EVE2:
            *addr  = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQSTATUS_EVE2;
            *shift = (uint32_t) intId;
            break;
        default:
            status = PM_INPUT_PARAM_BAD_CPU_ID;
            break;
    }
    return status;
}

pmErrCode_t PmhalPrmIntGetIrqEnAddr(pmhalPrcmSocCpuId_t cpuId,
                                    uint32_t           *addr)
{
    pmErrCode_t status = PM_SUCCESS;

    switch (cpuId)
    {
        case PMHAL_PRCM_SOC_CPU_ID_MPU:
            *addr = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQENABLE_MPU;
            break;
        case PMHAL_PRCM_SOC_CPU_ID_IPU1:
            *addr = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQENABLE_IPU1;
            break;
        case PMHAL_PRCM_SOC_CPU_ID_IPU2:
            *addr = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQENABLE_IPU2;
            break;
        case PMHAL_PRCM_SOC_CPU_ID_DSP1:
            *addr = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQENABLE_DSP1;
            break;
        case PMHAL_PRCM_SOC_CPU_ID_DSP2:
            *addr = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQENABLE_DSP2;
            break;
        case PMHAL_PRCM_SOC_CPU_ID_EVE1:
            *addr = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQENABLE_EVE1;
            break;
        case PMHAL_PRCM_SOC_CPU_ID_EVE2:
            *addr = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQENABLE_EVE2;
            break;
        default:
            status = PM_INPUT_PARAM_BAD_CPU_ID;
            break;
    }

    return status;
}

pmErrCode_t PmhalPrmIntGetIrqStAddr(pmhalPrcmSocCpuId_t cpuId,
                                    uint32_t           *addr)
{
    pmErrCode_t status = PM_SUCCESS;

    switch (cpuId)
    {
        case PMHAL_PRCM_SOC_CPU_ID_MPU:
            *addr = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQSTATUS_MPU;
            break;
        case PMHAL_PRCM_SOC_CPU_ID_IPU1:
            *addr = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQSTATUS_IPU1;
            break;
        case PMHAL_PRCM_SOC_CPU_ID_IPU2:
            *addr = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQSTATUS_IPU2;
            break;
        case PMHAL_PRCM_SOC_CPU_ID_DSP1:
            *addr = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQSTATUS_DSP1;
            break;
        case PMHAL_PRCM_SOC_CPU_ID_DSP2:
            *addr = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQSTATUS_DSP2;
            break;
        case PMHAL_PRCM_SOC_CPU_ID_EVE1:
            *addr = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQSTATUS_EVE1;
            break;
        case PMHAL_PRCM_SOC_CPU_ID_EVE2:
            *addr = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQSTATUS_EVE2;
            break;
        default:
            status = PM_INPUT_PARAM_BAD_CPU_ID;
            break;
    }

    return status;
}

void PmhalPrmIntGetEnabledInts(uint32_t cpuId, uint32_t addr,
                               uint64_t *interrupts)
{
    uint32_t regVal = HW_RD_REG32(addr);
    *interrupts |= (uint64_t) regVal;
    /* Exception for MPU which has two registers at an offset of 4 */
    if (PMHAL_PRCM_SOC_CPU_ID_MPU == cpuId)
    {
        addr         = SOC_OCP_SOCKET_PRM_BASE + PRM_IRQENABLE_MPU_2;
        regVal       = HW_RD_REG32(addr);
        *interrupts |= ((uint64_t) regVal << 32U);
    }
}

void PmhalPrmIntConfigRegister(uint32_t cpuId, uint32_t addr, uint32_t regVal)
{
    HW_WR_REG32(addr, regVal);
    /* Exception for MPU which has two registers at an offset of 4 */
    if (PMHAL_PRCM_SOC_CPU_ID_MPU == cpuId)
    {
        addr = addr + (PRM_IRQENABLE_MPU_2 - PRM_IRQENABLE_MPU);
        HW_WR_REG32(addr, regVal);
    }
}

/* -------------------------------------------------------------------------- */
/*                 Internal Function Definitions                              */
/* -------------------------------------------------------------------------- */

/* None */
