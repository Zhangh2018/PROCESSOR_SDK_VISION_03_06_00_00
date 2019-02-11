#include <vcop\vcop.h>

typedef unsigned char uchar;

#pragma DATA_SECTION(__pblock_vcop_image_deinterleave_u8, ".vcop_parameter_block")
#pragma DATA_ALIGN(__pblock_vcop_image_deinterleave_u8, __ALIGNOF__(int));
unsigned short __pblock_vcop_image_deinterleave_u8[14];

unsigned int vcop_image_deinterleave_u8_param_count(void)
{
   return 14u;
}

unsigned int vcop_image_deinterleave_u8_ctrl_count(void)
{
   return 0u;
}

unsigned int vcop_image_deinterleave_u8_init(
   __vptr_uint8 pIn,
   unsigned short inCols,
   unsigned short inRows,
   __vptr_uint8 pOutY,
   __vptr_uint8 pOutUV,
   unsigned short pblock[])
{
   int __offset = 0;
   /* Loop 1 PREGS */
   __vcop_pblock_init16(pblock, __offset+_PREG(2), 0);
   __vcop_pblock_init16(pblock, __offset+_PREG(3), 0);
   __vcop_pblock_init16(pblock, __offset+_PREG(4), (inRows)-1u);
   __vcop_pblock_init16(pblock, __offset+_PREG(5), (inCols/((8u)*2))-1u);
   __vcop_pblock_init32(pblock, __offset+_PREG(6), (uchar *)pOutUV);
   __vcop_pblock_init16(pblock, __offset+_PREG(8), 16);
   __vcop_pblock_init16(pblock, __offset+_PREG(9), (inCols*sizeof(*pIn)) -(2*(8u*sizeof(*pIn)))*((inCols/((8u)*2))-1u));
   __vcop_pblock_init16(pblock, __offset+_PREG(10), 8);
   __vcop_pblock_init16(pblock, __offset+_PREG(11), ((inCols/2)*sizeof(*pIn)) -((8u*sizeof(*pIn)))*((inCols/((8u)*2))-1u));
   __vcop_pblock_init32(pblock, __offset+_PREG(12), (uchar *)pIn);
   __vcop_pblock_init32(pblock, __offset+_PREG(14), (uchar *)pOutY);
   __offset += 14;

   return 14u;
}

void vcop_image_deinterleave_u8_vloops(
   unsigned short pblock[])
{
   /* Kernel-wide Vector Registers */
   #pragma VCC_VREG("in00", 16);
   #pragma VCC_VREG("in01", 17);
   #pragma VCC_VREG("in10", 18);
   #pragma VCC_VREG("in11", 19);

   __vcop_param(&pblock[0]);

   /* VLOOP 1 Start */

   /* VLOOP Local Vector Registers */
   

   /* VLOOP Local Address Generators */
   #pragma EVE_REG("Addr1", "A0");
   #pragma EVE_REG("Addr2", "A1");
   /* VLOOP Loop Control Variables   */
   #pragma EVE_REG("I1", "I3");
   #pragma EVE_REG("I2", "I4");
   

   __vcop_vloop(__vcop_compute(), 6u, 7u, 1u);
   __vcop_vagen(_AGEN(0), _PREG(8), _PREG(9), _PREG(0), _PREG(0));
   __vcop_vagen(_AGEN(1), _PREG(10), _PREG(11), _PREG(0), _PREG(0));
   __vcop_vload(__vcop_sizeBU(), __vcop_dintrlv(), _PREG(12), _AGEN(0), _VPAIR(16,17), __vcop_alws());
   __vcop_vstore(__vcop_unconditional(), __vcop_sizeBU(), __vcop_npt(), __vcop_alws(), _VREG(17), _PREG(14), _AGEN(1), _PREG(0));
   __vcop_vstore(__vcop_unconditional(), __vcop_sizeBU(), __vcop_npt(), __vcop_alws(), _VREG(16), _PREG(6), _AGEN(1), _PREG(0));
   __vcop_vloop_end(1u);

}

void vcop_image_deinterleave_u8(
   __vptr_uint8 pIn,
   unsigned short inCols,
   unsigned short inRows,
   __vptr_uint8 pOutY,
   __vptr_uint8 pOutUV)
{
   VCOP_BUF_SWITCH_SET(WBUF_SYST, IBUFHB_SYST, IBUFLB_SYST,
                   IBUFHA_SYST, IBUFLA_SYST);
   vcop_image_deinterleave_u8_init(pIn, inCols, inRows, pOutY, pOutUV, __pblock_vcop_image_deinterleave_u8);

   VCOP_BUF_SWITCH_SET(WBUF_VCOP, IBUFHB_VCOP, IBUFLB_VCOP,
                   IBUFHA_VCOP, IBUFLA_VCOP);
   vcop_image_deinterleave_u8_vloops(__pblock_vcop_image_deinterleave_u8);

   _vcop_vloop_done();
   VCOP_BUF_SWITCH_SET(WBUF_SYST, IBUFHB_SYST, IBUFLB_SYST,
                   IBUFHA_SYST, IBUFLA_SYST);
}

void vcop_image_deinterleave_u8_custom(
   __vptr_uint8 pIn,
   unsigned short inCols,
   unsigned short inRows,
   __vptr_uint8 pOutY,
   __vptr_uint8 pOutUV,
   unsigned short pblock[])
{
   VCOP_BUF_SWITCH_SET(WBUF_SYST, IBUFHB_SYST, IBUFLB_SYST,
                   IBUFHA_SYST, IBUFLA_SYST);
   vcop_image_deinterleave_u8_init(pIn, inCols, inRows, pOutY, pOutUV, pblock);

   VCOP_BUF_SWITCH_SET(WBUF_VCOP, IBUFHB_VCOP, IBUFLB_VCOP,
                   IBUFHA_VCOP, IBUFLA_VCOP);
   vcop_image_deinterleave_u8_vloops(pblock);

   _vcop_vloop_done();
   VCOP_BUF_SWITCH_SET(WBUF_SYST, IBUFHB_SYST, IBUFLB_SYST,
                   IBUFHA_SYST, IBUFLA_SYST);
}

