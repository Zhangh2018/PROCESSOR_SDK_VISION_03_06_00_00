#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = ti.targets.elf.C66{1,0,7.4,2
#
ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.oe66.dep
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.oe66.dep: ;
endif

package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.oe66: | .interfaces
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.oe66: package/package_ti.sdo.edma3.drv.sample.c lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample.ae66.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle66 $< ...
	$(ti.targets.elf.C66.rootDir)/bin/cl6x -c  -qq -pdsw225 -mv6600 --abi=eabi -eo.oe66 -ea.se66  -mi10 -mo --mem_model:data=far  -DCHIP_TCI66AK2G02 -Dxdc_target_name__=C66 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C66.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/package -fr=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/package -s oe66 $< -C   -qq -pdsw225 -mv6600 --abi=eabi -eo.oe66 -ea.se66  -mi10 -mo --mem_model:data=far  -DCHIP_TCI66AK2G02 -Dxdc_target_name__=C66 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C66.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/package -fr=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.oe66: export C_DIR=
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.oe66: PATH:=$(ti.targets.elf.C66.rootDir)/bin/:$(PATH)

package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.se66: | .interfaces
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.se66: package/package_ti.sdo.edma3.drv.sample.c lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample.ae66.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle66 -n $< ...
	$(ti.targets.elf.C66.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -mv6600 --abi=eabi -eo.oe66 -ea.se66  -mi10 -mo --mem_model:data=far  -DCHIP_TCI66AK2G02 -Dxdc_target_name__=C66 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C66.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/package -fr=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/package -s oe66 $< -C  -n -s --symdebug:none -qq -pdsw225 -mv6600 --abi=eabi -eo.oe66 -ea.se66  -mi10 -mo --mem_model:data=far  -DCHIP_TCI66AK2G02 -Dxdc_target_name__=C66 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C66.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/package -fr=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.se66: export C_DIR=
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.se66: PATH:=$(ti.targets.elf.C66.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_cfg.oe66.dep
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_cfg.oe66.dep: ;
endif

package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_cfg.oe66: | .interfaces
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_cfg.oe66: src/platforms/sample_tci66ak2g02_cfg.c lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample.ae66.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle66 $< ...
	$(ti.targets.elf.C66.rootDir)/bin/cl6x -c  -qq -pdsw225 -mv6600 --abi=eabi -eo.oe66 -ea.se66  -mi10 -mo --mem_model:data=far  -DCHIP_TCI66AK2G02 -Dxdc_target_name__=C66 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C66.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms -fr=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms -s oe66 $< -C   -qq -pdsw225 -mv6600 --abi=eabi -eo.oe66 -ea.se66  -mi10 -mo --mem_model:data=far  -DCHIP_TCI66AK2G02 -Dxdc_target_name__=C66 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C66.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms -fr=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_cfg.oe66: export C_DIR=
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_cfg.oe66: PATH:=$(ti.targets.elf.C66.rootDir)/bin/:$(PATH)

package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_cfg.se66: | .interfaces
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_cfg.se66: src/platforms/sample_tci66ak2g02_cfg.c lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample.ae66.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle66 -n $< ...
	$(ti.targets.elf.C66.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -mv6600 --abi=eabi -eo.oe66 -ea.se66  -mi10 -mo --mem_model:data=far  -DCHIP_TCI66AK2G02 -Dxdc_target_name__=C66 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C66.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms -fr=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms -s oe66 $< -C  -n -s --symdebug:none -qq -pdsw225 -mv6600 --abi=eabi -eo.oe66 -ea.se66  -mi10 -mo --mem_model:data=far  -DCHIP_TCI66AK2G02 -Dxdc_target_name__=C66 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C66.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms -fr=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_cfg.se66: export C_DIR=
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_cfg.se66: PATH:=$(ti.targets.elf.C66.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_int_reg.oe66.dep
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_int_reg.oe66.dep: ;
endif

package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_int_reg.oe66: | .interfaces
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_int_reg.oe66: src/platforms/sample_tci66ak2g02_int_reg.c lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample.ae66.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle66 $< ...
	$(ti.targets.elf.C66.rootDir)/bin/cl6x -c  -qq -pdsw225 -mv6600 --abi=eabi -eo.oe66 -ea.se66  -mi10 -mo --mem_model:data=far  -DCHIP_TCI66AK2G02 -Dxdc_target_name__=C66 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C66.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms -fr=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms -s oe66 $< -C   -qq -pdsw225 -mv6600 --abi=eabi -eo.oe66 -ea.se66  -mi10 -mo --mem_model:data=far  -DCHIP_TCI66AK2G02 -Dxdc_target_name__=C66 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C66.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms -fr=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_int_reg.oe66: export C_DIR=
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_int_reg.oe66: PATH:=$(ti.targets.elf.C66.rootDir)/bin/:$(PATH)

package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_int_reg.se66: | .interfaces
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_int_reg.se66: src/platforms/sample_tci66ak2g02_int_reg.c lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample.ae66.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle66 -n $< ...
	$(ti.targets.elf.C66.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -mv6600 --abi=eabi -eo.oe66 -ea.se66  -mi10 -mo --mem_model:data=far  -DCHIP_TCI66AK2G02 -Dxdc_target_name__=C66 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C66.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms -fr=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms -s oe66 $< -C  -n -s --symdebug:none -qq -pdsw225 -mv6600 --abi=eabi -eo.oe66 -ea.se66  -mi10 -mo --mem_model:data=far  -DCHIP_TCI66AK2G02 -Dxdc_target_name__=C66 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C66.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms -fr=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_int_reg.se66: export C_DIR=
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_int_reg.se66: PATH:=$(ti.targets.elf.C66.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/sample_cs.oe66.dep
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/sample_cs.oe66.dep: ;
endif

package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/sample_cs.oe66: | .interfaces
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/sample_cs.oe66: src/sample_cs.c lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample.ae66.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle66 $< ...
	$(ti.targets.elf.C66.rootDir)/bin/cl6x -c  -qq -pdsw225 -mv6600 --abi=eabi -eo.oe66 -ea.se66  -mi10 -mo --mem_model:data=far  -DCHIP_TCI66AK2G02 -Dxdc_target_name__=C66 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C66.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src -fr=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src -s oe66 $< -C   -qq -pdsw225 -mv6600 --abi=eabi -eo.oe66 -ea.se66  -mi10 -mo --mem_model:data=far  -DCHIP_TCI66AK2G02 -Dxdc_target_name__=C66 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C66.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src -fr=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/sample_cs.oe66: export C_DIR=
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/sample_cs.oe66: PATH:=$(ti.targets.elf.C66.rootDir)/bin/:$(PATH)

package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/sample_cs.se66: | .interfaces
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/sample_cs.se66: src/sample_cs.c lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample.ae66.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle66 -n $< ...
	$(ti.targets.elf.C66.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -mv6600 --abi=eabi -eo.oe66 -ea.se66  -mi10 -mo --mem_model:data=far  -DCHIP_TCI66AK2G02 -Dxdc_target_name__=C66 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C66.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src -fr=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src -s oe66 $< -C  -n -s --symdebug:none -qq -pdsw225 -mv6600 --abi=eabi -eo.oe66 -ea.se66  -mi10 -mo --mem_model:data=far  -DCHIP_TCI66AK2G02 -Dxdc_target_name__=C66 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C66.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src -fr=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/sample_cs.se66: export C_DIR=
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/sample_cs.se66: PATH:=$(ti.targets.elf.C66.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/sample_init.oe66.dep
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/sample_init.oe66.dep: ;
endif

package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/sample_init.oe66: | .interfaces
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/sample_init.oe66: src/sample_init.c lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample.ae66.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle66 $< ...
	$(ti.targets.elf.C66.rootDir)/bin/cl6x -c  -qq -pdsw225 -mv6600 --abi=eabi -eo.oe66 -ea.se66  -mi10 -mo --mem_model:data=far  -DCHIP_TCI66AK2G02 -Dxdc_target_name__=C66 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C66.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src -fr=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src -s oe66 $< -C   -qq -pdsw225 -mv6600 --abi=eabi -eo.oe66 -ea.se66  -mi10 -mo --mem_model:data=far  -DCHIP_TCI66AK2G02 -Dxdc_target_name__=C66 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C66.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src -fr=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/sample_init.oe66: export C_DIR=
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/sample_init.oe66: PATH:=$(ti.targets.elf.C66.rootDir)/bin/:$(PATH)

package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/sample_init.se66: | .interfaces
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/sample_init.se66: src/sample_init.c lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample.ae66.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle66 -n $< ...
	$(ti.targets.elf.C66.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -mv6600 --abi=eabi -eo.oe66 -ea.se66  -mi10 -mo --mem_model:data=far  -DCHIP_TCI66AK2G02 -Dxdc_target_name__=C66 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C66.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src -fr=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src -s oe66 $< -C  -n -s --symdebug:none -qq -pdsw225 -mv6600 --abi=eabi -eo.oe66 -ea.se66  -mi10 -mo --mem_model:data=far  -DCHIP_TCI66AK2G02 -Dxdc_target_name__=C66 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C66.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src -fr=./package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/sample_init.se66: export C_DIR=
package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/sample_init.se66: PATH:=$(ti.targets.elf.C66.rootDir)/bin/:$(PATH)

clean,e66 ::
	-$(RM) package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.oe66
	-$(RM) package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_cfg.oe66
	-$(RM) package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_int_reg.oe66
	-$(RM) package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/sample_cs.oe66
	-$(RM) package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/sample_init.oe66
	-$(RM) package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.se66
	-$(RM) package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_cfg.se66
	-$(RM) package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_int_reg.se66
	-$(RM) package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/sample_cs.se66
	-$(RM) package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/sample_init.se66

lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample.ae66: package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.oe66 package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_cfg.oe66 package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_int_reg.oe66 package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/sample_cs.oe66 package/lib/lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample/src/sample_init.oe66 lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample.ae66.mak

clean::
	-$(RM) lib/tci66ak2g02-evm/66release/ti.sdo.edma3.drv.sample.ae66.mak
