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

/**
 *******************************************************************************
 * \file iss_sensor_ar0140.c
 *
 *
 *
 *******************************************************************************
*/

/**
 *  \file ar0140_linear_1280x800_setup.h
 *
 *  \brief AR0140 sensor settings for 1280x800 frame size in linear mode.
 *
 */

#ifndef AR0140_LINEAR_1280X800_SETUP_H_
#define AR0140_LINEAR_1280X800_SETUP_H_

/* AR0140 recommended setting */
#define AR0140_LINEAR_1280X800_CONFIG                                          \
{ \
    {0x301A, 0x10D8, 0xA},  /* RESET_REGISTER */ \
    {0x3088, 0x8000, 0x0},  /* SEQ_CTRL_PORT  */ \
    {0x3086, 0x4558, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x6E9B, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4A31, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4342, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8E03, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2714, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4578, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x7B3D, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xFF3D, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xFF3D, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xEA27, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x043D, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1027, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0527, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1535, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2705, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x3D10, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4558, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2704, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2714, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x3DFF, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x3DFF, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x3DEA, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2704, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x6227, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x288E, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0036, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2708, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x3D64, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x7A3D, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0444, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2C4B, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8F00, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4372, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x719F, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x6343, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x166F, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x9F92, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1244, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1663, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4316, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x9326, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0426, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x848E, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0327, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xFC5C, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0D57, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x5417, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0955, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x5649, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x5F53, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0553, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0728, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x6C4C, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0928, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2C72, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xAD7C, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xA928, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xA879, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x6026, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x9C5C, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1B45, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4845, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0845, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8826, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xBE8E, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0127, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xF817, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0227, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xFA17, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x095C, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0B17, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1026, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xBA5C, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0317, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1026, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xB217, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x065F, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2888, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x9060, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x27F2, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1710, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x26A2, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x26A3, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x5F4D, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2808, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1927, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xFA84, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x69A0, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x785D, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2888, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8710, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8C82, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8926, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xB217, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x036B, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x9C60, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x9417, 0x00}, \
    {0x3086, 0x2926, 0x00}, \
    {0x3086, 0x8345, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xA817, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0727, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xFB17, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2945, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x881F, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1708, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x27FA, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x5D87, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x108C, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8289, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x170E, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4826, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x9A28, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x884C, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0B79, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1730, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2692, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1709, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x9160, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x27F2, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1710, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2682, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2683, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x5F4D, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2808, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1927, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xFA84, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x69A1, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x785D, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2888, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8710, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8C80, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8A26, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x9217, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x036B, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x9D95, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2603, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x5C01, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4558, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8E00, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2798, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x170A, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4A65, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4316, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x6643, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x165B, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4316, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x5943, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x168E, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0327, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x9C45, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x7817, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0727, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x9D17, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x225D, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8710, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2808, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x530D, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8C80, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8A45, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x5823, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1708, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8E01, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2798, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8E00, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2644, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x5C05, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1244, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4B71, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x759E, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8B85, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0143, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x7271, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xA346, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4316, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x6FA3, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x9612, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4416, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4643, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1697, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2604, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2684, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8E03, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x27FC, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x5C0D, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x5754, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1709, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x5556, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x495F, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x5305, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x5307, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x286C, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4C09, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x282C, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x72AE, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x7CAA, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x28A8, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x7960, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x269C, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x5C1B, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4548, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4508, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4588, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x26BE, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8E01, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x27F8, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1702, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x27FA, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1709, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x5C0B, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1710, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x26BA, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x5C03, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1710, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x26B2, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1706, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x5F28, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8898, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x6027, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xF217, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1026, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xA226, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xA35F, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4D28, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x081A, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x27FA, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8469, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xA578, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x5D28, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8887, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x108C, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8289, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x26B2, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1703, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x6BA4, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x6099, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1729, 0x00}, \
    {0x3086, 0x2683, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x45A8, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1707, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x27FB, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1729, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4588, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2017, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0827, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xFA5D, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8710, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8C82, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8917, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0E48, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x269A, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2888, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4C0B, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x7917, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x3026, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x9217, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x099A, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x6027, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xF217, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1026, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8226, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x835F, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4D28, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x081A, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x27FA, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8469, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xAB78, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x5D28, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8887, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x108C, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x808A, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2692, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1703, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x6BA6, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xA726, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x035C, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0145, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x588E, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0027, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x9817, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0A4A, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0A43, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x160B, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x438E, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0327, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x9C45, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x7817, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0727, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x9D17, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x225D, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8710, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2808, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x530D, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8C80, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8A45, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x5817, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x088E, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0127, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x988E, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0076, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xAC77, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xAC46, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4416, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x16A8, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x7A26, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x445C, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0512, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x444B, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x7175, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0xA24A, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0343, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1604, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4316, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x5843, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x165A, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4316, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x0643, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1607, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4316, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8E03, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x279C, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4578, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x7B17, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x078B, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8627, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x9D17, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2345, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x5822, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1708, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8E01, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2798, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x8E00, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2644, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x5C05, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x1244, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x4B8D, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x602C, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2C2C, 0x0},  /* SEQ_DATA_PORT  */ \
    {0x3086, 0x2C00, 0x0},  /* SEQ_DATA_PORT  */ \
 \
    {0x3082, 0x0009, 0x00}, /* OPERATION_MODE_CTRL   */ \
    {0x318C, 0x0000, 0x00}, /* HDR_MC_CTRL2          */ \
    {0x3200, 0x0000, 0x00}, /* ADACD_CONTROL         */ \
    {0x31D0, 0x0000, 0x00}, /* COMPANDING            */ \
    {0x30B0, 0x0000, 0x00}, /* DIGITAL_TEST          */ \
    {0x30BA, 0x012C, 0x00}, /* DIGITAL_CTRL          */ \
    {0x31AC, 0x0C0C, 0x00}, /* DATA_FORMAT_BITS      */ \
    {0x31AE, 0x0301, 0x00}, /* SERIAL_FORMAT         */ \
 \
    /* PLL_configuration_Parallel */ \
    {0x302A, 0x0006, 0x00},     /* VT_PIX_CLK_DIV    */ \
    {0x302C, 0x0001, 0x00},     /* VT_SYS_CLK_DIV    */ \
    {0x302E, 0x0004, 0x00},     /* PRE_PLL_CLK_DIV   */ \
    {0x3030, 0x0042, 0x00},     /* PLL_MULTIPLIER    */ \
    {0x3036, 0x000C, 0x00},     /* OP_PIX_CLK_DIV    */ \
    {0x3038, 0x0001, 0x00},     /* OP_SYS_CLK_DIV    */ \
 \
    /* 1280x800fps_configuration */ \
    {0x3004, 0x0020, 0x00},     /* X_ADDR_START             */ \
    {0x3002, 0x0018, 0x00},     /* Y_ADDR_START             */ \
    {0x3008, 0x051F, 0x00},     /* X_ADDR_END               */ \
    {0x3006, 0x0337, 0x00},     /* Y_ADDR_END               */ \
    {0x300A, 0x05DC, 0x00},     /* FRAME_LENGTH_LINES       */ \
    {0x300C, 0x0672, 0x00},     /* LINE_LENGTH_PCK          */ \
    {0x3012, 0x002D, 0x00},     /* COARSE_INTEGRATION_TIME  */ \
    {0x30A2, 0x0001, 0x00},     /* X_ODD_INC                */ \
    {0x30A6, 0x0001, 0x00},     /* Y_ODD_INC                */ \
    {0x3040, 0x0000, 0x00},     /* READ_MODE                */ \
    {0x3064, 0x1802, 0x00},     /* SMIA_TEST                */ \
 \
    /* AR0140 Rev2 Optimized settings */ \
    {0x3044, 0x0400, 0x00},     /* RESERVED_MFR_3044  */ \
    {0x3052, 0xA134, 0x00},     /* RESERVED_MFR_3052  */ \
    {0x3092, 0x010F, 0x00},     /* RESERVED_MFR_3092  */ \
    {0x30FE, 0x0080, 0x00},     /* RESERVED_MFR_30FE  */ \
    {0x3ECE, 0x40FF, 0x00},     /* RESERVED_MFR_3ECE  */ \
    {0x3ED0, 0xFF40, 0x00},     /* RESERVED_MFR_3ED0  */ \
    {0x3ED2, 0xA906, 0x00},     /* RESERVED_MFR_3ED2  */ \
    {0x3ED4, 0x001F, 0x00},     /* RESERVED_MFR_3ED4  */ \
    {0x3ED6, 0x638F, 0x00},     /* RESERVED_MFR_3ED6  */ \
    {0x3ED8, 0xCC99, 0x00},     /* RESERVED_MFR_3ED8  */ \
    {0x3EDA, 0x0888, 0x00},     /* RESERVED_MFR_3EDA  */ \
    {0x3EDE, 0x8878, 0x00},     /* RESERVED_MFR_3EDE  */ \
    {0x3EE0, 0x7744, 0x00},     /* RESERVED_MFR_3EE0  */ \
    {0x3EE2, 0x4463, 0x00},     /* RESERVED_MFR_3EE2  */ \
    {0x3EE4, 0xAAE0, 0x00},     /* RESERVED_MFR_3EE4  */ \
    {0x3EE6, 0x1400, 0x00},     /* RESERVED_MFR_3EE6  */ \
    {0x3EEA, 0xA4FF, 0x00},     /* RESERVED_MFR_3EEA  */ \
    {0x3EEC, 0x80F0, 0x00},     /* RESERVED_MFR_3EEC  */ \
    {0x3EEE, 0x0000, 0x00},     /* RESERVED_MFR_3EEE  */ \
    {0x31E0, 0x1701, 0x00},     /* RESERVED_MFR_31E0  */ \
    {0x3100, 0x0004, 0x00},     /* DCG Gain for lowlight sensitivity  */ \
    {0x301A, 0x10DC, 0x0A},  /* RESET_REGISTER */ \
}

#endif /* #ifndef AR0140_LINEAR_1280X800_SETUP_H_  */

