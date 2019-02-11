/*******************************************************************************
**+--------------------------------------------------------------------------+**
**|                            ****                                          |**
**|                            ****                                          |**
**|                            ******o***                                    |**
**|                      ********_///_****                                   |**
**|                      ***** /_//_/ ****                                   |**
**|                       ** ** (__/ ****                                    |**
**|                           *********                                      |**
**|                            ****                                          |**
**|                            ***                                           |**
**|                                                                          |**
**|         Copyright (c) 2007-2014 Texas Instruments Incorporated           |**
**|                        ALL RIGHTS RESERVED                               |**
**|                                                                          |**
**| Permission to use, copy, modify, or distribute this software,            |**
**| whether in part or in whole, for any purpose is forbidden without        |**
**| a signed licensing agreement and NDA from Texas Instruments              |**
**| Incorporated (TI).                                                       |**
**|                                                                          |**
**| TI makes no representation or warranties with respect to the             |**
**| performance of this computer program, and specifically disclaims         |**
**| any responsibility for any damages, special or consequential,            |**
**| connected with the use of this program.                                  |**
**|                                                                          |**
**+--------------------------------------------------------------------------+**
*******************************************************************************/
#include "../common/VLIB_memory.h"
#include "VLIB_bhattacharyaDistance_F32_idat.h"

static uint16_t    H1[] =
{
    1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    1, 0, 2, 0, 0, 1, 0, 5, 0, 0, 0, 0, 1, 0, 3, 0, 2, 0, 0, 3, 0, 6, 0, 0,
    3, 0, 6, 0, 10, 0, 0, 18, 0, 20, 0, 24, 0, 0, 35, 0, 46, 0, 53, 0, 0,
    81, 0, 99, 0, 0, 132, 0, 150, 0, 212, 0, 0, 218, 0, 203, 0, 213, 0, 0,
    220, 0, 249, 0, 0, 248, 0, 219, 0, 227, 0, 0, 231, 0, 234, 0, 214, 0, 0,
    218, 0, 229, 0, 0, 207, 0, 202, 0, 198, 0, 0, 213, 0, 188, 0, 149, 0, 0,
    147, 0, 150, 0, 118, 0, 0, 106, 0, 80, 0, 0, 96, 0, 80, 0, 69, 0, 0, 73,
    0, 70, 0, 75, 0, 0, 78, 0, 76, 0, 0, 74, 0, 85, 0, 80, 0, 0, 84, 0, 79,
    0, 96, 0, 0, 108, 0, 92, 0, 0, 108, 0, 93, 0, 101, 0, 0, 114, 0, 116, 0,
    124, 0, 0, 112, 0, 120, 0, 120, 0, 0, 108, 0, 117, 0, 0, 100, 0, 116, 0,
    99, 0, 0, 98, 0, 78, 0, 114, 0, 0, 109, 0, 108, 0, 0, 93, 0, 99, 0, 84,
    0, 0, 71, 0, 70, 0, 62, 0, 0, 84, 0, 99, 0, 0, 111, 0, 110, 0, 117, 0,
    0, 137, 0, 146, 0, 172, 0, 0, 134, 0, 168, 0, 146, 0, 0, 146, 0, 155, 0,
    0, 120, 0, 144, 0, 113, 0, 0, 123, 0, 97, 0, 84, 0, 0, 73, 0, 85, 0, 0,
    57, 0, 43, 0, 40, 0, 0, 27, 0, 27, 0, 27, 0, 0, 24, 0, 24, 0, 0, 14, 0,
    19, 0, 16, 0, 0, 14, 0, 17, 0, 14, 0, 0, 10, 0, 12, 0, 11, 0, 0, 9, 0,
    13, 0, 0, 12, 0, 16, 0, 7, 0, 0, 15, 0, 5, 0, 10, 0, 0, 10, 0, 7, 0, 0,
    10, 0, 10, 0, 7, 0, 0, 10, 0, 4, 0, 9, 0, 0, 9, 0, 4, 0, 0, 7, 0, 6, 0,
    10, 0, 0, 9, 0, 12, 0, 3, 0, 0, 8, 0, 9, 0, 8, 0, 0, 4, 0, 2, 0, 0, 3,
    0, 10, 0, 7, 0, 0, 9, 0, 8, 0, 5, 0, 0, 8, 0, 5, 0, 0, 8, 0, 10, 0, 9,
    0, 0, 10, 0, 9, 0, 5, 0, 0, 11, 0, 8, 0, 0, 17, 0, 16, 0, 10, 0, 0, 11,
    0, 14, 0, 21, 0, 0, 21, 0, 22, 0, 29, 0, 0, 22, 0, 36, 0, 0, 23, 0, 34,
    0, 47, 0, 0, 46, 0, 66, 0, 107, 0, 0, 203, 0, 171, 0, 0, 815, 0, 325, 0,
    260, 0, 0, 97, 0, 37, 0, 26, 0, 0, 24, 0, 16, 0, 0, 23, 0, 17, 0, 9, 0,
    0, 3, 0, 7, 0, 5, 0, 0, 0, 0, 2, 0, 2
};

static uint16_t    H2[] =
{
    1, 0, 0, 0, 0, 3, 0, 2, 0, 0, 4, 0, 19, 0, 0, 23, 0, 55, 0, 0,
    89, 0, 104, 0, 0, 154, 0, 0, 178, 0, 254, 0, 0, 270, 0, 316, 0, 0, 375,
    0, 394, 0, 0, 401, 0, 381, 0, 0, 389, 0, 397, 0, 0, 419, 0, 0, 353, 0,
    339, 0, 0, 317, 0, 275, 0, 0, 265, 0, 249, 0, 0, 208, 0, 212, 0, 0, 193,
    0, 165, 0, 0, 177, 0, 0, 184, 0, 142, 0, 0, 141, 0, 125, 0, 0, 121, 0,
    105, 0, 0, 99, 0, 105, 0, 0, 71, 0, 61, 0, 0, 70, 0, 0, 55, 0, 47, 0, 0,
    46, 0, 45, 0, 0, 41, 0, 37, 0, 0, 29, 0, 39, 0, 0, 41, 0, 0, 39, 0, 33,
    0, 0, 36, 0, 30, 0, 0, 29, 0, 37, 0, 0, 19, 0, 28, 0, 0, 30, 0, 24, 0,
    0, 28, 0, 0, 25, 0, 34, 0, 0, 30, 0, 29, 0, 0, 33, 0, 24, 0, 0, 20, 0,
    32, 0, 0, 32, 0, 35, 0, 0, 42, 0, 0, 25, 0, 37, 0, 0, 37, 0, 41, 0, 0,
    33, 0, 44, 0, 0, 43, 0, 42, 0, 0, 48, 0, 47, 0, 0, 55, 0, 0, 70, 0, 81,
    0, 0, 104, 0, 105, 0, 0, 107, 0, 94, 0, 0, 127, 0, 108, 0, 0, 113, 0,
    88, 0, 0, 79, 0, 0, 88, 0, 73, 0, 0, 67, 0, 60, 0, 0, 60, 0, 52, 0, 0,
    38, 0, 27, 0, 0, 33, 0, 0, 24, 0, 31, 0, 0, 25, 0, 30, 0, 0, 15, 0, 11,
    0, 0, 17, 0, 10, 0, 0, 7, 0, 11, 0, 0, 14, 0, 0, 16, 0, 8, 0, 0, 6, 0,
    14, 0, 0, 13, 0, 7, 0, 0, 7, 0, 8, 0, 0, 14, 0, 11, 0, 0, 6, 0, 0, 11,
    0, 8, 0, 0, 8, 0, 6, 0, 0, 6, 0, 8, 0, 0, 6, 0, 9, 0, 0, 8, 0, 9, 0, 0,
    11, 0, 0, 12, 0, 8, 0, 0, 9, 0, 14, 0, 0, 5, 0, 8, 0, 0, 9, 0, 6, 0, 0,
    9, 0, 4, 0, 0, 10, 0, 0, 12, 0, 9, 0, 0, 14, 0, 8, 0, 0, 9, 0, 14, 0, 0,
    10, 0, 11, 0, 0, 15, 0, 0, 6, 0, 8, 0, 0, 7, 0, 9, 0, 0, 6, 0, 9, 0, 0,
    12, 0, 9, 0, 0, 8, 0, 7, 0, 0, 12, 0, 0, 15, 0, 9, 0, 0, 15, 0, 16, 0,
    0, 21, 0, 24, 0, 0, 15, 0, 25, 0, 0, 28, 0, 28, 0, 0, 35, 0, 0, 41, 0,
    58, 0, 0, 74, 0, 150, 0, 0, 349, 0, 362, 0, 0, 689, 0, 1114, 0, 0, 71,
    0, 77, 0, 0, 46, 0, 0, 31, 0, 29, 0, 0, 35, 0, 13, 0, 0, 7, 0, 7, 0, 0,
    5, 0, 2, 0, 0, 4, 0, 1
};

static bhattacharyaDistance_F32_testParams_t    testParams[]=
{
    /********************************************
        {
           testPattern,
           *staticIn1, *staticIn2, staticOut,
           N
        },
    *********************************************/
    {
        STATIC,
        H1, H2, 0.0, /* Pre-tested Bhattacharya distance output expressed in uint32_t format */
        512
    },
    {
        CONSTANT,
        NULL, NULL, 0.0,
        32
    },
    {
        RANDOM,
        NULL, NULL, 0.0,
        64
    },
    {
        RANDOM,
        NULL, NULL, 0.0,
        128
    },
    {
        RANDOM,
        NULL, NULL, 0.0,
        256
    },
    {
        RANDOM,
        NULL, NULL, 0.0,
        1024
    },
    {
        RANDOM,
        NULL, NULL, 0.0,
        4096
    }
};

/*
 *  Sends the test parameter structure and number of tests
 */
void bhattacharyaDistance_F32_getTestParams(bhattacharyaDistance_F32_testParams_t * *params, int32_t *numTests)
{
    *params = testParams;
    *numTests = sizeof(testParams) / sizeof(bhattacharyaDistance_F32_testParams_t);
}

