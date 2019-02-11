#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = gnu.targets.arm.A15F{1,0,4.9,3
#
ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/package/package_ti.nsp.drv.oa15fg.dep
package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/package/package_ti.nsp.drv.oa15fg.dep: ;
endif

package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/package/package_ti.nsp.drv.oa15fg: | .interfaces
package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/package/package_ti.nsp.drv.oa15fg: package/package_ti.nsp.drv.c lib/release/ti.nsp.drv.ndktfdtp2nsp_instr.aa15fg.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cla15fg $< ...
	$(gnu.targets.arm.A15F.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c  -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections   -DCORTEX_AX -mcpu=cortex-a15 -mfpu=neon -mfloat-abi=hard -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -I"/opt/ti/ccsv7/tools/compiler/gcc-arm-none-eabi-4_9-2015q3/include" -I"/opt/ti/bios_6_46_06_00/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/edma3_lld_02_12_00_21/packages" -I"/opt/ti/edma3_lld_02_12_00_21/examples/edma3_driver/src"  -Dxdc_target_name__=A15F -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_4_9_3  -O2  -D_INCLUDE_NIMU_CODE -D_NDK_EXTERN_CONFIG -O3 -Wunused -Wunknown-pragmas -Werror  -DNSP_INSTRUMENTATION_ENABLED -DTFDTP_STACK_ENABLED -I/opt/ti/bios_6_46_06_00/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include   $(XDCINCS)  -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/package/package_ti.nsp.drv.oa15fg: export LD_LIBRARY_PATH=

package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/package/package_ti.nsp.drv.sa15fg: | .interfaces
package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/package/package_ti.nsp.drv.sa15fg: package/package_ti.nsp.drv.c lib/release/ti.nsp.drv.ndktfdtp2nsp_instr.aa15fg.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cla15fg -S $< ...
	$(gnu.targets.arm.A15F.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c -S -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections   -DCORTEX_AX -mcpu=cortex-a15 -mfpu=neon -mfloat-abi=hard -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -I"/opt/ti/ccsv7/tools/compiler/gcc-arm-none-eabi-4_9-2015q3/include" -I"/opt/ti/bios_6_46_06_00/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/edma3_lld_02_12_00_21/packages" -I"/opt/ti/edma3_lld_02_12_00_21/examples/edma3_driver/src"  -Dxdc_target_name__=A15F -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_4_9_3  -O2  -D_INCLUDE_NIMU_CODE -D_NDK_EXTERN_CONFIG -O3 -Wunused -Wunknown-pragmas -Werror  -DNSP_INSTRUMENTATION_ENABLED -DTFDTP_STACK_ENABLED  $(XDCINCS)  -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/package/package_ti.nsp.drv.sa15fg: export LD_LIBRARY_PATH=

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/nimu_ndk.oa15fg.dep
package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/nimu_ndk.oa15fg.dep: ;
endif

package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/nimu_ndk.oa15fg: | .interfaces
package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/nimu_ndk.oa15fg: ndk2nsp/nimu_ndk.c lib/release/ti.nsp.drv.ndktfdtp2nsp_instr.aa15fg.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cla15fg $< ...
	$(gnu.targets.arm.A15F.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c  -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections   -DCORTEX_AX -mcpu=cortex-a15 -mfpu=neon -mfloat-abi=hard -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -I"/opt/ti/ccsv7/tools/compiler/gcc-arm-none-eabi-4_9-2015q3/include" -I"/opt/ti/bios_6_46_06_00/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/edma3_lld_02_12_00_21/packages" -I"/opt/ti/edma3_lld_02_12_00_21/examples/edma3_driver/src"  -Dxdc_target_name__=A15F -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_4_9_3  -O2  -D_INCLUDE_NIMU_CODE -D_NDK_EXTERN_CONFIG -O3 -Wunused -Wunknown-pragmas -Werror  -DNSP_INSTRUMENTATION_ENABLED -DTFDTP_STACK_ENABLED -I/opt/ti/bios_6_46_06_00/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include   $(XDCINCS)  -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/nimu_ndk.oa15fg: export LD_LIBRARY_PATH=

package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/nimu_ndk.sa15fg: | .interfaces
package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/nimu_ndk.sa15fg: ndk2nsp/nimu_ndk.c lib/release/ti.nsp.drv.ndktfdtp2nsp_instr.aa15fg.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cla15fg -S $< ...
	$(gnu.targets.arm.A15F.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c -S -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections   -DCORTEX_AX -mcpu=cortex-a15 -mfpu=neon -mfloat-abi=hard -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -I"/opt/ti/ccsv7/tools/compiler/gcc-arm-none-eabi-4_9-2015q3/include" -I"/opt/ti/bios_6_46_06_00/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/edma3_lld_02_12_00_21/packages" -I"/opt/ti/edma3_lld_02_12_00_21/examples/edma3_driver/src"  -Dxdc_target_name__=A15F -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_4_9_3  -O2  -D_INCLUDE_NIMU_CODE -D_NDK_EXTERN_CONFIG -O3 -Wunused -Wunknown-pragmas -Werror  -DNSP_INSTRUMENTATION_ENABLED -DTFDTP_STACK_ENABLED  $(XDCINCS)  -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/nimu_ndk.sa15fg: export LD_LIBRARY_PATH=

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/ndk2nsp.oa15fg.dep
package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/ndk2nsp.oa15fg.dep: ;
endif

package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/ndk2nsp.oa15fg: | .interfaces
package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/ndk2nsp.oa15fg: ndk2nsp/ndk2nsp.c lib/release/ti.nsp.drv.ndktfdtp2nsp_instr.aa15fg.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cla15fg $< ...
	$(gnu.targets.arm.A15F.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c  -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections   -DCORTEX_AX -mcpu=cortex-a15 -mfpu=neon -mfloat-abi=hard -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -I"/opt/ti/ccsv7/tools/compiler/gcc-arm-none-eabi-4_9-2015q3/include" -I"/opt/ti/bios_6_46_06_00/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/edma3_lld_02_12_00_21/packages" -I"/opt/ti/edma3_lld_02_12_00_21/examples/edma3_driver/src"  -Dxdc_target_name__=A15F -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_4_9_3  -O2  -D_INCLUDE_NIMU_CODE -D_NDK_EXTERN_CONFIG -O3 -Wunused -Wunknown-pragmas -Werror  -DNSP_INSTRUMENTATION_ENABLED -DTFDTP_STACK_ENABLED -I/opt/ti/bios_6_46_06_00/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include   $(XDCINCS)  -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/ndk2nsp.oa15fg: export LD_LIBRARY_PATH=

package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/ndk2nsp.sa15fg: | .interfaces
package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/ndk2nsp.sa15fg: ndk2nsp/ndk2nsp.c lib/release/ti.nsp.drv.ndktfdtp2nsp_instr.aa15fg.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cla15fg -S $< ...
	$(gnu.targets.arm.A15F.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c -S -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections   -DCORTEX_AX -mcpu=cortex-a15 -mfpu=neon -mfloat-abi=hard -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -I"/opt/ti/ccsv7/tools/compiler/gcc-arm-none-eabi-4_9-2015q3/include" -I"/opt/ti/bios_6_46_06_00/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/edma3_lld_02_12_00_21/packages" -I"/opt/ti/edma3_lld_02_12_00_21/examples/edma3_driver/src"  -Dxdc_target_name__=A15F -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_4_9_3  -O2  -D_INCLUDE_NIMU_CODE -D_NDK_EXTERN_CONFIG -O3 -Wunused -Wunknown-pragmas -Werror  -DNSP_INSTRUMENTATION_ENABLED -DTFDTP_STACK_ENABLED  $(XDCINCS)  -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/ndk2nsp.sa15fg: export LD_LIBRARY_PATH=

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/gmacsw_sysbios_al.oa15fg.dep
package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/gmacsw_sysbios_al.oa15fg.dep: ;
endif

package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/gmacsw_sysbios_al.oa15fg: | .interfaces
package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/gmacsw_sysbios_al.oa15fg: ndk2nsp/gmacsw_sysbios_al.c lib/release/ti.nsp.drv.ndktfdtp2nsp_instr.aa15fg.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cla15fg $< ...
	$(gnu.targets.arm.A15F.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c  -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections   -DCORTEX_AX -mcpu=cortex-a15 -mfpu=neon -mfloat-abi=hard -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -I"/opt/ti/ccsv7/tools/compiler/gcc-arm-none-eabi-4_9-2015q3/include" -I"/opt/ti/bios_6_46_06_00/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/edma3_lld_02_12_00_21/packages" -I"/opt/ti/edma3_lld_02_12_00_21/examples/edma3_driver/src"  -Dxdc_target_name__=A15F -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_4_9_3  -O2  -D_INCLUDE_NIMU_CODE -D_NDK_EXTERN_CONFIG -O3 -Wunused -Wunknown-pragmas -Werror  -DNSP_INSTRUMENTATION_ENABLED -DTFDTP_STACK_ENABLED -I/opt/ti/bios_6_46_06_00/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include   $(XDCINCS)  -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/gmacsw_sysbios_al.oa15fg: export LD_LIBRARY_PATH=

package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/gmacsw_sysbios_al.sa15fg: | .interfaces
package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/gmacsw_sysbios_al.sa15fg: ndk2nsp/gmacsw_sysbios_al.c lib/release/ti.nsp.drv.ndktfdtp2nsp_instr.aa15fg.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cla15fg -S $< ...
	$(gnu.targets.arm.A15F.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c -S -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections   -DCORTEX_AX -mcpu=cortex-a15 -mfpu=neon -mfloat-abi=hard -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -I"/opt/ti/ccsv7/tools/compiler/gcc-arm-none-eabi-4_9-2015q3/include" -I"/opt/ti/bios_6_46_06_00/packages" -I"/opt/ti/ndk_2_24_02_31/packages" -I"/opt/ti/edma3_lld_02_12_00_21/packages" -I"/opt/ti/edma3_lld_02_12_00_21/examples/edma3_driver/src"  -Dxdc_target_name__=A15F -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_4_9_3  -O2  -D_INCLUDE_NIMU_CODE -D_NDK_EXTERN_CONFIG -O3 -Wunused -Wunknown-pragmas -Werror  -DNSP_INSTRUMENTATION_ENABLED -DTFDTP_STACK_ENABLED  $(XDCINCS)  -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/gmacsw_sysbios_al.sa15fg: export LD_LIBRARY_PATH=

clean,a15fg ::
	-$(RM) package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/package/package_ti.nsp.drv.oa15fg
	-$(RM) package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/nimu_ndk.oa15fg
	-$(RM) package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/ndk2nsp.oa15fg
	-$(RM) package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/gmacsw_sysbios_al.oa15fg
	-$(RM) package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/package/package_ti.nsp.drv.sa15fg
	-$(RM) package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/nimu_ndk.sa15fg
	-$(RM) package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/ndk2nsp.sa15fg
	-$(RM) package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/gmacsw_sysbios_al.sa15fg

lib/release/ti.nsp.drv.ndktfdtp2nsp_instr.aa15fg: package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/package/package_ti.nsp.drv.oa15fg package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/nimu_ndk.oa15fg package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/ndk2nsp.oa15fg package/lib/lib/release/ti.nsp.drv.ndktfdtp2nsp_instr/ndk2nsp/gmacsw_sysbios_al.oa15fg lib/release/ti.nsp.drv.ndktfdtp2nsp_instr.aa15fg.mak

clean::
	-$(RM) lib/release/ti.nsp.drv.ndktfdtp2nsp_instr.aa15fg.mak
