#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#

include ccsmake.mk
unexport MAKEFILE_LIST
MK_NOGENDEPS := $(filter clean,$(MAKECMDGOALS))
override PKGDIR = examples
XDCINCS = -I. -I$(strip $(subst ;, -I,$(subst $(space),\$(space),$(XPKGPATH))))
XDCCFGDIR = package/cfg/

#
# The following dependencies ensure package.mak is rebuilt
# in the event that some included BOM script changes.
#
ifneq (clean,$(MAKECMDGOALS))
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/utils.js:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/utils.js
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/xdc.tci:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/xdc.tci
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/template.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/template.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/om2.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/om2.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/xmlgen.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/xmlgen.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/xmlgen2.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/xmlgen2.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/Warnings.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/Warnings.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/IPackage.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/IPackage.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/package.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/package.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/services/global/Clock.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/services/global/Clock.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/services/global/Trace.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/services/global/Trace.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/bld.js:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/bld.js
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/BuildEnvironment.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/BuildEnvironment.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/PackageContents.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/PackageContents.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/_gen.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/_gen.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/Library.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/Library.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/Executable.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/Executable.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/Repository.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/Repository.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/Configuration.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/Configuration.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/Script.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/Script.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/Manifest.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/Manifest.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/Utils.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/Utils.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/ITarget.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/ITarget.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/ITarget2.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/ITarget2.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/ITarget3.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/ITarget3.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/ITargetFilter.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/ITargetFilter.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/package.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/bld/package.xs
C:/DSPLIB_Install/swtools/ti/mas/swtools/config.bld:
package.mak: C:/DSPLIB_Install/swtools/ti/mas/swtools/config.bld
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/ti/targets/ITarget.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/ti/targets/ITarget.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/ti/targets/C28_large.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/ti/targets/C28_large.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/ti/targets/C28_float.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/ti/targets/C28_float.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/ti/targets/package.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/ti/targets/package.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/ti/targets/elf/ITarget.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/ti/targets/elf/ITarget.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/ti/targets/elf/package.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/ti/targets/elf/package.xs
package.mak: package.bld
C:/DSPLIB_Install/swtools/ti/mas/swtools/CommonBld.xs:
package.mak: C:/DSPLIB_Install/swtools/ti/mas/swtools/CommonBld.xs
C:/DSPLIB_Install/swtools/ti/mas/swtools/Copy.xs:
package.mak: C:/DSPLIB_Install/swtools/ti/mas/swtools/Copy.xs
C:/DSPLIB_Install/swtools/ti/mas/swtools/targParams.xs:
package.mak: C:/DSPLIB_Install/swtools/ti/mas/swtools/targParams.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/services/io/File.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/services/io/File.xs
C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/services/io/package.xs:
package.mak: C:/DSPLIB_Tools/xdctools_3_25_00_48/packages/xdc/services/io/package.xs
endif

all,674 .libraries,674 .dlls,674 .executables,674 test,674:;
all,674e .libraries,674e .dlls,674e .executables,674e test,674e:;
all,e674 .libraries,e674 .dlls,e674 .executables,e674 test,e674:;
all,e674e .libraries,e674e .dlls,e674e .executables,e674e test,e674e:;
all,66 .libraries,66 .dlls,66 .executables,66 test,66:;
all,e66 .libraries,e66 .dlls,e66 .executables,e66 test,e66:;
all,66e .libraries,66e .dlls,66e .executables,66e test,66e:;
all,e66e .libraries,e66e .dlls,e66e .executables,e66e test,e66e:;
all,64 .libraries,64 .dlls,64 .executables,64 test,64:;
all,64e .libraries,64e .dlls,64e .executables,64e test,64e:;
all,64P .libraries,64P .dlls,64P .executables,64P test,64P:;
all,64Pe .libraries,64Pe .dlls,64Pe .executables,64Pe test,64Pe:;
all,e64P .libraries,e64P .dlls,e64P .executables,e64P test,e64P:;
all,e64Pe .libraries,e64Pe .dlls,e64Pe .executables,e64Pe test,e64Pe:;

all: .executables 
.executables: .libraries .dlls
.libraries: .interfaces

PKGCFGS := $(wildcard package.xs) package/build.cfg
.interfaces: package/package.xdc.inc package/package.defs.h package.xdc $(PKGCFGS)

-include package/package.xdc.dep
package/%.xdc.inc package/%_examples.c package/%.defs.h: %.xdc $(PKGCFGS)
	@$(MSG) generating interfaces for package examples" (because $@ is older than $(firstword $?))" ...
	$(XSRUN) -f xdc/services/intern/cmd/build.xs $(MK_IDLOPTS) -m package/package.xdc.dep -i package/package.xdc.inc package.xdc

ifeq (,$(MK_NOGENDEPS))
-include package/package.cfg.dep
endif

package/rel/undefinedexamplespackage/package.rel.xml: package/package.cfg.xdc.inc
package/package.cfg.xdc.inc: $(XDCROOT)/packages/xdc/cfg/cfginc.js package.xdc
	@$(MSG) generating schema include file list ...
	$(CONFIG) -f $(XDCROOT)/packages/xdc/cfg/cfginc.js examples $@

test:;
%,copy:
	@$(if $<,,$(MSG) don\'t know how to build $*; exit 1)
	@$(MSG) cp $< $@
	$(RM) $@
	$(CP) $< $@

$(XDCCFGDIR)%.c $(XDCCFGDIR)%.h $(XDCCFGDIR)%.xdl: $(XDCCFGDIR)%.cfg .interfaces $(XDCROOT)/packages/xdc/cfg/Main.xs
	@$(MSG) "configuring $(_PROG_NAME) from $< ..."
	$(CONFIG) $(_PROG_XSOPTS) xdc.cfg $(_PROG_NAME) $(XDCCFGDIR)$*.cfg $(XDCCFGDIR)$*

.PHONY: release,examples_src_c66x
examples_src_c66x.zip: package/package.bld.xml
examples_src_c66x.zip: package/build.cfg
examples_src_c66x.zip: ./package/projects
examples_src_c66x.zip: ccsmake.mk
examples_src_c66x.zip: fft_ex/FFT_Example_66_LE_COFF
examples_src_c66x.zip: fft_ex/fft_example.c
examples_src_c66x.zip: fft_ex/lnk.cmd
examples_src_c66x.zip: fft_ex/gen_twiddle_fft16x16.h
examples_src_c66x.zip: fft_ex/gen_twiddle_fft16x16.c
examples_src_c66x.zip: fft_ex/gen_twiddle_fft16x32.h
examples_src_c66x.zip: fft_ex/gen_twiddle_fft16x32.c
examples_src_c66x.zip: fft_ex/gen_twiddle_fft32x32.c
examples_src_c66x.zip: fft_ex/gen_twiddle_fft32x32.h
examples_src_c66x.zip: fft_ex/FFT_Example_66_BE_COFF
examples_src_c66x.zip: fft_ex/FFT_Example_66_LE_ELF
examples_src_c66x.zip: fft_ex/FFT_Example_66_BE_ELF
examples_src_c66x.zip: fft_sp_ex/FFT_SP_Example_66_LE_COFF
examples_src_c66x.zip: fft_sp_ex/fft_example_sp.c
examples_src_c66x.zip: fft_sp_ex/lnk.cmd
examples_src_c66x.zip: fft_sp_ex/FFT_SP_Example_66_BE_COFF
examples_src_c66x.zip: fft_sp_ex/FFT_SP_Example_66_LE_ELF
examples_src_c66x.zip: fft_sp_ex/FFT_SP_Example_66_BE_ELF
examples_src_c66x.zip: QRD_dp_least_squares_ex/QRD_dp_least_squares_Example_66_LE_COFF
examples_src_c66x.zip: QRD_dp_least_squares_ex/DSPF_dp_qrd_example.c
examples_src_c66x.zip: QRD_dp_least_squares_ex/lnk.cmd
examples_src_c66x.zip: QRD_dp_least_squares_ex/QRD_dp_least_squares_Example_66_BE_COFF
examples_src_c66x.zip: QRD_dp_least_squares_ex/QRD_dp_least_squares_Example_66_LE_ELF
examples_src_c66x.zip: QRD_dp_least_squares_ex/QRD_dp_least_squares_Example_66_BE_ELF
examples_src_c66x.zip: SVD_dp_rank_ex/SVD_dp_rank_Example_66_LE_COFF
examples_src_c66x.zip: SVD_dp_rank_ex/DSPF_dp_svd_example.c
examples_src_c66x.zip: SVD_dp_rank_ex/lnk.cmd
examples_src_c66x.zip: SVD_dp_rank_ex/SVD_dp_rank_Example_66_BE_COFF
examples_src_c66x.zip: SVD_dp_rank_ex/SVD_dp_rank_Example_66_LE_ELF
examples_src_c66x.zip: SVD_dp_rank_ex/SVD_dp_rank_Example_66_BE_ELF
examples_src_c66x.zip: package.bld
examples_src_c66x.zip: package/package.xdc.inc
examples_src_c66x.zip: package/package.cfg.xdc.inc
ifeq (,$(MK_NOGENDEPS))
-include package/rel/examples_src_c66x.zip.dep
endif
package/rel/examples_src_c66x/examples/package/package.rel.xml: .force
	@$(MSG) generating external release references $@ ...
	$(XS) $(JSENV) -f $(XDCROOT)/packages/xdc/bld/rel.js $(MK_RELOPTS) . $@

examples_src_c66x.zip: package/rel/examples_src_c66x.xdc.inc package/rel/examples_src_c66x/examples/package/package.rel.xml
	@$(MSG) making release file $@ "(because of $(firstword $?))" ...
	-$(RM) $@
	$(call MKRELZIP,package/rel/examples_src_c66x.xdc.inc,package/rel/examples_src_c66x.zip.dep)


release release,examples_src_c66x: all examples_src_c66x.zip
clean:: .clean
	-$(RM) examples_src_c66x.zip
	-$(RM) package/rel/examples_src_c66x.xdc.inc
	-$(RM) package/rel/examples_src_c66x.zip.dep

clean:: .clean
	-$(RM) .libraries .libraries,*
clean:: 
	-$(RM) .dlls .dlls,*
#
# The following clean rule removes user specified
# generated files or directories.
#
	-$(RM) ccsmake.mk

ifneq (clean,$(MAKECMDGOALS))
ifeq (,$(wildcard package))
    $(shell $(MKDIR) package)
endif
ifeq (,$(wildcard package/cfg))
    $(shell $(MKDIR) package/cfg)
endif
ifeq (,$(wildcard package/lib))
    $(shell $(MKDIR) package/lib)
endif
ifeq (,$(wildcard package/rel))
    $(shell $(MKDIR) package/rel)
endif
ifeq (,$(wildcard package/internal))
    $(shell $(MKDIR) package/internal)
endif
endif
clean::
	-$(RMDIR) package

clean::
	-$(RM)  *.zip
clean::
	-$(RM)  *.bin
clean::
	-$(RM)  *.exe
clean::
	-$(RM)  buildArtifacts.log
clean::
	-$(RM)  .//docs//doxygen//*.chm
clean::
	-$(RM)  .//docs/*.chm
clean::
	-$(RMDIR) .//docs//doxygen//html
clean::
	-$(RMDIR) cov_out
clean::
	-$(RMDIR) ccsProjects
clean::
	-$(RMDIR) c://Temp//workspace
clean::
	-$(RMDIR) c54
clean::
	-$(RMDIR) c54f
clean::
	-$(RMDIR) c55
clean::
	-$(RMDIR) c55l
clean::
	-$(RMDIR) c64
clean::
	-$(RMDIR) c64e
clean::
	-$(RMDIR) c674
clean::
	-$(RMDIR) ce674e
clean::
	-$(RMDIR) ce674
clean::
	-$(RMDIR) c674e
clean::
	-$(RMDIR) ce66
clean::
	-$(RMDIR) ce66e
clean::
	-$(RMDIR) c66
clean::
	-$(RMDIR) c66e
clean::
	-$(RMDIR) c64P
clean::
	-$(RMDIR) c64Pe
clean::
	-$(RMDIR) ce64P
clean::
	-$(RMDIR) ce64Pe
clean::
	-$(RMDIR) mvarm9
clean::
	-$(RMDIR) gcarmv6
clean::
	-$(RMDIR) gcarmv7a
clean::
	-$(RMDIR) wince
clean::
	-$(RMDIR) tiarmv6le
clean::
	-$(RMDIR) tiarmv6be

