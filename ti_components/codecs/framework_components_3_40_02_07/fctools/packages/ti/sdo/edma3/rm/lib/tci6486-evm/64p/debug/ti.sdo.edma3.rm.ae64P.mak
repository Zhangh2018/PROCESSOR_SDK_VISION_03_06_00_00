#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = ti.targets.elf.C64P{1,0,7.4,4
#
ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.oe64P.dep
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.oe64P.dep: ;
endif

package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.oe64P: | .interfaces
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.oe64P: package/package_ti.sdo.edma3.rm.c lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm.ae64P.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle64P $< ...
	$(ti.targets.elf.C64P.rootDir)/bin/cl6x -c  -qq -pdsw225 -mv64p --abi=eabi -eo.oe64P -ea.se64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package -s oe64P $< -C   -qq -pdsw225 -mv64p --abi=eabi -eo.oe64P -ea.se64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.oe64P: export C_DIR=
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.oe64P: PATH:=$(ti.targets.elf.C64P.rootDir)/bin/;$(PATH)
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.oe64P: Path:=$(ti.targets.elf.C64P.rootDir)/bin/;$(PATH)

package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.se64P: | .interfaces
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.se64P: package/package_ti.sdo.edma3.rm.c lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm.ae64P.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle64P -n $< ...
	$(ti.targets.elf.C64P.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -mv64p --abi=eabi -eo.oe64P -ea.se64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package -s oe64P $< -C  -n -s --symdebug:none -qq -pdsw225 -mv64p --abi=eabi -eo.oe64P -ea.se64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.se64P: export C_DIR=
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.se64P: PATH:=$(ti.targets.elf.C64P.rootDir)/bin/;$(PATH)
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.se64P: Path:=$(ti.targets.elf.C64P.rootDir)/bin/;$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.oe64P.dep
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.oe64P.dep: ;
endif

package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.oe64P: | .interfaces
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.oe64P: src/configs/edma3_tci6486_cfg.c lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm.ae64P.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle64P $< ...
	$(ti.targets.elf.C64P.rootDir)/bin/cl6x -c  -qq -pdsw225 -mv64p --abi=eabi -eo.oe64P -ea.se64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs -s oe64P $< -C   -qq -pdsw225 -mv64p --abi=eabi -eo.oe64P -ea.se64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.oe64P: export C_DIR=
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.oe64P: PATH:=$(ti.targets.elf.C64P.rootDir)/bin/;$(PATH)
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.oe64P: Path:=$(ti.targets.elf.C64P.rootDir)/bin/;$(PATH)

package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.se64P: | .interfaces
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.se64P: src/configs/edma3_tci6486_cfg.c lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm.ae64P.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle64P -n $< ...
	$(ti.targets.elf.C64P.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -mv64p --abi=eabi -eo.oe64P -ea.se64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs -s oe64P $< -C  -n -s --symdebug:none -qq -pdsw225 -mv64p --abi=eabi -eo.oe64P -ea.se64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.se64P: export C_DIR=
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.se64P: PATH:=$(ti.targets.elf.C64P.rootDir)/bin/;$(PATH)
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.se64P: Path:=$(ti.targets.elf.C64P.rootDir)/bin/;$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.oe64P.dep
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.oe64P.dep: ;
endif

package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.oe64P: | .interfaces
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.oe64P: src/edma3resmgr.c lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm.ae64P.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle64P $< ...
	$(ti.targets.elf.C64P.rootDir)/bin/cl6x -c  -qq -pdsw225 -mv64p --abi=eabi -eo.oe64P -ea.se64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -s oe64P $< -C   -qq -pdsw225 -mv64p --abi=eabi -eo.oe64P -ea.se64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.oe64P: export C_DIR=
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.oe64P: PATH:=$(ti.targets.elf.C64P.rootDir)/bin/;$(PATH)
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.oe64P: Path:=$(ti.targets.elf.C64P.rootDir)/bin/;$(PATH)

package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.se64P: | .interfaces
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.se64P: src/edma3resmgr.c lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm.ae64P.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle64P -n $< ...
	$(ti.targets.elf.C64P.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -mv64p --abi=eabi -eo.oe64P -ea.se64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -s oe64P $< -C  -n -s --symdebug:none -qq -pdsw225 -mv64p --abi=eabi -eo.oe64P -ea.se64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.se64P: export C_DIR=
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.se64P: PATH:=$(ti.targets.elf.C64P.rootDir)/bin/;$(PATH)
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.se64P: Path:=$(ti.targets.elf.C64P.rootDir)/bin/;$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.oe64P.dep
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.oe64P.dep: ;
endif

package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.oe64P: | .interfaces
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.oe64P: src/edma3_rm_gbl_data.c lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm.ae64P.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle64P $< ...
	$(ti.targets.elf.C64P.rootDir)/bin/cl6x -c  -qq -pdsw225 -mv64p --abi=eabi -eo.oe64P -ea.se64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -s oe64P $< -C   -qq -pdsw225 -mv64p --abi=eabi -eo.oe64P -ea.se64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.oe64P: export C_DIR=
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.oe64P: PATH:=$(ti.targets.elf.C64P.rootDir)/bin/;$(PATH)
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.oe64P: Path:=$(ti.targets.elf.C64P.rootDir)/bin/;$(PATH)

package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.se64P: | .interfaces
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.se64P: src/edma3_rm_gbl_data.c lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm.ae64P.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle64P -n $< ...
	$(ti.targets.elf.C64P.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -mv64p --abi=eabi -eo.oe64P -ea.se64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -s oe64P $< -C  -n -s --symdebug:none -qq -pdsw225 -mv64p --abi=eabi -eo.oe64P -ea.se64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.se64P: export C_DIR=
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.se64P: PATH:=$(ti.targets.elf.C64P.rootDir)/bin/;$(PATH)
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.se64P: Path:=$(ti.targets.elf.C64P.rootDir)/bin/;$(PATH)

clean,e64P ::
	-$(RM) package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.oe64P
	-$(RM) package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.oe64P
	-$(RM) package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.oe64P
	-$(RM) package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.oe64P
	-$(RM) package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.se64P
	-$(RM) package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.se64P
	-$(RM) package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.se64P
	-$(RM) package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.se64P

lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm.ae64P: package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.oe64P package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.oe64P package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.oe64P package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.oe64P lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm.ae64P.mak

clean::
	-$(RM) lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm.ae64P.mak
