#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = gnu.targets.arm.A15F{1,0,4.9,3
#
ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/netctrl_min/package/package_ti.ndk.netctrl.oa15fg.dep
package/lib/lib/netctrl_min/package/package_ti.ndk.netctrl.oa15fg.dep: ;
endif

package/lib/lib/netctrl_min/package/package_ti.ndk.netctrl.oa15fg: | .interfaces
package/lib/lib/netctrl_min/package/package_ti.ndk.netctrl.oa15fg: package/package_ti.ndk.netctrl.c lib/netctrl_min.aa15fg.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cla15fg $< ...
	$(gnu.targets.arm.A15F.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c  -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-a15 -mfpu=neon -mfloat-abi=hard -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -Dxdc_target_name__=A15F -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_4_9_3  -O2   -D_NDK_EXTERN_CONFIG  -DNETSRV_ENABLE_TELNET=0  -DNETSRV_ENABLE_HTTP=0  -DNETSRV_ENABLE_NAT=0  -DNETSRV_ENABLE_DHCPCLIENT=1	 -DNETSRV_ENABLE_DHCPSERVER=0  -DNETSRV_ENABLE_DNSSERVER=0  -DUSE_EVENT_SEMAPHORE=1 -DUSE_SERIAL_PORT=0  -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE -I/datalocal1/user/surya/vsdk_02_12_RC1/ti_components/os_tools/bios_6_46_00_23/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include   -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS)  -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/netctrl_min/package/package_ti.ndk.netctrl.oa15fg: export LD_LIBRARY_PATH=

package/lib/lib/netctrl_min/package/package_ti.ndk.netctrl.sa15fg: | .interfaces
package/lib/lib/netctrl_min/package/package_ti.ndk.netctrl.sa15fg: package/package_ti.ndk.netctrl.c lib/netctrl_min.aa15fg.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cla15fg -S $< ...
	$(gnu.targets.arm.A15F.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c -S -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-a15 -mfpu=neon -mfloat-abi=hard -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -Dxdc_target_name__=A15F -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_4_9_3  -O2   -D_NDK_EXTERN_CONFIG  -DNETSRV_ENABLE_TELNET=0  -DNETSRV_ENABLE_HTTP=0  -DNETSRV_ENABLE_NAT=0  -DNETSRV_ENABLE_DHCPCLIENT=1	 -DNETSRV_ENABLE_DHCPSERVER=0  -DNETSRV_ENABLE_DNSSERVER=0  -DUSE_EVENT_SEMAPHORE=1 -DUSE_SERIAL_PORT=0  -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS)  -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/netctrl_min/package/package_ti.ndk.netctrl.sa15fg: export LD_LIBRARY_PATH=

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/netctrl_min/netctrl.oa15fg.dep
package/lib/lib/netctrl_min/netctrl.oa15fg.dep: ;
endif

package/lib/lib/netctrl_min/netctrl.oa15fg: | .interfaces
package/lib/lib/netctrl_min/netctrl.oa15fg: netctrl.c lib/netctrl_min.aa15fg.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cla15fg $< ...
	$(gnu.targets.arm.A15F.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c  -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-a15 -mfpu=neon -mfloat-abi=hard -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -Dxdc_target_name__=A15F -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_4_9_3  -O2   -D_NDK_EXTERN_CONFIG  -DNETSRV_ENABLE_TELNET=0  -DNETSRV_ENABLE_HTTP=0  -DNETSRV_ENABLE_NAT=0  -DNETSRV_ENABLE_DHCPCLIENT=1	 -DNETSRV_ENABLE_DHCPSERVER=0  -DNETSRV_ENABLE_DNSSERVER=0  -DUSE_EVENT_SEMAPHORE=1 -DUSE_SERIAL_PORT=0  -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE -I/datalocal1/user/surya/vsdk_02_12_RC1/ti_components/os_tools/bios_6_46_00_23/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include   -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS)  -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/netctrl_min/netctrl.oa15fg: export LD_LIBRARY_PATH=

package/lib/lib/netctrl_min/netctrl.sa15fg: | .interfaces
package/lib/lib/netctrl_min/netctrl.sa15fg: netctrl.c lib/netctrl_min.aa15fg.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cla15fg -S $< ...
	$(gnu.targets.arm.A15F.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c -S -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-a15 -mfpu=neon -mfloat-abi=hard -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -Dxdc_target_name__=A15F -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_4_9_3  -O2   -D_NDK_EXTERN_CONFIG  -DNETSRV_ENABLE_TELNET=0  -DNETSRV_ENABLE_HTTP=0  -DNETSRV_ENABLE_NAT=0  -DNETSRV_ENABLE_DHCPCLIENT=1	 -DNETSRV_ENABLE_DHCPSERVER=0  -DNETSRV_ENABLE_DNSSERVER=0  -DUSE_EVENT_SEMAPHORE=1 -DUSE_SERIAL_PORT=0  -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS)  -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/netctrl_min/netctrl.sa15fg: export LD_LIBRARY_PATH=

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/netctrl_min/netsrv.oa15fg.dep
package/lib/lib/netctrl_min/netsrv.oa15fg.dep: ;
endif

package/lib/lib/netctrl_min/netsrv.oa15fg: | .interfaces
package/lib/lib/netctrl_min/netsrv.oa15fg: netsrv.c lib/netctrl_min.aa15fg.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cla15fg $< ...
	$(gnu.targets.arm.A15F.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c  -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-a15 -mfpu=neon -mfloat-abi=hard -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -Dxdc_target_name__=A15F -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_4_9_3  -O2   -D_NDK_EXTERN_CONFIG  -DNETSRV_ENABLE_TELNET=0  -DNETSRV_ENABLE_HTTP=0  -DNETSRV_ENABLE_NAT=0  -DNETSRV_ENABLE_DHCPCLIENT=1	 -DNETSRV_ENABLE_DHCPSERVER=0  -DNETSRV_ENABLE_DNSSERVER=0  -DUSE_EVENT_SEMAPHORE=1 -DUSE_SERIAL_PORT=0  -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE -I/datalocal1/user/surya/vsdk_02_12_RC1/ti_components/os_tools/bios_6_46_00_23/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include   -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS)  -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/netctrl_min/netsrv.oa15fg: export LD_LIBRARY_PATH=

package/lib/lib/netctrl_min/netsrv.sa15fg: | .interfaces
package/lib/lib/netctrl_min/netsrv.sa15fg: netsrv.c lib/netctrl_min.aa15fg.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) cla15fg -S $< ...
	$(gnu.targets.arm.A15F.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c -S -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections  -mcpu=cortex-a15 -mfpu=neon -mfloat-abi=hard -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__  -Dxdc_target_name__=A15F -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_4_9_3  -O2   -D_NDK_EXTERN_CONFIG  -DNETSRV_ENABLE_TELNET=0  -DNETSRV_ENABLE_HTTP=0  -DNETSRV_ENABLE_NAT=0  -DNETSRV_ENABLE_DHCPCLIENT=1	 -DNETSRV_ENABLE_DHCPSERVER=0  -DNETSRV_ENABLE_DNSSERVER=0  -DUSE_EVENT_SEMAPHORE=1 -DUSE_SERIAL_PORT=0  -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS)  -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/netctrl_min/netsrv.sa15fg: export LD_LIBRARY_PATH=

clean,a15fg ::
	-$(RM) package/lib/lib/netctrl_min/package/package_ti.ndk.netctrl.oa15fg
	-$(RM) package/lib/lib/netctrl_min/netctrl.oa15fg
	-$(RM) package/lib/lib/netctrl_min/netsrv.oa15fg
	-$(RM) package/lib/lib/netctrl_min/package/package_ti.ndk.netctrl.sa15fg
	-$(RM) package/lib/lib/netctrl_min/netctrl.sa15fg
	-$(RM) package/lib/lib/netctrl_min/netsrv.sa15fg

lib/netctrl_min.aa15fg: package/lib/lib/netctrl_min/package/package_ti.ndk.netctrl.oa15fg package/lib/lib/netctrl_min/netctrl.oa15fg package/lib/lib/netctrl_min/netsrv.oa15fg lib/netctrl_min.aa15fg.mak

clean::
	-$(RM) lib/netctrl_min.aa15fg.mak
