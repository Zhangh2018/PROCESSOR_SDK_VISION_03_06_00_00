#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = ti.targets.arm.elf.A8F{1,0,5.2,5
#
ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/release/ti.avbtp_instr/package/package_ti.avbtp.oea8f.dep
package/lib/lib/release/ti.avbtp_instr/package/package_ti.avbtp.oea8f.dep: ;
endif

package/lib/lib/release/ti.avbtp_instr/package/package_ti.avbtp.oea8f: | .interfaces
package/lib/lib/release/ti.avbtp_instr/package/package_ti.avbtp.oea8f: package/package_ti.avbtp.c lib/release/ti.avbtp_instr.aea8f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clea8f $< ...
	$(ti.targets.arm.elf.A8F.rootDir)/bin/armcl -c  -qq -pdsw225  -DCORTEX_AX --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2  --opt_level=3 --opt_for_speed=2 -DAVBTP_INSTRUMENTATION_ENABLED  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include/rts -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/release/ti.avbtp_instr/package -fr=./package/lib/lib/release/ti.avbtp_instr/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/release/ti.avbtp_instr/package -s oea8f $< -C   -qq -pdsw225  -DCORTEX_AX --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2  --opt_level=3 --opt_for_speed=2 -DAVBTP_INSTRUMENTATION_ENABLED  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include/rts -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/release/ti.avbtp_instr/package -fr=./package/lib/lib/release/ti.avbtp_instr/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/release/ti.avbtp_instr/package/package_ti.avbtp.oea8f: export C_DIR=
package/lib/lib/release/ti.avbtp_instr/package/package_ti.avbtp.oea8f: PATH:=$(ti.targets.arm.elf.A8F.rootDir)/bin/:$(PATH)

package/lib/lib/release/ti.avbtp_instr/package/package_ti.avbtp.sea8f: | .interfaces
package/lib/lib/release/ti.avbtp_instr/package/package_ti.avbtp.sea8f: package/package_ti.avbtp.c lib/release/ti.avbtp_instr.aea8f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clea8f -n $< ...
	$(ti.targets.arm.elf.A8F.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225  -DCORTEX_AX --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2  --opt_level=3 --opt_for_speed=2 -DAVBTP_INSTRUMENTATION_ENABLED  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include/rts -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/release/ti.avbtp_instr/package -fr=./package/lib/lib/release/ti.avbtp_instr/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/release/ti.avbtp_instr/package -s oea8f $< -C  -n -s --symdebug:none -qq -pdsw225  -DCORTEX_AX --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2  --opt_level=3 --opt_for_speed=2 -DAVBTP_INSTRUMENTATION_ENABLED  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include/rts -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/release/ti.avbtp_instr/package -fr=./package/lib/lib/release/ti.avbtp_instr/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/release/ti.avbtp_instr/package/package_ti.avbtp.sea8f: export C_DIR=
package/lib/lib/release/ti.avbtp_instr/package/package_ti.avbtp.sea8f: PATH:=$(ti.targets.arm.elf.A8F.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/release/ti.avbtp_instr/avbtp.oea8f.dep
package/lib/lib/release/ti.avbtp_instr/avbtp.oea8f.dep: ;
endif

package/lib/lib/release/ti.avbtp_instr/avbtp.oea8f: | .interfaces
package/lib/lib/release/ti.avbtp_instr/avbtp.oea8f: avbtp.c lib/release/ti.avbtp_instr.aea8f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clea8f $< ...
	$(ti.targets.arm.elf.A8F.rootDir)/bin/armcl -c  -qq -pdsw225  -DCORTEX_AX --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2  --opt_level=3 --opt_for_speed=2 -DAVBTP_INSTRUMENTATION_ENABLED  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include/rts -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/release/ti.avbtp_instr -fr=./package/lib/lib/release/ti.avbtp_instr -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/release/ti.avbtp_instr -s oea8f $< -C   -qq -pdsw225  -DCORTEX_AX --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2  --opt_level=3 --opt_for_speed=2 -DAVBTP_INSTRUMENTATION_ENABLED  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include/rts -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/release/ti.avbtp_instr -fr=./package/lib/lib/release/ti.avbtp_instr
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/release/ti.avbtp_instr/avbtp.oea8f: export C_DIR=
package/lib/lib/release/ti.avbtp_instr/avbtp.oea8f: PATH:=$(ti.targets.arm.elf.A8F.rootDir)/bin/:$(PATH)

package/lib/lib/release/ti.avbtp_instr/avbtp.sea8f: | .interfaces
package/lib/lib/release/ti.avbtp_instr/avbtp.sea8f: avbtp.c lib/release/ti.avbtp_instr.aea8f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clea8f -n $< ...
	$(ti.targets.arm.elf.A8F.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225  -DCORTEX_AX --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2  --opt_level=3 --opt_for_speed=2 -DAVBTP_INSTRUMENTATION_ENABLED  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include/rts -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/release/ti.avbtp_instr -fr=./package/lib/lib/release/ti.avbtp_instr -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/release/ti.avbtp_instr -s oea8f $< -C  -n -s --symdebug:none -qq -pdsw225  -DCORTEX_AX --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2  --opt_level=3 --opt_for_speed=2 -DAVBTP_INSTRUMENTATION_ENABLED  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include/rts -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/release/ti.avbtp_instr -fr=./package/lib/lib/release/ti.avbtp_instr
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/release/ti.avbtp_instr/avbtp.sea8f: export C_DIR=
package/lib/lib/release/ti.avbtp_instr/avbtp.sea8f: PATH:=$(ti.targets.arm.elf.A8F.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/release/ti.avbtp_instr/avb2nsp.oea8f.dep
package/lib/lib/release/ti.avbtp_instr/avb2nsp.oea8f.dep: ;
endif

package/lib/lib/release/ti.avbtp_instr/avb2nsp.oea8f: | .interfaces
package/lib/lib/release/ti.avbtp_instr/avb2nsp.oea8f: avb2nsp.c lib/release/ti.avbtp_instr.aea8f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clea8f $< ...
	$(ti.targets.arm.elf.A8F.rootDir)/bin/armcl -c  -qq -pdsw225  -DCORTEX_AX --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2  --opt_level=3 --opt_for_speed=2 -DAVBTP_INSTRUMENTATION_ENABLED  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include/rts -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/release/ti.avbtp_instr -fr=./package/lib/lib/release/ti.avbtp_instr -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/release/ti.avbtp_instr -s oea8f $< -C   -qq -pdsw225  -DCORTEX_AX --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2  --opt_level=3 --opt_for_speed=2 -DAVBTP_INSTRUMENTATION_ENABLED  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include/rts -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/release/ti.avbtp_instr -fr=./package/lib/lib/release/ti.avbtp_instr
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/release/ti.avbtp_instr/avb2nsp.oea8f: export C_DIR=
package/lib/lib/release/ti.avbtp_instr/avb2nsp.oea8f: PATH:=$(ti.targets.arm.elf.A8F.rootDir)/bin/:$(PATH)

package/lib/lib/release/ti.avbtp_instr/avb2nsp.sea8f: | .interfaces
package/lib/lib/release/ti.avbtp_instr/avb2nsp.sea8f: avb2nsp.c lib/release/ti.avbtp_instr.aea8f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clea8f -n $< ...
	$(ti.targets.arm.elf.A8F.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225  -DCORTEX_AX --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2  --opt_level=3 --opt_for_speed=2 -DAVBTP_INSTRUMENTATION_ENABLED  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include/rts -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/release/ti.avbtp_instr -fr=./package/lib/lib/release/ti.avbtp_instr -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/release/ti.avbtp_instr -s oea8f $< -C  -n -s --symdebug:none -qq -pdsw225  -DCORTEX_AX --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2  --opt_level=3 --opt_for_speed=2 -DAVBTP_INSTRUMENTATION_ENABLED  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include/rts -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/release/ti.avbtp_instr -fr=./package/lib/lib/release/ti.avbtp_instr
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/release/ti.avbtp_instr/avb2nsp.sea8f: export C_DIR=
package/lib/lib/release/ti.avbtp_instr/avb2nsp.sea8f: PATH:=$(ti.targets.arm.elf.A8F.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/release/ti.avbtp_instr/avbtp_queue.oea8f.dep
package/lib/lib/release/ti.avbtp_instr/avbtp_queue.oea8f.dep: ;
endif

package/lib/lib/release/ti.avbtp_instr/avbtp_queue.oea8f: | .interfaces
package/lib/lib/release/ti.avbtp_instr/avbtp_queue.oea8f: avbtp_queue.c lib/release/ti.avbtp_instr.aea8f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clea8f $< ...
	$(ti.targets.arm.elf.A8F.rootDir)/bin/armcl -c  -qq -pdsw225  -DCORTEX_AX --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2  --opt_level=3 --opt_for_speed=2 -DAVBTP_INSTRUMENTATION_ENABLED  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include/rts -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/release/ti.avbtp_instr -fr=./package/lib/lib/release/ti.avbtp_instr -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/release/ti.avbtp_instr -s oea8f $< -C   -qq -pdsw225  -DCORTEX_AX --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2  --opt_level=3 --opt_for_speed=2 -DAVBTP_INSTRUMENTATION_ENABLED  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include/rts -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/release/ti.avbtp_instr -fr=./package/lib/lib/release/ti.avbtp_instr
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/release/ti.avbtp_instr/avbtp_queue.oea8f: export C_DIR=
package/lib/lib/release/ti.avbtp_instr/avbtp_queue.oea8f: PATH:=$(ti.targets.arm.elf.A8F.rootDir)/bin/:$(PATH)

package/lib/lib/release/ti.avbtp_instr/avbtp_queue.sea8f: | .interfaces
package/lib/lib/release/ti.avbtp_instr/avbtp_queue.sea8f: avbtp_queue.c lib/release/ti.avbtp_instr.aea8f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clea8f -n $< ...
	$(ti.targets.arm.elf.A8F.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225  -DCORTEX_AX --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2  --opt_level=3 --opt_for_speed=2 -DAVBTP_INSTRUMENTATION_ENABLED  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include/rts -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/release/ti.avbtp_instr -fr=./package/lib/lib/release/ti.avbtp_instr -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/release/ti.avbtp_instr -s oea8f $< -C  -n -s --symdebug:none -qq -pdsw225  -DCORTEX_AX --neon --endian=little -mv7A8 --abi=eabi -eo.oea8f -ea.sea8f -I"/opt/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -I"/opt/ti/bios_6_46_00_23/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/nsp_gmacsw_4_15_00_00/packages" -I"/opt/ti/edma3_lld_02_12_00_20/packages" -I"/opt/ti/edma3_lld_02_12_00_20/examples/edma3_driver/src"  -Dxdc_target_name__=A8F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2  --opt_level=3 --opt_for_speed=2 -DAVBTP_INSTRUMENTATION_ENABLED  $(XDCINCS) -I$(ti.targets.arm.elf.A8F.rootDir)/include/rts -I$(ti.targets.arm.elf.A8F.rootDir)/include  -fs=./package/lib/lib/release/ti.avbtp_instr -fr=./package/lib/lib/release/ti.avbtp_instr
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/release/ti.avbtp_instr/avbtp_queue.sea8f: export C_DIR=
package/lib/lib/release/ti.avbtp_instr/avbtp_queue.sea8f: PATH:=$(ti.targets.arm.elf.A8F.rootDir)/bin/:$(PATH)

clean,ea8f ::
	-$(RM) package/lib/lib/release/ti.avbtp_instr/package/package_ti.avbtp.oea8f
	-$(RM) package/lib/lib/release/ti.avbtp_instr/avbtp.oea8f
	-$(RM) package/lib/lib/release/ti.avbtp_instr/avb2nsp.oea8f
	-$(RM) package/lib/lib/release/ti.avbtp_instr/avbtp_queue.oea8f
	-$(RM) package/lib/lib/release/ti.avbtp_instr/package/package_ti.avbtp.sea8f
	-$(RM) package/lib/lib/release/ti.avbtp_instr/avbtp.sea8f
	-$(RM) package/lib/lib/release/ti.avbtp_instr/avb2nsp.sea8f
	-$(RM) package/lib/lib/release/ti.avbtp_instr/avbtp_queue.sea8f

lib/release/ti.avbtp_instr.aea8f: package/lib/lib/release/ti.avbtp_instr/package/package_ti.avbtp.oea8f package/lib/lib/release/ti.avbtp_instr/avbtp.oea8f package/lib/lib/release/ti.avbtp_instr/avb2nsp.oea8f package/lib/lib/release/ti.avbtp_instr/avbtp_queue.oea8f lib/release/ti.avbtp_instr.aea8f.mak

clean::
	-$(RM) lib/release/ti.avbtp_instr.aea8f.mak
