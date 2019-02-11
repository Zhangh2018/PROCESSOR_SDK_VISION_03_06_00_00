/**
 *  @file   VAYUIpuCore0HalReset.h
 *
 *  @brief      Reset control module header file.
 *
 *              This module is responsible for handling reset-related hardware-
 *              specific operations.
 *              The implementation is specific to VAYUIPUCORE0.
 *
 *
 */
/*
 *  ============================================================================
 *
 *  Copyright (c) 2013, Texas Instruments Incorporated
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *  *  Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *
 *  *  Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution.
 *
 *  *  Neither the name of Texas Instruments Incorporated nor the names of
 *     its contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 *  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 *  THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 *  PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 *  CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 *  EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 *  PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 *  OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 *  WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 *  OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 *  EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *  Contact information for paper mail:
 *  Texas Instruments
 *  Post Office Box 655303
 *  Dallas, Texas 75265
 *  Contact information:
 *  http://www-k.ext.ti.com/sc/technical-support/product-information-centers.htm?
 *  DCMP=TIHomeTracking&HQS=Other+OT+home_d_contact
 *  ============================================================================
 *
 */


#ifndef VAYUIPUCORE0HALRESET_H_0xbbef
#define VAYUIPUCORE0HALRESET_H_0xbbef


/* Module level headers */
#include <_ProcDefs.h>


#if defined (__cplusplus)
extern "C" {
#endif


/* =============================================================================
 *  Macros and types
 *  See _ProcDefs.h
 * =============================================================================
 */
#define INREG32(x) in32(x)
#define OUTREG32(x, y) out32(x, y)
#define SETBITREG32(x, y) OUTREG32(x, (INREG32(x) | (1 << y)))
#define CLRBITREG32(x, y) OUTREG32(x, (INREG32(x) & ~(1 << y)))
#define TESTBITREG32(x, y) (((INREG32(x) & (1 << y)) >> y) & 0x1)

/* =============================================================================
 *  APIs
 * =============================================================================
 */
/* Function to control reset operations for this slave device. */
Int VAYUIPUCORE0_halResetCtrl (Ptr halObj, Processor_ResetCtrlCmd cmd);


#if defined (__cplusplus)
}
#endif /* defined (__cplusplus) */

#endif /* VAYUIpuCore0HalReset_H_0xbbec */
