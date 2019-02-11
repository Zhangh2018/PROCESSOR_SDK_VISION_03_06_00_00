/**
 *  \file     lnk_dsp2.cmd
 *
 *  \brief    This file contains the System Memory Map used by DSP2 binary
 *            for multicore mailbox app image.
 */

-stack  0x00500000                            /* Software Stack Size */
-heap   0x00500000                            /* Heap Area Size */
-e      _c_int00

/* Specify the System Memory Map */
MEMORY
{
    /* Code Section - 20MB */
    /* Data Section - 10MB */
    /* Stack - 5MB */
    /* Heap - 5MB */
    IRAM_MEM:     org = 0x00800000           len = 0x8000

    DDR3_IPU1_CPU0_CODE  : org = 0x8C800000, len = 0x00500000
    DDR3_IPU1_CPU0_DATA  : org = 0x8CD00000, len = 0x00A00000
    DDR3_IPU1_CPU0_STACK : org = 0x8D700000, len = 0x00500000
    DDR3_IPU1_CPU0_HEAP  : org = 0x8DC00000, len = 0x00500000

    DDR3_IPU1_CPU1_CODE  : org = 0x90000000, len = 0x00500000
    DDR3_IPU1_CPU1_DATA  : org = 0x90500000, len = 0x00A00000
    DDR3_IPU1_CPU1_STACK : org = 0x90F00000, len = 0x00500000
    DDR3_IPU1_CPU1_HEAP  : org = 0x91400000, len = 0x00500000

    DDR3_DSP1_CODE  : org = 0x83200000,      len = 0x01400000
    DDR3_DSP1_DATA  : org = 0x84600000,      len = 0x00A00000
    DDR3_DSP1_STACK : org = 0x85000000,      len = 0x00500000
    DDR3_DSP1_HEAP  : org = 0x85500000,      len = 0x00500000

    DDR3_DSP2_CODE  : org = 0x86400000,      len = 0x01400000
    DDR3_DSP2_DATA  : org = 0x87800000,      len = 0x00A00000
    DDR3_DSP2_STACK : org = 0x88200000,      len = 0x00500000
    DDR3_DSP2_HEAP  : org = 0x88700000,      len = 0x00500000

    DDR3_EVE1_CODE  : org = 0x89000000,      len = 0x01400000
    DDR3_EVE1_DATA  : org = 0x8AA00000,      len = 0x00A00000
    DDR3_EVE1_STACK : org = 0x8B400000,      len = 0x00500000
    DDR3_EVE1_HEAP  : org = 0x8B900000,      len = 0x00500000
}

/* Specify the Section Allocation into Memory */
SECTIONS
{
    .vects : load > IRAM_MEM
    .l2_int  : load > IRAM_MEM
    boot :
    {
        rts*.lib<boot.obj>(.text)
    }load > DDR3_DSP2_CODE ALIGN(0x400)

    .init        : load > DDR3_DSP2_DATA
    .cio         : load > DDR3_DSP2_DATA

    .text        : load > DDR3_DSP2_CODE /* Code */
    .data        : load > DDR3_DSP2_DATA /* Initialized Global and Static variables */
    .bss         : load > DDR3_DSP2_DATA /* Uninitialized or Zero initialized */
                                         /* Global and Static Variables       */
                    RUN_START(bss_start)
                    RUN_END(bss_end)
    .const       : load > DDR3_DSP2_DATA  /* Global Constants */
    .cinit       : load > DDR3_DSP2_DATA
    .stack       : load > DDR3_DSP2_STACK /* Software System Stack */
    .plt         : load > DDR3_DSP2_DATA
    .my_sect_ddr : load > DDR3_DSP2_DATA
    .far         : load > DDR3_DSP2_DATA
    .fardata     : load > DDR3_DSP2_DATA
    .neardata    : load > DDR3_DSP2_DATA
    .rodata    : load > DDR3_DSP2_DATA
    .switch      : load > DDR3_DSP2_DATA
}