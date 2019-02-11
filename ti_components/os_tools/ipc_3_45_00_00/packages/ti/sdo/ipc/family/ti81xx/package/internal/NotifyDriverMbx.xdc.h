/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B21
 */

#ifndef ti_sdo_ipc_family_ti81xx_NotifyDriverMbx__INTERNAL__
#define ti_sdo_ipc_family_ti81xx_NotifyDriverMbx__INTERNAL__

#ifndef ti_sdo_ipc_family_ti81xx_NotifyDriverMbx__internalaccess
#define ti_sdo_ipc_family_ti81xx_NotifyDriverMbx__internalaccess
#endif

#include <ti/sdo/ipc/family/ti81xx/NotifyDriverMbx.h>

#undef xdc_FILE__
#ifndef xdc_FILE
#define xdc_FILE__ NULL
#else
#define xdc_FILE__ xdc_FILE
#endif

/* registerEvent */
#undef ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_registerEvent
#define ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_registerEvent ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_registerEvent__E

/* unregisterEvent */
#undef ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_unregisterEvent
#define ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_unregisterEvent ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_unregisterEvent__E

/* sendEvent */
#undef ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_sendEvent
#define ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_sendEvent ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_sendEvent__E

/* disable */
#undef ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_disable
#define ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_disable ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_disable__E

/* enable */
#undef ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_enable
#define ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_enable ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_enable__E

/* disableEvent */
#undef ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_disableEvent
#define ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_disableEvent ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_disableEvent__E

/* enableEvent */
#undef ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_enableEvent
#define ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_enableEvent ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_enableEvent__E

/* setNotifyHandle */
#undef ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_setNotifyHandle
#define ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_setNotifyHandle ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_setNotifyHandle__E

/* isr */
#define NotifyDriverMbx_isr ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_isr__I

/* Module_startup */
#undef ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Module_startup
#define ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Module_startup ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Module_startup__E

/* Instance_init */
#undef ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Instance_init
#define ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Instance_init ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Instance_init__E

/* Instance_finalize */
#undef ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Instance_finalize
#define ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Instance_finalize ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Instance_finalize__E

/* module */
#define NotifyDriverMbx_module ((ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Module_State *)(xdc__MODOBJADDR__(ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Module__state__V)))
#if !defined(__cplusplus) || !defined(ti_sdo_ipc_family_ti81xx_NotifyDriverMbx__cplusplus)
#define module ((ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Module_State *)(xdc__MODOBJADDR__(ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Module__state__V)))
#endif
/* per-module runtime symbols */
#undef Module__MID
#define Module__MID ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Module__id__C
#undef Module__DGSINCL
#define Module__DGSINCL ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Module__diagsIncluded__C
#undef Module__DGSENAB
#define Module__DGSENAB ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Module__diagsEnabled__C
#undef Module__DGSMASK
#define Module__DGSMASK ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Module__diagsMask__C
#undef Module__LOGDEF
#define Module__LOGDEF ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Module__loggerDefined__C
#undef Module__LOGOBJ
#define Module__LOGOBJ ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Module__loggerObj__C
#undef Module__LOGFXN0
#define Module__LOGFXN0 ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Module__loggerFxn0__C
#undef Module__LOGFXN1
#define Module__LOGFXN1 ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Module__loggerFxn1__C
#undef Module__LOGFXN2
#define Module__LOGFXN2 ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Module__loggerFxn2__C
#undef Module__LOGFXN4
#define Module__LOGFXN4 ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Module__loggerFxn4__C
#undef Module__LOGFXN8
#define Module__LOGFXN8 ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Module__loggerFxn8__C
#undef Module__G_OBJ
#define Module__G_OBJ ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Module__gateObj__C
#undef Module__G_PRMS
#define Module__G_PRMS ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Module__gatePrms__C
#undef Module__GP_create
#define Module__GP_create ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Module_GateProxy_create
#undef Module__GP_delete
#define Module__GP_delete ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Module_GateProxy_delete
#undef Module__GP_enter
#define Module__GP_enter ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Module_GateProxy_enter
#undef Module__GP_leave
#define Module__GP_leave ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Module_GateProxy_leave
#undef Module__GP_query
#define Module__GP_query ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Module_GateProxy_query

/* Object__sizingError */
#line 1 "Error_inconsistent_object_size_in_ti.sdo.ipc.family.ti81xx.NotifyDriverMbx"
typedef char ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Object__sizingError[sizeof(ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Object) > sizeof(ti_sdo_ipc_family_ti81xx_NotifyDriverMbx_Struct) ? -1 : 1];


#endif /* ti_sdo_ipc_family_ti81xx_NotifyDriverMbx__INTERNAL____ */
