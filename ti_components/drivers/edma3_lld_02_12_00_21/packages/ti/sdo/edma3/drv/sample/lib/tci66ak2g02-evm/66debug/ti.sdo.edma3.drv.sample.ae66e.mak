#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = ti.targets.elf.C66_big_endian{1,0,7.4,2
#
ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.oe66e.dep
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.oe66e.dep: ;
endif

package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.oe66e: | .interfaces
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.oe66e: package/package_ti.sdo.edma3.drv.sample.c lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample.ae66e.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle66e $< ...
	$(ti.targets.elf.C66_big_endian.rootDir)/bin/cl6x -c  -qq -pdsw225 -me -mv6600 --abi=eabi -eo.oe66e -ea.se66e  -mi10 -mo -me --mem_model:data=far  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C66_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C66_big_endian.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/package -fr=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/package -s oe66e $< -C   -qq -pdsw225 -me -mv6600 --abi=eabi -eo.oe66e -ea.se66e  -mi10 -mo -me --mem_model:data=far  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C66_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C66_big_endian.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/package -fr=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.oe66e: export C_DIR=
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.oe66e: PATH:=$(ti.targets.elf.C66_big_endian.rootDir)/bin/:$(PATH)

package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.se66e: | .interfaces
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.se66e: package/package_ti.sdo.edma3.drv.sample.c lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample.ae66e.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle66e -n $< ...
	$(ti.targets.elf.C66_big_endian.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -me -mv6600 --abi=eabi -eo.oe66e -ea.se66e  -mi10 -mo -me --mem_model:data=far  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C66_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C66_big_endian.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/package -fr=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/package -s oe66e $< -C  -n -s --symdebug:none -qq -pdsw225 -me -mv6600 --abi=eabi -eo.oe66e -ea.se66e  -mi10 -mo -me --mem_model:data=far  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C66_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C66_big_endian.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/package -fr=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.se66e: export C_DIR=
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.se66e: PATH:=$(ti.targets.elf.C66_big_endian.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_cfg.oe66e.dep
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_cfg.oe66e.dep: ;
endif

package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_cfg.oe66e: | .interfaces
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_cfg.oe66e: src/platforms/sample_tci66ak2g02_cfg.c lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample.ae66e.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle66e $< ...
	$(ti.targets.elf.C66_big_endian.rootDir)/bin/cl6x -c  -qq -pdsw225 -me -mv6600 --abi=eabi -eo.oe66e -ea.se66e  -mi10 -mo -me --mem_model:data=far  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C66_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C66_big_endian.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms -fr=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms -s oe66e $< -C   -qq -pdsw225 -me -mv6600 --abi=eabi -eo.oe66e -ea.se66e  -mi10 -mo -me --mem_model:data=far  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C66_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C66_big_endian.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms -fr=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_cfg.oe66e: export C_DIR=
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_cfg.oe66e: PATH:=$(ti.targets.elf.C66_big_endian.rootDir)/bin/:$(PATH)

package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_cfg.se66e: | .interfaces
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_cfg.se66e: src/platforms/sample_tci66ak2g02_cfg.c lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample.ae66e.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle66e -n $< ...
	$(ti.targets.elf.C66_big_endian.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -me -mv6600 --abi=eabi -eo.oe66e -ea.se66e  -mi10 -mo -me --mem_model:data=far  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C66_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C66_big_endian.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms -fr=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms -s oe66e $< -C  -n -s --symdebug:none -qq -pdsw225 -me -mv6600 --abi=eabi -eo.oe66e -ea.se66e  -mi10 -mo -me --mem_model:data=far  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C66_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C66_big_endian.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms -fr=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_cfg.se66e: export C_DIR=
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_cfg.se66e: PATH:=$(ti.targets.elf.C66_big_endian.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_int_reg.oe66e.dep
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_int_reg.oe66e.dep: ;
endif

package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_int_reg.oe66e: | .interfaces
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_int_reg.oe66e: src/platforms/sample_tci66ak2g02_int_reg.c lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample.ae66e.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle66e $< ...
	$(ti.targets.elf.C66_big_endian.rootDir)/bin/cl6x -c  -qq -pdsw225 -me -mv6600 --abi=eabi -eo.oe66e -ea.se66e  -mi10 -mo -me --mem_model:data=far  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C66_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C66_big_endian.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms -fr=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms -s oe66e $< -C   -qq -pdsw225 -me -mv6600 --abi=eabi -eo.oe66e -ea.se66e  -mi10 -mo -me --mem_model:data=far  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C66_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C66_big_endian.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms -fr=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_int_reg.oe66e: export C_DIR=
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_int_reg.oe66e: PATH:=$(ti.targets.elf.C66_big_endian.rootDir)/bin/:$(PATH)

package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_int_reg.se66e: | .interfaces
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_int_reg.se66e: src/platforms/sample_tci66ak2g02_int_reg.c lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample.ae66e.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle66e -n $< ...
	$(ti.targets.elf.C66_big_endian.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -me -mv6600 --abi=eabi -eo.oe66e -ea.se66e  -mi10 -mo -me --mem_model:data=far  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C66_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C66_big_endian.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms -fr=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms -s oe66e $< -C  -n -s --symdebug:none -qq -pdsw225 -me -mv6600 --abi=eabi -eo.oe66e -ea.se66e  -mi10 -mo -me --mem_model:data=far  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C66_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C66_big_endian.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms -fr=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_int_reg.se66e: export C_DIR=
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_int_reg.se66e: PATH:=$(ti.targets.elf.C66_big_endian.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/sample_cs.oe66e.dep
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/sample_cs.oe66e.dep: ;
endif

package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/sample_cs.oe66e: | .interfaces
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/sample_cs.oe66e: src/sample_cs.c lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample.ae66e.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle66e $< ...
	$(ti.targets.elf.C66_big_endian.rootDir)/bin/cl6x -c  -qq -pdsw225 -me -mv6600 --abi=eabi -eo.oe66e -ea.se66e  -mi10 -mo -me --mem_model:data=far  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C66_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C66_big_endian.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src -fr=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src -s oe66e $< -C   -qq -pdsw225 -me -mv6600 --abi=eabi -eo.oe66e -ea.se66e  -mi10 -mo -me --mem_model:data=far  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C66_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C66_big_endian.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src -fr=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/sample_cs.oe66e: export C_DIR=
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/sample_cs.oe66e: PATH:=$(ti.targets.elf.C66_big_endian.rootDir)/bin/:$(PATH)

package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/sample_cs.se66e: | .interfaces
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/sample_cs.se66e: src/sample_cs.c lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample.ae66e.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle66e -n $< ...
	$(ti.targets.elf.C66_big_endian.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -me -mv6600 --abi=eabi -eo.oe66e -ea.se66e  -mi10 -mo -me --mem_model:data=far  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C66_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C66_big_endian.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src -fr=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src -s oe66e $< -C  -n -s --symdebug:none -qq -pdsw225 -me -mv6600 --abi=eabi -eo.oe66e -ea.se66e  -mi10 -mo -me --mem_model:data=far  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C66_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C66_big_endian.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src -fr=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/sample_cs.se66e: export C_DIR=
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/sample_cs.se66e: PATH:=$(ti.targets.elf.C66_big_endian.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/sample_init.oe66e.dep
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/sample_init.oe66e.dep: ;
endif

package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/sample_init.oe66e: | .interfaces
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/sample_init.oe66e: src/sample_init.c lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample.ae66e.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle66e $< ...
	$(ti.targets.elf.C66_big_endian.rootDir)/bin/cl6x -c  -qq -pdsw225 -me -mv6600 --abi=eabi -eo.oe66e -ea.se66e  -mi10 -mo -me --mem_model:data=far  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C66_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C66_big_endian.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src -fr=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src -s oe66e $< -C   -qq -pdsw225 -me -mv6600 --abi=eabi -eo.oe66e -ea.se66e  -mi10 -mo -me --mem_model:data=far  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C66_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C66_big_endian.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src -fr=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/sample_init.oe66e: export C_DIR=
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/sample_init.oe66e: PATH:=$(ti.targets.elf.C66_big_endian.rootDir)/bin/:$(PATH)

package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/sample_init.se66e: | .interfaces
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/sample_init.se66e: src/sample_init.c lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample.ae66e.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle66e -n $< ...
	$(ti.targets.elf.C66_big_endian.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -me -mv6600 --abi=eabi -eo.oe66e -ea.se66e  -mi10 -mo -me --mem_model:data=far  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C66_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C66_big_endian.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src -fr=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src -s oe66e $< -C  -n -s --symdebug:none -qq -pdsw225 -me -mv6600 --abi=eabi -eo.oe66e -ea.se66e  -mi10 -mo -me --mem_model:data=far  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C66_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C66_big_endian.rootDir)/include -fs=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src -fr=./package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/sample_init.se66e: export C_DIR=
package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/sample_init.se66e: PATH:=$(ti.targets.elf.C66_big_endian.rootDir)/bin/:$(PATH)

clean,e66e ::
	-$(RM) package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.oe66e
	-$(RM) package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_cfg.oe66e
	-$(RM) package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_int_reg.oe66e
	-$(RM) package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/sample_cs.oe66e
	-$(RM) package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/sample_init.oe66e
	-$(RM) package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.se66e
	-$(RM) package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_cfg.se66e
	-$(RM) package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_int_reg.se66e
	-$(RM) package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/sample_cs.se66e
	-$(RM) package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/sample_init.se66e

lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample.ae66e: package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/package/package_ti.sdo.edma3.drv.sample.oe66e package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_cfg.oe66e package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/platforms/sample_tci66ak2g02_int_reg.oe66e package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/sample_cs.oe66e package/lib/lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample/src/sample_init.oe66e lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample.ae66e.mak

clean::
	-$(RM) lib/tci66ak2g02-evm/66debug/ti.sdo.edma3.drv.sample.ae66e.mak
