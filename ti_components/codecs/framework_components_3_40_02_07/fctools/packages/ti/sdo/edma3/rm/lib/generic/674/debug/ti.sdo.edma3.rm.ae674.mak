#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = ti.targets.elf.C674{1,0,7.4,4
#
ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.oe674.dep
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.oe674.dep: ;
endif

package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.oe674: | .interfaces
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.oe674: package/package_ti.sdo.edma3.rm.c lib/generic/674/debug/ti.sdo.edma3.rm.ae674.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle674 $< ...
	$(ti.targets.elf.C674.rootDir)/bin/cl6x -c  -qq -pdsw225 -mv6740 --abi=eabi -eo.oe674 -ea.se674  -mi10 -mo  -D_DEBUG_=1  -DGENERIC  -Dxdc_target_name__=C674 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C674.rootDir)/include -fs=./package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/package -fr=./package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/package -s oe674 $< -C   -qq -pdsw225 -mv6740 --abi=eabi -eo.oe674 -ea.se674  -mi10 -mo  -D_DEBUG_=1  -DGENERIC  -Dxdc_target_name__=C674 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C674.rootDir)/include -fs=./package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/package -fr=./package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.oe674: export C_DIR=
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.oe674: PATH:=$(ti.targets.elf.C674.rootDir)/bin/;$(PATH)
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.oe674: Path:=$(ti.targets.elf.C674.rootDir)/bin/;$(PATH)

package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.se674: | .interfaces
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.se674: package/package_ti.sdo.edma3.rm.c lib/generic/674/debug/ti.sdo.edma3.rm.ae674.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle674 -n $< ...
	$(ti.targets.elf.C674.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -mv6740 --abi=eabi -eo.oe674 -ea.se674  -mi10 -mo  -D_DEBUG_=1  -DGENERIC  -Dxdc_target_name__=C674 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C674.rootDir)/include -fs=./package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/package -fr=./package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/package -s oe674 $< -C  -n -s --symdebug:none -qq -pdsw225 -mv6740 --abi=eabi -eo.oe674 -ea.se674  -mi10 -mo  -D_DEBUG_=1  -DGENERIC  -Dxdc_target_name__=C674 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C674.rootDir)/include -fs=./package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/package -fr=./package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.se674: export C_DIR=
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.se674: PATH:=$(ti.targets.elf.C674.rootDir)/bin/;$(PATH)
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.se674: Path:=$(ti.targets.elf.C674.rootDir)/bin/;$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3resmgr.oe674.dep
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3resmgr.oe674.dep: ;
endif

package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3resmgr.oe674: | .interfaces
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3resmgr.oe674: src/edma3resmgr.c lib/generic/674/debug/ti.sdo.edma3.rm.ae674.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle674 $< ...
	$(ti.targets.elf.C674.rootDir)/bin/cl6x -c  -qq -pdsw225 -mv6740 --abi=eabi -eo.oe674 -ea.se674  -mi10 -mo  -D_DEBUG_=1  -DGENERIC  -Dxdc_target_name__=C674 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C674.rootDir)/include -fs=./package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src -fr=./package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src -s oe674 $< -C   -qq -pdsw225 -mv6740 --abi=eabi -eo.oe674 -ea.se674  -mi10 -mo  -D_DEBUG_=1  -DGENERIC  -Dxdc_target_name__=C674 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C674.rootDir)/include -fs=./package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src -fr=./package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3resmgr.oe674: export C_DIR=
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3resmgr.oe674: PATH:=$(ti.targets.elf.C674.rootDir)/bin/;$(PATH)
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3resmgr.oe674: Path:=$(ti.targets.elf.C674.rootDir)/bin/;$(PATH)

package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3resmgr.se674: | .interfaces
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3resmgr.se674: src/edma3resmgr.c lib/generic/674/debug/ti.sdo.edma3.rm.ae674.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle674 -n $< ...
	$(ti.targets.elf.C674.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -mv6740 --abi=eabi -eo.oe674 -ea.se674  -mi10 -mo  -D_DEBUG_=1  -DGENERIC  -Dxdc_target_name__=C674 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C674.rootDir)/include -fs=./package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src -fr=./package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src -s oe674 $< -C  -n -s --symdebug:none -qq -pdsw225 -mv6740 --abi=eabi -eo.oe674 -ea.se674  -mi10 -mo  -D_DEBUG_=1  -DGENERIC  -Dxdc_target_name__=C674 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C674.rootDir)/include -fs=./package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src -fr=./package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3resmgr.se674: export C_DIR=
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3resmgr.se674: PATH:=$(ti.targets.elf.C674.rootDir)/bin/;$(PATH)
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3resmgr.se674: Path:=$(ti.targets.elf.C674.rootDir)/bin/;$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.oe674.dep
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.oe674.dep: ;
endif

package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.oe674: | .interfaces
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.oe674: src/edma3_rm_gbl_data.c lib/generic/674/debug/ti.sdo.edma3.rm.ae674.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle674 $< ...
	$(ti.targets.elf.C674.rootDir)/bin/cl6x -c  -qq -pdsw225 -mv6740 --abi=eabi -eo.oe674 -ea.se674  -mi10 -mo  -D_DEBUG_=1  -DGENERIC  -Dxdc_target_name__=C674 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C674.rootDir)/include -fs=./package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src -fr=./package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src -s oe674 $< -C   -qq -pdsw225 -mv6740 --abi=eabi -eo.oe674 -ea.se674  -mi10 -mo  -D_DEBUG_=1  -DGENERIC  -Dxdc_target_name__=C674 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C674.rootDir)/include -fs=./package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src -fr=./package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.oe674: export C_DIR=
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.oe674: PATH:=$(ti.targets.elf.C674.rootDir)/bin/;$(PATH)
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.oe674: Path:=$(ti.targets.elf.C674.rootDir)/bin/;$(PATH)

package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.se674: | .interfaces
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.se674: src/edma3_rm_gbl_data.c lib/generic/674/debug/ti.sdo.edma3.rm.ae674.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle674 -n $< ...
	$(ti.targets.elf.C674.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -mv6740 --abi=eabi -eo.oe674 -ea.se674  -mi10 -mo  -D_DEBUG_=1  -DGENERIC  -Dxdc_target_name__=C674 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C674.rootDir)/include -fs=./package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src -fr=./package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src -s oe674 $< -C  -n -s --symdebug:none -qq -pdsw225 -mv6740 --abi=eabi -eo.oe674 -ea.se674  -mi10 -mo  -D_DEBUG_=1  -DGENERIC  -Dxdc_target_name__=C674 -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_4 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C674.rootDir)/include -fs=./package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src -fr=./package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.se674: export C_DIR=
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.se674: PATH:=$(ti.targets.elf.C674.rootDir)/bin/;$(PATH)
package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.se674: Path:=$(ti.targets.elf.C674.rootDir)/bin/;$(PATH)

clean,e674 ::
	-$(RM) package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.oe674
	-$(RM) package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3resmgr.oe674
	-$(RM) package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.oe674
	-$(RM) package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.se674
	-$(RM) package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3resmgr.se674
	-$(RM) package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.se674

lib/generic/674/debug/ti.sdo.edma3.rm.ae674: package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/package/package_ti.sdo.edma3.rm.oe674 package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3resmgr.oe674 package/lib/lib/generic/674/debug/ti.sdo.edma3.rm/src/edma3_rm_gbl_data.oe674 lib/generic/674/debug/ti.sdo.edma3.rm.ae674.mak

clean::
	-$(RM) lib/generic/674/debug/ti.sdo.edma3.rm.ae674.mak
