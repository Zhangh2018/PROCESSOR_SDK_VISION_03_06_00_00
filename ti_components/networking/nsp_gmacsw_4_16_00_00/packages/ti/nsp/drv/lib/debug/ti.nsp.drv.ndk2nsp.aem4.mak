#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = ti.targets.arm.elf.M4{1,0,16.9,2
#
ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/debug/ti.nsp.drv.ndk2nsp/package/package_ti.nsp.drv.oem4.dep
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/package/package_ti.nsp.drv.oem4.dep: ;
endif

package/lib/lib/debug/ti.nsp.drv.ndk2nsp/package/package_ti.nsp.drv.oem4: | .interfaces
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/package/package_ti.nsp.drv.oem4: package/package_ti.nsp.drv.c lib/debug/ti.nsp.drv.ndk2nsp.aem4.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4 $< ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armcl -c  -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -I"/opt/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.2.LTS/include" -I"/opt/ti/bios_6_46_06_00/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/edma3_lld_02_12_00_21/packages" -I"/opt/ti/edma3_lld_02_12_00_21/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_16_9_2 --symdebug:dwarf -D_INCLUDE_NIMU_CODE -D_NDK_EXTERN_CONFIG -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/package -fr=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/debug/ti.nsp.drv.ndk2nsp/package -s oem4 $< -C   -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -I"/opt/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.2.LTS/include" -I"/opt/ti/bios_6_46_06_00/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/edma3_lld_02_12_00_21/packages" -I"/opt/ti/edma3_lld_02_12_00_21/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_16_9_2 --symdebug:dwarf -D_INCLUDE_NIMU_CODE -D_NDK_EXTERN_CONFIG -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/package -fr=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/package/package_ti.nsp.drv.oem4: export C_DIR=
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/package/package_ti.nsp.drv.oem4: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

package/lib/lib/debug/ti.nsp.drv.ndk2nsp/package/package_ti.nsp.drv.sem4: | .interfaces
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/package/package_ti.nsp.drv.sem4: package/package_ti.nsp.drv.c lib/debug/ti.nsp.drv.ndk2nsp.aem4.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4 -n $< ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -I"/opt/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.2.LTS/include" -I"/opt/ti/bios_6_46_06_00/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/edma3_lld_02_12_00_21/packages" -I"/opt/ti/edma3_lld_02_12_00_21/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_16_9_2 --symdebug:dwarf -D_INCLUDE_NIMU_CODE -D_NDK_EXTERN_CONFIG -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/package -fr=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/debug/ti.nsp.drv.ndk2nsp/package -s oem4 $< -C  -n -s --symdebug:none -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -I"/opt/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.2.LTS/include" -I"/opt/ti/bios_6_46_06_00/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/edma3_lld_02_12_00_21/packages" -I"/opt/ti/edma3_lld_02_12_00_21/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_16_9_2 --symdebug:dwarf -D_INCLUDE_NIMU_CODE -D_NDK_EXTERN_CONFIG -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/package -fr=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/package/package_ti.nsp.drv.sem4: export C_DIR=
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/package/package_ti.nsp.drv.sem4: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/nimu_ndk.oem4.dep
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/nimu_ndk.oem4.dep: ;
endif

package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/nimu_ndk.oem4: | .interfaces
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/nimu_ndk.oem4: ndk2nsp/nimu_ndk.c lib/debug/ti.nsp.drv.ndk2nsp.aem4.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4 $< ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armcl -c  -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -I"/opt/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.2.LTS/include" -I"/opt/ti/bios_6_46_06_00/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/edma3_lld_02_12_00_21/packages" -I"/opt/ti/edma3_lld_02_12_00_21/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_16_9_2 --symdebug:dwarf -D_INCLUDE_NIMU_CODE -D_NDK_EXTERN_CONFIG -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp -fr=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp -s oem4 $< -C   -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -I"/opt/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.2.LTS/include" -I"/opt/ti/bios_6_46_06_00/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/edma3_lld_02_12_00_21/packages" -I"/opt/ti/edma3_lld_02_12_00_21/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_16_9_2 --symdebug:dwarf -D_INCLUDE_NIMU_CODE -D_NDK_EXTERN_CONFIG -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp -fr=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/nimu_ndk.oem4: export C_DIR=
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/nimu_ndk.oem4: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/nimu_ndk.sem4: | .interfaces
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/nimu_ndk.sem4: ndk2nsp/nimu_ndk.c lib/debug/ti.nsp.drv.ndk2nsp.aem4.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4 -n $< ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -I"/opt/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.2.LTS/include" -I"/opt/ti/bios_6_46_06_00/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/edma3_lld_02_12_00_21/packages" -I"/opt/ti/edma3_lld_02_12_00_21/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_16_9_2 --symdebug:dwarf -D_INCLUDE_NIMU_CODE -D_NDK_EXTERN_CONFIG -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp -fr=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp -s oem4 $< -C  -n -s --symdebug:none -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -I"/opt/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.2.LTS/include" -I"/opt/ti/bios_6_46_06_00/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/edma3_lld_02_12_00_21/packages" -I"/opt/ti/edma3_lld_02_12_00_21/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_16_9_2 --symdebug:dwarf -D_INCLUDE_NIMU_CODE -D_NDK_EXTERN_CONFIG -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp -fr=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/nimu_ndk.sem4: export C_DIR=
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/nimu_ndk.sem4: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/ndk2nsp.oem4.dep
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/ndk2nsp.oem4.dep: ;
endif

package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/ndk2nsp.oem4: | .interfaces
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/ndk2nsp.oem4: ndk2nsp/ndk2nsp.c lib/debug/ti.nsp.drv.ndk2nsp.aem4.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4 $< ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armcl -c  -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -I"/opt/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.2.LTS/include" -I"/opt/ti/bios_6_46_06_00/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/edma3_lld_02_12_00_21/packages" -I"/opt/ti/edma3_lld_02_12_00_21/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_16_9_2 --symdebug:dwarf -D_INCLUDE_NIMU_CODE -D_NDK_EXTERN_CONFIG -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp -fr=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp -s oem4 $< -C   -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -I"/opt/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.2.LTS/include" -I"/opt/ti/bios_6_46_06_00/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/edma3_lld_02_12_00_21/packages" -I"/opt/ti/edma3_lld_02_12_00_21/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_16_9_2 --symdebug:dwarf -D_INCLUDE_NIMU_CODE -D_NDK_EXTERN_CONFIG -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp -fr=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/ndk2nsp.oem4: export C_DIR=
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/ndk2nsp.oem4: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/ndk2nsp.sem4: | .interfaces
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/ndk2nsp.sem4: ndk2nsp/ndk2nsp.c lib/debug/ti.nsp.drv.ndk2nsp.aem4.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4 -n $< ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -I"/opt/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.2.LTS/include" -I"/opt/ti/bios_6_46_06_00/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/edma3_lld_02_12_00_21/packages" -I"/opt/ti/edma3_lld_02_12_00_21/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_16_9_2 --symdebug:dwarf -D_INCLUDE_NIMU_CODE -D_NDK_EXTERN_CONFIG -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp -fr=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp -s oem4 $< -C  -n -s --symdebug:none -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -I"/opt/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.2.LTS/include" -I"/opt/ti/bios_6_46_06_00/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/edma3_lld_02_12_00_21/packages" -I"/opt/ti/edma3_lld_02_12_00_21/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_16_9_2 --symdebug:dwarf -D_INCLUDE_NIMU_CODE -D_NDK_EXTERN_CONFIG -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp -fr=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/ndk2nsp.sem4: export C_DIR=
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/ndk2nsp.sem4: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/gmacsw_sysbios_al.oem4.dep
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/gmacsw_sysbios_al.oem4.dep: ;
endif

package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/gmacsw_sysbios_al.oem4: | .interfaces
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/gmacsw_sysbios_al.oem4: ndk2nsp/gmacsw_sysbios_al.c lib/debug/ti.nsp.drv.ndk2nsp.aem4.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4 $< ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armcl -c  -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -I"/opt/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.2.LTS/include" -I"/opt/ti/bios_6_46_06_00/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/edma3_lld_02_12_00_21/packages" -I"/opt/ti/edma3_lld_02_12_00_21/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_16_9_2 --symdebug:dwarf -D_INCLUDE_NIMU_CODE -D_NDK_EXTERN_CONFIG -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp -fr=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp -s oem4 $< -C   -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -I"/opt/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.2.LTS/include" -I"/opt/ti/bios_6_46_06_00/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/edma3_lld_02_12_00_21/packages" -I"/opt/ti/edma3_lld_02_12_00_21/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_16_9_2 --symdebug:dwarf -D_INCLUDE_NIMU_CODE -D_NDK_EXTERN_CONFIG -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp -fr=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/gmacsw_sysbios_al.oem4: export C_DIR=
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/gmacsw_sysbios_al.oem4: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/gmacsw_sysbios_al.sem4: | .interfaces
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/gmacsw_sysbios_al.sem4: ndk2nsp/gmacsw_sysbios_al.c lib/debug/ti.nsp.drv.ndk2nsp.aem4.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4 -n $< ...
	$(ti.targets.arm.elf.M4.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -I"/opt/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.2.LTS/include" -I"/opt/ti/bios_6_46_06_00/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/edma3_lld_02_12_00_21/packages" -I"/opt/ti/edma3_lld_02_12_00_21/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_16_9_2 --symdebug:dwarf -D_INCLUDE_NIMU_CODE -D_NDK_EXTERN_CONFIG -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp -fr=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp -s oem4 $< -C  -n -s --symdebug:none -qq -pdsw225  -DCORTEX_MX --endian=little -mv7M4 --float_support=vfplib --abi=eabi -eo.oem4 -ea.sem4  -I"/opt/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.2.LTS/include" -I"/opt/ti/bios_6_46_06_00/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/edma3_lld_02_12_00_21/packages" -I"/opt/ti/edma3_lld_02_12_00_21/examples/edma3_driver/src"  -D_DEBUG_=1 -Dxdc_target_name__=M4 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_16_9_2 --symdebug:dwarf -D_INCLUDE_NIMU_CODE -D_NDK_EXTERN_CONFIG -DDEBUG   $(XDCINCS) -I$(ti.targets.arm.elf.M4.rootDir)/include  -fs=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp -fr=./package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/gmacsw_sysbios_al.sem4: export C_DIR=
package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/gmacsw_sysbios_al.sem4: PATH:=$(ti.targets.arm.elf.M4.rootDir)/bin/:$(PATH)

clean,em4 ::
	-$(RM) package/lib/lib/debug/ti.nsp.drv.ndk2nsp/package/package_ti.nsp.drv.oem4
	-$(RM) package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/nimu_ndk.oem4
	-$(RM) package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/ndk2nsp.oem4
	-$(RM) package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/gmacsw_sysbios_al.oem4
	-$(RM) package/lib/lib/debug/ti.nsp.drv.ndk2nsp/package/package_ti.nsp.drv.sem4
	-$(RM) package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/nimu_ndk.sem4
	-$(RM) package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/ndk2nsp.sem4
	-$(RM) package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/gmacsw_sysbios_al.sem4

lib/debug/ti.nsp.drv.ndk2nsp.aem4: package/lib/lib/debug/ti.nsp.drv.ndk2nsp/package/package_ti.nsp.drv.oem4 package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/nimu_ndk.oem4 package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/ndk2nsp.oem4 package/lib/lib/debug/ti.nsp.drv.ndk2nsp/ndk2nsp/gmacsw_sysbios_al.oem4 lib/debug/ti.nsp.drv.ndk2nsp.aem4.mak

clean::
	-$(RM) lib/debug/ti.nsp.drv.ndk2nsp.aem4.mak
