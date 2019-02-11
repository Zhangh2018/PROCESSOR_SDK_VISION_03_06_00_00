#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = ti.targets.arm.elf.M4{1,0,5.2,5
#
ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/debug/ti.avbtp/package/package_ti.avbtp.oem4.dep
package/lib/lib/debug/ti.avbtp/package/package_ti.avbtp.oem4.dep: ;
endif

package/lib/lib/debug/ti.avbtp/package/package_ti.avbtp.oem4: | .interfaces
package/lib/lib/debug/ti.avbtp/package/package_ti.avbtp.oem4: package/package_ti.avbtp.c lib/debug/ti.avbtp.aem4.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4 $< ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armcl -c  -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4 -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_5_2_5 --symdebug:dwarf  -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include/rts -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.avbtp/package -fr=./package/lib/lib/debug/ti.avbtp/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/debug/ti.avbtp/package -s oem4 $< -C   -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4 -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_5_2_5 --symdebug:dwarf  -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include/rts -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.avbtp/package -fr=./package/lib/lib/debug/ti.avbtp/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/debug/ti.avbtp/package/package_ti.avbtp.oem4: export C_DIR=
package/lib/lib/debug/ti.avbtp/package/package_ti.avbtp.oem4: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

package/lib/lib/debug/ti.avbtp/package/package_ti.avbtp.sem4: | .interfaces
package/lib/lib/debug/ti.avbtp/package/package_ti.avbtp.sem4: package/package_ti.avbtp.c lib/debug/ti.avbtp.aem4.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4 -n $< ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4 -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_5_2_5 --symdebug:dwarf  -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include/rts -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.avbtp/package -fr=./package/lib/lib/debug/ti.avbtp/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/debug/ti.avbtp/package -s oem4 $< -C  -n -s --symdebug:none -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4 -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_5_2_5 --symdebug:dwarf  -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include/rts -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.avbtp/package -fr=./package/lib/lib/debug/ti.avbtp/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/debug/ti.avbtp/package/package_ti.avbtp.sem4: export C_DIR=
package/lib/lib/debug/ti.avbtp/package/package_ti.avbtp.sem4: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/debug/ti.avbtp/avbtp.oem4.dep
package/lib/lib/debug/ti.avbtp/avbtp.oem4.dep: ;
endif

package/lib/lib/debug/ti.avbtp/avbtp.oem4: | .interfaces
package/lib/lib/debug/ti.avbtp/avbtp.oem4: avbtp.c lib/debug/ti.avbtp.aem4.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4 $< ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armcl -c  -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4 -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_5_2_5 --symdebug:dwarf  -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include/rts -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.avbtp -fr=./package/lib/lib/debug/ti.avbtp -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/debug/ti.avbtp -s oem4 $< -C   -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4 -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_5_2_5 --symdebug:dwarf  -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include/rts -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.avbtp -fr=./package/lib/lib/debug/ti.avbtp
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/debug/ti.avbtp/avbtp.oem4: export C_DIR=
package/lib/lib/debug/ti.avbtp/avbtp.oem4: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

package/lib/lib/debug/ti.avbtp/avbtp.sem4: | .interfaces
package/lib/lib/debug/ti.avbtp/avbtp.sem4: avbtp.c lib/debug/ti.avbtp.aem4.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4 -n $< ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4 -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_5_2_5 --symdebug:dwarf  -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include/rts -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.avbtp -fr=./package/lib/lib/debug/ti.avbtp -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/debug/ti.avbtp -s oem4 $< -C  -n -s --symdebug:none -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4 -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_5_2_5 --symdebug:dwarf  -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include/rts -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.avbtp -fr=./package/lib/lib/debug/ti.avbtp
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/debug/ti.avbtp/avbtp.sem4: export C_DIR=
package/lib/lib/debug/ti.avbtp/avbtp.sem4: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/debug/ti.avbtp/avb2nsp.oem4.dep
package/lib/lib/debug/ti.avbtp/avb2nsp.oem4.dep: ;
endif

package/lib/lib/debug/ti.avbtp/avb2nsp.oem4: | .interfaces
package/lib/lib/debug/ti.avbtp/avb2nsp.oem4: avb2nsp.c lib/debug/ti.avbtp.aem4.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4 $< ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armcl -c  -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4 -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_5_2_5 --symdebug:dwarf  -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include/rts -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.avbtp -fr=./package/lib/lib/debug/ti.avbtp -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/debug/ti.avbtp -s oem4 $< -C   -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4 -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_5_2_5 --symdebug:dwarf  -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include/rts -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.avbtp -fr=./package/lib/lib/debug/ti.avbtp
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/debug/ti.avbtp/avb2nsp.oem4: export C_DIR=
package/lib/lib/debug/ti.avbtp/avb2nsp.oem4: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

package/lib/lib/debug/ti.avbtp/avb2nsp.sem4: | .interfaces
package/lib/lib/debug/ti.avbtp/avb2nsp.sem4: avb2nsp.c lib/debug/ti.avbtp.aem4.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4 -n $< ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4 -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_5_2_5 --symdebug:dwarf  -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include/rts -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.avbtp -fr=./package/lib/lib/debug/ti.avbtp -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/debug/ti.avbtp -s oem4 $< -C  -n -s --symdebug:none -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4 -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_5_2_5 --symdebug:dwarf  -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include/rts -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.avbtp -fr=./package/lib/lib/debug/ti.avbtp
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/debug/ti.avbtp/avb2nsp.sem4: export C_DIR=
package/lib/lib/debug/ti.avbtp/avb2nsp.sem4: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/debug/ti.avbtp/avbtp_queue.oem4.dep
package/lib/lib/debug/ti.avbtp/avbtp_queue.oem4.dep: ;
endif

package/lib/lib/debug/ti.avbtp/avbtp_queue.oem4: | .interfaces
package/lib/lib/debug/ti.avbtp/avbtp_queue.oem4: avbtp_queue.c lib/debug/ti.avbtp.aem4.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4 $< ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armcl -c  -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4 -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_5_2_5 --symdebug:dwarf  -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include/rts -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.avbtp -fr=./package/lib/lib/debug/ti.avbtp -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/debug/ti.avbtp -s oem4 $< -C   -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4 -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_5_2_5 --symdebug:dwarf  -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include/rts -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.avbtp -fr=./package/lib/lib/debug/ti.avbtp
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/debug/ti.avbtp/avbtp_queue.oem4: export C_DIR=
package/lib/lib/debug/ti.avbtp/avbtp_queue.oem4: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

package/lib/lib/debug/ti.avbtp/avbtp_queue.sem4: | .interfaces
package/lib/lib/debug/ti.avbtp/avbtp_queue.sem4: avbtp_queue.c lib/debug/ti.avbtp.aem4.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4 -n $< ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4 -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_5_2_5 --symdebug:dwarf  -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include/rts -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.avbtp -fr=./package/lib/lib/debug/ti.avbtp -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/debug/ti.avbtp -s oem4 $< -C  -n -s --symdebug:none -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4 -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_5_2_5 --symdebug:dwarf  -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include/rts -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.avbtp -fr=./package/lib/lib/debug/ti.avbtp
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/debug/ti.avbtp/avbtp_queue.sem4: export C_DIR=
package/lib/lib/debug/ti.avbtp/avbtp_queue.sem4: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

clean,em4 ::
	-$(RM) package/lib/lib/debug/ti.avbtp/package/package_ti.avbtp.oem4
	-$(RM) package/lib/lib/debug/ti.avbtp/avbtp.oem4
	-$(RM) package/lib/lib/debug/ti.avbtp/avb2nsp.oem4
	-$(RM) package/lib/lib/debug/ti.avbtp/avbtp_queue.oem4
	-$(RM) package/lib/lib/debug/ti.avbtp/package/package_ti.avbtp.sem4
	-$(RM) package/lib/lib/debug/ti.avbtp/avbtp.sem4
	-$(RM) package/lib/lib/debug/ti.avbtp/avb2nsp.sem4
	-$(RM) package/lib/lib/debug/ti.avbtp/avbtp_queue.sem4

lib/debug/ti.avbtp.aem4: package/lib/lib/debug/ti.avbtp/package/package_ti.avbtp.oem4 package/lib/lib/debug/ti.avbtp/avbtp.oem4 package/lib/lib/debug/ti.avbtp/avb2nsp.oem4 package/lib/lib/debug/ti.avbtp/avbtp_queue.oem4 lib/debug/ti.avbtp.aem4.mak

clean::
	-$(RM) lib/debug/ti.avbtp.aem4.mak
