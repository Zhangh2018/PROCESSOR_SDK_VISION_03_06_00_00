/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-A71
 */

#ifndef ti_sysbios_family_arm_a15_Cache__INTERNAL__
#define ti_sysbios_family_arm_a15_Cache__INTERNAL__

#ifndef ti_sysbios_family_arm_a15_Cache__internalaccess
#define ti_sysbios_family_arm_a15_Cache__internalaccess
#endif

#include <ti/sysbios/family/arm/a15/Cache.h>

#undef xdc_FILE__
#ifndef xdc_FILE
#define xdc_FILE__ NULL
#else
#define xdc_FILE__ xdc_FILE
#endif

/* enable */
#undef ti_sysbios_family_arm_a15_Cache_enable
#define ti_sysbios_family_arm_a15_Cache_enable ti_sysbios_family_arm_a15_Cache_enable__E

/* disable */
#undef ti_sysbios_family_arm_a15_Cache_disable
#define ti_sysbios_family_arm_a15_Cache_disable ti_sysbios_family_arm_a15_Cache_disable__E

/* inv */
#undef ti_sysbios_family_arm_a15_Cache_inv
#define ti_sysbios_family_arm_a15_Cache_inv ti_sysbios_family_arm_a15_Cache_inv__E

/* wb */
#undef ti_sysbios_family_arm_a15_Cache_wb
#define ti_sysbios_family_arm_a15_Cache_wb ti_sysbios_family_arm_a15_Cache_wb__E

/* wbInv */
#undef ti_sysbios_family_arm_a15_Cache_wbInv
#define ti_sysbios_family_arm_a15_Cache_wbInv ti_sysbios_family_arm_a15_Cache_wbInv__E

/* wbAll */
#undef ti_sysbios_family_arm_a15_Cache_wbAll
#define ti_sysbios_family_arm_a15_Cache_wbAll ti_sysbios_family_arm_a15_Cache_wbAll__E

/* wbInvAll */
#undef ti_sysbios_family_arm_a15_Cache_wbInvAll
#define ti_sysbios_family_arm_a15_Cache_wbInvAll ti_sysbios_family_arm_a15_Cache_wbInvAll__E

/* wait */
#undef ti_sysbios_family_arm_a15_Cache_wait
#define ti_sysbios_family_arm_a15_Cache_wait ti_sysbios_family_arm_a15_Cache_wait__E

/* getEnabled */
#undef ti_sysbios_family_arm_a15_Cache_getEnabled
#define ti_sysbios_family_arm_a15_Cache_getEnabled ti_sysbios_family_arm_a15_Cache_getEnabled__E

/* invL1dAll */
#undef ti_sysbios_family_arm_a15_Cache_invL1dAll
#define ti_sysbios_family_arm_a15_Cache_invL1dAll ti_sysbios_family_arm_a15_Cache_invL1dAll__E

/* invL1pAll */
#undef ti_sysbios_family_arm_a15_Cache_invL1pAll
#define ti_sysbios_family_arm_a15_Cache_invL1pAll ti_sysbios_family_arm_a15_Cache_invL1pAll__E

/* preLoad */
#undef ti_sysbios_family_arm_a15_Cache_preLoad
#define ti_sysbios_family_arm_a15_Cache_preLoad ti_sysbios_family_arm_a15_Cache_preLoad__E

/* enableBP */
#undef ti_sysbios_family_arm_a15_Cache_enableBP
#define ti_sysbios_family_arm_a15_Cache_enableBP ti_sysbios_family_arm_a15_Cache_enableBP__E

/* disableBP */
#undef ti_sysbios_family_arm_a15_Cache_disableBP
#define ti_sysbios_family_arm_a15_Cache_disableBP ti_sysbios_family_arm_a15_Cache_disableBP__E

/* wbAllLoUIS */
#undef ti_sysbios_family_arm_a15_Cache_wbAllLoUIS
#define ti_sysbios_family_arm_a15_Cache_wbAllLoUIS ti_sysbios_family_arm_a15_Cache_wbAllLoUIS__E

/* wbInvAllLoUIS */
#undef ti_sysbios_family_arm_a15_Cache_wbInvAllLoUIS
#define ti_sysbios_family_arm_a15_Cache_wbInvAllLoUIS ti_sysbios_family_arm_a15_Cache_wbInvAllLoUIS__E

/* invBPAll */
#undef ti_sysbios_family_arm_a15_Cache_invBPAll
#define ti_sysbios_family_arm_a15_Cache_invBPAll ti_sysbios_family_arm_a15_Cache_invBPAll__E

/* initModuleState */
#define Cache_initModuleState ti_sysbios_family_arm_a15_Cache_initModuleState__I

/* startup */
#define Cache_startup ti_sysbios_family_arm_a15_Cache_startup__I

/* disableL1D */
#define Cache_disableL1D ti_sysbios_family_arm_a15_Cache_disableL1D__I

/* disableL1P */
#define Cache_disableL1P ti_sysbios_family_arm_a15_Cache_disableL1P__I

/* enableL1D */
#define Cache_enableL1D ti_sysbios_family_arm_a15_Cache_enableL1D__I

/* enableL1P */
#define Cache_enableL1P ti_sysbios_family_arm_a15_Cache_enableL1P__I

/* invL1d */
#define Cache_invL1d ti_sysbios_family_arm_a15_Cache_invL1d__I

/* invL1p */
#define Cache_invL1p ti_sysbios_family_arm_a15_Cache_invL1p__I

/* preFetch */
#define Cache_preFetch ti_sysbios_family_arm_a15_Cache_preFetch__I

/* getL2AuxControlReg */
#define Cache_getL2AuxControlReg ti_sysbios_family_arm_a15_Cache_getL2AuxControlReg__I

/* setL2AuxControlReg */
#define Cache_setL2AuxControlReg ti_sysbios_family_arm_a15_Cache_setL2AuxControlReg__I

/* getCacheLevelInfo */
#define Cache_getCacheLevelInfo ti_sysbios_family_arm_a15_Cache_getCacheLevelInfo__I

/* Module_startup */
#undef ti_sysbios_family_arm_a15_Cache_Module_startup
#define ti_sysbios_family_arm_a15_Cache_Module_startup ti_sysbios_family_arm_a15_Cache_Module_startup__E

/* Instance_init */
#undef ti_sysbios_family_arm_a15_Cache_Instance_init
#define ti_sysbios_family_arm_a15_Cache_Instance_init ti_sysbios_family_arm_a15_Cache_Instance_init__E

/* Instance_finalize */
#undef ti_sysbios_family_arm_a15_Cache_Instance_finalize
#define ti_sysbios_family_arm_a15_Cache_Instance_finalize ti_sysbios_family_arm_a15_Cache_Instance_finalize__E

/* module */
#define Cache_module ((ti_sysbios_family_arm_a15_Cache_Module_State *)(xdc__MODOBJADDR__(ti_sysbios_family_arm_a15_Cache_Module__state__V)))
#if !defined(__cplusplus) || !defined(ti_sysbios_family_arm_a15_Cache__cplusplus)
#define module ((ti_sysbios_family_arm_a15_Cache_Module_State *)(xdc__MODOBJADDR__(ti_sysbios_family_arm_a15_Cache_Module__state__V)))
#endif
/* per-module runtime symbols */
#undef Module__MID
#define Module__MID ti_sysbios_family_arm_a15_Cache_Module__id__C
#undef Module__DGSINCL
#define Module__DGSINCL ti_sysbios_family_arm_a15_Cache_Module__diagsIncluded__C
#undef Module__DGSENAB
#define Module__DGSENAB ti_sysbios_family_arm_a15_Cache_Module__diagsEnabled__C
#undef Module__DGSMASK
#define Module__DGSMASK ti_sysbios_family_arm_a15_Cache_Module__diagsMask__C
#undef Module__LOGDEF
#define Module__LOGDEF ti_sysbios_family_arm_a15_Cache_Module__loggerDefined__C
#undef Module__LOGOBJ
#define Module__LOGOBJ ti_sysbios_family_arm_a15_Cache_Module__loggerObj__C
#undef Module__LOGFXN0
#define Module__LOGFXN0 ti_sysbios_family_arm_a15_Cache_Module__loggerFxn0__C
#undef Module__LOGFXN1
#define Module__LOGFXN1 ti_sysbios_family_arm_a15_Cache_Module__loggerFxn1__C
#undef Module__LOGFXN2
#define Module__LOGFXN2 ti_sysbios_family_arm_a15_Cache_Module__loggerFxn2__C
#undef Module__LOGFXN4
#define Module__LOGFXN4 ti_sysbios_family_arm_a15_Cache_Module__loggerFxn4__C
#undef Module__LOGFXN8
#define Module__LOGFXN8 ti_sysbios_family_arm_a15_Cache_Module__loggerFxn8__C
#undef Module__G_OBJ
#define Module__G_OBJ ti_sysbios_family_arm_a15_Cache_Module__gateObj__C
#undef Module__G_PRMS
#define Module__G_PRMS ti_sysbios_family_arm_a15_Cache_Module__gatePrms__C
#undef Module__GP_create
#define Module__GP_create ti_sysbios_family_arm_a15_Cache_Module_GateProxy_create
#undef Module__GP_delete
#define Module__GP_delete ti_sysbios_family_arm_a15_Cache_Module_GateProxy_delete
#undef Module__GP_enter
#define Module__GP_enter ti_sysbios_family_arm_a15_Cache_Module_GateProxy_enter
#undef Module__GP_leave
#define Module__GP_leave ti_sysbios_family_arm_a15_Cache_Module_GateProxy_leave
#undef Module__GP_query
#define Module__GP_query ti_sysbios_family_arm_a15_Cache_Module_GateProxy_query


#endif /* ti_sysbios_family_arm_a15_Cache__INTERNAL____ */
