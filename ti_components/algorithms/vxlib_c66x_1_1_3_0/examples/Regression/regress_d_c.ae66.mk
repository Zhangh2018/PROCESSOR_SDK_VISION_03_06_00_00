#*******************************************************************************
#* FILE PURPOSE: Lower level makefile for Creating Component Libraries
#*******************************************************************************
#* FILE NAME: Regression/regress_d_c.ae66.mk
#*
#* DESCRIPTION: Defines Source Files, Compilers flags and build rules
#*
#*
#* This is an auto-generated file          
#*******************************************************************************
#

#
# Macro definitions referenced below
#
empty =
space =$(empty) $(empty)
CC = "$(C6X_GEN_INSTALL_DIR)/bin/"cl6x -c -mv6600 --abi=eabi
AC = "$(C6X_GEN_INSTALL_DIR)/bin/"cl6x -c -mv6600 --abi=eabi
ARIN = "$(C6X_GEN_INSTALL_DIR)/bin/"ar6x 
LIBINFO = "$(C6X_GEN_INSTALL_DIR)/bin/libinfo6x"
LD = "$(C6X_GEN_INSTALL_DIR)/bin/"lnk6x --abi=eabi 
CGINCS = $(strip $(subst $(space),\$(space),$(C6X_GEN_INSTALL_DIR)/include))
RTSLIB = -l "$(C6X_GEN_INSTALL_DIR)/lib/undefined"
INCS = -I. -I$(strip $(subst ;, -I,$(subst $(space),\$(space),$(subst \,/,$(INCDIR)))))
OBJEXT = oe66
AOBJEXT = se66
INTERNALDEFS =  -Dti_targets_elf_C66 -Dxdc_target_types__=ti/targets/std.h -eo.$(OBJEXT) -ea.$(AOBJEXT) -fr=$(@D) -fs=$(@D) -ppa -ppd=$@.dep 
INTERNALLINKDEFS =  -o $@ -m $@.map
OBJDIR = ./package/lib/Regression/regress_d_c


#Debug Build options
ifneq (,$(findstring $(DEBUG), yesYES))
  OPTFLAGS = -g
else
  OPTFLAGS = -o3 --symdebug:none
endif



#List the commontestsrc Files
COMMONTESTSRCC= \
    ./../packages/ti/vxlib/src/vx/VXLIB_absDiff_i16s_i16s_o16s/VXLIB_absDiff_i16s_i16s_o16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_absDiff_i16s_i16s_o16s/VXLIB_absDiff_i16s_i16s_o16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_absDiff_i8u_i8u_o8u/VXLIB_absDiff_i8u_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_absDiff_i8u_i8u_o8u/VXLIB_absDiff_i8u_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_accumulateImage_i8u_io16s/VXLIB_accumulateImage_i8u_io16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_accumulateImage_i8u_io16s/VXLIB_accumulateImage_i8u_io16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_accumulateSquareImage_i8u_io16s/VXLIB_accumulateSquareImage_i8u_io16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_accumulateSquareImage_i8u_io16s/VXLIB_accumulateSquareImage_i8u_io16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_accumulateWeightedImage_i8u_io8u/VXLIB_accumulateWeightedImage_i8u_io8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_accumulateWeightedImage_i8u_io8u/VXLIB_accumulateWeightedImage_i8u_io8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_addSquare_i8u_i16s_o16s/VXLIB_addSquare_i8u_i16s_o16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_addSquare_i8u_i16s_o16s/VXLIB_addSquare_i8u_i16s_o16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_addWeight_i8u_i8u_o8u/VXLIB_addWeight_i8u_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_addWeight_i8u_i8u_o8u/VXLIB_addWeight_i8u_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_add_i16s_i16s_o16s/VXLIB_add_i16s_i16s_o16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_add_i16s_i16s_o16s/VXLIB_add_i16s_i16s_o16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_add_i8u_i16s_o16s/VXLIB_add_i8u_i16s_o16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_add_i8u_i16s_o16s/VXLIB_add_i8u_i16s_o16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_add_i8u_i8u_o16s/VXLIB_add_i8u_i8u_o16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_add_i8u_i8u_o16s/VXLIB_add_i8u_i8u_o16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_add_i8u_i8u_o8u/VXLIB_add_i8u_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_add_i8u_i8u_o8u/VXLIB_add_i8u_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_and_i8u_i8u_o8u/VXLIB_and_i8u_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_and_i8u_i8u_o8u/VXLIB_and_i8u_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_box_3x3_i8u_o8u/VXLIB_box_3x3_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_box_3x3_i8u_o8u/VXLIB_box_3x3_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_cannyNMS_i16s_i16s_i16u_o8u/VXLIB_cannyNMS_i16s_i16s_i16u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_cannyNMS_i16s_i16s_i16u_o8u/VXLIB_cannyNMS_i16s_i16s_i16u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_channelCombine_2to1_i8u_o8u/VXLIB_channelCombine_2to1_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_channelCombine_2to1_i8u_o8u/VXLIB_channelCombine_2to1_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_channelCombine_3to1_i8u_o8u/VXLIB_channelCombine_3to1_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_channelCombine_3to1_i8u_o8u/VXLIB_channelCombine_3to1_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_channelCombine_4to1_i8u_o8u/VXLIB_channelCombine_4to1_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_channelCombine_4to1_i8u_o8u/VXLIB_channelCombine_4to1_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_channelCombine_yuyv_i8u_o8u/VXLIB_channelCombine_yuyv_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_channelCombine_yuyv_i8u_o8u/VXLIB_channelCombine_yuyv_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_channelCopy_1to1_i8u_o8u/VXLIB_channelCopy_1to1_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_channelCopy_1to1_i8u_o8u/VXLIB_channelCopy_1to1_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_channelExtract_1of2_i8u_o8u/VXLIB_channelExtract_1of2_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_channelExtract_1of2_i8u_o8u/VXLIB_channelExtract_1of2_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_channelExtract_1of3_i8u_o8u/VXLIB_channelExtract_1of3_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_channelExtract_1of3_i8u_o8u/VXLIB_channelExtract_1of3_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_channelExtract_1of4_i8u_o8u/VXLIB_channelExtract_1of4_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_channelExtract_1of4_i8u_o8u/VXLIB_channelExtract_1of4_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_IYUVtoNV12_i8u_o8u/VXLIB_colorConvert_IYUVtoNV12_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_IYUVtoNV12_i8u_o8u/VXLIB_colorConvert_IYUVtoNV12_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_IYUVtoRGBX_i8u_o8u/VXLIB_colorConvert_IYUVtoRGBX_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_IYUVtoRGBX_i8u_o8u/VXLIB_colorConvert_IYUVtoRGBX_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_IYUVtoRGB_i8u_o8u/VXLIB_colorConvert_IYUVtoRGB_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_IYUVtoRGB_i8u_o8u/VXLIB_colorConvert_IYUVtoRGB_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_IYUVtoYUV4_i8u_o8u/VXLIB_colorConvert_IYUVtoYUV4_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_IYUVtoYUV4_i8u_o8u/VXLIB_colorConvert_IYUVtoYUV4_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_NVXXtoIYUV_i8u_o8u/VXLIB_colorConvert_NVXXtoIYUV_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_NVXXtoIYUV_i8u_o8u/VXLIB_colorConvert_NVXXtoIYUV_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_NVXXtoRGBX_i8u_o8u/VXLIB_colorConvert_NVXXtoRGBX_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_NVXXtoRGBX_i8u_o8u/VXLIB_colorConvert_NVXXtoRGBX_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_NVXXtoRGB_i8u_o8u/VXLIB_colorConvert_NVXXtoRGB_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_NVXXtoRGB_i8u_o8u/VXLIB_colorConvert_NVXXtoRGB_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_NVXXtoYUV4_i8u_o8u/VXLIB_colorConvert_NVXXtoYUV4_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_NVXXtoYUV4_i8u_o8u/VXLIB_colorConvert_NVXXtoYUV4_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_RGBtoIYUV_i8u_o8u/VXLIB_colorConvert_RGBtoIYUV_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_RGBtoIYUV_i8u_o8u/VXLIB_colorConvert_RGBtoIYUV_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_RGBtoNV12_i8u_o8u/VXLIB_colorConvert_RGBtoNV12_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_RGBtoNV12_i8u_o8u/VXLIB_colorConvert_RGBtoNV12_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_RGBtoRGBX_i8u_o8u/VXLIB_colorConvert_RGBtoRGBX_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_RGBtoRGBX_i8u_o8u/VXLIB_colorConvert_RGBtoRGBX_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_RGBtoYUV4_i8u_o8u/VXLIB_colorConvert_RGBtoYUV4_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_RGBtoYUV4_i8u_o8u/VXLIB_colorConvert_RGBtoYUV4_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_RGBXtoIYUV_i8u_o8u/VXLIB_colorConvert_RGBXtoIYUV_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_RGBXtoIYUV_i8u_o8u/VXLIB_colorConvert_RGBXtoIYUV_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_RGBXtoNV12_i8u_o8u/VXLIB_colorConvert_RGBXtoNV12_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_RGBXtoNV12_i8u_o8u/VXLIB_colorConvert_RGBXtoNV12_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_RGBXtoRGB_i8u_o8u/VXLIB_colorConvert_RGBXtoRGB_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_RGBXtoRGB_i8u_o8u/VXLIB_colorConvert_RGBXtoRGB_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_RGBXtoYUV4_i8u_o8u/VXLIB_colorConvert_RGBXtoYUV4_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_RGBXtoYUV4_i8u_o8u/VXLIB_colorConvert_RGBXtoYUV4_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_YUVXtoIYUV_i8u_o8u/VXLIB_colorConvert_YUVXtoIYUV_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_YUVXtoIYUV_i8u_o8u/VXLIB_colorConvert_YUVXtoIYUV_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_YUVXtoNV12_i8u_o8u/VXLIB_colorConvert_YUVXtoNV12_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_YUVXtoNV12_i8u_o8u/VXLIB_colorConvert_YUVXtoNV12_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_YUVXtoRGBX_i8u_o8u/VXLIB_colorConvert_YUVXtoRGBX_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_YUVXtoRGBX_i8u_o8u/VXLIB_colorConvert_YUVXtoRGBX_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_YUVXtoRGB_i8u_o8u/VXLIB_colorConvert_YUVXtoRGB_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_colorConvert_YUVXtoRGB_i8u_o8u/VXLIB_colorConvert_YUVXtoRGB_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_convertDepth_i16s_o8u/VXLIB_convertDepth_i16s_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_convertDepth_i16s_o8u/VXLIB_convertDepth_i16s_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_convertDepth_i8u_o16s/VXLIB_convertDepth_i8u_o16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_convertDepth_i8u_o16s/VXLIB_convertDepth_i8u_o16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_convolve_3x3_i8u_c16s_o16s/VXLIB_convolve_3x3_i8u_c16s_o16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_convolve_3x3_i8u_c16s_o16s/VXLIB_convolve_3x3_i8u_c16s_o16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_convolve_3x3_i8u_c16s_o8u/VXLIB_convolve_3x3_i8u_c16s_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_convolve_3x3_i8u_c16s_o8u/VXLIB_convolve_3x3_i8u_c16s_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_convolve_5x5_i8u_c16s_o16s/VXLIB_convolve_5x5_i8u_c16s_o16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_convolve_5x5_i8u_c16s_o16s/VXLIB_convolve_5x5_i8u_c16s_o16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_convolve_5x5_i8u_c16s_o8u/VXLIB_convolve_5x5_i8u_c16s_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_convolve_5x5_i8u_c16s_o8u/VXLIB_convolve_5x5_i8u_c16s_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_convolve_7x7_i8u_c16s_o16s/VXLIB_convolve_7x7_i8u_c16s_o16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_convolve_7x7_i8u_c16s_o16s/VXLIB_convolve_7x7_i8u_c16s_o16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_convolve_7x7_i8u_c16s_o8u/VXLIB_convolve_7x7_i8u_c16s_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_convolve_7x7_i8u_c16s_o8u/VXLIB_convolve_7x7_i8u_c16s_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_convolve_i8u_c16s_o16s/VXLIB_convolve_i8u_c16s_o16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_convolve_i8u_c16s_o16s/VXLIB_convolve_i8u_c16s_o16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_convolve_i8u_c16s_o8u/VXLIB_convolve_i8u_c16s_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_convolve_i8u_c16s_o8u/VXLIB_convolve_i8u_c16s_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_dilate_3x3_i8u_o8u/VXLIB_dilate_3x3_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_dilate_3x3_i8u_o8u/VXLIB_dilate_3x3_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_dilate_MxN_i8u_i8u_o8u/VXLIB_dilate_MxN_i8u_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_dilate_MxN_i8u_i8u_o8u/VXLIB_dilate_MxN_i8u_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_doubleThreshold_i16u_i8u/VXLIB_doubleThreshold_i16u_i8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_doubleThreshold_i16u_i8u/VXLIB_doubleThreshold_i16u_i8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_edgeTracing_i8u/VXLIB_edgeTracing_i8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_edgeTracing_i8u/VXLIB_edgeTracing_i8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_equalizeHist_i8u_o8u/VXLIB_equalizeHist_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_equalizeHist_i8u_o8u/VXLIB_equalizeHist_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_erode_3x3_i8u_o8u/VXLIB_erode_3x3_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_erode_3x3_i8u_o8u/VXLIB_erode_3x3_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_erode_MxN_i8u_i8u_o8u/VXLIB_erode_MxN_i8u_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_erode_MxN_i8u_i8u_o8u/VXLIB_erode_MxN_i8u_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_fastCornersDetect_i8u/VXLIB_fastCornersDetect_i8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_fastCornersDetect_i8u/VXLIB_fastCornersDetect_i8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_fastCornersNMS_i8u/VXLIB_fastCornersNMS_i8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_fastCornersNMS_i8u/VXLIB_fastCornersNMS_i8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_fastCornersScore_i8u/VXLIB_fastCornersScore_i8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_fastCornersScore_i8u/VXLIB_fastCornersScore_i8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_fastCorners_i8u/VXLIB_fastCorners_i8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_fastCorners_i8u/VXLIB_fastCorners_i8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_gaussian_3x3_i8u_o8u/VXLIB_gaussian_3x3_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_gaussian_3x3_i8u_o8u/VXLIB_gaussian_3x3_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_gaussian_5x5_br_i8u_o8u/VXLIB_gaussian_5x5_br_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_gaussian_5x5_br_i8u_o8u/VXLIB_gaussian_5x5_br_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_gaussian_5x5_i8u_o8u/VXLIB_gaussian_5x5_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_gaussian_5x5_i8u_o8u/VXLIB_gaussian_5x5_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_halfScaleGaussian_5x5_br_i8u_o8u_o8u/VXLIB_halfScaleGaussian_5x5_br_i8u_o8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_halfScaleGaussian_5x5_br_i8u_o8u_o8u/VXLIB_halfScaleGaussian_5x5_br_i8u_o8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_halfScaleGaussian_5x5_i8u_o8u/VXLIB_halfScaleGaussian_5x5_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_halfScaleGaussian_5x5_i8u_o8u/VXLIB_halfScaleGaussian_5x5_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_halfScaleGaussian_5x5_i8u_o8u_o8u/VXLIB_halfScaleGaussian_5x5_i8u_o8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_halfScaleGaussian_5x5_i8u_o8u_o8u/VXLIB_halfScaleGaussian_5x5_i8u_o8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_harrisCornersDetect_i32f/VXLIB_harrisCornersDetect_i32f_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_harrisCornersDetect_i32f/VXLIB_harrisCornersDetect_i32f_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_harrisCornersNMS_i32f/VXLIB_harrisCornersNMS_i32f_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_harrisCornersNMS_i32f/VXLIB_harrisCornersNMS_i32f_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_harrisCornersScore_i16s_i16s_o32f/VXLIB_harrisCornersScore_i16s_i16s_o32f_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_harrisCornersScore_i16s_i16s_o32f/VXLIB_harrisCornersScore_i16s_i16s_o32f_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_harrisCornersScore_i32s_i32s_o32f/VXLIB_harrisCornersScore_i32s_i32s_o32f_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_harrisCornersScore_i32s_i32s_o32f/VXLIB_harrisCornersScore_i32s_i32s_o32f_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_histogramCdfLut_i32u_o8u/VXLIB_histogramCdfLut_i32u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_histogramCdfLut_i32u_o8u/VXLIB_histogramCdfLut_i32u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_histogramSimple_i8u_o32u/VXLIB_histogramSimple_i8u_o32u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_histogramSimple_i8u_o32u/VXLIB_histogramSimple_i8u_o32u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_histogram_i8u_o32u/VXLIB_histogram_i8u_o32u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_histogram_i8u_o32u/VXLIB_histogram_i8u_o32u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_integralImage_i8u_o32u/VXLIB_integralImage_i8u_o32u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_integralImage_i8u_o32u/VXLIB_integralImage_i8u_o32u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_magnitude_i16s_i16s_o16s/VXLIB_magnitude_i16s_i16s_o16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_magnitude_i16s_i16s_o16s/VXLIB_magnitude_i16s_i16s_o16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_meanStdDev_i8u_o32f/VXLIB_meanStdDev_i8u_o32f_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_meanStdDev_i8u_o32f/VXLIB_meanStdDev_i8u_o32f_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_median_3x3_i8u_o8u/VXLIB_median_3x3_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_median_3x3_i8u_o8u/VXLIB_median_3x3_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_median_MxN_i8u_i8u_o8u/VXLIB_median_MxN_i8u_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_median_MxN_i8u_i8u_o8u/VXLIB_median_MxN_i8u_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_minMaxLoc_i16s/VXLIB_minMaxLoc_i16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_minMaxLoc_i16s/VXLIB_minMaxLoc_i16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_minMaxLoc_i8u/VXLIB_minMaxLoc_i8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_minMaxLoc_i8u/VXLIB_minMaxLoc_i8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_multiply_i16s_i16s_o16s/VXLIB_multiply_i16s_i16s_o16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_multiply_i16s_i16s_o16s/VXLIB_multiply_i16s_i16s_o16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_multiply_i8u_i16s_o16s/VXLIB_multiply_i8u_i16s_o16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_multiply_i8u_i16s_o16s/VXLIB_multiply_i8u_i16s_o16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_multiply_i8u_i8u_o16s/VXLIB_multiply_i8u_i8u_o16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_multiply_i8u_i8u_o16s/VXLIB_multiply_i8u_i8u_o16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_multiply_i8u_i8u_o8u/VXLIB_multiply_i8u_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_multiply_i8u_i8u_o8u/VXLIB_multiply_i8u_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_normL1_i16s_i16s_o16u/VXLIB_normL1_i16s_i16s_o16u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_normL1_i16s_i16s_o16u/VXLIB_normL1_i16s_i16s_o16u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_normL2_i16s_i16s_o16u/VXLIB_normL2_i16s_i16s_o16u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_normL2_i16s_i16s_o16u/VXLIB_normL2_i16s_i16s_o16u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_not_i8u_o8u/VXLIB_not_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_not_i8u_o8u/VXLIB_not_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_or_i8u_i8u_o8u/VXLIB_or_i8u_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_or_i8u_i8u_o8u/VXLIB_or_i8u_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_phase_i16s_i16s_o8u/VXLIB_phase_i16s_i16s_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_phase_i16s_i16s_o8u/VXLIB_phase_i16s_i16s_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_remapBilinear_bc_i8u_i32f_o8u/VXLIB_remapBilinear_bc_i8u_i32f_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_remapBilinear_bc_i8u_i32f_o8u/VXLIB_remapBilinear_bc_i8u_i32f_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_remapNearest_bc_i8u_i32f_o8u/VXLIB_remapNearest_bc_i8u_i32f_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_remapNearest_bc_i8u_i32f_o8u/VXLIB_remapNearest_bc_i8u_i32f_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_scaleImageBilinear_bc_i8u_o8u/VXLIB_scaleImageBilinear_bc_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_scaleImageBilinear_bc_i8u_o8u/VXLIB_scaleImageBilinear_bc_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_scaleImageBilinear_br_i8u_o8u/VXLIB_scaleImageBilinear_br_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_scaleImageBilinear_br_i8u_o8u/VXLIB_scaleImageBilinear_br_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_scaleImageBilinear_i8u_o8u/VXLIB_scaleImageBilinear_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_scaleImageBilinear_i8u_o8u/VXLIB_scaleImageBilinear_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_scaleImageNearest_i8u_o8u/VXLIB_scaleImageNearest_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_scaleImageNearest_i8u_o8u/VXLIB_scaleImageNearest_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_scharr_3x3_i8u_o16s_o16s/VXLIB_scharr_3x3_i8u_o16s_o16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_scharr_3x3_i8u_o16s_o16s/VXLIB_scharr_3x3_i8u_o16s_o16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_sobelX_3x3_i8u_o16s/VXLIB_sobelX_3x3_i8u_o16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_sobelX_3x3_i8u_o16s/VXLIB_sobelX_3x3_i8u_o16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_sobelY_3x3_i8u_o16s/VXLIB_sobelY_3x3_i8u_o16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_sobelY_3x3_i8u_o16s/VXLIB_sobelY_3x3_i8u_o16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_sobel_3x3_i8u_o16s_o16s/VXLIB_sobel_3x3_i8u_o16s_o16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_sobel_3x3_i8u_o16s_o16s/VXLIB_sobel_3x3_i8u_o16s_o16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_sobel_5x5_i8u_o16s_o16s/VXLIB_sobel_5x5_i8u_o16s_o16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_sobel_5x5_i8u_o16s_o16s/VXLIB_sobel_5x5_i8u_o16s_o16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_sobel_7x7_i8u_o16s_o16s/VXLIB_sobel_7x7_i8u_o16s_o16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_sobel_7x7_i8u_o16s_o16s/VXLIB_sobel_7x7_i8u_o16s_o16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_sobel_7x7_i8u_o32s_o32s/VXLIB_sobel_7x7_i8u_o32s_o32s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_sobel_7x7_i8u_o32s_o32s/VXLIB_sobel_7x7_i8u_o32s_o32s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_subtract_i16s_i16s_o16s/VXLIB_subtract_i16s_i16s_o16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_subtract_i16s_i16s_o16s/VXLIB_subtract_i16s_i16s_o16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_subtract_i8u_i16s_o16s/VXLIB_subtract_i8u_i16s_o16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_subtract_i8u_i16s_o16s/VXLIB_subtract_i8u_i16s_o16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_subtract_i8u_i8u_o16s/VXLIB_subtract_i8u_i8u_o16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_subtract_i8u_i8u_o16s/VXLIB_subtract_i8u_i8u_o16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_subtract_i8u_i8u_o8u/VXLIB_subtract_i8u_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_subtract_i8u_i8u_o8u/VXLIB_subtract_i8u_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_tableLookup_i16s_o16s/VXLIB_tableLookup_i16s_o16s_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_tableLookup_i16s_o16s/VXLIB_tableLookup_i16s_o16s_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_tableLookup_i8u_o8u/VXLIB_tableLookup_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_tableLookup_i8u_o8u/VXLIB_tableLookup_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_thresholdBinary_i8u_o8u/VXLIB_thresholdBinary_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_thresholdBinary_i8u_o8u/VXLIB_thresholdBinary_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_thresholdRange_i8u_o8u/VXLIB_thresholdRange_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_thresholdRange_i8u_o8u/VXLIB_thresholdRange_i8u_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_trackFeaturesLK_i8u/VXLIB_trackFeaturesLK_i8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_trackFeaturesLK_i8u/VXLIB_trackFeaturesLK_i8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_warpAffineBilinear_bc_i8u_c32f_o8u/VXLIB_warpAffineBilinear_bc_i8u_c32f_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_warpAffineBilinear_bc_i8u_c32f_o8u/VXLIB_warpAffineBilinear_bc_i8u_c32f_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_warpAffineBilinear_i8u_c32f_o8u/VXLIB_warpAffineBilinear_i8u_c32f_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_warpAffineBilinear_i8u_c32f_o8u/VXLIB_warpAffineBilinear_i8u_c32f_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_warpAffineNearest_bc_i8u_c32f_o8u/VXLIB_warpAffineNearest_bc_i8u_c32f_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_warpAffineNearest_bc_i8u_c32f_o8u/VXLIB_warpAffineNearest_bc_i8u_c32f_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_warpAffineNearest_i8u_c32f_o8u/VXLIB_warpAffineNearest_i8u_c32f_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_warpAffineNearest_i8u_c32f_o8u/VXLIB_warpAffineNearest_i8u_c32f_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_warpPerspectiveBilinear_bc_i8u_c32f_o8u/VXLIB_warpPerspectiveBilinear_bc_i8u_c32f_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_warpPerspectiveBilinear_bc_i8u_c32f_o8u/VXLIB_warpPerspectiveBilinear_bc_i8u_c32f_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_warpPerspectiveBilinear_i8u_c32f_o8u/VXLIB_warpPerspectiveBilinear_i8u_c32f_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_warpPerspectiveBilinear_i8u_c32f_o8u/VXLIB_warpPerspectiveBilinear_i8u_c32f_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_warpPerspectiveNearest_bc_i8u_c32f_o8u/VXLIB_warpPerspectiveNearest_bc_i8u_c32f_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_warpPerspectiveNearest_bc_i8u_c32f_o8u/VXLIB_warpPerspectiveNearest_bc_i8u_c32f_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_warpPerspectiveNearest_i8u_c32f_o8u/VXLIB_warpPerspectiveNearest_i8u_c32f_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_warpPerspectiveNearest_i8u_c32f_o8u/VXLIB_warpPerspectiveNearest_i8u_c32f_o8u_idat.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_xor_i8u_i8u_o8u/VXLIB_xor_i8u_i8u_o8u_d.c\
    ./../packages/ti/vxlib/src/vx/VXLIB_xor_i8u_i8u_o8u/VXLIB_xor_i8u_i8u_o8u_idat.c

# FLAGS for the commontestsrc Files
COMMONTESTSRCCFLAGS =  -c -k -q --mem_model:data=far -al -pds1111 -pds827 -pds824 -pds837 -pds1037 -pds195 -pdsw225 -pdsw994 -pdsw262 -pds77 -pden -pds232 -mw -os -g -mi10000 -as -ss -o3 --optimize_with_debug --mem_model:data=far -i../../../../packages -D__ONESHOTTEST

# Make Rule for the commontestsrc Files
COMMONTESTSRCCOBJS = $(patsubst %.c, $(OBJDIR)/%.$(OBJEXT), $(COMMONTESTSRCC))

$(COMMONTESTSRCCOBJS): $(OBJDIR)/%.$(OBJEXT): %.c
	-@echo cle66 $< ...
	if [ ! -d $(@D) ]; then $(MKDIR) $(@D) ; fi;
	-$(RM) $@.dep
	$(CC) $(COMMONTESTSRCCFLAGS) $(INTERNALDEFS) $(INCS) -I$(CGINCS) -fc $< 
	-@cp $@.dep $@.pp; \
         $(SED) -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
             -e '/^$$/ d' -e 's/$$/ :/' < $@.pp >> $@.dep; \
         $(RM) $@.pp 

#Create Empty rule for dependency
$(COMMONTESTSRCCOBJS):Regression\regress_d_c.ae66.mk
Regression\regress_d_c.ae66.mk:

#Include Depedency for commontestsrc Files
ifneq (clean,$(MAKECMDGOALS))
 -include $(COMMONTESTSRCCOBJS:%.$(OBJEXT)=%.$(OBJEXT).dep)
endif


Regression/regress_d_c.ae66 : $(COMMONTESTSRCCOBJS)
	@echo archiving $? into $@ ...
	@echo "rq $@ $?">$@.cmd
	$(ARIN) @$@.cmd
	if [ -f $(@D)/regress_d_c.lib  ]; then $(LIBINFO) -u -o=$(@D)/regress_d_c.lib $@; else $(LIBINFO) -o=$(@D)/regress_d_c.lib $@; fi;
