#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = ti.targets.arm.elf.M4F{1,0,5.2,5
#
ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/servers/package/package_ti.ndk.tools.servers.oem4f.dep
package/lib/lib/servers/package/package_ti.ndk.tools.servers.oem4f.dep: ;
endif

package/lib/lib/servers/package/package_ti.ndk.tools.servers.oem4f: | .interfaces
package/lib/lib/servers/package/package_ti.ndk.tools.servers.oem4f: package/package_ti.ndk.tools.servers.c lib/servers.aem4f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4f $< ...
	$(ti.targets.arm.elf.M4F.rootDir)/bin/armcl -c  -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers/package -fr=./package/lib/lib/servers/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/servers/package -s oem4f $< -C   -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers/package -fr=./package/lib/lib/servers/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/servers/package/package_ti.ndk.tools.servers.oem4f: export C_DIR=
package/lib/lib/servers/package/package_ti.ndk.tools.servers.oem4f: PATH:=$(ti.targets.arm.elf.M4F.rootDir)/bin/:$(PATH)

package/lib/lib/servers/package/package_ti.ndk.tools.servers.sem4f: | .interfaces
package/lib/lib/servers/package/package_ti.ndk.tools.servers.sem4f: package/package_ti.ndk.tools.servers.c lib/servers.aem4f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4f -n $< ...
	$(ti.targets.arm.elf.M4F.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers/package -fr=./package/lib/lib/servers/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/servers/package -s oem4f $< -C  -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers/package -fr=./package/lib/lib/servers/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/servers/package/package_ti.ndk.tools.servers.sem4f: export C_DIR=
package/lib/lib/servers/package/package_ti.ndk.tools.servers.sem4f: PATH:=$(ti.targets.arm.elf.M4F.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/servers/autoconn.oem4f.dep
package/lib/lib/servers/autoconn.oem4f.dep: ;
endif

package/lib/lib/servers/autoconn.oem4f: | .interfaces
package/lib/lib/servers/autoconn.oem4f: autoconn.c lib/servers.aem4f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4f $< ...
	$(ti.targets.arm.elf.M4F.rootDir)/bin/armcl -c  -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers -fr=./package/lib/lib/servers -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/servers -s oem4f $< -C   -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers -fr=./package/lib/lib/servers
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/servers/autoconn.oem4f: export C_DIR=
package/lib/lib/servers/autoconn.oem4f: PATH:=$(ti.targets.arm.elf.M4F.rootDir)/bin/:$(PATH)

package/lib/lib/servers/autoconn.sem4f: | .interfaces
package/lib/lib/servers/autoconn.sem4f: autoconn.c lib/servers.aem4f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4f -n $< ...
	$(ti.targets.arm.elf.M4F.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers -fr=./package/lib/lib/servers -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/servers -s oem4f $< -C  -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers -fr=./package/lib/lib/servers
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/servers/autoconn.sem4f: export C_DIR=
package/lib/lib/servers/autoconn.sem4f: PATH:=$(ti.targets.arm.elf.M4F.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/servers/datasrv.oem4f.dep
package/lib/lib/servers/datasrv.oem4f.dep: ;
endif

package/lib/lib/servers/datasrv.oem4f: | .interfaces
package/lib/lib/servers/datasrv.oem4f: datasrv.c lib/servers.aem4f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4f $< ...
	$(ti.targets.arm.elf.M4F.rootDir)/bin/armcl -c  -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers -fr=./package/lib/lib/servers -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/servers -s oem4f $< -C   -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers -fr=./package/lib/lib/servers
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/servers/datasrv.oem4f: export C_DIR=
package/lib/lib/servers/datasrv.oem4f: PATH:=$(ti.targets.arm.elf.M4F.rootDir)/bin/:$(PATH)

package/lib/lib/servers/datasrv.sem4f: | .interfaces
package/lib/lib/servers/datasrv.sem4f: datasrv.c lib/servers.aem4f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4f -n $< ...
	$(ti.targets.arm.elf.M4F.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers -fr=./package/lib/lib/servers -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/servers -s oem4f $< -C  -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers -fr=./package/lib/lib/servers
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/servers/datasrv.sem4f: export C_DIR=
package/lib/lib/servers/datasrv.sem4f: PATH:=$(ti.targets.arm.elf.M4F.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/servers/echosrv.oem4f.dep
package/lib/lib/servers/echosrv.oem4f.dep: ;
endif

package/lib/lib/servers/echosrv.oem4f: | .interfaces
package/lib/lib/servers/echosrv.oem4f: echosrv.c lib/servers.aem4f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4f $< ...
	$(ti.targets.arm.elf.M4F.rootDir)/bin/armcl -c  -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers -fr=./package/lib/lib/servers -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/servers -s oem4f $< -C   -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers -fr=./package/lib/lib/servers
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/servers/echosrv.oem4f: export C_DIR=
package/lib/lib/servers/echosrv.oem4f: PATH:=$(ti.targets.arm.elf.M4F.rootDir)/bin/:$(PATH)

package/lib/lib/servers/echosrv.sem4f: | .interfaces
package/lib/lib/servers/echosrv.sem4f: echosrv.c lib/servers.aem4f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4f -n $< ...
	$(ti.targets.arm.elf.M4F.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers -fr=./package/lib/lib/servers -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/servers -s oem4f $< -C  -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers -fr=./package/lib/lib/servers
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/servers/echosrv.sem4f: export C_DIR=
package/lib/lib/servers/echosrv.sem4f: PATH:=$(ti.targets.arm.elf.M4F.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/servers/newservers.oem4f.dep
package/lib/lib/servers/newservers.oem4f.dep: ;
endif

package/lib/lib/servers/newservers.oem4f: | .interfaces
package/lib/lib/servers/newservers.oem4f: newservers.c lib/servers.aem4f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4f $< ...
	$(ti.targets.arm.elf.M4F.rootDir)/bin/armcl -c  -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers -fr=./package/lib/lib/servers -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/servers -s oem4f $< -C   -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers -fr=./package/lib/lib/servers
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/servers/newservers.oem4f: export C_DIR=
package/lib/lib/servers/newservers.oem4f: PATH:=$(ti.targets.arm.elf.M4F.rootDir)/bin/:$(PATH)

package/lib/lib/servers/newservers.sem4f: | .interfaces
package/lib/lib/servers/newservers.sem4f: newservers.c lib/servers.aem4f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4f -n $< ...
	$(ti.targets.arm.elf.M4F.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers -fr=./package/lib/lib/servers -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/servers -s oem4f $< -C  -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers -fr=./package/lib/lib/servers
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/servers/newservers.sem4f: export C_DIR=
package/lib/lib/servers/newservers.sem4f: PATH:=$(ti.targets.arm.elf.M4F.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/servers/nullsrv.oem4f.dep
package/lib/lib/servers/nullsrv.oem4f.dep: ;
endif

package/lib/lib/servers/nullsrv.oem4f: | .interfaces
package/lib/lib/servers/nullsrv.oem4f: nullsrv.c lib/servers.aem4f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4f $< ...
	$(ti.targets.arm.elf.M4F.rootDir)/bin/armcl -c  -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers -fr=./package/lib/lib/servers -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/servers -s oem4f $< -C   -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers -fr=./package/lib/lib/servers
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/servers/nullsrv.oem4f: export C_DIR=
package/lib/lib/servers/nullsrv.oem4f: PATH:=$(ti.targets.arm.elf.M4F.rootDir)/bin/:$(PATH)

package/lib/lib/servers/nullsrv.sem4f: | .interfaces
package/lib/lib/servers/nullsrv.sem4f: nullsrv.c lib/servers.aem4f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4f -n $< ...
	$(ti.targets.arm.elf.M4F.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers -fr=./package/lib/lib/servers -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/servers -s oem4f $< -C  -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers -fr=./package/lib/lib/servers
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/servers/nullsrv.sem4f: export C_DIR=
package/lib/lib/servers/nullsrv.sem4f: PATH:=$(ti.targets.arm.elf.M4F.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/servers/oobsrv.oem4f.dep
package/lib/lib/servers/oobsrv.oem4f.dep: ;
endif

package/lib/lib/servers/oobsrv.oem4f: | .interfaces
package/lib/lib/servers/oobsrv.oem4f: oobsrv.c lib/servers.aem4f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4f $< ...
	$(ti.targets.arm.elf.M4F.rootDir)/bin/armcl -c  -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers -fr=./package/lib/lib/servers -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/servers -s oem4f $< -C   -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers -fr=./package/lib/lib/servers
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/servers/oobsrv.oem4f: export C_DIR=
package/lib/lib/servers/oobsrv.oem4f: PATH:=$(ti.targets.arm.elf.M4F.rootDir)/bin/:$(PATH)

package/lib/lib/servers/oobsrv.sem4f: | .interfaces
package/lib/lib/servers/oobsrv.sem4f: oobsrv.c lib/servers.aem4f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4f -n $< ...
	$(ti.targets.arm.elf.M4F.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers -fr=./package/lib/lib/servers -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/servers -s oem4f $< -C  -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2 -D_NDK_EXTERN_CONFIG -D_INCLUDE_NAT_CODE -D_INCLUDE_PPP_CODE -D_INCLUDE_PPPOE_CODE -D_INCLUDE_NIMU_CODE -D_INCLUDE_IPv6_CODE  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/servers -fr=./package/lib/lib/servers
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/servers/oobsrv.sem4f: export C_DIR=
package/lib/lib/servers/oobsrv.sem4f: PATH:=$(ti.targets.arm.elf.M4F.rootDir)/bin/:$(PATH)

clean,em4f ::
	-$(RM) package/lib/lib/servers/package/package_ti.ndk.tools.servers.oem4f
	-$(RM) package/lib/lib/servers/autoconn.oem4f
	-$(RM) package/lib/lib/servers/datasrv.oem4f
	-$(RM) package/lib/lib/servers/echosrv.oem4f
	-$(RM) package/lib/lib/servers/newservers.oem4f
	-$(RM) package/lib/lib/servers/nullsrv.oem4f
	-$(RM) package/lib/lib/servers/oobsrv.oem4f
	-$(RM) package/lib/lib/servers/package/package_ti.ndk.tools.servers.sem4f
	-$(RM) package/lib/lib/servers/autoconn.sem4f
	-$(RM) package/lib/lib/servers/datasrv.sem4f
	-$(RM) package/lib/lib/servers/echosrv.sem4f
	-$(RM) package/lib/lib/servers/newservers.sem4f
	-$(RM) package/lib/lib/servers/nullsrv.sem4f
	-$(RM) package/lib/lib/servers/oobsrv.sem4f

lib/servers.aem4f: package/lib/lib/servers/package/package_ti.ndk.tools.servers.oem4f package/lib/lib/servers/autoconn.oem4f package/lib/lib/servers/datasrv.oem4f package/lib/lib/servers/echosrv.oem4f package/lib/lib/servers/newservers.oem4f package/lib/lib/servers/nullsrv.oem4f package/lib/lib/servers/oobsrv.oem4f lib/servers.aem4f.mak

clean::
	-$(RM) lib/servers.aem4f.mak