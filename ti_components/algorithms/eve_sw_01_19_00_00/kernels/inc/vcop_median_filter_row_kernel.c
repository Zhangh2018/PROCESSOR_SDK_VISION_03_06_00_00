#include <vcop\vcop.h>

typedef unsigned char uchar;

#pragma DATA_SECTION(__pblock_vcop_median_3tap_filt_row_char, ".vcop_parameter_block")
#pragma DATA_ALIGN(__pblock_vcop_median_3tap_filt_row_char, __ALIGNOF__(int));
unsigned short __pblock_vcop_median_3tap_filt_row_char[16];

unsigned int vcop_median_3tap_filt_row_char_param_count(void)
{
   return 16u;
}

unsigned int vcop_median_3tap_filt_row_char_ctrl_count(void)
{
   return 0u;
}

unsigned int vcop_median_3tap_filt_row_char_init(
   __vptr_int8 input_ptr,
   __vptr_int8 output_ptr,
   unsigned short input_width,
   unsigned short input_height,
   unsigned short output_width,
   unsigned short output_height,
   unsigned short compute_width,
   unsigned short compute_height,
   unsigned short median_size,
   unsigned short input_type,
   unsigned short output_type,
   unsigned short pblock[])
{
   int __offset = 0;
   /* Loop 1 PREGS */
   __vcop_pblock_init16(pblock, __offset+_PREG(2), 0);
   __vcop_pblock_init16(pblock, __offset+_PREG(3), 0);
   __vcop_pblock_init16(pblock, __offset+_PREG(4), (compute_height)-1u);
   __vcop_pblock_init16(pblock, __offset+_PREG(5), (compute_width/(2 * (8u)))-1u);
   __vcop_pblock_init32(pblock, __offset+_PREG(6), (uchar *)input_ptr+2*sizeof(*input_ptr));
   __vcop_pblock_init32(pblock, __offset+_PREG(8), (uchar *)output_ptr);
   __vcop_pblock_init16(pblock, __offset+_PREG(10), 16);
   __vcop_pblock_init16(pblock, __offset+_PREG(11), (input_width*sizeof(*input_ptr)) -(2*8u*sizeof(*input_ptr))*((compute_width/(2 * (8u)))-1u));
   __vcop_pblock_init16(pblock, __offset+_PREG(12), (output_width*sizeof(*output_ptr)) -(2*8u*sizeof(*output_ptr))*((compute_width/(2 * (8u)))-1u));
   __vcop_pblock_init32(pblock, __offset+_PREG(14), (uchar *)input_ptr);
   __vcop_pblock_init32(pblock, __offset+_PREG(16), (uchar *)input_ptr+1*sizeof(*input_ptr));
   __offset += 16;

   return 16u;
}

void vcop_median_3tap_filt_row_char_vloops(
   unsigned short pblock[])
{
   /* Kernel-wide Vector Registers */
   #pragma VCC_VREG("high_e", 16);
   #pragma VCC_VREG("high_o", 17);
   #pragma VCC_VREG("low_e", 18);
   #pragma VCC_VREG("low_o", 19);
   #pragma VCC_VREG("mid_e", 20);
   #pragma VCC_VREG("mid_o", 21);

   __vcop_param(&pblock[0]);

   /* VLOOP 1 Start */

   /* VLOOP Local Vector Registers */
   

   /* VLOOP Local Address Generators */
   #pragma EVE_REG("dataAddr0", "A0");
   #pragma EVE_REG("dataAddr1", "A1");
   /* VLOOP Loop Control Variables   */
   #pragma EVE_REG("I1", "I3");
   #pragma EVE_REG("I2", "I4");
   

   __vcop_vloop(__vcop_compute(), 13u, 8u, 1u);
   __vcop_vagen(_AGEN(0), _PREG(10), _PREG(11), _PREG(0), _PREG(0));
   __vcop_vagen(_AGEN(1), _PREG(10), _PREG(12), _PREG(0), _PREG(0));
   __vcop_vload(__vcop_sizeB(), __vcop_dintrlv(), _PREG(14), _AGEN(0), _VPAIR(18,19), __vcop_alws());
   __vcop_vload(__vcop_sizeB(), __vcop_dintrlv(), _PREG(16), _AGEN(0), _VPAIR(20,21), __vcop_alws());
   __vcop_vload(__vcop_sizeB(), __vcop_dintrlv(), _PREG(6), _AGEN(0), _VPAIR(16,17), __vcop_alws());
   __vcop_vsort2(_VREG(20), _VREG(16));
   __vcop_vsort2(_VREG(21), _VREG(17));
   __vcop_vsort2(_VREG(18), _VREG(16));
   __vcop_vsort2(_VREG(19), _VREG(17));
   __vcop_vsort2(_VREG(18), _VREG(20));
   __vcop_vsort2(_VREG(19), _VREG(21));
   __vcop_vstore(__vcop_unconditional(), __vcop_sizeB(), __vcop_intrlv(), __vcop_alws(), _VPAIR(20,21), _PREG(8), _AGEN(1), _PREG(0));
   __vcop_vloop_end(1u);

}

void vcop_median_3tap_filt_row_char(
   __vptr_int8 input_ptr,
   __vptr_int8 output_ptr,
   unsigned short input_width,
   unsigned short input_height,
   unsigned short output_width,
   unsigned short output_height,
   unsigned short compute_width,
   unsigned short compute_height,
   unsigned short median_size,
   unsigned short input_type,
   unsigned short output_type)
{
   VCOP_BUF_SWITCH_SET(WBUF_SYST, IBUFHB_SYST, IBUFLB_SYST,
                   IBUFHA_SYST, IBUFLA_SYST);
   vcop_median_3tap_filt_row_char_init(input_ptr, output_ptr, input_width, input_height, output_width, output_height, compute_width, compute_height, median_size, input_type, output_type, __pblock_vcop_median_3tap_filt_row_char);

   VCOP_BUF_SWITCH_SET(WBUF_VCOP, IBUFHB_VCOP, IBUFLB_VCOP,
                   IBUFHA_VCOP, IBUFLA_VCOP);
   vcop_median_3tap_filt_row_char_vloops(__pblock_vcop_median_3tap_filt_row_char);

   _vcop_vloop_done();
   VCOP_BUF_SWITCH_SET(WBUF_SYST, IBUFHB_SYST, IBUFLB_SYST,
                   IBUFHA_SYST, IBUFLA_SYST);
}

void vcop_median_3tap_filt_row_char_custom(
   __vptr_int8 input_ptr,
   __vptr_int8 output_ptr,
   unsigned short input_width,
   unsigned short input_height,
   unsigned short output_width,
   unsigned short output_height,
   unsigned short compute_width,
   unsigned short compute_height,
   unsigned short median_size,
   unsigned short input_type,
   unsigned short output_type,
   unsigned short pblock[])
{
   VCOP_BUF_SWITCH_SET(WBUF_SYST, IBUFHB_SYST, IBUFLB_SYST,
                   IBUFHA_SYST, IBUFLA_SYST);
   vcop_median_3tap_filt_row_char_init(input_ptr, output_ptr, input_width, input_height, output_width, output_height, compute_width, compute_height, median_size, input_type, output_type, pblock);

   VCOP_BUF_SWITCH_SET(WBUF_VCOP, IBUFHB_VCOP, IBUFLB_VCOP,
                   IBUFHA_VCOP, IBUFLA_VCOP);
   vcop_median_3tap_filt_row_char_vloops(pblock);

   _vcop_vloop_done();
   VCOP_BUF_SWITCH_SET(WBUF_SYST, IBUFHB_SYST, IBUFLB_SYST,
                   IBUFHA_SYST, IBUFLA_SYST);
}

#pragma DATA_SECTION(__pblock_vcop_median_3tap_filt_row_short, ".vcop_parameter_block")
#pragma DATA_ALIGN(__pblock_vcop_median_3tap_filt_row_short, __ALIGNOF__(int));
unsigned short __pblock_vcop_median_3tap_filt_row_short[24];

unsigned int vcop_median_3tap_filt_row_short_param_count(void)
{
   return 24u;
}

unsigned int vcop_median_3tap_filt_row_short_ctrl_count(void)
{
   return 0u;
}

unsigned int vcop_median_3tap_filt_row_short_init(
   __vptr_int16 input_ptr,
   __vptr_int16 output_ptr,
   unsigned short input_width,
   unsigned short input_height,
   unsigned short output_width,
   unsigned short output_height,
   unsigned short compute_width,
   unsigned short compute_height,
   unsigned short median_size,
   unsigned short input_type,
   unsigned short output_type,
   unsigned short pblock[])
{
   int __offset = 0;
   /* Loop 1 PREGS */
   __vcop_pblock_init16(pblock, __offset+_PREG(2), 0);
   __vcop_pblock_init16(pblock, __offset+_PREG(3), 0);
   __vcop_pblock_init16(pblock, __offset+_PREG(4), (compute_height)-1u);
   __vcop_pblock_init16(pblock, __offset+_PREG(5), (compute_width/(2 * (8u)))-1u);
   __vcop_pblock_init32(pblock, __offset+_PREG(6), (uchar *)input_ptr+2*sizeof(*input_ptr));
   __vcop_pblock_init32(pblock, __offset+_PREG(8), (uchar *)input_ptr+8*sizeof(*input_ptr));
   __vcop_pblock_init32(pblock, __offset+_PREG(10), (uchar *)input_ptr+9*sizeof(*input_ptr));
   __vcop_pblock_init32(pblock, __offset+_PREG(12), (uchar *)input_ptr+10*sizeof(*input_ptr));
   __vcop_pblock_init32(pblock, __offset+_PREG(14), (uchar *)output_ptr);
   __vcop_pblock_init32(pblock, __offset+_PREG(16), (uchar *)output_ptr+8*sizeof(*output_ptr));
   __vcop_pblock_init16(pblock, __offset+_PREG(18), 32);
   __vcop_pblock_init16(pblock, __offset+_PREG(19), (input_width*sizeof(*input_ptr)) -(2*8u*sizeof(*input_ptr))*((compute_width/(2 * (8u)))-1u));
   __vcop_pblock_init16(pblock, __offset+_PREG(20), (output_width*sizeof(*output_ptr)) -(2*8u*sizeof(*output_ptr))*((compute_width/(2 * (8u)))-1u));
   __vcop_pblock_init32(pblock, __offset+_PREG(22), (uchar *)input_ptr+0*sizeof(*input_ptr));
   __vcop_pblock_init32(pblock, __offset+_PREG(24), (uchar *)input_ptr+1*sizeof(*input_ptr));
   __offset += 24;

   return 24u;
}

void vcop_median_3tap_filt_row_short_vloops(
   unsigned short pblock[])
{
   /* Kernel-wide Vector Registers */
   #pragma VCC_VREG("high_e", 16);
   #pragma VCC_VREG("high_o", 17);
   #pragma VCC_VREG("low_e", 18);
   #pragma VCC_VREG("low_o", 19);
   #pragma VCC_VREG("mid_e", 20);
   #pragma VCC_VREG("mid_o", 21);

   __vcop_param(&pblock[0]);

   /* VLOOP 1 Start */

   /* VLOOP Local Vector Registers */
   

   /* VLOOP Local Address Generators */
   #pragma EVE_REG("dataAddr0", "A0");
   #pragma EVE_REG("dataAddr1", "A1");
   /* VLOOP Loop Control Variables   */
   #pragma EVE_REG("I1", "I3");
   #pragma EVE_REG("I2", "I4");
   

   __vcop_vloop(__vcop_compute(), 17u, 12u, 1u);
   __vcop_vagen(_AGEN(0), _PREG(18), _PREG(19), _PREG(0), _PREG(0));
   __vcop_vagen(_AGEN(1), _PREG(18), _PREG(20), _PREG(0), _PREG(0));
   __vcop_vload(__vcop_sizeH(), __vcop_npt(), _PREG(22), _AGEN(0), _VREG(18), __vcop_alws());
   __vcop_vload(__vcop_sizeH(), __vcop_npt(), _PREG(24), _AGEN(0), _VREG(20), __vcop_alws());
   __vcop_vload(__vcop_sizeH(), __vcop_npt(), _PREG(6), _AGEN(0), _VREG(16), __vcop_alws());
   __vcop_vload(__vcop_sizeH(), __vcop_npt(), _PREG(8), _AGEN(0), _VREG(19), __vcop_alws());
   __vcop_vload(__vcop_sizeH(), __vcop_npt(), _PREG(10), _AGEN(0), _VREG(21), __vcop_alws());
   __vcop_vload(__vcop_sizeH(), __vcop_npt(), _PREG(12), _AGEN(0), _VREG(17), __vcop_alws());
   __vcop_vsort2(_VREG(20), _VREG(16));
   __vcop_vsort2(_VREG(21), _VREG(17));
   __vcop_vsort2(_VREG(18), _VREG(16));
   __vcop_vsort2(_VREG(19), _VREG(17));
   __vcop_vsort2(_VREG(18), _VREG(20));
   __vcop_vsort2(_VREG(19), _VREG(21));
   __vcop_vstore(__vcop_unconditional(), __vcop_sizeH(), __vcop_npt(), __vcop_alws(), _VREG(20), _PREG(14), _AGEN(1), _PREG(0));
   __vcop_vstore(__vcop_unconditional(), __vcop_sizeH(), __vcop_npt(), __vcop_alws(), _VREG(21), _PREG(16), _AGEN(1), _PREG(0));
   __vcop_vloop_end(1u);

}

void vcop_median_3tap_filt_row_short(
   __vptr_int16 input_ptr,
   __vptr_int16 output_ptr,
   unsigned short input_width,
   unsigned short input_height,
   unsigned short output_width,
   unsigned short output_height,
   unsigned short compute_width,
   unsigned short compute_height,
   unsigned short median_size,
   unsigned short input_type,
   unsigned short output_type)
{
   VCOP_BUF_SWITCH_SET(WBUF_SYST, IBUFHB_SYST, IBUFLB_SYST,
                   IBUFHA_SYST, IBUFLA_SYST);
   vcop_median_3tap_filt_row_short_init(input_ptr, output_ptr, input_width, input_height, output_width, output_height, compute_width, compute_height, median_size, input_type, output_type, __pblock_vcop_median_3tap_filt_row_short);

   VCOP_BUF_SWITCH_SET(WBUF_VCOP, IBUFHB_VCOP, IBUFLB_VCOP,
                   IBUFHA_VCOP, IBUFLA_VCOP);
   vcop_median_3tap_filt_row_short_vloops(__pblock_vcop_median_3tap_filt_row_short);

   _vcop_vloop_done();
   VCOP_BUF_SWITCH_SET(WBUF_SYST, IBUFHB_SYST, IBUFLB_SYST,
                   IBUFHA_SYST, IBUFLA_SYST);
}

void vcop_median_3tap_filt_row_short_custom(
   __vptr_int16 input_ptr,
   __vptr_int16 output_ptr,
   unsigned short input_width,
   unsigned short input_height,
   unsigned short output_width,
   unsigned short output_height,
   unsigned short compute_width,
   unsigned short compute_height,
   unsigned short median_size,
   unsigned short input_type,
   unsigned short output_type,
   unsigned short pblock[])
{
   VCOP_BUF_SWITCH_SET(WBUF_SYST, IBUFHB_SYST, IBUFLB_SYST,
                   IBUFHA_SYST, IBUFLA_SYST);
   vcop_median_3tap_filt_row_short_init(input_ptr, output_ptr, input_width, input_height, output_width, output_height, compute_width, compute_height, median_size, input_type, output_type, pblock);

   VCOP_BUF_SWITCH_SET(WBUF_VCOP, IBUFHB_VCOP, IBUFLB_VCOP,
                   IBUFHA_VCOP, IBUFLA_VCOP);
   vcop_median_3tap_filt_row_short_vloops(pblock);

   _vcop_vloop_done();
   VCOP_BUF_SWITCH_SET(WBUF_SYST, IBUFHB_SYST, IBUFLB_SYST,
                   IBUFHA_SYST, IBUFLA_SYST);
}

#pragma DATA_SECTION(__pblock_vcop_median_5tap_filt_row_char, ".vcop_parameter_block")
#pragma DATA_ALIGN(__pblock_vcop_median_5tap_filt_row_char, __ALIGNOF__(int));
unsigned short __pblock_vcop_median_5tap_filt_row_char[20];

unsigned int vcop_median_5tap_filt_row_char_param_count(void)
{
   return 20u;
}

unsigned int vcop_median_5tap_filt_row_char_ctrl_count(void)
{
   return 0u;
}

unsigned int vcop_median_5tap_filt_row_char_init(
   __vptr_int8 input_ptr,
   __vptr_int8 output_ptr,
   unsigned short input_width,
   unsigned short input_height,
   unsigned short output_width,
   unsigned short output_height,
   unsigned short compute_width,
   unsigned short compute_height,
   unsigned short median_size,
   unsigned short input_type,
   unsigned short output_type,
   unsigned short pblock[])
{
   int __offset = 0;
   /* Loop 1 PREGS */
   __vcop_pblock_init16(pblock, __offset+_PREG(2), 0);
   __vcop_pblock_init16(pblock, __offset+_PREG(3), 0);
   __vcop_pblock_init16(pblock, __offset+_PREG(4), (compute_height)-1u);
   __vcop_pblock_init16(pblock, __offset+_PREG(5), (compute_width/(2 * (8u)))-1u);
   __vcop_pblock_init32(pblock, __offset+_PREG(6), (uchar *)input_ptr+2*sizeof(*input_ptr));
   __vcop_pblock_init32(pblock, __offset+_PREG(8), (uchar *)input_ptr+3*sizeof(*input_ptr));
   __vcop_pblock_init32(pblock, __offset+_PREG(10), (uchar *)input_ptr+4*sizeof(*input_ptr));
   __vcop_pblock_init32(pblock, __offset+_PREG(12), (uchar *)output_ptr);
   __vcop_pblock_init16(pblock, __offset+_PREG(14), 16);
   __vcop_pblock_init16(pblock, __offset+_PREG(15), (input_width*sizeof(*input_ptr)) -(2*8u*sizeof(*input_ptr))*((compute_width/(2 * (8u)))-1u));
   __vcop_pblock_init16(pblock, __offset+_PREG(16), (output_width*sizeof(*output_ptr)) -(2*8u*sizeof(*output_ptr))*((compute_width/(2 * (8u)))-1u));
   __vcop_pblock_init32(pblock, __offset+_PREG(18), (uchar *)input_ptr+0*sizeof(*input_ptr));
   __vcop_pblock_init32(pblock, __offset+_PREG(20), (uchar *)input_ptr+1*sizeof(*input_ptr));
   __offset += 20;

   return 20u;
}

void vcop_median_5tap_filt_row_char_vloops(
   unsigned short pblock[])
{
   /* Kernel-wide Vector Registers */
   #pragma VCC_VREG("data0_e", 16);
   #pragma VCC_VREG("data0_o", 17);
   #pragma VCC_VREG("data1_e", 18);
   #pragma VCC_VREG("data1_o", 19);
   #pragma VCC_VREG("data2_e", 20);
   #pragma VCC_VREG("data2_o", 21);
   #pragma VCC_VREG("data3_e", 22);
   #pragma VCC_VREG("data3_o", 23);
   #pragma VCC_VREG("data4_e", 24);
   #pragma VCC_VREG("data4_o", 25);

   __vcop_param(&pblock[0]);

   /* VLOOP 1 Start */

   /* VLOOP Local Vector Registers */
   

   /* VLOOP Local Address Generators */
   #pragma EVE_REG("dataAddr0", "A0");
   #pragma EVE_REG("dataAddr1", "A1");
   /* VLOOP Loop Control Variables   */
   #pragma EVE_REG("I1", "I3");
   #pragma EVE_REG("I2", "I4");
   

   __vcop_vloop(__vcop_compute(), 27u, 10u, 1u);
   __vcop_vagen(_AGEN(0), _PREG(14), _PREG(15), _PREG(0), _PREG(0));
   __vcop_vagen(_AGEN(1), _PREG(14), _PREG(16), _PREG(0), _PREG(0));
   __vcop_vload(__vcop_sizeB(), __vcop_dintrlv(), _PREG(18), _AGEN(0), _VPAIR(24,25), __vcop_alws());
   __vcop_vload(__vcop_sizeB(), __vcop_dintrlv(), _PREG(20), _AGEN(0), _VPAIR(22,23), __vcop_alws());
   __vcop_vload(__vcop_sizeB(), __vcop_dintrlv(), _PREG(6), _AGEN(0), _VPAIR(20,21), __vcop_alws());
   __vcop_vload(__vcop_sizeB(), __vcop_dintrlv(), _PREG(8), _AGEN(0), _VPAIR(18,19), __vcop_alws());
   __vcop_vload(__vcop_sizeB(), __vcop_dintrlv(), _PREG(10), _AGEN(0), _VPAIR(16,17), __vcop_alws());
   __vcop_vsort2(_VREG(16), _VREG(18));
   __vcop_vsort2(_VREG(17), _VREG(19));
   __vcop_vsort2(_VREG(18), _VREG(20));
   __vcop_vsort2(_VREG(19), _VREG(21));
   __vcop_vsort2(_VREG(20), _VREG(22));
   __vcop_vsort2(_VREG(21), _VREG(23));
   __vcop_vsort2(_VREG(22), _VREG(24));
   __vcop_vsort2(_VREG(23), _VREG(25));
   __vcop_vsort2(_VREG(16), _VREG(18));
   __vcop_vsort2(_VREG(17), _VREG(19));
   __vcop_vsort2(_VREG(18), _VREG(20));
   __vcop_vsort2(_VREG(19), _VREG(21));
   __vcop_vsort2(_VREG(20), _VREG(22));
   __vcop_vsort2(_VREG(21), _VREG(23));
   __vcop_vsort2(_VREG(16), _VREG(18));
   __vcop_vsort2(_VREG(17), _VREG(19));
   __vcop_vsort2(_VREG(18), _VREG(20));
   __vcop_vsort2(_VREG(19), _VREG(21));
   __vcop_vstore(__vcop_unconditional(), __vcop_sizeB(), __vcop_intrlv(), __vcop_alws(), _VPAIR(20,21), _PREG(12), _AGEN(1), _PREG(0));
   __vcop_vloop_end(1u);

}

void vcop_median_5tap_filt_row_char(
   __vptr_int8 input_ptr,
   __vptr_int8 output_ptr,
   unsigned short input_width,
   unsigned short input_height,
   unsigned short output_width,
   unsigned short output_height,
   unsigned short compute_width,
   unsigned short compute_height,
   unsigned short median_size,
   unsigned short input_type,
   unsigned short output_type)
{
   VCOP_BUF_SWITCH_SET(WBUF_SYST, IBUFHB_SYST, IBUFLB_SYST,
                   IBUFHA_SYST, IBUFLA_SYST);
   vcop_median_5tap_filt_row_char_init(input_ptr, output_ptr, input_width, input_height, output_width, output_height, compute_width, compute_height, median_size, input_type, output_type, __pblock_vcop_median_5tap_filt_row_char);

   VCOP_BUF_SWITCH_SET(WBUF_VCOP, IBUFHB_VCOP, IBUFLB_VCOP,
                   IBUFHA_VCOP, IBUFLA_VCOP);
   vcop_median_5tap_filt_row_char_vloops(__pblock_vcop_median_5tap_filt_row_char);

   _vcop_vloop_done();
   VCOP_BUF_SWITCH_SET(WBUF_SYST, IBUFHB_SYST, IBUFLB_SYST,
                   IBUFHA_SYST, IBUFLA_SYST);
}

void vcop_median_5tap_filt_row_char_custom(
   __vptr_int8 input_ptr,
   __vptr_int8 output_ptr,
   unsigned short input_width,
   unsigned short input_height,
   unsigned short output_width,
   unsigned short output_height,
   unsigned short compute_width,
   unsigned short compute_height,
   unsigned short median_size,
   unsigned short input_type,
   unsigned short output_type,
   unsigned short pblock[])
{
   VCOP_BUF_SWITCH_SET(WBUF_SYST, IBUFHB_SYST, IBUFLB_SYST,
                   IBUFHA_SYST, IBUFLA_SYST);
   vcop_median_5tap_filt_row_char_init(input_ptr, output_ptr, input_width, input_height, output_width, output_height, compute_width, compute_height, median_size, input_type, output_type, pblock);

   VCOP_BUF_SWITCH_SET(WBUF_VCOP, IBUFHB_VCOP, IBUFLB_VCOP,
                   IBUFHA_VCOP, IBUFLA_VCOP);
   vcop_median_5tap_filt_row_char_vloops(pblock);

   _vcop_vloop_done();
   VCOP_BUF_SWITCH_SET(WBUF_SYST, IBUFHB_SYST, IBUFLB_SYST,
                   IBUFHA_SYST, IBUFLA_SYST);
}

#pragma DATA_SECTION(__pblock_vcop_median_5tap_filt_row_short, ".vcop_parameter_block")
#pragma DATA_ALIGN(__pblock_vcop_median_5tap_filt_row_short, __ALIGNOF__(int));
unsigned short __pblock_vcop_median_5tap_filt_row_short[20];

unsigned int vcop_median_5tap_filt_row_short_param_count(void)
{
   return 20u;
}

unsigned int vcop_median_5tap_filt_row_short_ctrl_count(void)
{
   return 0u;
}

unsigned int vcop_median_5tap_filt_row_short_init(
   __vptr_int16 input_ptr,
   __vptr_int16 output_ptr,
   unsigned short input_width,
   unsigned short input_height,
   unsigned short output_width,
   unsigned short output_height,
   unsigned short compute_width,
   unsigned short compute_height,
   unsigned short median_size,
   unsigned short input_type,
   unsigned short output_type,
   unsigned short pblock[])
{
   int __offset = 0;
   /* Loop 1 PREGS */
   __vcop_pblock_init16(pblock, __offset+_PREG(2), 0);
   __vcop_pblock_init16(pblock, __offset+_PREG(3), 0);
   __vcop_pblock_init16(pblock, __offset+_PREG(4), (compute_height)-1u);
   __vcop_pblock_init16(pblock, __offset+_PREG(5), (compute_width/(8u))-1u);
   __vcop_pblock_init32(pblock, __offset+_PREG(6), (uchar *)input_ptr+2*sizeof(*input_ptr));
   __vcop_pblock_init32(pblock, __offset+_PREG(8), (uchar *)input_ptr+3*sizeof(*input_ptr));
   __vcop_pblock_init32(pblock, __offset+_PREG(10), (uchar *)input_ptr+4*sizeof(*input_ptr));
   __vcop_pblock_init32(pblock, __offset+_PREG(12), (uchar *)output_ptr);
   __vcop_pblock_init16(pblock, __offset+_PREG(14), 16);
   __vcop_pblock_init16(pblock, __offset+_PREG(15), (input_width*sizeof(*input_ptr)) -(8u*sizeof(*input_ptr))*((compute_width/(8u))-1u));
   __vcop_pblock_init16(pblock, __offset+_PREG(16), (output_width*sizeof(*output_ptr)) -(8u*sizeof(*output_ptr))*((compute_width/(8u))-1u));
   __vcop_pblock_init32(pblock, __offset+_PREG(18), (uchar *)input_ptr+0*sizeof(*input_ptr));
   __vcop_pblock_init32(pblock, __offset+_PREG(20), (uchar *)input_ptr+1*sizeof(*input_ptr));
   __offset += 20;

   return 20u;
}

void vcop_median_5tap_filt_row_short_vloops(
   unsigned short pblock[])
{
   /* Kernel-wide Vector Registers */
   #pragma VCC_VREG("data0_e", 16);
   #pragma VCC_VREG("data1_e", 17);
   #pragma VCC_VREG("data2_e", 18);
   #pragma VCC_VREG("data3_e", 19);
   #pragma VCC_VREG("data4_e", 20);

   __vcop_param(&pblock[0]);

   /* VLOOP 1 Start */

   /* VLOOP Local Vector Registers */
   

   /* VLOOP Local Address Generators */
   #pragma EVE_REG("dataAddr0", "A0");
   #pragma EVE_REG("dataAddr1", "A1");
   /* VLOOP Loop Control Variables   */
   #pragma EVE_REG("I1", "I3");
   #pragma EVE_REG("I2", "I4");
   

   __vcop_vloop(__vcop_compute(), 18u, 10u, 1u);
   __vcop_vagen(_AGEN(0), _PREG(14), _PREG(15), _PREG(0), _PREG(0));
   __vcop_vagen(_AGEN(1), _PREG(14), _PREG(16), _PREG(0), _PREG(0));
   __vcop_vload(__vcop_sizeH(), __vcop_npt(), _PREG(18), _AGEN(0), _VREG(20), __vcop_alws());
   __vcop_vload(__vcop_sizeH(), __vcop_npt(), _PREG(20), _AGEN(0), _VREG(19), __vcop_alws());
   __vcop_vload(__vcop_sizeH(), __vcop_npt(), _PREG(6), _AGEN(0), _VREG(18), __vcop_alws());
   __vcop_vload(__vcop_sizeH(), __vcop_npt(), _PREG(8), _AGEN(0), _VREG(17), __vcop_alws());
   __vcop_vload(__vcop_sizeH(), __vcop_npt(), _PREG(10), _AGEN(0), _VREG(16), __vcop_alws());
   __vcop_vsort2(_VREG(16), _VREG(17));
   __vcop_vsort2(_VREG(17), _VREG(18));
   __vcop_vsort2(_VREG(18), _VREG(19));
   __vcop_vsort2(_VREG(19), _VREG(20));
   __vcop_vsort2(_VREG(16), _VREG(17));
   __vcop_vsort2(_VREG(17), _VREG(18));
   __vcop_vsort2(_VREG(18), _VREG(19));
   __vcop_vsort2(_VREG(16), _VREG(17));
   __vcop_vsort2(_VREG(17), _VREG(18));
   __vcop_vstore(__vcop_unconditional(), __vcop_sizeH(), __vcop_npt(), __vcop_alws(), _VREG(18), _PREG(12), _AGEN(1), _PREG(0));
   __vcop_vloop_end(1u);

}

void vcop_median_5tap_filt_row_short(
   __vptr_int16 input_ptr,
   __vptr_int16 output_ptr,
   unsigned short input_width,
   unsigned short input_height,
   unsigned short output_width,
   unsigned short output_height,
   unsigned short compute_width,
   unsigned short compute_height,
   unsigned short median_size,
   unsigned short input_type,
   unsigned short output_type)
{
   VCOP_BUF_SWITCH_SET(WBUF_SYST, IBUFHB_SYST, IBUFLB_SYST,
                   IBUFHA_SYST, IBUFLA_SYST);
   vcop_median_5tap_filt_row_short_init(input_ptr, output_ptr, input_width, input_height, output_width, output_height, compute_width, compute_height, median_size, input_type, output_type, __pblock_vcop_median_5tap_filt_row_short);

   VCOP_BUF_SWITCH_SET(WBUF_VCOP, IBUFHB_VCOP, IBUFLB_VCOP,
                   IBUFHA_VCOP, IBUFLA_VCOP);
   vcop_median_5tap_filt_row_short_vloops(__pblock_vcop_median_5tap_filt_row_short);

   _vcop_vloop_done();
   VCOP_BUF_SWITCH_SET(WBUF_SYST, IBUFHB_SYST, IBUFLB_SYST,
                   IBUFHA_SYST, IBUFLA_SYST);
}

void vcop_median_5tap_filt_row_short_custom(
   __vptr_int16 input_ptr,
   __vptr_int16 output_ptr,
   unsigned short input_width,
   unsigned short input_height,
   unsigned short output_width,
   unsigned short output_height,
   unsigned short compute_width,
   unsigned short compute_height,
   unsigned short median_size,
   unsigned short input_type,
   unsigned short output_type,
   unsigned short pblock[])
{
   VCOP_BUF_SWITCH_SET(WBUF_SYST, IBUFHB_SYST, IBUFLB_SYST,
                   IBUFHA_SYST, IBUFLA_SYST);
   vcop_median_5tap_filt_row_short_init(input_ptr, output_ptr, input_width, input_height, output_width, output_height, compute_width, compute_height, median_size, input_type, output_type, pblock);

   VCOP_BUF_SWITCH_SET(WBUF_VCOP, IBUFHB_VCOP, IBUFLB_VCOP,
                   IBUFHA_VCOP, IBUFLA_VCOP);
   vcop_median_5tap_filt_row_short_vloops(pblock);

   _vcop_vloop_done();
   VCOP_BUF_SWITCH_SET(WBUF_SYST, IBUFHB_SYST, IBUFLB_SYST,
                   IBUFHA_SYST, IBUFLA_SYST);
}

