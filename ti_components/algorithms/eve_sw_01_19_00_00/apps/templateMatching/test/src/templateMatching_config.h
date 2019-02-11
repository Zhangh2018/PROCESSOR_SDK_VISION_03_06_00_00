/*
*
* Copyright (c) 2013-2017 Texas Instruments Incorporated
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


#ifndef _EVELIB_TEMPLATE_MATCHING_CONFIG_H_
#define _EVELIB_TEMPLATE_MATCHING_CONFIG_H_

#include "configparser.h"
#include "stdint.h"
#include "xdais_types.h"
#include "iTemplateMatching_ti.h"

#define FILE_NAME_SIZE  (256)
#define EVELIB_TEMPLATE_MATCHING_NUM_TESTCASES 7
#define DESCRIPTION_SIZE (256)

typedef struct
{
    uint8_t pattern;
    uint8_t inImage[FILE_NAME_SIZE];
    uint8_t inTemplateImage[FILE_NAME_SIZE];
    uint32_t srcImageWidth  ; /* in number of pixels */
    uint32_t srcImageHeight ; /* in number of lines */
    uint32_t srcImagePitch ; /* in number of bytes */

    uint16_t templateWidth;
    uint16_t templateHeight;
    uint8_t  qShift;

    unsigned char outNumCC[FILE_NAME_SIZE];
    unsigned char outDenomVar[FILE_NAME_SIZE];
    unsigned int dstImagePitch; /* in number of bytes */
    uint8_t   testCaseName[FILE_NAME_SIZE];
    uint8_t   performanceTestcase;
    uint8_t   desc[DESCRIPTION_SIZE];
} stemplateMatching_Config;

extern uint32_t templateMatching_numTestCases;
extern stemplateMatching_Config gConfig_templateMatching[EVELIB_TEMPLATE_MATCHING_NUM_TESTCASES];
extern sTokenMapping gsTokenMap_templateMatching[MAX_ITEMS_TO_PARSE];

#endif
