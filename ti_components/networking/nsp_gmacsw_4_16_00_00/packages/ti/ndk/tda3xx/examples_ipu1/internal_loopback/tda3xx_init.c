/*
 * Copyright (C) 2014, Texas Instruments Incorporated  - http://www.ti.com/
 *
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *    Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 *    Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 *    Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/**
 *   @file  tda3xx_init.c
 *
 *   @brief
 *       Do all necessary board level initialization for NDK example.
 *
 */


/*---------------------------------------------------------------------------*\
|                                Header Files                                 |
\*---------------------------------------------------------------------------*/

/* Standard language headers */
#include <stddef.h>
#include <stdio.h>
#include <inttypes.h>
#include <string.h>

/* OS/Posix headers */

/* NDK Dependencies */
#include <ti/ndk/inc/netmain.h>

/* NSP Dependencies */
#include <ti/nsp/drv/inc/gmacsw_config.h>

/* Project dependency headers */


/*---------------------------------------------------------------------------*\
|                             Extern Declarations                             |
\*---------------------------------------------------------------------------*/


/*---------------------------------------------------------------------------*\
|                            Local Macros/Defines                             |
\*---------------------------------------------------------------------------*/

/* Ethernet MAC ID registers(Devcice configuration) from EFuse */
#define MAC_ID0_LO                (*(volatile uint32_t*)0x4A002514)
#define MAC_ID0_HI                (*(volatile uint32_t*)0x4A002518)
#define MAC_ID1_LO                (*(volatile uint32_t*)0x4A00251C)
#define MAC_ID1_HI                (*(volatile uint32_t*)0x4A002520)


/*---------------------------------------------------------------------------*\
|                            Local Typedefs/Enums                             |
\*---------------------------------------------------------------------------*/


/*---------------------------------------------------------------------------*\
|                         Local Function Declarations                         |
\*---------------------------------------------------------------------------*/


/*---------------------------------------------------------------------------*\
|                         Local Variable Declarations                         |
\*---------------------------------------------------------------------------*/


/*---------------------------------------------------------------------------*\
|                         Global Variable Declarations                        |
\*---------------------------------------------------------------------------*/


/*---------------------------------------------------------------------------*\
|                           Local Function Definitions                        |
\*---------------------------------------------------------------------------*/


/*---------------------------------------------------------------------------*\
|                          Global Function Definitions                        |
\*---------------------------------------------------------------------------*/

/*
 * We changed our CFG file to point call this private init
 * function. Here we initialize our some particulars for
 * our board/device.
 */
void tda3xx_init( void )
{
    /* Nothing to do for this platform */
}

/*
 * GMACSW_getConfig()
 *
 * This is a callback from the Ethernet driver. This function
 * is used by the driver to an application-specific config structure
 * for the GMACSW driver. Typically it will be used to provide the
 * MAC address(es) and the link status update callback function.
 */
GMACSW_Config *GMACSW_getConfig(void)
{
    int i = 0;
    uint8_t macAddr[6];

    /* Get digital loopback starting config */
    GMACSW_Config *pGMACSWConfig = GMACSW_CONFIG_getDLBConfig();

    /* Set count of active MAC ports */
    pGMACSWConfig->activeMACPortMask = PORT_MASK_MAC_BOTH;

    /* Update default config with the correct MAC addresses */
    for(i=0; i<MAC_NUM_PORTS; i++)
    {
        if ( (1U << i) & pGMACSWConfig->activeMACPortMask )
        {
            if (0==i)
            {
                /* Get the MAC Address from control module register space */
                macAddr[5] = (uint8_t)((MAC_ID0_LO & 0x000000FFu) >> 0u );
                macAddr[4] = (uint8_t)((MAC_ID0_LO & 0x0000FF00u) >> 8u );
                macAddr[3] = (uint8_t)((MAC_ID0_LO & 0x00FF0000u) >> 16u);

                macAddr[2] = (uint8_t)((MAC_ID0_HI & 0x000000FFu) >> 0u );
                macAddr[1] = (uint8_t)((MAC_ID0_HI & 0x0000FF00u) >> 8u );
                macAddr[0] = (uint8_t)((MAC_ID0_HI & 0x00FF0000u) >> 16u);
            }
            else
            {
                /* Get the MAC Address from control module register space */
                macAddr[5] = (uint8_t)((MAC_ID1_LO & 0x000000FFu) >> 0u );
                macAddr[4] = (uint8_t)((MAC_ID1_LO & 0x0000FF00u) >> 8u );
                macAddr[3] = (uint8_t)((MAC_ID1_LO & 0x00FF0000u) >> 16u);

                macAddr[2] = (uint8_t)((MAC_ID1_HI & 0x000000FFu) >> 0u );
                macAddr[1] = (uint8_t)((MAC_ID1_HI & 0x0000FF00u) >> 8u );
                macAddr[0] = (uint8_t)((MAC_ID1_HI & 0x00FF0000u) >> 16u);
            }

            printf("\nMAC Port %d Address:\n\t%02x-%02x-%02x-%02x-%02x-%02x\n", i,
                    macAddr[0], macAddr[1], macAddr[2],
                    macAddr[3], macAddr[4], macAddr[5]);

            /* Copy the correct MAC address into the driver config */
            memcpy( (void *)&(pGMACSWConfig->macInitCfg[i].macAddr[0]), (void *)&macAddr[0], 6 );

            /*
            * Adjust the PHY mask numbers for the Vayu EVM. The first MAC
            * port is connected to a PHY with address = 2, the second MAC
            * port is connected to a PHY with address = 3.
            */
            pGMACSWConfig->macInitCfg[i].phyMask = 0x1 << i;
        }
    }

    /* Return the config */
    return pGMACSWConfig;
}


/*---------------------------------------------------------------------------*\
|                           Local Function Definitions                        |
\*---------------------------------------------------------------------------*/


/*---------------------------------------------------------------------------*\
|                                 End of File                                 |
\*---------------------------------------------------------------------------*/
