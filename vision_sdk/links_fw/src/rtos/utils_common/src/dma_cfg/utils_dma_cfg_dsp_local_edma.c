/*
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
*/

/**
 *******************************************************************************
 *
 * \file utils_dma_cfg_dsp_local_edma.c
 *
 * \brief This file has the common configuration for Local DSP EDMA controller
 *
 * \version 0.0 (Sept 2013) : [KC] First version
 *
 *******************************************************************************
 */

#ifndef UTILS_DMA_CFG_DSP_LOCAL_EDMA_
#define UTILS_DMA_CFG_DSP_LOCAL_EDMA_

/*******************************************************************************
 *  INCLUDE FILES
 *******************************************************************************
 */
#include <src/rtos/utils_common/src/dma_cfg/utils_dma_edma3cc.h>

/*
 *******************************************************************************
 *
 *   This file in included in
 *   - utils_dma_cfg_dsp1.c
 *   - utils_dma_cfg_dsp2.c
 *
 *******************************************************************************
 */

/*******************************************************************************
 *  EDMA controller region allocation based on CPU ID
 *
 *  Since only a given DSP will use the EDMA controller we assign region 0
 *  to it
 *
 *******************************************************************************
 */
#define UTILS_DMA_DSP_LOCAL_DMA_REGION       (0U)


/*******************************************************************************
 *  \brief base address of EDMA controller
 *******************************************************************************
 */
#define UTILS_DMA_DSP_LOCAL_DMA_BASE_ADDR   (0x01D10000U)

/**
 *******************************************************************************
 * \brief System EDMA global information
 *******************************************************************************
 */

/* MISRA.ONEDEFRULE.VAR:MISRAC_2004 Rule_8.5
   MISRAC_WAIVER:
   Tool Issue: Klockwork is wrongly reporting this issue in some of the C files
   */
EDMA3_DRV_GblConfigParams gUtils_dmaDspLocalEdmaGblCfgParams =
{
    /** Total number of DMA Channels supported by the EDMA3 Controller */
    64u,

    /** Total number of QDMA Channels supported by the EDMA3 Controller */
    8u,

    /** Total number of TCCs supported by the EDMA3 Controller */
    64u,

    /** Total number of PaRAM Sets supported by the EDMA3 Controller */
    512u,

    /** Total number of Event Queues in the EDMA3 Controller */
    4u,

    /** Total number of Transfer Controllers (TCs) in the EDMA3 Controller */
    2u,

    /** Number of Regions on this EDMA3 controller */
    8u,

    /**
     * Channel mapping existence.
     * A value of 0 (No channel mapping) implies that there is fixed association
     * for a channel number to a parameter entry number or, in other words,
     * PaRAM entry n corresponds to channel n.
     */
    1u,

    /** Existence of memory protection feature */
    1u,

    /* MISRA.CAST.PTR_TO_INT:MISRAC_2004 Rule_11.3
       MISRAC_WAIVER:
       Typecasted memory mapped register address to pointer */
    /** Global Register Region of CC Registers */
    (void *)UTILS_DMA_DSP_LOCAL_DMA_BASE_ADDR,

    /** Transfer Controller (TC) Registers */
    {
        /* MISRA.CAST.PTR_TO_INT:MISRAC_2004 Rule_11.3
           MISRAC_WAIVER:
           Typecasted memory mapped register address to pointer */
        (void *)(UTILS_DMA_DSP_LOCAL_DMA_BASE_ADDR+0x100000U),
        /* MISRA.CAST.PTR_TO_INT:MISRAC_2004 Rule_11.3
           MISRAC_WAIVER:
           Typecasted memory mapped register address to pointer */
        (void *)(UTILS_DMA_DSP_LOCAL_DMA_BASE_ADDR+0x200000U),
        (void *)NULL,
        (void *)NULL,
        (void *)NULL,
        (void *)NULL,
        (void *)NULL,
        (void *)NULL
    },

    /** Interrupt no. for Transfer Completion */
    0,  /* NOT used */

    /** Interrupt no. for CC Error */
    0,  /* NOT used */

    /** Interrupt no. for TCs Error */
    {
        0,  /* NOT used */
        0,  /* NOT used */
        0,  /* NOT used */
        0,  /* NOT used */
        0,  /* NOT used */
        0,  /* NOT used */
        0,  /* NOT used */
        0,  /* NOT used */
    },

    /**
     * EDMA3 TC priority setting
     *
     * User can program the priority of the Event Queues
     * at a system-wide level.  This means that the user can set the
     * priority of an IO initiated by either of the TCs (Transfer Controllers)
     * relative to IO initiated by the other bus masters on the
     * device (ARM, DSP, USB, etc)
     */
    {
        4u,
        4u,
        0u,
        0u,
        0u,
        0u,
        0u,
        0u
    },

    /**
     * To Configure the Threshold level of number of events
     * that can be queued up in the Event queues. EDMA3CC error register
     * (CCERR) will indicate whether or not at any instant of time the
     * number of events queued up in any of the event queues exceeds
     * or equals the threshold/watermark value that is set
     * in the queue watermark threshold register (QWMTHRA).
     */
    {
        16u,
        16u,
        16u,
        16u,
        0u,
        0u,
        0u,
        0u
    },

    /**
     * To Configure the Default Burst Size (DBS) of TCs.
     * An optimally-sized command is defined by the transfer controller
     * default burst size (DBS). Different TCs can have different
     * DBS values. It is defined in Bytes.
     */
    {
        16u,
        16u,
        0u,
        0u,
        0u,
        0u,
        0u,
        0u
    },

    /**
     * Mapping from each DMA channel to a Parameter RAM set,
     * if it exists, otherwise of no use.
     */
    {
        0u, 1u, 2u, 3u, 4u, 5u, 6u, 7u,
        8u, 9u, 10u, 11u, 12u, 13u, 14u, 15u,
        16u, 17u, 18u, 19u, 20u, 21u, 22u, 23u,
        24u, 25u, 26u, 27u, 28u, 29u, 30u, 31u,
        32u, 33u, 34u, 35u, 36u, 37u, 38u, 39u,
        40u, 41u, 42u, 43u, 44u, 45u, 46u, 47u,
        48u, 49u, 50u, 51u, 52u, 53u, 54u, 55u,
        56u, 57u, 58u, 59u, 60u, 61u, 62u, 63u
    },

     /**
      * Mapping from each DMA channel to a TCC. This specific
      * TCC code will be returned when the transfer is completed
      * on the mapped channel.
      */
    {
        0u, 1u, 2u, 3u,
        4u, 5u, 6u, 7u,
        8u, 9u, 10u, 11u,
        12u, 13u, 14u, 15u,
        16u, 17u, 18u, 19u,
        20u, 21u, 22u, 23u,
        24u, 25u, 26u, 27u,
        28u, 29u, 30u, 31u,
        32u, 33u, 34u, 35u,
        36u, 37u, 38u, 39u,
        40u, 41u, 42u, 43u,
        44u, 45u, 46u, 47u,
        48u, 49u, 50u, 51u,
        52u, 53u, 54u, 55u,
        56u, 57u, 58u, 59u,
        60u, 61u, 62u, 63u
    },


    /**
     * Mapping of DMA channels to Hardware Events from
     * various peripherals, which use EDMA for data transfer.
     * All channels need not be mapped, some can be free also.
     */
    {
        0x00000000u,
        0x00000000u
    },
};

/**
 *******************************************************************************
 * \brief Local EDMA resource allocation for this DSP
 *
 *        All resources allocated to this DSP
 *
 *******************************************************************************
 */
/* MISRA.ONEDEFRULE.VAR:MISRAC_2004 Rule_8.5
   MISRAC_WAIVER:
   Tool Issue: Klockwork is wrongly reporting this issue in some of the C files
   */
EDMA3_DRV_InstanceInitConfig gUtils_dmaDspLocalEdmaInstInitConfig =
{
    /* 31     0                     63    32                    95    64                    127   96 */
    {0xFFFFFFFFU,                    0xFFFFFFFFU,                 0xFFFFFFFFU,                 0xFFFFFFFFU,
    /* 159  128                     191  160                    223  192                    255  224 */
     0xFFFFFFFFU,                    0xFFFFFFFFU,                 0xFFFFFFFFU,                 0xFFFFFFFFU,
    /* 287  256                     319  288                    351  320                    383  352 */
     0xFFFFFFFFU,                    0xFFFFFFFFU,                 0xFFFFFFFFU,                 0xFFFFFFFFU,
    /* 415  384                     447  416                    479  448                    511  480 */
     0xFFFFFFFFU,                    0xFFFFFFFFU,                 0xFFFFFFFFU,                 0xFFFFFFFFU,
    },

    /* ownDmaChannels */
    /* 31     0                     63    32 */
    {0xFFFFFFFFU,                    0xFFFFFFFFU,                 },

    /* ownQdmaChannels */
    /* 31     0 */
    {0x000000FF         },

    /* ownTccs */
    /* 31     0                     63    32 */
    {0xFFFFFFFFU,                    0xFFFFFFFFU,                 },


    /* resvdPaRAMSets */
    /* 31     0     63    32     95    64     127   96 */
    {0x00000000u, 0x00000000u, 0x00000000u, 0x00000000u,
    /* 159  128     191  160     223  192     255  224 */
     0x00000000u, 0x00000000u, 0x00000000u, 0x00000000u,
    /* 287  256     319  288     351  320     383  352 */
     0x00000000u, 0x00000000u, 0x00000000u, 0x00000000u,
    /* 415  384     447  416     479  448     511  480 */
     0x00000000u, 0x00000000u, 0x00000000u, 0x00000000u,},

    /* resvdDmaChannels */
    /* 31     0    63     32 */
    {0x00000000u, 0x00000000u},

    /* resvdQdmaChannels */
    /* 31     0 */
    {0x00000000u},

    /* resvdTccs */
    /* 31     0    63     32 */
    {0x00000000u, 0x00000000u},
};

#endif /* UTILS_DMA_CFG_DSP_LOCAL_EDMA_*/
