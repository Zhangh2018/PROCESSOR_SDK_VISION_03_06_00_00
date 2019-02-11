#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = ti.targets.arm.elf.M3{1,0,16.9,2
#
ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.oem3.dep
package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.oem3.dep: ;
endif

package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.oem3: | .interfaces
package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.oem3: package/package_ti.sdo.edma3.rm.c lib/generic/m3/release/ti.sdo.edma3.rm.aem3.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem3 $< ...
	$(ti.targets.arm.elf.M3.rootDir)/bin/armcl -c  -qq -pdsw225 --endian=little -mv7M3 --abi=eabi -eo.oem3 -ea.sem3   -DGENERIC  -Dxdc_target_name__=M3 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M3.rootDir)/include  -fs=./package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/package -fr=./package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/package -s oem3 $< -C   -qq -pdsw225 --endian=little -mv7M3 --abi=eabi -eo.oem3 -ea.sem3   -DGENERIC  -Dxdc_target_name__=M3 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M3.rootDir)/include  -fs=./package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/package -fr=./package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.oem3: export C_DIR=
package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.oem3: PATH:=$(ti.targets.arm.elf.M3.rootDir)/bin/:$(PATH)

package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.sem3: | .interfaces
package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.sem3: package/package_ti.sdo.edma3.rm.c lib/generic/m3/release/ti.sdo.edma3.rm.aem3.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem3 -n $< ...
	$(ti.targets.arm.elf.M3.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M3 --abi=eabi -eo.oem3 -ea.sem3   -DGENERIC  -Dxdc_target_name__=M3 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M3.rootDir)/include  -fs=./package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/package -fr=./package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/package -s oem3 $< -C  -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M3 --abi=eabi -eo.oem3 -ea.sem3   -DGENERIC  -Dxdc_target_name__=M3 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M3.rootDir)/include  -fs=./package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/package -fr=./package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.sem3: export C_DIR=
package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.sem3: PATH:=$(ti.targets.arm.elf.M3.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src/edma3resmgr.oem3.dep
package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src/edma3resmgr.oem3.dep: ;
endif

package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src/edma3resmgr.oem3: | .interfaces
package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src/edma3resmgr.oem3: src/edma3resmgr.c lib/generic/m3/release/ti.sdo.edma3.rm.aem3.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem3 $< ...
	$(ti.targets.arm.elf.M3.rootDir)/bin/armcl -c  -qq -pdsw225 --endian=little -mv7M3 --abi=eabi -eo.oem3 -ea.sem3   -DGENERIC  -Dxdc_target_name__=M3 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M3.rootDir)/include  -fs=./package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src -fr=./package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src -s oem3 $< -C   -qq -pdsw225 --endian=little -mv7M3 --abi=eabi -eo.oem3 -ea.sem3   -DGENERIC  -Dxdc_target_name__=M3 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M3.rootDir)/include  -fs=./package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src -fr=./package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src/edma3resmgr.oem3: export C_DIR=
package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src/edma3resmgr.oem3: PATH:=$(ti.targets.arm.elf.M3.rootDir)/bin/:$(PATH)

package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src/edma3resmgr.sem3: | .interfaces
package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src/edma3resmgr.sem3: src/edma3resmgr.c lib/generic/m3/release/ti.sdo.edma3.rm.aem3.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem3 -n $< ...
	$(ti.targets.arm.elf.M3.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M3 --abi=eabi -eo.oem3 -ea.sem3   -DGENERIC  -Dxdc_target_name__=M3 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M3.rootDir)/include  -fs=./package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src -fr=./package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src -s oem3 $< -C  -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M3 --abi=eabi -eo.oem3 -ea.sem3   -DGENERIC  -Dxdc_target_name__=M3 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M3.rootDir)/include  -fs=./package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src -fr=./package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src/edma3resmgr.sem3: export C_DIR=
package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src/edma3resmgr.sem3: PATH:=$(ti.targets.arm.elf.M3.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.oem3.dep
package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.oem3.dep: ;
endif

package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.oem3: | .interfaces
package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.oem3: src/edma3_rm_gbl_data.c lib/generic/m3/release/ti.sdo.edma3.rm.aem3.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem3 $< ...
	$(ti.targets.arm.elf.M3.rootDir)/bin/armcl -c  -qq -pdsw225 --endian=little -mv7M3 --abi=eabi -eo.oem3 -ea.sem3   -DGENERIC  -Dxdc_target_name__=M3 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M3.rootDir)/include  -fs=./package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src -fr=./package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src -s oem3 $< -C   -qq -pdsw225 --endian=little -mv7M3 --abi=eabi -eo.oem3 -ea.sem3   -DGENERIC  -Dxdc_target_name__=M3 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M3.rootDir)/include  -fs=./package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src -fr=./package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.oem3: export C_DIR=
package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.oem3: PATH:=$(ti.targets.arm.elf.M3.rootDir)/bin/:$(PATH)

package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.sem3: | .interfaces
package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.sem3: src/edma3_rm_gbl_data.c lib/generic/m3/release/ti.sdo.edma3.rm.aem3.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem3 -n $< ...
	$(ti.targets.arm.elf.M3.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M3 --abi=eabi -eo.oem3 -ea.sem3   -DGENERIC  -Dxdc_target_name__=M3 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M3.rootDir)/include  -fs=./package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src -fr=./package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src -s oem3 $< -C  -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M3 --abi=eabi -eo.oem3 -ea.sem3   -DGENERIC  -Dxdc_target_name__=M3 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M3.rootDir)/include  -fs=./package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src -fr=./package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.sem3: export C_DIR=
package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.sem3: PATH:=$(ti.targets.arm.elf.M3.rootDir)/bin/:$(PATH)

clean,em3 ::
	-$(RM) package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.oem3
	-$(RM) package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src/edma3resmgr.oem3
	-$(RM) package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.oem3
	-$(RM) package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.sem3
	-$(RM) package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src/edma3resmgr.sem3
	-$(RM) package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.sem3

lib/generic/m3/release/ti.sdo.edma3.rm.aem3: package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.oem3 package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src/edma3resmgr.oem3 package/lib/lib/generic/m3/release/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.oem3 lib/generic/m3/release/ti.sdo.edma3.rm.aem3.mak

clean::
	-$(RM) lib/generic/m3/release/ti.sdo.edma3.rm.aem3.mak
