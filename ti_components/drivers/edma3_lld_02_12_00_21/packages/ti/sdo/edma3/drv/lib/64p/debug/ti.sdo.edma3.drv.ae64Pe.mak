#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = ti.targets.elf.C64P_big_endian{1,0,7.4,2
#
ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/64p/debug/ti.sdo.edma3.drv/package/package_ti.sdo.edma3.drv.oe64Pe.dep
package/lib/lib/64p/debug/ti.sdo.edma3.drv/package/package_ti.sdo.edma3.drv.oe64Pe.dep: ;
endif

package/lib/lib/64p/debug/ti.sdo.edma3.drv/package/package_ti.sdo.edma3.drv.oe64Pe: | .interfaces
package/lib/lib/64p/debug/ti.sdo.edma3.drv/package/package_ti.sdo.edma3.drv.oe64Pe: package/package_ti.sdo.edma3.drv.c lib/64p/debug/ti.sdo.edma3.drv.ae64Pe.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle64Pe $< ...
	$(ti.targets.elf.C64P_big_endian.rootDir)/bin/cl6x -c  -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/package -fr=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/64p/debug/ti.sdo.edma3.drv/package -s oe64Pe $< -C   -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/package -fr=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/64p/debug/ti.sdo.edma3.drv/package/package_ti.sdo.edma3.drv.oe64Pe: export C_DIR=
package/lib/lib/64p/debug/ti.sdo.edma3.drv/package/package_ti.sdo.edma3.drv.oe64Pe: PATH:=$(ti.targets.elf.C64P_big_endian.rootDir)/bin/:$(PATH)

package/lib/lib/64p/debug/ti.sdo.edma3.drv/package/package_ti.sdo.edma3.drv.se64Pe: | .interfaces
package/lib/lib/64p/debug/ti.sdo.edma3.drv/package/package_ti.sdo.edma3.drv.se64Pe: package/package_ti.sdo.edma3.drv.c lib/64p/debug/ti.sdo.edma3.drv.ae64Pe.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle64Pe -n $< ...
	$(ti.targets.elf.C64P_big_endian.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/package -fr=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/64p/debug/ti.sdo.edma3.drv/package -s oe64Pe $< -C  -n -s --symdebug:none -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/package -fr=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/64p/debug/ti.sdo.edma3.drv/package/package_ti.sdo.edma3.drv.se64Pe: export C_DIR=
package/lib/lib/64p/debug/ti.sdo.edma3.drv/package/package_ti.sdo.edma3.drv.se64Pe: PATH:=$(ti.targets.elf.C64P_big_endian.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_init.oe64Pe.dep
package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_init.oe64Pe.dep: ;
endif

package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_init.oe64Pe: | .interfaces
package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_init.oe64Pe: src/edma3_drv_init.c lib/64p/debug/ti.sdo.edma3.drv.ae64Pe.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle64Pe $< ...
	$(ti.targets.elf.C64P_big_endian.rootDir)/bin/cl6x -c  -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/src -fr=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/64p/debug/ti.sdo.edma3.drv/src -s oe64Pe $< -C   -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/src -fr=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_init.oe64Pe: export C_DIR=
package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_init.oe64Pe: PATH:=$(ti.targets.elf.C64P_big_endian.rootDir)/bin/:$(PATH)

package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_init.se64Pe: | .interfaces
package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_init.se64Pe: src/edma3_drv_init.c lib/64p/debug/ti.sdo.edma3.drv.ae64Pe.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle64Pe -n $< ...
	$(ti.targets.elf.C64P_big_endian.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/src -fr=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/64p/debug/ti.sdo.edma3.drv/src -s oe64Pe $< -C  -n -s --symdebug:none -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/src -fr=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_init.se64Pe: export C_DIR=
package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_init.se64Pe: PATH:=$(ti.targets.elf.C64P_big_endian.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_basic.oe64Pe.dep
package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_basic.oe64Pe.dep: ;
endif

package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_basic.oe64Pe: | .interfaces
package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_basic.oe64Pe: src/edma3_drv_basic.c lib/64p/debug/ti.sdo.edma3.drv.ae64Pe.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle64Pe $< ...
	$(ti.targets.elf.C64P_big_endian.rootDir)/bin/cl6x -c  -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/src -fr=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/64p/debug/ti.sdo.edma3.drv/src -s oe64Pe $< -C   -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/src -fr=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_basic.oe64Pe: export C_DIR=
package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_basic.oe64Pe: PATH:=$(ti.targets.elf.C64P_big_endian.rootDir)/bin/:$(PATH)

package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_basic.se64Pe: | .interfaces
package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_basic.se64Pe: src/edma3_drv_basic.c lib/64p/debug/ti.sdo.edma3.drv.ae64Pe.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle64Pe -n $< ...
	$(ti.targets.elf.C64P_big_endian.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/src -fr=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/64p/debug/ti.sdo.edma3.drv/src -s oe64Pe $< -C  -n -s --symdebug:none -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/src -fr=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_basic.se64Pe: export C_DIR=
package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_basic.se64Pe: PATH:=$(ti.targets.elf.C64P_big_endian.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_adv.oe64Pe.dep
package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_adv.oe64Pe.dep: ;
endif

package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_adv.oe64Pe: | .interfaces
package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_adv.oe64Pe: src/edma3_drv_adv.c lib/64p/debug/ti.sdo.edma3.drv.ae64Pe.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle64Pe $< ...
	$(ti.targets.elf.C64P_big_endian.rootDir)/bin/cl6x -c  -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/src -fr=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/64p/debug/ti.sdo.edma3.drv/src -s oe64Pe $< -C   -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/src -fr=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_adv.oe64Pe: export C_DIR=
package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_adv.oe64Pe: PATH:=$(ti.targets.elf.C64P_big_endian.rootDir)/bin/:$(PATH)

package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_adv.se64Pe: | .interfaces
package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_adv.se64Pe: src/edma3_drv_adv.c lib/64p/debug/ti.sdo.edma3.drv.ae64Pe.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle64Pe -n $< ...
	$(ti.targets.elf.C64P_big_endian.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/src -fr=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/64p/debug/ti.sdo.edma3.drv/src -s oe64Pe $< -C  -n -s --symdebug:none -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -D_DEBUG_=1 -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_debug -Dxdc_bld__vers_1_0_7_4_2 --symdebug:dwarf  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/src -fr=./package/lib/lib/64p/debug/ti.sdo.edma3.drv/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_adv.se64Pe: export C_DIR=
package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_adv.se64Pe: PATH:=$(ti.targets.elf.C64P_big_endian.rootDir)/bin/:$(PATH)

clean,e64Pe ::
	-$(RM) package/lib/lib/64p/debug/ti.sdo.edma3.drv/package/package_ti.sdo.edma3.drv.oe64Pe
	-$(RM) package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_init.oe64Pe
	-$(RM) package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_basic.oe64Pe
	-$(RM) package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_adv.oe64Pe
	-$(RM) package/lib/lib/64p/debug/ti.sdo.edma3.drv/package/package_ti.sdo.edma3.drv.se64Pe
	-$(RM) package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_init.se64Pe
	-$(RM) package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_basic.se64Pe
	-$(RM) package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_adv.se64Pe

lib/64p/debug/ti.sdo.edma3.drv.ae64Pe: package/lib/lib/64p/debug/ti.sdo.edma3.drv/package/package_ti.sdo.edma3.drv.oe64Pe package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_init.oe64Pe package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_basic.oe64Pe package/lib/lib/64p/debug/ti.sdo.edma3.drv/src/edma3_drv_adv.oe64Pe lib/64p/debug/ti.sdo.edma3.drv.ae64Pe.mak

clean::
	-$(RM) lib/64p/debug/ti.sdo.edma3.drv.ae64Pe.mak
