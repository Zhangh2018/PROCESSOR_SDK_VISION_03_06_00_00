/*
*
* Copyright (c) 2009-2017 Texas Instruments Incorporated
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


/** @file remapExecute_tb.c
 *
 *  @brief  This file contains test code that applies the remap algorithm onto a file provided as input
 *          The converted LUT map is also read from file.
 *
 *
 *  @date   13 March 2015
 *
 */
#pragma CHECK_MISRA ("none")
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <math.h>
#include <vcop.h>


#include "evestarterware.h"
#include "alg_osal.h"

#include "xdais_types.h"
#include <ivision.h>
#include <ti/xdais/ires.h>

#include "remapExecute_config.h"
#include "ti_mem_manager.h"
#include "eve_profile.h"

#include "ti_file_io.h"
#include "ti_image_file_io.h"
#include "remapExecute.h"


#define ABS(x) (((x)<0) ? (-x) : (x))

#define MIN(a,b) ((a)<(b)?(a):(b))

#define MAX_CONFIG_LINE_SIZE     (300)
#define MAX_FILE_NAME_SIZE       (200)
#define MAX_PARAM_STRING_SIZE    (30)
#define CONFIG_LIST_FILE_NAME    ("../testvecs/config/remapExecute_config_list.txt")

#define PRINT_ERRORE_MSG()  TEST_PRINTF("Error at line: %5d : in file %22s, of function : %s \n",__LINE__, __FILE__,__FUNCTION__)

#define DMEM_SIZE (10*1024)

#pragma DATA_SECTION (DMEM_SCRATCH, ".dmemSect");
uint8_t DMEM_SCRATCH[DMEM_SIZE];

TIMemObject memObj_DMEM;

int32_t TestApp_AllocMemRecords(IALG_MemRec * memRec,int32_t numMemRec)
{
    int32_t i;
    TIMemHandle memHdl_DMEM = &memObj_DMEM;
    for (i = 0; i < numMemRec; i++)
    {
        if(memRec[i].space == IALG_DARAM0) {
            memRec[i].base = TI_GetMemoryChunk(memHdl_DMEM, memRec[i].size, memRec[i].alignment);
        }
        else {
            memRec[i].base = (Void *) malloc( memRec[i].size);
        }
        if(memRec[i].base == NULL)
        {
            return IALG_EFAIL;
        }
    }
    return IALG_EOK;
}

int32_t TestApp_FreeMemRecords(IALG_MemRec * memRec,int32_t numMemRec)
{
    int32_t i;
    TIMemHandle memHdl_DMEM = &memObj_DMEM;

    for (i = 0; i < numMemRec; i++)
    {
        if(memRec[i].base == NULL)
        {
            return IALG_EFAIL;
        }
        if(memRec[i].space == IALG_DARAM0) {
            TI_ResetMemoryHandle(memHdl_DMEM);
        }else {
            free(memRec[i].base);
        }
    }
    return IALG_EOK;
}


char * moveToNextElement(char *in, char *LinePtr)
{
    LinePtr += strlen(in);
    while((LinePtr[0] == ' ')||(LinePtr[0] == '   ')||(LinePtr[0] == ','))
    {
        LinePtr++;
    }
    return(LinePtr);
}

int test_remapExecute(sremapExecute_Config * gConfig_remapExecute, int testNum)
{
    int result = 0;
    uint16_t n_rows, n_cols;
    uint16_t bytesPerPixel, maxBitPerPixel;
    int32_t n_maxValue;
    int32_t t, status;
    uint8_t *input, *output;
    uint8_t *input_uv, *output_uv;
    uint16_t len;
    char filepath[256];

    /*--------------------------------------------------------------------------*/
    /*Create memory handle for ARP32 DMEM.                                      */
    /*--------------------------------------------------------------------------*/
    uint8_t *pDmem;
    TIMemHandle memHdl_DMEM;

    pDmem = (uint8_t *)&DMEM_SCRATCH;
    memHdl_DMEM = &memObj_DMEM;
    TI_CreateMemoryHandle(memHdl_DMEM, pDmem, DMEM_SIZE);

    input= NULL;
    input_uv= NULL;
    output= NULL;
    output_uv= NULL;

    for (t=0;t<remapExecute_numTestCases;t++) {

        sprintf(filepath, "%s", gConfig_remapExecute[t].inputFile);

        if (gConfig_remapExecute[t].colorFormat== 0) {
            len= strlen(filepath);
            if (!(strcmp(&filepath[len-3],"pgm"))){
                status= readFilePGM((const int8_t*)filepath,
                        &input,
                        &n_rows,
                        &n_cols,
                        &bytesPerPixel,
                        &maxBitPerPixel,
                        &n_maxValue);
            }
            else {
                readFileY((const int8_t*)filepath,
                        &input,
                        gConfig_remapExecute[t].inputHeight,
                        gConfig_remapExecute[t].inputWidth);
            }

            output= (uint8_t*)malloc(gConfig_remapExecute[t].remapWidth*gConfig_remapExecute[t].remapHeight);
        }
        else if (gConfig_remapExecute[t].colorFormat== 4 || gConfig_remapExecute[t].colorFormat== 5) {
            readFileYUV_ILE_IBE((const int8_t*)filepath,
                    &input,
                    gConfig_remapExecute[t].inputHeight,
                    gConfig_remapExecute[t].inputWidth);

            output= (uint8_t*)malloc(2*gConfig_remapExecute[t].remapWidth*gConfig_remapExecute[t].remapHeight);
        }
        else if (gConfig_remapExecute[t].colorFormat== 6) {
            readFile_YUV420SP((const int8_t*)filepath,
                    &input,
                    &input_uv,
                    gConfig_remapExecute[t].inputHeight,
                    gConfig_remapExecute[t].inputWidth);

            output= (uint8_t*)malloc(gConfig_remapExecute[t].remapWidth*gConfig_remapExecute[t].remapHeight);
            output_uv= (uint8_t*)malloc((gConfig_remapExecute[t].remapWidth*gConfig_remapExecute[t].remapHeight)/2);
        }

        status= remapExecute(&gConfig_remapExecute[t], input, input_uv, output, output_uv);

        if(status != IALG_EOK)
        {
            printf("Error use case #%d, stopped processing\n", t);
            goto EXIT_LOOP;
        }

        sprintf(filepath, "%s", gConfig_remapExecute[t].outputFile);

        if (gConfig_remapExecute[t].colorFormat== 0) {

            len= strlen(filepath);

            if (!(strcmp(&filepath[len-3],"pgm"))){
                writeFile_PGM((const int8_t *)filepath,
                        output,
                        gConfig_remapExecute[t].remapHeight,
                        gConfig_remapExecute[t].remapWidth,
                        NULL,
                        255);
            }
            else {
                writeFileY((const int8_t*)filepath,
                        output,
                        gConfig_remapExecute[t].remapHeight,
                        gConfig_remapExecute[t].remapWidth);
            }
        }
        else if (gConfig_remapExecute[t].colorFormat== 4 || gConfig_remapExecute[t].colorFormat== 5) {
            writeFileYUV_ILE_IBE((const int8_t*)filepath,
                    output,
                    gConfig_remapExecute[t].remapHeight,
                    gConfig_remapExecute[t].remapWidth);

        }
        else if (gConfig_remapExecute[t].colorFormat== 6) {
            writeFile_YUV420SP((const int8_t*)filepath,
                    output,
                    output_uv,
                    gConfig_remapExecute[t].remapHeight,
                    gConfig_remapExecute[t].remapWidth,
                    NULL,
                    255);
        }

        EXIT_LOOP:
        if (input) {
            free(input);
            input= NULL;
        }
        if (input_uv) {
             free(input_uv);
             input_uv= NULL;
         }
        if (output) {
            free(output);
            output= NULL;
        }
        if (output_uv) {
            free(output_uv);
            output_uv= NULL;
        }
    }
    return result;
}

int main(int argc, char *argv[])
{
    int status = 0;
    char configFile[FILE_NAME_SIZE]={0};
    char configLine[MAX_CONFIG_LINE_SIZE];
    char configParam[MAX_PARAM_STRING_SIZE];
    int8_t         *LinePtr;
    TI_FILE * fp;
    int32_t         lineNum = -1;
    int32_t         config_cmd;

    if (argc > 1)
    {
        strcpy(configFile, argv[1]) ;
    }
    else
    {
        strcpy(configFile,CONFIG_LIST_FILE_NAME);
    }

    fp = FOPEN((const char *)configFile , "r");
    if(fp== NULL)
    {
        TEST_PRINTF("Could not open config list file : %s \n",CONFIG_LIST_FILE_NAME);
        return(status);
    }

    while ( 1 )
    {
        memset(configLine, 0, MAX_CONFIG_LINE_SIZE);
        status = (int)FGETS(configLine,MAX_CONFIG_LINE_SIZE,fp);
        LinePtr = (int8_t *)configLine;
        if ((status == EOF) || (status == 0))
        {
            break;
        }
        status = 0;
        lineNum++;
        sscanf((const char *)LinePtr, "%d",&config_cmd);
        sscanf((const char *)LinePtr, "%s",configParam);

        if(config_cmd == 0)
        {
            break;
        }
        else if(config_cmd == 2)
        {
            continue;
        }
        else if(config_cmd == 1)
        {
            LinePtr = (int8_t *)moveToNextElement(configParam,(char *)LinePtr);
            status  = sscanf((const char *)LinePtr, "%s",configFile);

            memset(gConfig_remapExecute, 0, sizeof(gConfig_remapExecute));

            status = readparamfile(configFile, &gsTokenMap_remapExecute[0]);
            if(status == -1)
            {
                TEST_PRINTF("Parser Failed");
                return -1 ;
            }

            /* Validate the applet */
            status = test_remapExecute(gConfig_remapExecute, lineNum);
            if(status == -1)
            {
                return status;
            }
        }
        else
        {
            TEST_PRINTF(" Unsupported config list command parameter at line num : %4d !\n", lineNum);
        }

    }

    FCLOSE(fp);

    return status;
}
