#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = ti.targets.arm.elf.A8F{1,0,16.9,2
#
ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.oea8f.dep
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.oea8f.dep: ;
endif

package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.oea8f: | .interfaces
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.oea8f: package/package_ti.sdo.edma3.drv.sample.c lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample.aea8f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clea8f $< ...
	$(ti.targets.arm.elf.A8F.rootDir)/bin/armcl -c  -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f  -DCHIP_TI814X -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/package -fr=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/package -s oea8f $< -C   -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f  -DCHIP_TI814X -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/package -fr=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.oea8f: export C_DIR=
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.oea8f: PATH:=$(ti.targets.arm.elf.A8F.rootDir)/bin/:$(PATH)

package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.sea8f: | .interfaces
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.sea8f: package/package_ti.sdo.edma3.drv.sample.c lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample.aea8f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clea8f -n $< ...
	$(ti.targets.arm.elf.A8F.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f  -DCHIP_TI814X -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/package -fr=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/package -s oea8f $< -C  -n -s --symdebug:none -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f  -DCHIP_TI814X -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/package -fr=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.sea8f: export C_DIR=
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.sea8f: PATH:=$(ti.targets.arm.elf.A8F.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms/sample_ti814x_arm_cfg.oea8f.dep
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms/sample_ti814x_arm_cfg.oea8f.dep: ;
endif

package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms/sample_ti814x_arm_cfg.oea8f: | .interfaces
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms/sample_ti814x_arm_cfg.oea8f: src/platforms/sample_ti814x_arm_cfg.c lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample.aea8f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clea8f $< ...
	$(ti.targets.arm.elf.A8F.rootDir)/bin/armcl -c  -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f  -DCHIP_TI814X -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms -fr=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms -s oea8f $< -C   -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f  -DCHIP_TI814X -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms -fr=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms/sample_ti814x_arm_cfg.oea8f: export C_DIR=
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms/sample_ti814x_arm_cfg.oea8f: PATH:=$(ti.targets.arm.elf.A8F.rootDir)/bin/:$(PATH)

package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms/sample_ti814x_arm_cfg.sea8f: | .interfaces
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms/sample_ti814x_arm_cfg.sea8f: src/platforms/sample_ti814x_arm_cfg.c lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample.aea8f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clea8f -n $< ...
	$(ti.targets.arm.elf.A8F.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f  -DCHIP_TI814X -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms -fr=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms -s oea8f $< -C  -n -s --symdebug:none -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f  -DCHIP_TI814X -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms -fr=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms/sample_ti814x_arm_cfg.sea8f: export C_DIR=
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms/sample_ti814x_arm_cfg.sea8f: PATH:=$(ti.targets.arm.elf.A8F.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms/sample_ti814x_arm_int_reg.oea8f.dep
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms/sample_ti814x_arm_int_reg.oea8f.dep: ;
endif

package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms/sample_ti814x_arm_int_reg.oea8f: | .interfaces
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms/sample_ti814x_arm_int_reg.oea8f: src/platforms/sample_ti814x_arm_int_reg.c lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample.aea8f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clea8f $< ...
	$(ti.targets.arm.elf.A8F.rootDir)/bin/armcl -c  -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f  -DCHIP_TI814X -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms -fr=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms -s oea8f $< -C   -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f  -DCHIP_TI814X -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms -fr=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms/sample_ti814x_arm_int_reg.oea8f: export C_DIR=
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms/sample_ti814x_arm_int_reg.oea8f: PATH:=$(ti.targets.arm.elf.A8F.rootDir)/bin/:$(PATH)

package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms/sample_ti814x_arm_int_reg.sea8f: | .interfaces
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms/sample_ti814x_arm_int_reg.sea8f: src/platforms/sample_ti814x_arm_int_reg.c lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample.aea8f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clea8f -n $< ...
	$(ti.targets.arm.elf.A8F.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f  -DCHIP_TI814X -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms -fr=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms -s oea8f $< -C  -n -s --symdebug:none -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f  -DCHIP_TI814X -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms -fr=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms/sample_ti814x_arm_int_reg.sea8f: export C_DIR=
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms/sample_ti814x_arm_int_reg.sea8f: PATH:=$(ti.targets.arm.elf.A8F.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/sample_arm_cs.oea8f.dep
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/sample_arm_cs.oea8f.dep: ;
endif

package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/sample_arm_cs.oea8f: | .interfaces
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/sample_arm_cs.oea8f: src/sample_arm_cs.c lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample.aea8f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clea8f $< ...
	$(ti.targets.arm.elf.A8F.rootDir)/bin/armcl -c  -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f  -DCHIP_TI814X -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src -fr=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src -s oea8f $< -C   -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f  -DCHIP_TI814X -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src -fr=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/sample_arm_cs.oea8f: export C_DIR=
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/sample_arm_cs.oea8f: PATH:=$(ti.targets.arm.elf.A8F.rootDir)/bin/:$(PATH)

package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/sample_arm_cs.sea8f: | .interfaces
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/sample_arm_cs.sea8f: src/sample_arm_cs.c lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample.aea8f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clea8f -n $< ...
	$(ti.targets.arm.elf.A8F.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f  -DCHIP_TI814X -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src -fr=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src -s oea8f $< -C  -n -s --symdebug:none -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f  -DCHIP_TI814X -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src -fr=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/sample_arm_cs.sea8f: export C_DIR=
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/sample_arm_cs.sea8f: PATH:=$(ti.targets.arm.elf.A8F.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/sample_arm_init.oea8f.dep
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/sample_arm_init.oea8f.dep: ;
endif

package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/sample_arm_init.oea8f: | .interfaces
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/sample_arm_init.oea8f: src/sample_arm_init.c lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample.aea8f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clea8f $< ...
	$(ti.targets.arm.elf.A8F.rootDir)/bin/armcl -c  -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f  -DCHIP_TI814X -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src -fr=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src -s oea8f $< -C   -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f  -DCHIP_TI814X -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src -fr=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/sample_arm_init.oea8f: export C_DIR=
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/sample_arm_init.oea8f: PATH:=$(ti.targets.arm.elf.A8F.rootDir)/bin/:$(PATH)

package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/sample_arm_init.sea8f: | .interfaces
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/sample_arm_init.sea8f: src/sample_arm_init.c lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample.aea8f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clea8f -n $< ...
	$(ti.targets.arm.elf.A8F.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f  -DCHIP_TI814X -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src -fr=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src -s oea8f $< -C  -n -s --symdebug:none -qq -pdsw225 --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f  -DCHIP_TI814X -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_9_2 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src -fr=./package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/sample_arm_init.sea8f: export C_DIR=
package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/sample_arm_init.sea8f: PATH:=$(ti.targets.arm.elf.A8F.rootDir)/bin/:$(PATH)

clean,ea8f ::
	-$(RM) package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.oea8f
	-$(RM) package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms/sample_ti814x_arm_cfg.oea8f
	-$(RM) package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms/sample_ti814x_arm_int_reg.oea8f
	-$(RM) package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/sample_arm_cs.oea8f
	-$(RM) package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/sample_arm_init.oea8f
	-$(RM) package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.sea8f
	-$(RM) package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms/sample_ti814x_arm_cfg.sea8f
	-$(RM) package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms/sample_ti814x_arm_int_reg.sea8f
	-$(RM) package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/sample_arm_cs.sea8f
	-$(RM) package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/sample_arm_init.sea8f

lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample.aea8f: package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.oea8f package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms/sample_ti814x_arm_cfg.oea8f package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/platforms/sample_ti814x_arm_int_reg.oea8f package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/sample_arm_cs.oea8f package/lib/lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample/src/sample_arm_init.oea8f lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample.aea8f.mak

clean::
	-$(RM) lib/ti814x-evm/a8/release/ti.sdo.edma3.drv.sample.aea8f.mak
