#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = ti.targets.C64P{1,0,7.4,4
#
ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.o64P.dep
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.o64P.dep: ;
endif

package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.o64P: | .interfaces
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.o64P: package/package_ti.sdo.edma3.rm.c lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm.a64P.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cl64P $< ...
	$(ti.targets.C64P.rootDir)/bin/cl6x -c  -qq -pdsw225 -mv64p -eo.o64P -ea.s64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 -g  $(XDCINCS) -I$(ti.targets.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package -s o64P $< -C   -qq -pdsw225 -mv64p -eo.o64P -ea.s64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 -g  $(XDCINCS) -I$(ti.targets.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.o64P: export C_DIR=
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.o64P: PATH:=$(ti.targets.C64P.rootDir)/bin/;$(PATH)
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.o64P: Path:=$(ti.targets.C64P.rootDir)/bin/;$(PATH)

package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.s64P: | .interfaces
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.s64P: package/package_ti.sdo.edma3.rm.c lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm.a64P.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cl64P -n $< ...
	$(ti.targets.C64P.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -mv64p -eo.o64P -ea.s64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 -g  $(XDCINCS) -I$(ti.targets.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package -s o64P $< -C  -n -s --symdebug:none -qq -pdsw225 -mv64p -eo.o64P -ea.s64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 -g  $(XDCINCS) -I$(ti.targets.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.s64P: export C_DIR=
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.s64P: PATH:=$(ti.targets.C64P.rootDir)/bin/;$(PATH)
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.s64P: Path:=$(ti.targets.C64P.rootDir)/bin/;$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.o64P.dep
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.o64P.dep: ;
endif

package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.o64P: | .interfaces
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.o64P: src/configs/edma3_tci6486_cfg.c lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm.a64P.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cl64P $< ...
	$(ti.targets.C64P.rootDir)/bin/cl6x -c  -qq -pdsw225 -mv64p -eo.o64P -ea.s64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 -g  $(XDCINCS) -I$(ti.targets.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs -s o64P $< -C   -qq -pdsw225 -mv64p -eo.o64P -ea.s64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 -g  $(XDCINCS) -I$(ti.targets.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.o64P: export C_DIR=
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.o64P: PATH:=$(ti.targets.C64P.rootDir)/bin/;$(PATH)
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.o64P: Path:=$(ti.targets.C64P.rootDir)/bin/;$(PATH)

package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.s64P: | .interfaces
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.s64P: src/configs/edma3_tci6486_cfg.c lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm.a64P.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cl64P -n $< ...
	$(ti.targets.C64P.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -mv64p -eo.o64P -ea.s64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 -g  $(XDCINCS) -I$(ti.targets.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs -s o64P $< -C  -n -s --symdebug:none -qq -pdsw225 -mv64p -eo.o64P -ea.s64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 -g  $(XDCINCS) -I$(ti.targets.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.s64P: export C_DIR=
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.s64P: PATH:=$(ti.targets.C64P.rootDir)/bin/;$(PATH)
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.s64P: Path:=$(ti.targets.C64P.rootDir)/bin/;$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.o64P.dep
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.o64P.dep: ;
endif

package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.o64P: | .interfaces
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.o64P: src/edma3resmgr.c lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm.a64P.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cl64P $< ...
	$(ti.targets.C64P.rootDir)/bin/cl6x -c  -qq -pdsw225 -mv64p -eo.o64P -ea.s64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 -g  $(XDCINCS) -I$(ti.targets.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -s o64P $< -C   -qq -pdsw225 -mv64p -eo.o64P -ea.s64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 -g  $(XDCINCS) -I$(ti.targets.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.o64P: export C_DIR=
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.o64P: PATH:=$(ti.targets.C64P.rootDir)/bin/;$(PATH)
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.o64P: Path:=$(ti.targets.C64P.rootDir)/bin/;$(PATH)

package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.s64P: | .interfaces
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.s64P: src/edma3resmgr.c lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm.a64P.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cl64P -n $< ...
	$(ti.targets.C64P.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -mv64p -eo.o64P -ea.s64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 -g  $(XDCINCS) -I$(ti.targets.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -s o64P $< -C  -n -s --symdebug:none -qq -pdsw225 -mv64p -eo.o64P -ea.s64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 -g  $(XDCINCS) -I$(ti.targets.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.s64P: export C_DIR=
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.s64P: PATH:=$(ti.targets.C64P.rootDir)/bin/;$(PATH)
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.s64P: Path:=$(ti.targets.C64P.rootDir)/bin/;$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.o64P.dep
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.o64P.dep: ;
endif

package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.o64P: | .interfaces
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.o64P: src/edma3_rm_gbl_data.c lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm.a64P.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cl64P $< ...
	$(ti.targets.C64P.rootDir)/bin/cl6x -c  -qq -pdsw225 -mv64p -eo.o64P -ea.s64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 -g  $(XDCINCS) -I$(ti.targets.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -s o64P $< -C   -qq -pdsw225 -mv64p -eo.o64P -ea.s64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 -g  $(XDCINCS) -I$(ti.targets.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.o64P: export C_DIR=
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.o64P: PATH:=$(ti.targets.C64P.rootDir)/bin/;$(PATH)
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.o64P: Path:=$(ti.targets.C64P.rootDir)/bin/;$(PATH)

package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.s64P: | .interfaces
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.s64P: src/edma3_rm_gbl_data.c lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm.a64P.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cl64P -n $< ...
	$(ti.targets.C64P.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -mv64p -eo.o64P -ea.s64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 -g  $(XDCINCS) -I$(ti.targets.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -s o64P $< -C  -n -s --symdebug:none -qq -pdsw225 -mv64p -eo.o64P -ea.s64P  -mi10 -mo  -D_DEBUG_=1  -Dxdc_target_name__=C64P -Dxdc_target_types__=ti/targets/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 -g  $(XDCINCS) -I$(ti.targets.C64P.rootDir)/include -fs=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src -fr=./package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.s64P: export C_DIR=
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.s64P: PATH:=$(ti.targets.C64P.rootDir)/bin/;$(PATH)
package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.s64P: Path:=$(ti.targets.C64P.rootDir)/bin/;$(PATH)

clean,64P ::
	-$(RM) package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.o64P
	-$(RM) package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.o64P
	-$(RM) package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.o64P
	-$(RM) package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.o64P
	-$(RM) package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.s64P
	-$(RM) package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.s64P
	-$(RM) package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.s64P
	-$(RM) package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.s64P

lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm.a64P: package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.o64P package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/configs/edma3_tci6486_cfg.o64P package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3resmgr.o64P package/lib/lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.o64P lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm.a64P.mak

clean::
	-$(RM) lib/tci6486-evm/64p/debug/ti.sdo.edma3.rm.a64P.mak
