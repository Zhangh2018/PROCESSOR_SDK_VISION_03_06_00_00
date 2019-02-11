#ifndef _TI_vcop_bilinearInterpolateYUV420SPchromaPblockUpdate_h_
#define _TI_vcop_bilinearInterpolateYUV420SPchromaPblockUpdate_h_

/* Parameter Register Block */
extern unsigned short __pblock_vcop_bilinearInterpolateYUV420SPchromaPblockUpdate[30];

/* Basic Runner Function */
void vcop_bilinearInterpolateYUV420SPchromaPblockUpdate(
   __vptr_uint16 numMappedPixels_ptr,
   __vptr_uint16 pBlock16,
   unsigned int scatterStoreArray_ptr,
   __vptr_uint32 pBlock32);
/* Custom Runner Function */
void vcop_bilinearInterpolateYUV420SPchromaPblockUpdate_custom(
   __vptr_uint16 numMappedPixels_ptr,
   __vptr_uint16 pBlock16,
   unsigned int scatterStoreArray_ptr,
   __vptr_uint32 pBlock32,
   unsigned short pblock[]);

/* Parameter Block Initialization Function */
unsigned int vcop_bilinearInterpolateYUV420SPchromaPblockUpdate_init(
   __vptr_uint16 numMappedPixels_ptr,
   __vptr_uint16 pBlock16,
   unsigned int scatterStoreArray_ptr,
   __vptr_uint32 pBlock32,
   unsigned short pblock[]);

/* VCOP VLOOP Execution Function */
void vcop_bilinearInterpolateYUV420SPchromaPblockUpdate_vloops(
   unsigned short pblock[]);

/* Parameter Register Count */
#define PARAM_SIZE_vcop_bilinearInterpolateYUV420SPchromaPblockUpdate ((unsigned int)30)
unsigned int vcop_bilinearInterpolateYUV420SPchromaPblockUpdate_param_count(void);
/* Internal Value Count */
#define CTRL_SIZE_vcop_bilinearInterpolateYUV420SPchromaPblockUpdate ((unsigned int)0)
unsigned int vcop_bilinearInterpolateYUV420SPchromaPblockUpdate_ctrl_count(void);

/***********************************************************/
#endif

