/*
*
* Copyright (c) 2008-2017 Texas Instruments Incorporated
*
* All rights reserved not granted herein.
*
* Limited License.
*
* Texas Instruments Incorporated grants a world-wide, royalty-free, non-exclusive
* license under copyrights and patents it now or hereafter owns or controls to make,
* have made, use, import, offer to sell and sell ("Utilize") this software subject to the
* terms herein.  With respect to the foregoing patent license, such license is granted
* solely to the extent that any such patent is necessary to Utilize the software alone.
* The patent license shall not apply to any combinations which include this software,
* other than combinations with devices manufactured by or for TI ("TI Devices").
* No hardware patent is licensed hereunder.
*
* Redistributions must preserve existing copyright notices and reproduce this license
* (including the above copyright notice and the disclaimer and (if applicable) source
* code license limitations below) in the documentation and/or other materials provided
* with the distribution
*
* Redistribution and use in binary form, without modification, are permitted provided
* that the following conditions are met:
*
* *       No reverse engineering, decompilation, or disassembly of this software is
* permitted with respect to any software provided in binary form.
*
* *       any redistribution and use are licensed by TI for use only with TI Devices.
*
* *       Nothing shall obligate TI to provide you with source code for the software
* licensed and provided to you in object code.
*
* If software source code is provided to you, modification and redistribution of the
* source code are permitted provided that the following conditions are met:
*
* *       any redistribution and use of the source code, including any resulting derivative
* works, are licensed by TI for use only with TI Devices.
*
* *       any redistribution and use of any object code compiled from the source code
* and any resulting derivative works, are licensed by TI for use only with TI Devices.
*
* Neither the name of Texas Instruments Incorporated nor the names of its suppliers
*
* may be used to endorse or promote products derived from this software without
* specific prior written permission.
*
* DISCLAIMER.
*
* THIS SOFTWARE IS PROVIDED BY TI AND TI'S LICENSORS "AS IS" AND ANY EXPRESS
* OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
* OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
* IN NO EVENT SHALL TI AND TI'S LICENSORS BE LIABLE FOR ANY DIRECT, INDIRECT,
* INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
* BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
* DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
* OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
* OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
* OF THE POSSIBILITY OF SUCH DAMAGE.
*
*/



/**
 *  @Component:   EVE
 *
 *  @Filename:    cred.c
 *
 *  @Description: Definition of component-instance address & name arrays
 *
 *  Generated by: Socrates CRED generator
 *
 *//* ====================================================================== */

/* ============================================================================
 * PROJECT SPECIFIC INCLUDE FILES
 * ============================================================================
 */
#include "cram.h"

#pragma CHECK_MISRA ("none")
#include "baseaddress.h"
#pragma RESET_MISRA ("required")


/*-------------------------------------------------------------------------*//**
 * @VARIABLE     CRED_instVirtAddr
 *
 * @BRIEF        Component-instance virtual address array.
 *
 * @DESCRIPTION  Array of virual addresses of all component instances.
 *               The array is initialized with physical addresses, it is
 *               supposed to be changed according to MMU programming.
 *
 *//*------------------------------------------------------------------------ */
REG_UWORD32 CRED_instVirtAddr[CRED_NUM_INSTANCES] =
{
  (CRED_BASE_OFFSET + 0x20000),  /* DMEM */
  (CRED_BASE_OFFSET + 0x40000),  /* WBUF */
  (CRED_BASE_OFFSET + 0x50000),  /* IBUFLA */
  (CRED_BASE_OFFSET + 0x54000),  /* IBUFHA */
  (CRED_BASE_OFFSET + 0x70000),  /* IBUFLB */
  (CRED_BASE_OFFSET + 0x74000),  /* IBUFHB */
  (CRED_BASE_OFFSET + 0x80000),  /* EVE_CONTROL */
  (CRED_BASE_OFFSET + 0x81000),  /* TESLASS_MMU0 */
  (CRED_BASE_OFFSET + 0x82000),  /* TESLASS_MMU1 */
  (CRED_BASE_OFFSET + 0x83000),  /* T16 */
  (CRED_BASE_OFFSET + 0x84000),  /* VCOP */
  (CRED_BASE_OFFSET + 0x85000),  /* CTM */
  (CRED_BASE_OFFSET + 0x86000),  /* TPTC0 */
  (CRED_BASE_OFFSET + 0x87000),  /* TPTC1 */
  (CRED_BASE_OFFSET + 0x88000),  /* SMSET_CONF */
  (CRED_BASE_OFFSET + 0x89000),  /* SMSET_SW */
  (CRED_BASE_OFFSET + 0x8A000),  /* L2_FNOC_EVE */
  (CRED_BASE_OFFSET + 0x90000),  /* PCACHE_RAW */
  (CRED_BASE_OFFSET + 0x98000),  /* PCACHE_TAGS */
  (CRED_BASE_OFFSET + 0xA0000),  /* TPCC0 */
  (CRED_BASE_OFFSET + 0x00300000),  /* OCMCRAM */
  (CRED_BASE_OFFSET + 0x8b000)   /* MAILBOX */
};

/*-------------------------------------------------------------------------*//**
 * @VARIABLE     CRED_instPhysAddr
 *
 * @BRIEF        Component-instance physical address array.
 *
 * @DESCRIPTION  Array of physical addresses of all component instances.
 *               The array is having const members therefore it cannot be
 *               changed by the SW.
 *
 *//*------------------------------------------------------------------------ */
const REG_UWORD32 CRED_instPhysAddr[CRED_NUM_INSTANCES] =
{
      0x20000,   /* DMEM */
      0x40000,   /* WBUF */
      0x50000,   /* IBUFLA */
      0x54000,   /* IBUFHA */
      0x70000,   /* IBUFLB */
      0x74000,   /* IBUFHB */
      0x80000,   /* EVE_CONTROL */
      0x81000,   /* TESLASS_MMU0 */
      0x82000,   /* TESLASS_MMU1 */
      0x83000,   /* T16 */
      0x84000,   /* VCOP */
      0x85000,   /* CTM */
      0x86000,   /* TPTC0 */
      0x87000,   /* TPTC1 */
      0x88000,   /* SMSET_CONF */
      0x89000,   /* SMSET_SW */
      0x8A000,   /* L2_FNOC_EVE */
      0x90000,   /* PCACHE_RAW */
      0x98000,   /* PCACHE_TAGS */
      0xA0000,   /* TPCC0 */
   0x00300000,   /* OCMCRAM */
      0x8b000    /* MAILBOX */
};

/*-------------------------------------------------------------------------*//**
 * @VARIABLE     CRED_instName
 *
 * @BRIEF        Component-instance name array.
 *
 * @DESCRIPTION  Array of all component instance names.
 *               The array can be used for debug purpose.
 *
 *//*------------------------------------------------------------------------ */
const char* CRED_instName[CRED_NUM_INSTANCES] =
{
  "DMEM",
  "WBUF",
  "IBUFLA",
  "IBUFHA",
  "IBUFLB",
  "IBUFHB",
  "EVE_CONTROL",
  "TESLASS_MMU0",
  "TESLASS_MMU1",
  "T16",
  "VCOP",
  "CTM",
  "TPTC0",
  "TPTC1",
  "SMSET_CONF",
  "SMSET_SW",
  "L2_FNOC_EVE",
  "PCACHE_RAW",
  "PCACHE_TAGS",
  "TPCC0",
  "OCMCRAM",
  "MAILBOX"
};

/*-------------------------------------------------------------------------*//**
 * @VARIABLE     CRED_instances
 *
 * @BRIEF        Component-instances array.
 *
 * @DESCRIPTION  Array of structures of all component instance information -
 *               virtual & physical addresses, size and name.
 *               The virtual address is a pointer initialized as corresponding
 *               member in CRED_instVirtAddr array. This mechanism makes sure
 *               the addresses are synchronized between the two arrays and stored
 *               in one place only.
 *
 *//*------------------------------------------------------------------------ */
const CRED_instances_t CRED_instances[CRED_NUM_INSTANCES] =
{
  { &CRED_instVirtAddr[0], 0x20000, 32768, "DMEM" },
  { &CRED_instVirtAddr[1], 0x40000, 32768, "WBUF" },
  { &CRED_instVirtAddr[2], 0x50000, 16384, "IBUFLA" },
  { &CRED_instVirtAddr[3], 0x54000, 16384, "IBUFHA" },
  { &CRED_instVirtAddr[4], 0x70000, 16384, "IBUFLB" },
  { &CRED_instVirtAddr[5], 0x74000, 16384, "IBUFHB" },
  { &CRED_instVirtAddr[6], 0x80000, 4096, "EVE_CONTROL" },
  { &CRED_instVirtAddr[7], 0x81000, 116, "TESLASS_MMU0" },
  { &CRED_instVirtAddr[8], 0x82000, 116, "TESLASS_MMU1" },
  { &CRED_instVirtAddr[9], 0x83000, 4, "T16" },
  { &CRED_instVirtAddr[10], 0x84000, 1152, "VCOP" },
  { &CRED_instVirtAddr[11], 0x85000, 416, "CTM" },
  { &CRED_instVirtAddr[12], 0x86000, 896, "TPTC0" },
  { &CRED_instVirtAddr[13], 0x87000, 896, "TPTC1" },
  { &CRED_instVirtAddr[14], 0x88000, 80, "SMSET_CONF" },
  { &CRED_instVirtAddr[15], 0x89000, 2048, "SMSET_SW" },
  { &CRED_instVirtAddr[16], 0x8A000, 4, "L2_FNOC_EVE" },
  { &CRED_instVirtAddr[17], 0x90000, 4, "PCACHE_RAW" },
  { &CRED_instVirtAddr[18], 0x98000, 4, "PCACHE_TAGS" },
  { &CRED_instVirtAddr[19], 0xA0000, 20480, "TPCC0" },
  { &CRED_instVirtAddr[20], 0x00308000, 16384, "OCMCRAM" },
  { &CRED_instVirtAddr[21], 0x8b000, 4096, "MAILBOX" }
};
