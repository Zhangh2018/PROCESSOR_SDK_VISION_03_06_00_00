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
 *  @Component:   EVE_SYSTEM
 *
 *  @Filename:    baseaddress.h
 *
 *  @Description: Generic header for CONFIG view of the EVE_SYSTEM
 *
 *  Generated by: Socrates CRED generator 
 *
 *//* ====================================================================== */

#ifndef __BASEADDRESS_H
#define __BASEADDRESS_H

#ifdef __cplusplus
extern "C"
{
#endif

/* =============================================================================
 * EXPORTED DEFINITIONS
 * =============================================================================
 */

/* =============================================================================
 * Following defines are added manually to keep compatibility with 
 * library written assuming only local components available in base address
 * =============================================================================
 */

#define DMEM                         LOCAL__DMEM
#define WBUF                         LOCAL__WBUF
#define IBUFLA                       LOCAL__IBUFLA
#define IBUFHA                       LOCAL__IBUFHA
#define IBUFLB                       LOCAL__IBUFLB
#define IBUFHB                       LOCAL__IBUFHB
#define EVE_CONTROL                  LOCAL__EVE_CONTROL
#define MMU0                         LOCAL__MMU0
#define MMU1                         LOCAL__MMU1
#define T16                          LOCAL__T16
#define VCOP                         LOCAL__VCOP
#define CTM                          LOCAL__CTM
#define TPTC0                        LOCAL__TPTC0
#define TPTC1                        LOCAL__TPTC1
#define SMSET_CONF                   LOCAL__SMSET_CONF
#define SMSET_SW                     LOCAL__SMSET_SW
#define L2_FNOC_EVE                  LOCAL__L2_FNOC_EVE
#define MLB0                         LOCAL__MLB0
#define MLB1                         LOCAL__MLB1
#define MLB2                         LOCAL__MLB2
#define MLB3                         LOCAL__MLB3
#define MLB4                         LOCAL__MLB4
#define PCACHE_RAW                   LOCAL__PCACHE_RAW
#define PCACHE_TAGS                  LOCAL__PCACHE_TAGS
#define TPCC0                        LOCAL__TPCC0

#define DMEM_U_BASE                  LOCAL__DMEM_U_BASE
#define WBUF_U_BASE                  LOCAL__WBUF_U_BASE
#define IBUFLA_U_BASE                LOCAL__IBUFLA_U_BASE
#define IBUFHA_U_BASE                LOCAL__IBUFHA_U_BASE
#define IBUFLB_U_BASE                LOCAL__IBUFLB_U_BASE
#define IBUFHB_U_BASE                LOCAL__IBUFHB_U_BASE
#define EVE_CONTROL_U_BASE           LOCAL__EVE_CONTROL_U_BASE
#define MMU0_U_BASE                  LOCAL__MMU0_U_BASE
#define MMU1_U_BASE                  LOCAL__MMU1_U_BASE
#define T16_U_BASE                   LOCAL__T16_U_BASE
#define VCOP_U_BASE                  LOCAL__VCOP_U_BASE
#define CTM_U_BASE                   LOCAL__CTM_U_BASE
#define TPTC0_U_BASE                 LOCAL__TPTC0_U_BASE
#define TPTC1_U_BASE                 LOCAL__TPTC1_U_BASE
#define SMSET_CONF_U_BASE            LOCAL__SMSET_CONF_U_BASE
#define SMSET_SW_U_BASE              LOCAL__SMSET_SW_U_BASE
#define L2_FNOC_EVE_U_BASE           LOCAL__L2_FNOC_EVE_U_BASE
#define MLB0_U_BASE                  LOCAL__MLB0_U_BASE
#define MLB1_U_BASE                  LOCAL__MLB1_U_BASE
#define MLB2_U_BASE                  LOCAL__MLB2_U_BASE
#define MLB3_U_BASE                  LOCAL__MLB3_U_BASE
#define MLB4_U_BASE                  LOCAL__MLB4_U_BASE
#define PCACHE_RAW_U_BASE            LOCAL__PCACHE_RAW_U_BASE
#define PCACHE_TAGS_U_BASE           LOCAL__PCACHE_TAGS_U_BASE
#define TPCC0_U_BASE                 LOCAL__TPCC0_U_BASE

/*-------------------------------------------------------------------------*//**
 * @DEFINITION   CRED_BASE_OFFSET
 *
 * @BRIEF        Base address offset
 *
 * @DESCRIPTION  Base address offset enabling address shift when defining 
 *               non-zero value. Defaulted to 0x0 here.
 *
 *//*------------------------------------------------------------------------ */
#ifndef CRED_BASE_OFFSET
  #define CRED_BASE_OFFSET     0x0ul
#endif

/*-------------------------------------------------------------------------*//**
 * @DEFINITION   CRED_NUM_INSTANCES
 *
 * @BRIEF        Number of instances.
 *
 * @DESCRIPTION  total number of EVE_SYSTEM component instances.
 *
 *//*------------------------------------------------------------------------ */
#define CRED_NUM_INSTANCES          125

/*
 * This section contains definition of macros symbols in order to avoid
 * possible re-definition of the index enum CRED_index_t in SW components.
 */
#define LOCAL__DMEM                         LOCAL__DMEM
#define LOCAL__WBUF                         LOCAL__WBUF
#define LOCAL__IBUFLA                       LOCAL__IBUFLA
#define LOCAL__IBUFHA                       LOCAL__IBUFHA
#define LOCAL__IBUFLB                       LOCAL__IBUFLB
#define LOCAL__IBUFHB                       LOCAL__IBUFHB
#define LOCAL__EVE_CONTROL                  LOCAL__EVE_CONTROL
#define LOCAL__MMU0                         LOCAL__MMU0
#define LOCAL__MMU1                         LOCAL__MMU1
#define LOCAL__T16                          LOCAL__T16
#define LOCAL__VCOP                         LOCAL__VCOP
#define LOCAL__CTM                          LOCAL__CTM
#define LOCAL__TPTC0                        LOCAL__TPTC0
#define LOCAL__TPTC1                        LOCAL__TPTC1
#define LOCAL__SMSET_CONF                   LOCAL__SMSET_CONF
#define LOCAL__SMSET_SW                     LOCAL__SMSET_SW
#define LOCAL__L2_FNOC_EVE                  LOCAL__L2_FNOC_EVE
#define LOCAL__MLB0                         LOCAL__MLB0
#define LOCAL__MLB1                         LOCAL__MLB1
#define LOCAL__MLB2                         LOCAL__MLB2
#define LOCAL__MLB3                         LOCAL__MLB3
#define LOCAL__MLB4                         LOCAL__MLB4
#define LOCAL__PCACHE_RAW                   LOCAL__PCACHE_RAW
#define LOCAL__PCACHE_TAGS                  LOCAL__PCACHE_TAGS
#define LOCAL__TPCC0                        LOCAL__TPCC0
#define EVE1__DMEM                          EVE1__DMEM
#define EVE1__WBUF                          EVE1__WBUF
#define EVE1__IBUFLA                        EVE1__IBUFLA
#define EVE1__IBUFHA                        EVE1__IBUFHA
#define EVE1__IBUFLB                        EVE1__IBUFLB
#define EVE1__IBUFHB                        EVE1__IBUFHB
#define EVE1__EVE_CONTROL                   EVE1__EVE_CONTROL
#define EVE1__MMU0                          EVE1__MMU0
#define EVE1__MMU1                          EVE1__MMU1
#define EVE1__T16                           EVE1__T16
#define EVE1__VCOP                          EVE1__VCOP
#define EVE1__CTM                           EVE1__CTM
#define EVE1__TPTC0                         EVE1__TPTC0
#define EVE1__TPTC1                         EVE1__TPTC1
#define EVE1__SMSET_CONF                    EVE1__SMSET_CONF
#define EVE1__SMSET_SW                      EVE1__SMSET_SW
#define EVE1__L2_FNOC_EVE                   EVE1__L2_FNOC_EVE
#define EVE1__MLB0                          EVE1__MLB0
#define EVE1__MLB1                          EVE1__MLB1
#define EVE1__MLB2                          EVE1__MLB2
#define EVE1__MLB3                          EVE1__MLB3
#define EVE1__MLB4                          EVE1__MLB4
#define EVE1__PCACHE_RAW                    EVE1__PCACHE_RAW
#define EVE1__PCACHE_TAGS                   EVE1__PCACHE_TAGS
#define EVE1__TPCC0                         EVE1__TPCC0
#define EVE2__DMEM                          EVE2__DMEM
#define EVE2__WBUF                          EVE2__WBUF
#define EVE2__IBUFLA                        EVE2__IBUFLA
#define EVE2__IBUFHA                        EVE2__IBUFHA
#define EVE2__IBUFLB                        EVE2__IBUFLB
#define EVE2__IBUFHB                        EVE2__IBUFHB
#define EVE2__EVE_CONTROL                   EVE2__EVE_CONTROL
#define EVE2__MMU0                          EVE2__MMU0
#define EVE2__MMU1                          EVE2__MMU1
#define EVE2__T16                           EVE2__T16
#define EVE2__VCOP                          EVE2__VCOP
#define EVE2__CTM                           EVE2__CTM
#define EVE2__TPTC0                         EVE2__TPTC0
#define EVE2__TPTC1                         EVE2__TPTC1
#define EVE2__SMSET_CONF                    EVE2__SMSET_CONF
#define EVE2__SMSET_SW                      EVE2__SMSET_SW
#define EVE2__L2_FNOC_EVE                   EVE2__L2_FNOC_EVE
#define EVE2__MLB0                          EVE2__MLB0
#define EVE2__MLB1                          EVE2__MLB1
#define EVE2__MLB2                          EVE2__MLB2
#define EVE2__MLB3                          EVE2__MLB3
#define EVE2__MLB4                          EVE2__MLB4
#define EVE2__PCACHE_RAW                    EVE2__PCACHE_RAW
#define EVE2__PCACHE_TAGS                   EVE2__PCACHE_TAGS
#define EVE2__TPCC0                         EVE2__TPCC0
#define EVE3__DMEM                          EVE3__DMEM
#define EVE3__WBUF                          EVE3__WBUF
#define EVE3__IBUFLA                        EVE3__IBUFLA
#define EVE3__IBUFHA                        EVE3__IBUFHA
#define EVE3__IBUFLB                        EVE3__IBUFLB
#define EVE3__IBUFHB                        EVE3__IBUFHB
#define EVE3__EVE_CONTROL                   EVE3__EVE_CONTROL
#define EVE3__MMU0                          EVE3__MMU0
#define EVE3__MMU1                          EVE3__MMU1
#define EVE3__T16                           EVE3__T16
#define EVE3__VCOP                          EVE3__VCOP
#define EVE3__CTM                           EVE3__CTM
#define EVE3__TPTC0                         EVE3__TPTC0
#define EVE3__TPTC1                         EVE3__TPTC1
#define EVE3__SMSET_CONF                    EVE3__SMSET_CONF
#define EVE3__SMSET_SW                      EVE3__SMSET_SW
#define EVE3__L2_FNOC_EVE                   EVE3__L2_FNOC_EVE
#define EVE3__MLB0                          EVE3__MLB0
#define EVE3__MLB1                          EVE3__MLB1
#define EVE3__MLB2                          EVE3__MLB2
#define EVE3__MLB3                          EVE3__MLB3
#define EVE3__MLB4                          EVE3__MLB4
#define EVE3__PCACHE_RAW                    EVE3__PCACHE_RAW
#define EVE3__PCACHE_TAGS                   EVE3__PCACHE_TAGS
#define EVE3__TPCC0                         EVE3__TPCC0
#define EVE4__DMEM                          EVE4__DMEM
#define EVE4__WBUF                          EVE4__WBUF
#define EVE4__IBUFLA                        EVE4__IBUFLA
#define EVE4__IBUFHA                        EVE4__IBUFHA
#define EVE4__IBUFLB                        EVE4__IBUFLB
#define EVE4__IBUFHB                        EVE4__IBUFHB
#define EVE4__EVE_CONTROL                   EVE4__EVE_CONTROL
#define EVE4__MMU0                          EVE4__MMU0
#define EVE4__MMU1                          EVE4__MMU1
#define EVE4__T16                           EVE4__T16
#define EVE4__VCOP                          EVE4__VCOP
#define EVE4__CTM                           EVE4__CTM
#define EVE4__TPTC0                         EVE4__TPTC0
#define EVE4__TPTC1                         EVE4__TPTC1
#define EVE4__SMSET_CONF                    EVE4__SMSET_CONF
#define EVE4__SMSET_SW                      EVE4__SMSET_SW
#define EVE4__L2_FNOC_EVE                   EVE4__L2_FNOC_EVE
#define EVE4__MLB0                          EVE4__MLB0
#define EVE4__MLB1                          EVE4__MLB1
#define EVE4__MLB2                          EVE4__MLB2
#define EVE4__MLB3                          EVE4__MLB3
#define EVE4__MLB4                          EVE4__MLB4
#define EVE4__PCACHE_RAW                    EVE4__PCACHE_RAW
#define EVE4__PCACHE_TAGS                   EVE4__PCACHE_TAGS
#define EVE4__TPCC0                         EVE4__TPCC0

/*
 * This section contains definition of simple macros for physical address
 * enabling minimum code size (no need to use any of the predefined arrays)
 */
#define LOCAL__DMEM_U_BASE                  (CRED_BASE_OFFSET + 0x40020000ul)
#define LOCAL__WBUF_U_BASE                  (CRED_BASE_OFFSET + 0x40040000ul)
#define LOCAL__IBUFLA_U_BASE                (CRED_BASE_OFFSET + 0x40050000ul)
#define LOCAL__IBUFHA_U_BASE                (CRED_BASE_OFFSET + 0x40054000ul)
#define LOCAL__IBUFLB_U_BASE                (CRED_BASE_OFFSET + 0x40070000ul)
#define LOCAL__IBUFHB_U_BASE                (CRED_BASE_OFFSET + 0x40074000ul)
#define LOCAL__EVE_CONTROL_U_BASE           (CRED_BASE_OFFSET + 0x40080000ul)
#define LOCAL__MMU0_U_BASE                  (CRED_BASE_OFFSET + 0x40081000ul)
#define LOCAL__MMU1_U_BASE                  (CRED_BASE_OFFSET + 0x40082000ul)
#define LOCAL__T16_U_BASE                   (CRED_BASE_OFFSET + 0x40083000ul)
#define LOCAL__VCOP_U_BASE                  (CRED_BASE_OFFSET + 0x40084000ul)
#define LOCAL__CTM_U_BASE                   (CRED_BASE_OFFSET + 0x40085000ul)
#define LOCAL__TPTC0_U_BASE                 (CRED_BASE_OFFSET + 0x40086000ul)
#define LOCAL__TPTC1_U_BASE                 (CRED_BASE_OFFSET + 0x40087000ul)
#define LOCAL__SMSET_CONF_U_BASE            (CRED_BASE_OFFSET + 0x40088000ul)
#define LOCAL__SMSET_SW_U_BASE              (CRED_BASE_OFFSET + 0x40089000ul)
#define LOCAL__L2_FNOC_EVE_U_BASE           (CRED_BASE_OFFSET + 0x4008A000ul)
#define LOCAL__MLB0_U_BASE                  (CRED_BASE_OFFSET + 0x4008B000ul)
#define LOCAL__MLB1_U_BASE                  (CRED_BASE_OFFSET + 0x4008C000ul)
#define LOCAL__MLB2_U_BASE                  (CRED_BASE_OFFSET + 0x4008D000ul)
#define LOCAL__MLB3_U_BASE                  (CRED_BASE_OFFSET + 0x4008E000ul)
#define LOCAL__MLB4_U_BASE                  (CRED_BASE_OFFSET + 0x4008F000ul)
#define LOCAL__PCACHE_RAW_U_BASE            (CRED_BASE_OFFSET + 0x40090000ul)
#define LOCAL__PCACHE_TAGS_U_BASE           (CRED_BASE_OFFSET + 0x40098000ul)
#define LOCAL__TPCC0_U_BASE                 (CRED_BASE_OFFSET + 0x400A0000ul)
#define EVE1__DMEM_U_BASE                   (CRED_BASE_OFFSET + 0x42020000ul)
#define EVE1__WBUF_U_BASE                   (CRED_BASE_OFFSET + 0x42040000ul)
#define EVE1__IBUFLA_U_BASE                 (CRED_BASE_OFFSET + 0x42050000ul)
#define EVE1__IBUFHA_U_BASE                 (CRED_BASE_OFFSET + 0x42054000ul)
#define EVE1__IBUFLB_U_BASE                 (CRED_BASE_OFFSET + 0x42070000ul)
#define EVE1__IBUFHB_U_BASE                 (CRED_BASE_OFFSET + 0x42074000ul)
#define EVE1__EVE_CONTROL_U_BASE            (CRED_BASE_OFFSET + 0x42080000ul)
#define EVE1__MMU0_U_BASE                   (CRED_BASE_OFFSET + 0x42081000ul)
#define EVE1__MMU1_U_BASE                   (CRED_BASE_OFFSET + 0x42082000ul)
#define EVE1__T16_U_BASE                    (CRED_BASE_OFFSET + 0x42083000ul)
#define EVE1__VCOP_U_BASE                   (CRED_BASE_OFFSET + 0x42084000ul)
#define EVE1__CTM_U_BASE                    (CRED_BASE_OFFSET + 0x42085000ul)
#define EVE1__TPTC0_U_BASE                  (CRED_BASE_OFFSET + 0x42086000ul)
#define EVE1__TPTC1_U_BASE                  (CRED_BASE_OFFSET + 0x42087000ul)
#define EVE1__SMSET_CONF_U_BASE             (CRED_BASE_OFFSET + 0x42088000ul)
#define EVE1__SMSET_SW_U_BASE               (CRED_BASE_OFFSET + 0x42089000ul)
#define EVE1__L2_FNOC_EVE_U_BASE            (CRED_BASE_OFFSET + 0x4208A000ul)
#define EVE1__MLB0_U_BASE                   (CRED_BASE_OFFSET + 0x4208B000ul)
#define EVE1__MLB1_U_BASE                   (CRED_BASE_OFFSET + 0x4208C000ul)
#define EVE1__MLB2_U_BASE                   (CRED_BASE_OFFSET + 0x4208D000ul)
#define EVE1__MLB3_U_BASE                   (CRED_BASE_OFFSET + 0x4208E000ul)
#define EVE1__MLB4_U_BASE                   (CRED_BASE_OFFSET + 0x4208F000ul)
#define EVE1__PCACHE_RAW_U_BASE             (CRED_BASE_OFFSET + 0x42090000ul)
#define EVE1__PCACHE_TAGS_U_BASE            (CRED_BASE_OFFSET + 0x42098000ul)
#define EVE1__TPCC0_U_BASE                  (CRED_BASE_OFFSET + 0x420A0000ul)
#define EVE2__DMEM_U_BASE                   (CRED_BASE_OFFSET + 0x42120000ul)
#define EVE2__WBUF_U_BASE                   (CRED_BASE_OFFSET + 0x42140000ul)
#define EVE2__IBUFLA_U_BASE                 (CRED_BASE_OFFSET + 0x42150000ul)
#define EVE2__IBUFHA_U_BASE                 (CRED_BASE_OFFSET + 0x42154000ul)
#define EVE2__IBUFLB_U_BASE                 (CRED_BASE_OFFSET + 0x42170000ul)
#define EVE2__IBUFHB_U_BASE                 (CRED_BASE_OFFSET + 0x42174000ul)
#define EVE2__EVE_CONTROL_U_BASE            (CRED_BASE_OFFSET + 0x42180000ul)
#define EVE2__MMU0_U_BASE                   (CRED_BASE_OFFSET + 0x42181000ul)
#define EVE2__MMU1_U_BASE                   (CRED_BASE_OFFSET + 0x42182000ul)
#define EVE2__T16_U_BASE                    (CRED_BASE_OFFSET + 0x42183000ul)
#define EVE2__VCOP_U_BASE                   (CRED_BASE_OFFSET + 0x42184000ul)
#define EVE2__CTM_U_BASE                    (CRED_BASE_OFFSET + 0x42185000ul)
#define EVE2__TPTC0_U_BASE                  (CRED_BASE_OFFSET + 0x42186000ul)
#define EVE2__TPTC1_U_BASE                  (CRED_BASE_OFFSET + 0x42187000ul)
#define EVE2__SMSET_CONF_U_BASE             (CRED_BASE_OFFSET + 0x42188000ul)
#define EVE2__SMSET_SW_U_BASE               (CRED_BASE_OFFSET + 0x42189000ul)
#define EVE2__L2_FNOC_EVE_U_BASE            (CRED_BASE_OFFSET + 0x4218A000ul)
#define EVE2__MLB0_U_BASE                   (CRED_BASE_OFFSET + 0x4218B000ul)
#define EVE2__MLB1_U_BASE                   (CRED_BASE_OFFSET + 0x4218C000ul)
#define EVE2__MLB2_U_BASE                   (CRED_BASE_OFFSET + 0x4218D000ul)
#define EVE2__MLB3_U_BASE                   (CRED_BASE_OFFSET + 0x4218E000ul)
#define EVE2__MLB4_U_BASE                   (CRED_BASE_OFFSET + 0x4218F000ul)
#define EVE2__PCACHE_RAW_U_BASE             (CRED_BASE_OFFSET + 0x42190000ul)
#define EVE2__PCACHE_TAGS_U_BASE            (CRED_BASE_OFFSET + 0x42198000ul)
#define EVE2__TPCC0_U_BASE                  (CRED_BASE_OFFSET + 0x421A0000ul)
#define EVE3__DMEM_U_BASE                   (CRED_BASE_OFFSET + 0x42220000ul)
#define EVE3__WBUF_U_BASE                   (CRED_BASE_OFFSET + 0x42240000ul)
#define EVE3__IBUFLA_U_BASE                 (CRED_BASE_OFFSET + 0x42250000ul)
#define EVE3__IBUFHA_U_BASE                 (CRED_BASE_OFFSET + 0x42254000ul)
#define EVE3__IBUFLB_U_BASE                 (CRED_BASE_OFFSET + 0x42270000ul)
#define EVE3__IBUFHB_U_BASE                 (CRED_BASE_OFFSET + 0x42274000ul)
#define EVE3__EVE_CONTROL_U_BASE            (CRED_BASE_OFFSET + 0x42280000ul)
#define EVE3__MMU0_U_BASE                   (CRED_BASE_OFFSET + 0x42281000ul)
#define EVE3__MMU1_U_BASE                   (CRED_BASE_OFFSET + 0x42282000ul)
#define EVE3__T16_U_BASE                    (CRED_BASE_OFFSET + 0x42283000ul)
#define EVE3__VCOP_U_BASE                   (CRED_BASE_OFFSET + 0x42284000ul)
#define EVE3__CTM_U_BASE                    (CRED_BASE_OFFSET + 0x42285000ul)
#define EVE3__TPTC0_U_BASE                  (CRED_BASE_OFFSET + 0x42286000ul)
#define EVE3__TPTC1_U_BASE                  (CRED_BASE_OFFSET + 0x42287000ul)
#define EVE3__SMSET_CONF_U_BASE             (CRED_BASE_OFFSET + 0x42288000ul)
#define EVE3__SMSET_SW_U_BASE               (CRED_BASE_OFFSET + 0x42289000ul)
#define EVE3__L2_FNOC_EVE_U_BASE            (CRED_BASE_OFFSET + 0x4228A000ul)
#define EVE3__MLB0_U_BASE                   (CRED_BASE_OFFSET + 0x4228B000ul)
#define EVE3__MLB1_U_BASE                   (CRED_BASE_OFFSET + 0x4228C000ul)
#define EVE3__MLB2_U_BASE                   (CRED_BASE_OFFSET + 0x4228D000ul)
#define EVE3__MLB3_U_BASE                   (CRED_BASE_OFFSET + 0x4228E000ul)
#define EVE3__MLB4_U_BASE                   (CRED_BASE_OFFSET + 0x4228F000ul)
#define EVE3__PCACHE_RAW_U_BASE             (CRED_BASE_OFFSET + 0x42290000ul)
#define EVE3__PCACHE_TAGS_U_BASE            (CRED_BASE_OFFSET + 0x42298000ul)
#define EVE3__TPCC0_U_BASE                  (CRED_BASE_OFFSET + 0x422A0000ul)
#define EVE4__DMEM_U_BASE                   (CRED_BASE_OFFSET + 0x42320000ul)
#define EVE4__WBUF_U_BASE                   (CRED_BASE_OFFSET + 0x42340000ul)
#define EVE4__IBUFLA_U_BASE                 (CRED_BASE_OFFSET + 0x42350000ul)
#define EVE4__IBUFHA_U_BASE                 (CRED_BASE_OFFSET + 0x42354000ul)
#define EVE4__IBUFLB_U_BASE                 (CRED_BASE_OFFSET + 0x42370000ul)
#define EVE4__IBUFHB_U_BASE                 (CRED_BASE_OFFSET + 0x42374000ul)
#define EVE4__EVE_CONTROL_U_BASE            (CRED_BASE_OFFSET + 0x42380000ul)
#define EVE4__MMU0_U_BASE                   (CRED_BASE_OFFSET + 0x42381000ul)
#define EVE4__MMU1_U_BASE                   (CRED_BASE_OFFSET + 0x42382000ul)
#define EVE4__T16_U_BASE                    (CRED_BASE_OFFSET + 0x42383000ul)
#define EVE4__VCOP_U_BASE                   (CRED_BASE_OFFSET + 0x42384000ul)
#define EVE4__CTM_U_BASE                    (CRED_BASE_OFFSET + 0x42385000ul)
#define EVE4__TPTC0_U_BASE                  (CRED_BASE_OFFSET + 0x42386000ul)
#define EVE4__TPTC1_U_BASE                  (CRED_BASE_OFFSET + 0x42387000ul)
#define EVE4__SMSET_CONF_U_BASE             (CRED_BASE_OFFSET + 0x42388000ul)
#define EVE4__SMSET_SW_U_BASE               (CRED_BASE_OFFSET + 0x42389000ul)
#define EVE4__L2_FNOC_EVE_U_BASE            (CRED_BASE_OFFSET + 0x4238A000ul)
#define EVE4__MLB0_U_BASE                   (CRED_BASE_OFFSET + 0x4238B000ul)
#define EVE4__MLB1_U_BASE                   (CRED_BASE_OFFSET + 0x4238C000ul)
#define EVE4__MLB2_U_BASE                   (CRED_BASE_OFFSET + 0x4238D000ul)
#define EVE4__MLB3_U_BASE                   (CRED_BASE_OFFSET + 0x4238E000ul)
#define EVE4__MLB4_U_BASE                   (CRED_BASE_OFFSET + 0x4238F000ul)
#define EVE4__PCACHE_RAW_U_BASE             (CRED_BASE_OFFSET + 0x42390000ul)
#define EVE4__PCACHE_TAGS_U_BASE            (CRED_BASE_OFFSET + 0x42398000ul)
#define EVE4__TPCC0_U_BASE                  (CRED_BASE_OFFSET + 0x423A0000ul)

/* =============================================================================
 * EXPORTED TYPES
 * =============================================================================
 */

/*-------------------------------------------------------------------------*//**
 * @TYPE         CRED_instances_t
 *
 * @BRIEF        Component instance information.
 *
 * @DESCRIPTION  Variable of this type stores pointer to component instance 
 *               virtual address, physical address and its name string.
 *
 *//*------------------------------------------------------------------------ */

typedef struct t_CRED_instances_label
{
  REG_UWORD32       *virtAddr;  /** Virtual address - programmable */
  const REG_UWORD32 physAddr;   /** Physical address - fixed */
  UWORD32           size;       /** Size in Bytes */
  const char        *name;      /** Name string */
} CRED_instances_t;

/*-------------------------------------------------------------------------*//**
 * @TYPE         CRED_index_t
 *
 * @BRIEF        Index to component-instance arrays.
 *
 * @DESCRIPTION  This is enumeration of all the component instances which 
 *               allows indexing the component-instance arrays with instance
 *               name identifier.
 *
 *//*------------------------------------------------------------------------ */

typedef enum CRED_index_label
{
  LOCAL__DMEM,                          /* 0 : 0x40020000 : EVE_DMEM */
  LOCAL__WBUF,                          /* 1 : 0x40040000 : EVE_DMEM */
  LOCAL__IBUFLA,                        /* 2 : 0x40050000 : EVE_IBUFHA */
  LOCAL__IBUFHA,                        /* 3 : 0x40054000 : EVE_IBUFHA */
  LOCAL__IBUFLB,                        /* 4 : 0x40070000 : EVE_IBUFHA */
  LOCAL__IBUFHB,                        /* 5 : 0x40074000 : EVE_IBUFHA */
  LOCAL__EVE_CONTROL,                   /* 6 : 0x40080000 : EVE_CONTROL */
  LOCAL__MMU0,                          /* 7 : 0x40081000 : MMU */
  LOCAL__MMU1,                          /* 8 : 0x40082000 : MMU */
  LOCAL__T16,                           /* 9 : 0x40083000 : T16 */
  LOCAL__VCOP,                          /* 10 : 0x40084000 : VCOP */
  LOCAL__CTM,                           /* 11 : 0x40085000 : CTM */
  LOCAL__TPTC0,                         /* 12 : 0x40086000 : TPTC */
  LOCAL__TPTC1,                         /* 13 : 0x40087000 : TPTC */
  LOCAL__SMSET_CONF,                    /* 14 : 0x40088000 : SMSET_CONF */
  LOCAL__SMSET_SW,                      /* 15 : 0x40089000 : SMSET_SW */
  LOCAL__L2_FNOC_EVE,                   /* 16 : 0x4008A000 : L2_FNOC_EVE */
  LOCAL__MLB0,                          /* 17 : 0x4008B000 : MLB */
  LOCAL__MLB1,                          /* 18 : 0x4008C000 : MLB */
  LOCAL__MLB2,                          /* 19 : 0x4008D000 : MLB */
  LOCAL__MLB3,                          /* 20 : 0x4008E000 : MLB */
  LOCAL__MLB4,                          /* 21 : 0x4008F000 : MLB */
  LOCAL__PCACHE_RAW,                    /* 22 : 0x40090000 : PCACHE_RAW */
  LOCAL__PCACHE_TAGS,                   /* 23 : 0x40098000 : PCACHE_TAGS */
  LOCAL__TPCC0,                         /* 24 : 0x400A0000 : TPCC */
  EVE1__DMEM,                           /* 25 : 0x42020000 : EVE_DMEM */
  EVE1__WBUF,                           /* 26 : 0x42040000 : EVE_DMEM */
  EVE1__IBUFLA,                         /* 27 : 0x42050000 : EVE_IBUFHA */
  EVE1__IBUFHA,                         /* 28 : 0x42054000 : EVE_IBUFHA */
  EVE1__IBUFLB,                         /* 29 : 0x42070000 : EVE_IBUFHA */
  EVE1__IBUFHB,                         /* 30 : 0x42074000 : EVE_IBUFHA */
  EVE1__EVE_CONTROL,                    /* 31 : 0x42080000 : EVE_CONTROL */
  EVE1__MMU0,                           /* 32 : 0x42081000 : MMU */
  EVE1__MMU1,                           /* 33 : 0x42082000 : MMU */
  EVE1__T16,                            /* 34 : 0x42083000 : T16 */
  EVE1__VCOP,                           /* 35 : 0x42084000 : VCOP */
  EVE1__CTM,                            /* 36 : 0x42085000 : CTM */
  EVE1__TPTC0,                          /* 37 : 0x42086000 : TPTC */
  EVE1__TPTC1,                          /* 38 : 0x42087000 : TPTC */
  EVE1__SMSET_CONF,                     /* 39 : 0x42088000 : SMSET_CONF */
  EVE1__SMSET_SW,                       /* 40 : 0x42089000 : SMSET_SW */
  EVE1__L2_FNOC_EVE,                    /* 41 : 0x4208A000 : L2_FNOC_EVE */
  EVE1__MLB0,                           /* 42 : 0x4208B000 : MLB */
  EVE1__MLB1,                           /* 43 : 0x4208C000 : MLB */
  EVE1__MLB2,                           /* 44 : 0x4208D000 : MLB */
  EVE1__MLB3,                           /* 45 : 0x4208E000 : MLB */
  EVE1__MLB4,                           /* 46 : 0x4208F000 : MLB */
  EVE1__PCACHE_RAW,                     /* 47 : 0x42090000 : PCACHE_RAW */
  EVE1__PCACHE_TAGS,                    /* 48 : 0x42098000 : PCACHE_TAGS */
  EVE1__TPCC0,                          /* 49 : 0x420A0000 : TPCC */
  EVE2__DMEM,                           /* 50 : 0x42120000 : EVE_DMEM */
  EVE2__WBUF,                           /* 51 : 0x42140000 : EVE_DMEM */
  EVE2__IBUFLA,                         /* 52 : 0x42150000 : EVE_IBUFHA */
  EVE2__IBUFHA,                         /* 53 : 0x42154000 : EVE_IBUFHA */
  EVE2__IBUFLB,                         /* 54 : 0x42170000 : EVE_IBUFHA */
  EVE2__IBUFHB,                         /* 55 : 0x42174000 : EVE_IBUFHA */
  EVE2__EVE_CONTROL,                    /* 56 : 0x42180000 : EVE_CONTROL */
  EVE2__MMU0,                           /* 57 : 0x42181000 : MMU */
  EVE2__MMU1,                           /* 58 : 0x42182000 : MMU */
  EVE2__T16,                            /* 59 : 0x42183000 : T16 */
  EVE2__VCOP,                           /* 60 : 0x42184000 : VCOP */
  EVE2__CTM,                            /* 61 : 0x42185000 : CTM */
  EVE2__TPTC0,                          /* 62 : 0x42186000 : TPTC */
  EVE2__TPTC1,                          /* 63 : 0x42187000 : TPTC */
  EVE2__SMSET_CONF,                     /* 64 : 0x42188000 : SMSET_CONF */
  EVE2__SMSET_SW,                       /* 65 : 0x42189000 : SMSET_SW */
  EVE2__L2_FNOC_EVE,                    /* 66 : 0x4218A000 : L2_FNOC_EVE */
  EVE2__MLB0,                           /* 67 : 0x4218B000 : MLB */
  EVE2__MLB1,                           /* 68 : 0x4218C000 : MLB */
  EVE2__MLB2,                           /* 69 : 0x4218D000 : MLB */
  EVE2__MLB3,                           /* 70 : 0x4218E000 : MLB */
  EVE2__MLB4,                           /* 71 : 0x4218F000 : MLB */
  EVE2__PCACHE_RAW,                     /* 72 : 0x42190000 : PCACHE_RAW */
  EVE2__PCACHE_TAGS,                    /* 73 : 0x42198000 : PCACHE_TAGS */
  EVE2__TPCC0,                          /* 74 : 0x421A0000 : TPCC */
  EVE3__DMEM,                           /* 75 : 0x42220000 : EVE_DMEM */
  EVE3__WBUF,                           /* 76 : 0x42240000 : EVE_DMEM */
  EVE3__IBUFLA,                         /* 77 : 0x42250000 : EVE_IBUFHA */
  EVE3__IBUFHA,                         /* 78 : 0x42254000 : EVE_IBUFHA */
  EVE3__IBUFLB,                         /* 79 : 0x42270000 : EVE_IBUFHA */
  EVE3__IBUFHB,                         /* 80 : 0x42274000 : EVE_IBUFHA */
  EVE3__EVE_CONTROL,                    /* 81 : 0x42280000 : EVE_CONTROL */
  EVE3__MMU0,                           /* 82 : 0x42281000 : MMU */
  EVE3__MMU1,                           /* 83 : 0x42282000 : MMU */
  EVE3__T16,                            /* 84 : 0x42283000 : T16 */
  EVE3__VCOP,                           /* 85 : 0x42284000 : VCOP */
  EVE3__CTM,                            /* 86 : 0x42285000 : CTM */
  EVE3__TPTC0,                          /* 87 : 0x42286000 : TPTC */
  EVE3__TPTC1,                          /* 88 : 0x42287000 : TPTC */
  EVE3__SMSET_CONF,                     /* 89 : 0x42288000 : SMSET_CONF */
  EVE3__SMSET_SW,                       /* 90 : 0x42289000 : SMSET_SW */
  EVE3__L2_FNOC_EVE,                    /* 91 : 0x4228A000 : L2_FNOC_EVE */
  EVE3__MLB0,                           /* 92 : 0x4228B000 : MLB */
  EVE3__MLB1,                           /* 93 : 0x4228C000 : MLB */
  EVE3__MLB2,                           /* 94 : 0x4228D000 : MLB */
  EVE3__MLB3,                           /* 95 : 0x4228E000 : MLB */
  EVE3__MLB4,                           /* 96 : 0x4228F000 : MLB */
  EVE3__PCACHE_RAW,                     /* 97 : 0x42290000 : PCACHE_RAW */
  EVE3__PCACHE_TAGS,                    /* 98 : 0x42298000 : PCACHE_TAGS */
  EVE3__TPCC0,                          /* 99 : 0x422A0000 : TPCC */
  EVE4__DMEM,                           /* 100 : 0x42320000 : EVE_DMEM */
  EVE4__WBUF,                           /* 101 : 0x42340000 : EVE_DMEM */
  EVE4__IBUFLA,                         /* 102 : 0x42350000 : EVE_IBUFHA */
  EVE4__IBUFHA,                         /* 103 : 0x42354000 : EVE_IBUFHA */
  EVE4__IBUFLB,                         /* 104 : 0x42370000 : EVE_IBUFHA */
  EVE4__IBUFHB,                         /* 105 : 0x42374000 : EVE_IBUFHA */
  EVE4__EVE_CONTROL,                    /* 106 : 0x42380000 : EVE_CONTROL */
  EVE4__MMU0,                           /* 107 : 0x42381000 : MMU */
  EVE4__MMU1,                           /* 108 : 0x42382000 : MMU */
  EVE4__T16,                            /* 109 : 0x42383000 : T16 */
  EVE4__VCOP,                           /* 110 : 0x42384000 : VCOP */
  EVE4__CTM,                            /* 111 : 0x42385000 : CTM */
  EVE4__TPTC0,                          /* 112 : 0x42386000 : TPTC */
  EVE4__TPTC1,                          /* 113 : 0x42387000 : TPTC */
  EVE4__SMSET_CONF,                     /* 114 : 0x42388000 : SMSET_CONF */
  EVE4__SMSET_SW,                       /* 115 : 0x42389000 : SMSET_SW */
  EVE4__L2_FNOC_EVE,                    /* 116 : 0x4238A000 : L2_FNOC_EVE */
  EVE4__MLB0,                           /* 117 : 0x4238B000 : MLB */
  EVE4__MLB1,                           /* 118 : 0x4238C000 : MLB */
  EVE4__MLB2,                           /* 119 : 0x4238D000 : MLB */
  EVE4__MLB3,                           /* 120 : 0x4238E000 : MLB */
  EVE4__MLB4,                           /* 121 : 0x4238F000 : MLB */
  EVE4__PCACHE_RAW,                     /* 122 : 0x42390000 : PCACHE_RAW */
  EVE4__PCACHE_TAGS,                    /* 123 : 0x42398000 : PCACHE_TAGS */
  EVE4__TPCC0                           /* 124 : 0x423A0000 : TPCC */
} CRED_index_t;

/* =============================================================================
 * EXPORTED VARIABLES
 * =============================================================================
 */

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
extern REG_UWORD32 CRED_instVirtAddr[CRED_NUM_INSTANCES];

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
extern const REG_UWORD32 CRED_instPhysAddr[CRED_NUM_INSTANCES];

/*-------------------------------------------------------------------------*//**
 * @VARIABLE     CRED_instName
 *
 * @BRIEF        Component-instance name array.
 *
 * @DESCRIPTION  Array of all component instance names.
 *               The array can be used for debug purpose.
 *
 *//*------------------------------------------------------------------------ */
extern const char* CRED_instName[CRED_NUM_INSTANCES];

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
extern const CRED_instances_t CRED_instances[CRED_NUM_INSTANCES];

#ifdef __cplusplus
}
#endif
#endif  /* __BASEADDRESS_H */
