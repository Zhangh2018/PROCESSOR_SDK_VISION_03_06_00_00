#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = ti.targets.arm.elf.M4F{1,0,5.2,5
#
ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/hal_ser_stub/package/package_ti.ndk.hal.ser_stub.oem4f.dep
package/lib/lib/hal_ser_stub/package/package_ti.ndk.hal.ser_stub.oem4f.dep: ;
endif

package/lib/lib/hal_ser_stub/package/package_ti.ndk.hal.ser_stub.oem4f: | .interfaces
package/lib/lib/hal_ser_stub/package/package_ti.ndk.hal.ser_stub.oem4f: package/package_ti.ndk.hal.ser_stub.c lib/hal_ser_stub.aem4f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4f $< ...
	$(ti.targets.arm.elf.M4F.rootDir)/bin/armcl -c  -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/hal_ser_stub/package -fr=./package/lib/lib/hal_ser_stub/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/hal_ser_stub/package -s oem4f $< -C   -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/hal_ser_stub/package -fr=./package/lib/lib/hal_ser_stub/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/hal_ser_stub/package/package_ti.ndk.hal.ser_stub.oem4f: export C_DIR=
package/lib/lib/hal_ser_stub/package/package_ti.ndk.hal.ser_stub.oem4f: PATH:=$(ti.targets.arm.elf.M4F.rootDir)/bin/:$(PATH)

package/lib/lib/hal_ser_stub/package/package_ti.ndk.hal.ser_stub.sem4f: | .interfaces
package/lib/lib/hal_ser_stub/package/package_ti.ndk.hal.ser_stub.sem4f: package/package_ti.ndk.hal.ser_stub.c lib/hal_ser_stub.aem4f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4f -n $< ...
	$(ti.targets.arm.elf.M4F.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/hal_ser_stub/package -fr=./package/lib/lib/hal_ser_stub/package -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/hal_ser_stub/package -s oem4f $< -C  -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/hal_ser_stub/package -fr=./package/lib/lib/hal_ser_stub/package
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/hal_ser_stub/package/package_ti.ndk.hal.ser_stub.sem4f: export C_DIR=
package/lib/lib/hal_ser_stub/package/package_ti.ndk.hal.ser_stub.sem4f: PATH:=$(ti.targets.arm.elf.M4F.rootDir)/bin/:$(PATH)

ifeq (,$(MK_NOGENDEPS))
-include package/lib/lib/hal_ser_stub/llserstb.oem4f.dep
package/lib/lib/hal_ser_stub/llserstb.oem4f.dep: ;
endif

package/lib/lib/hal_ser_stub/llserstb.oem4f: | .interfaces
package/lib/lib/hal_ser_stub/llserstb.oem4f: llserstb.c lib/hal_ser_stub.aem4f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4f $< ...
	$(ti.targets.arm.elf.M4F.rootDir)/bin/armcl -c  -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/hal_ser_stub -fr=./package/lib/lib/hal_ser_stub -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/hal_ser_stub -s oem4f $< -C   -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/hal_ser_stub -fr=./package/lib/lib/hal_ser_stub
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/hal_ser_stub/llserstb.oem4f: export C_DIR=
package/lib/lib/hal_ser_stub/llserstb.oem4f: PATH:=$(ti.targets.arm.elf.M4F.rootDir)/bin/:$(PATH)

package/lib/lib/hal_ser_stub/llserstb.sem4f: | .interfaces
package/lib/lib/hal_ser_stub/llserstb.sem4f: llserstb.c lib/hal_ser_stub.aem4f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4f -n $< ...
	$(ti.targets.arm.elf.M4F.rootDir)/bin/armcl -c -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/hal_ser_stub -fr=./package/lib/lib/hal_ser_stub -fc $<
	$(MKDEP) -a $@.dep -p package/lib/lib/hal_ser_stub -s oem4f $< -C  -n -s --symdebug:none -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f  -ms  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_5_2_5 -O2  -I$(PKGROOT)/ti/ndk//inc -I$(PKGROOT)/ti/ndk//inc/tools $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include/rts -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/lib/lib/hal_ser_stub -fr=./package/lib/lib/hal_ser_stub
	-@$(FIXDEP) $@.dep $@.dep
	
package/lib/lib/hal_ser_stub/llserstb.sem4f: export C_DIR=
package/lib/lib/hal_ser_stub/llserstb.sem4f: PATH:=$(ti.targets.arm.elf.M4F.rootDir)/bin/:$(PATH)

clean,em4f ::
	-$(RM) package/lib/lib/hal_ser_stub/package/package_ti.ndk.hal.ser_stub.oem4f
	-$(RM) package/lib/lib/hal_ser_stub/llserstb.oem4f
	-$(RM) package/lib/lib/hal_ser_stub/package/package_ti.ndk.hal.ser_stub.sem4f
	-$(RM) package/lib/lib/hal_ser_stub/llserstb.sem4f

lib/hal_ser_stub.aem4f: package/lib/lib/hal_ser_stub/package/package_ti.ndk.hal.ser_stub.oem4f package/lib/lib/hal_ser_stub/llserstb.oem4f lib/hal_ser_stub.aem4f.mak

clean::
	-$(RM) lib/hal_ser_stub.aem4f.mak
