#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = ti.targets.elf.C64P_big_endian{1,0,7.4,2
#
ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/package/package_ti.sdo.edma3.rm.sample.oe64Pe.dep
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/package/package_ti.sdo.edma3.rm.sample.oe64Pe.dep: ;
endif

package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/package/package_ti.sdo.edma3.rm.sample.oe64Pe: | .interfaces
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/package/package_ti.sdo.edma3.rm.sample.oe64Pe: package/package_ti.sdo.edma3.rm.sample.c lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample.ae64Pe.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle64Pe $< ...
	$(ti.targets.elf.C64P_big_endian.rootDir)/bin/cl6x -c  -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/package -fr=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/package -s oe64Pe $< -C   -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/package -fr=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/package/package_ti.sdo.edma3.rm.sample.oe64Pe: export C_DIR=
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/package/package_ti.sdo.edma3.rm.sample.oe64Pe: PATH:=$(ti.targets.elf.C64P_big_endian.rootDir)/bin/:$(PATH)

package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/package/package_ti.sdo.edma3.rm.sample.se64Pe: | .interfaces
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/package/package_ti.sdo.edma3.rm.sample.se64Pe: package/package_ti.sdo.edma3.rm.sample.c lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample.ae64Pe.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle64Pe -n $< ...
	$(ti.targets.elf.C64P_big_endian.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/package -fr=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/package -s oe64Pe $< -C  -n -s --symdebug:none -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/package -fr=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/package/package_ti.sdo.edma3.rm.sample.se64Pe: export C_DIR=
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/package/package_ti.sdo.edma3.rm.sample.se64Pe: PATH:=$(ti.targets.elf.C64P_big_endian.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms/sample_c6472_cfg.oe64Pe.dep
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms/sample_c6472_cfg.oe64Pe.dep: ;
endif

package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms/sample_c6472_cfg.oe64Pe: | .interfaces
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms/sample_c6472_cfg.oe64Pe: src/platforms/sample_c6472_cfg.c lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample.ae64Pe.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle64Pe $< ...
	$(ti.targets.elf.C64P_big_endian.rootDir)/bin/cl6x -c  -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms -fr=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms -s oe64Pe $< -C   -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms -fr=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms/sample_c6472_cfg.oe64Pe: export C_DIR=
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms/sample_c6472_cfg.oe64Pe: PATH:=$(ti.targets.elf.C64P_big_endian.rootDir)/bin/:$(PATH)

package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms/sample_c6472_cfg.se64Pe: | .interfaces
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms/sample_c6472_cfg.se64Pe: src/platforms/sample_c6472_cfg.c lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample.ae64Pe.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle64Pe -n $< ...
	$(ti.targets.elf.C64P_big_endian.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms -fr=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms -s oe64Pe $< -C  -n -s --symdebug:none -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms -fr=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms/sample_c6472_cfg.se64Pe: export C_DIR=
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms/sample_c6472_cfg.se64Pe: PATH:=$(ti.targets.elf.C64P_big_endian.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms/sample_c6472_int_reg.oe64Pe.dep
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms/sample_c6472_int_reg.oe64Pe.dep: ;
endif

package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms/sample_c6472_int_reg.oe64Pe: | .interfaces
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms/sample_c6472_int_reg.oe64Pe: src/platforms/sample_c6472_int_reg.c lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample.ae64Pe.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle64Pe $< ...
	$(ti.targets.elf.C64P_big_endian.rootDir)/bin/cl6x -c  -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms -fr=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms -s oe64Pe $< -C   -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms -fr=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms/sample_c6472_int_reg.oe64Pe: export C_DIR=
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms/sample_c6472_int_reg.oe64Pe: PATH:=$(ti.targets.elf.C64P_big_endian.rootDir)/bin/:$(PATH)

package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms/sample_c6472_int_reg.se64Pe: | .interfaces
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms/sample_c6472_int_reg.se64Pe: src/platforms/sample_c6472_int_reg.c lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample.ae64Pe.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle64Pe -n $< ...
	$(ti.targets.elf.C64P_big_endian.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms -fr=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms -s oe64Pe $< -C  -n -s --symdebug:none -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms -fr=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms/sample_c6472_int_reg.se64Pe: export C_DIR=
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms/sample_c6472_int_reg.se64Pe: PATH:=$(ti.targets.elf.C64P_big_endian.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/sample_cs.oe64Pe.dep
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/sample_cs.oe64Pe.dep: ;
endif

package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/sample_cs.oe64Pe: | .interfaces
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/sample_cs.oe64Pe: src/sample_cs.c lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample.ae64Pe.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle64Pe $< ...
	$(ti.targets.elf.C64P_big_endian.rootDir)/bin/cl6x -c  -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src -fr=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src -s oe64Pe $< -C   -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src -fr=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/sample_cs.oe64Pe: export C_DIR=
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/sample_cs.oe64Pe: PATH:=$(ti.targets.elf.C64P_big_endian.rootDir)/bin/:$(PATH)

package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/sample_cs.se64Pe: | .interfaces
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/sample_cs.se64Pe: src/sample_cs.c lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample.ae64Pe.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle64Pe -n $< ...
	$(ti.targets.elf.C64P_big_endian.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src -fr=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src -s oe64Pe $< -C  -n -s --symdebug:none -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src -fr=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/sample_cs.se64Pe: export C_DIR=
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/sample_cs.se64Pe: PATH:=$(ti.targets.elf.C64P_big_endian.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/sample_init.oe64Pe.dep
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/sample_init.oe64Pe.dep: ;
endif

package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/sample_init.oe64Pe: | .interfaces
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/sample_init.oe64Pe: src/sample_init.c lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample.ae64Pe.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle64Pe $< ...
	$(ti.targets.elf.C64P_big_endian.rootDir)/bin/cl6x -c  -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src -fr=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src -s oe64Pe $< -C   -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src -fr=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/sample_init.oe64Pe: export C_DIR=
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/sample_init.oe64Pe: PATH:=$(ti.targets.elf.C64P_big_endian.rootDir)/bin/:$(PATH)

package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/sample_init.se64Pe: | .interfaces
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/sample_init.se64Pe: src/sample_init.c lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample.ae64Pe.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cle64Pe -n $< ...
	$(ti.targets.elf.C64P_big_endian.rootDir)/bin/cl6x -c -n -s --symdebug:none -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src -fr=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src -s oe64Pe $< -C  -n -s --symdebug:none -qq -pdsw225 -me -mv64p --abi=eabi -eo.oe64Pe -ea.se64Pe  -mi10 -mo -me  -DBIG_ENDIAN_MODE -Dxdc_target_name__=C64P_big_endian -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_7_4_2 -O2  $(XDCINCS) -I$(ti.targets.elf.C64P_big_endian.rootDir)/include -fs=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src -fr=./package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/sample_init.se64Pe: export C_DIR=
package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/sample_init.se64Pe: PATH:=$(ti.targets.elf.C64P_big_endian.rootDir)/bin/:$(PATH)

clean,e64Pe ::
	-$(RM) package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/package/package_ti.sdo.edma3.rm.sample.oe64Pe
	-$(RM) package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms/sample_c6472_cfg.oe64Pe
	-$(RM) package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms/sample_c6472_int_reg.oe64Pe
	-$(RM) package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/sample_cs.oe64Pe
	-$(RM) package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/sample_init.oe64Pe
	-$(RM) package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/package/package_ti.sdo.edma3.rm.sample.se64Pe
	-$(RM) package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms/sample_c6472_cfg.se64Pe
	-$(RM) package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms/sample_c6472_int_reg.se64Pe
	-$(RM) package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/sample_cs.se64Pe
	-$(RM) package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/sample_init.se64Pe

lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample.ae64Pe: package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/package/package_ti.sdo.edma3.rm.sample.oe64Pe package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms/sample_c6472_cfg.oe64Pe package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/platforms/sample_c6472_int_reg.oe64Pe package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/sample_cs.oe64Pe package/lib/lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample/src/sample_init.oe64Pe lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample.ae64Pe.mak

clean::
	-$(RM) lib/c6472-evm/64p/release/ti.sdo.edma3.rm.sample.ae64Pe.mak
