#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = ti.targets.arm.elf.A8F{1,0,16.9,2
#
ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/a8/release/ti.sdo.edma3.drv/package/package_ti.sdo.edma3.drv.oea8f.dep
package/lib/lib/a8/release/ti.sdo.edma3.drv/package/package_ti.sdo.edma3.drv.oea8f.dep: ;
endif

package/lib/lib/a8/release/ti.sdo.edma3.drv/package/package_ti.sdo.edma3.drv.oea8f: | .interfaces
package/lib/lib/a8/release/ti.sdo.edma3.drv/package/package_ti.sdo.edma3.drv.oea8f: package/package_ti.sdo.edma3.drv.c lib/a8/release/ti.sdo.edma3.drv.aea8f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clea8f $< ...
	$(ti.targets.arm.elf.A8F.rootDir)/bin/armcl -c  -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f   -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/a8/release/ti.sdo.edma3.drv/package -fr=./package/lib/lib/a8/release/ti.sdo.edma3.drv/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/a8/release/ti.sdo.edma3.drv/package -s oea8f $< -C   -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f   -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/a8/release/ti.sdo.edma3.drv/package -fr=./package/lib/lib/a8/release/ti.sdo.edma3.drv/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/a8/release/ti.sdo.edma3.drv/package/package_ti.sdo.edma3.drv.oea8f: export C_DIR=
package/lib/lib/a8/release/ti.sdo.edma3.drv/package/package_ti.sdo.edma3.drv.oea8f: PATH:=$(ti.targets.arm.elf.A8F.rootDir)/bin/:$(PATH)

package/lib/lib/a8/release/ti.sdo.edma3.drv/package/package_ti.sdo.edma3.drv.sea8f: | .interfaces
package/lib/lib/a8/release/ti.sdo.edma3.drv/package/package_ti.sdo.edma3.drv.sea8f: package/package_ti.sdo.edma3.drv.c lib/a8/release/ti.sdo.edma3.drv.aea8f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clea8f -n $< ...
	$(ti.targets.arm.elf.A8F.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f   -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/a8/release/ti.sdo.edma3.drv/package -fr=./package/lib/lib/a8/release/ti.sdo.edma3.drv/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/a8/release/ti.sdo.edma3.drv/package -s oea8f $< -C  -n -s --symdebug:none -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f   -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/a8/release/ti.sdo.edma3.drv/package -fr=./package/lib/lib/a8/release/ti.sdo.edma3.drv/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/a8/release/ti.sdo.edma3.drv/package/package_ti.sdo.edma3.drv.sea8f: export C_DIR=
package/lib/lib/a8/release/ti.sdo.edma3.drv/package/package_ti.sdo.edma3.drv.sea8f: PATH:=$(ti.targets.arm.elf.A8F.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_init.oea8f.dep
package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_init.oea8f.dep: ;
endif

package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_init.oea8f: | .interfaces
package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_init.oea8f: src/edma3_drv_init.c lib/a8/release/ti.sdo.edma3.drv.aea8f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clea8f $< ...
	$(ti.targets.arm.elf.A8F.rootDir)/bin/armcl -c  -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f   -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/a8/release/ti.sdo.edma3.drv/src -fr=./package/lib/lib/a8/release/ti.sdo.edma3.drv/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/a8/release/ti.sdo.edma3.drv/src -s oea8f $< -C   -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f   -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/a8/release/ti.sdo.edma3.drv/src -fr=./package/lib/lib/a8/release/ti.sdo.edma3.drv/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_init.oea8f: export C_DIR=
package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_init.oea8f: PATH:=$(ti.targets.arm.elf.A8F.rootDir)/bin/:$(PATH)

package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_init.sea8f: | .interfaces
package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_init.sea8f: src/edma3_drv_init.c lib/a8/release/ti.sdo.edma3.drv.aea8f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clea8f -n $< ...
	$(ti.targets.arm.elf.A8F.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f   -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/a8/release/ti.sdo.edma3.drv/src -fr=./package/lib/lib/a8/release/ti.sdo.edma3.drv/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/a8/release/ti.sdo.edma3.drv/src -s oea8f $< -C  -n -s --symdebug:none -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f   -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/a8/release/ti.sdo.edma3.drv/src -fr=./package/lib/lib/a8/release/ti.sdo.edma3.drv/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_init.sea8f: export C_DIR=
package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_init.sea8f: PATH:=$(ti.targets.arm.elf.A8F.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_basic.oea8f.dep
package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_basic.oea8f.dep: ;
endif

package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_basic.oea8f: | .interfaces
package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_basic.oea8f: src/edma3_drv_basic.c lib/a8/release/ti.sdo.edma3.drv.aea8f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clea8f $< ...
	$(ti.targets.arm.elf.A8F.rootDir)/bin/armcl -c  -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f   -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/a8/release/ti.sdo.edma3.drv/src -fr=./package/lib/lib/a8/release/ti.sdo.edma3.drv/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/a8/release/ti.sdo.edma3.drv/src -s oea8f $< -C   -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f   -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/a8/release/ti.sdo.edma3.drv/src -fr=./package/lib/lib/a8/release/ti.sdo.edma3.drv/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_basic.oea8f: export C_DIR=
package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_basic.oea8f: PATH:=$(ti.targets.arm.elf.A8F.rootDir)/bin/:$(PATH)

package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_basic.sea8f: | .interfaces
package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_basic.sea8f: src/edma3_drv_basic.c lib/a8/release/ti.sdo.edma3.drv.aea8f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clea8f -n $< ...
	$(ti.targets.arm.elf.A8F.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f   -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/a8/release/ti.sdo.edma3.drv/src -fr=./package/lib/lib/a8/release/ti.sdo.edma3.drv/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/a8/release/ti.sdo.edma3.drv/src -s oea8f $< -C  -n -s --symdebug:none -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f   -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/a8/release/ti.sdo.edma3.drv/src -fr=./package/lib/lib/a8/release/ti.sdo.edma3.drv/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_basic.sea8f: export C_DIR=
package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_basic.sea8f: PATH:=$(ti.targets.arm.elf.A8F.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_adv.oea8f.dep
package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_adv.oea8f.dep: ;
endif

package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_adv.oea8f: | .interfaces
package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_adv.oea8f: src/edma3_drv_adv.c lib/a8/release/ti.sdo.edma3.drv.aea8f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clea8f $< ...
	$(ti.targets.arm.elf.A8F.rootDir)/bin/armcl -c  -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f   -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/a8/release/ti.sdo.edma3.drv/src -fr=./package/lib/lib/a8/release/ti.sdo.edma3.drv/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/a8/release/ti.sdo.edma3.drv/src -s oea8f $< -C   -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f   -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/a8/release/ti.sdo.edma3.drv/src -fr=./package/lib/lib/a8/release/ti.sdo.edma3.drv/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_adv.oea8f: export C_DIR=
package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_adv.oea8f: PATH:=$(ti.targets.arm.elf.A8F.rootDir)/bin/:$(PATH)

package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_adv.sea8f: | .interfaces
package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_adv.sea8f: src/edma3_drv_adv.c lib/a8/release/ti.sdo.edma3.drv.aea8f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clea8f -n $< ...
	$(ti.targets.arm.elf.A8F.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f   -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/a8/release/ti.sdo.edma3.drv/src -fr=./package/lib/lib/a8/release/ti.sdo.edma3.drv/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/a8/release/ti.sdo.edma3.drv/src -s oea8f $< -C  -n -s --symdebug:none -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f   -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/a8/release/ti.sdo.edma3.drv/src -fr=./package/lib/lib/a8/release/ti.sdo.edma3.drv/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_adv.sea8f: export C_DIR=
package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_adv.sea8f: PATH:=$(ti.targets.arm.elf.A8F.rootDir)/bin/:$(PATH)

clean,ea8f ::
	-$(RM) package/lib/lib/a8/release/ti.sdo.edma3.drv/package/package_ti.sdo.edma3.drv.oea8f
	-$(RM) package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_init.oea8f
	-$(RM) package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_basic.oea8f
	-$(RM) package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_adv.oea8f
	-$(RM) package/lib/lib/a8/release/ti.sdo.edma3.drv/package/package_ti.sdo.edma3.drv.sea8f
	-$(RM) package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_init.sea8f
	-$(RM) package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_basic.sea8f
	-$(RM) package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_adv.sea8f

lib/a8/release/ti.sdo.edma3.drv.aea8f: package/lib/lib/a8/release/ti.sdo.edma3.drv/package/package_ti.sdo.edma3.drv.oea8f package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_init.oea8f package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_basic.oea8f package/lib/lib/a8/release/ti.sdo.edma3.drv/src/edma3_drv_adv.oea8f lib/a8/release/ti.sdo.edma3.drv.aea8f.mak

clean::
	-$(RM) lib/a8/release/ti.sdo.edma3.drv.aea8f.mak
