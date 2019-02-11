/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B21
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     MODULE-WIDE CONFIGS
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

#ifndef ti_ipc_family_tci6638_VirtQueue_InterruptProxy__include
#define ti_ipc_family_tci6638_VirtQueue_InterruptProxy__include

#ifndef __nested__
#define __nested__
#define ti_ipc_family_tci6638_VirtQueue_InterruptProxy__top__
#endif

#ifdef __cplusplus
#define __extern extern "C"
#else
#define __extern extern
#endif

#define ti_ipc_family_tci6638_VirtQueue_InterruptProxy___VERS 160


/*
 * ======== INCLUDES ========
 */

#include <xdc/std.h>

#include <xdc/runtime/xdc.h>
#include <xdc/runtime/Types.h>
#include <ti/ipc/family/tci6638/package/package.defs.h>

#include <ti/sdo/ipc/notifyDrivers/IInterrupt.h>


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* IntInfo */
typedef ti_sdo_ipc_notifyDrivers_IInterrupt_IntInfo ti_ipc_family_tci6638_VirtQueue_InterruptProxy_IntInfo;


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__diagsEnabled;
__extern __FAR__ const CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__diagsEnabled ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__diagsIncluded;
__extern __FAR__ const CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__diagsIncluded ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__diagsMask;
__extern __FAR__ const CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__diagsMask ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__gateObj;
__extern __FAR__ const CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__gateObj ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__gatePrms;
__extern __FAR__ const CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__gatePrms ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__id;
__extern __FAR__ const CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__id ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__loggerDefined;
__extern __FAR__ const CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__loggerDefined ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__loggerObj;
__extern __FAR__ const CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__loggerObj ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__loggerFxn0;
__extern __FAR__ const CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__loggerFxn0 ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__loggerFxn1;
__extern __FAR__ const CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__loggerFxn1 ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__loggerFxn2;
__extern __FAR__ const CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__loggerFxn2 ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__loggerFxn4;
__extern __FAR__ const CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__loggerFxn4 ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__loggerFxn8;
__extern __FAR__ const CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__loggerFxn8 ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__startupDoneFxn)(void);
__extern __FAR__ const CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__startupDoneFxn ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__count;
__extern __FAR__ const CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__count ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__heap;
__extern __FAR__ const CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__heap ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__sizeof;
__extern __FAR__ const CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__sizeof ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__table;
__extern __FAR__ const CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__table ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__table__C;


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2* __sysp;
    xdc_Void (*intEnable)(xdc_UInt16, ti_sdo_ipc_notifyDrivers_IInterrupt_IntInfo*);
    xdc_Void (*intDisable)(xdc_UInt16, ti_sdo_ipc_notifyDrivers_IInterrupt_IntInfo*);
    xdc_Void (*intRegister)(xdc_UInt16, ti_sdo_ipc_notifyDrivers_IInterrupt_IntInfo*, xdc_Fxn, xdc_UArg);
    xdc_Void (*intUnregister)(xdc_UInt16, ti_sdo_ipc_notifyDrivers_IInterrupt_IntInfo*);
    xdc_Void (*intSend)(xdc_UInt16, ti_sdo_ipc_notifyDrivers_IInterrupt_IntInfo*, xdc_UArg);
    xdc_Void (*intPost)(xdc_UInt16, ti_sdo_ipc_notifyDrivers_IInterrupt_IntInfo*, xdc_UArg);
    xdc_UInt (*intClear)(xdc_UInt16, ti_sdo_ipc_notifyDrivers_IInterrupt_IntInfo*);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Module__FXNS__C */
__extern const ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Fxns__ ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__FXNS__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */
#define ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module_startup( state ) (-1)

/* Handle__label__S */
xdc__CODESECT(ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Handle__label__S, "ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Handle__label__S")
__extern xdc_runtime_Types_Label *ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */
xdc__CODESECT(ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__startupDone__S, "ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__startupDone__S")
__extern xdc_Bool ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__startupDone__S( void );

/* Object__create__S */
xdc__CODESECT(ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__create__S, "ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__create__S")
__extern xdc_Ptr ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* Object__delete__S */
xdc__CODESECT(ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__delete__S, "ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__delete__S")
__extern xdc_Void ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__delete__S( xdc_Ptr instp );

/* Object__destruct__S */
xdc__CODESECT(ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__destruct__S, "ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__destruct__S")
__extern xdc_Void ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__destruct__S( xdc_Ptr objp );

/* Object__get__S */
xdc__CODESECT(ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__get__S, "ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__get__S")
__extern xdc_Ptr ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */
xdc__CODESECT(ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__first__S, "ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__first__S")
__extern xdc_Ptr ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__first__S( void );

/* Object__next__S */
xdc__CODESECT(ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__next__S, "ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__next__S")
__extern xdc_Ptr ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__next__S( xdc_Ptr obj );

/* Params__init__S */
xdc__CODESECT(ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Params__init__S, "ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Params__init__S")
__extern xdc_Void ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Params__init__S( xdc_Ptr dst, const xdc_Void *src, xdc_SizeT psz, xdc_SizeT isz );

/* Proxy__abstract__S */
xdc__CODESECT(ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Proxy__abstract__S, "ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Proxy__abstract__S")
__extern xdc_Bool ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Proxy__abstract__S( void );

/* Proxy__delegate__S */
xdc__CODESECT(ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Proxy__delegate__S, "ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Proxy__delegate__S")
__extern xdc_Ptr ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Proxy__delegate__S( void );

/* intEnable__E */
#define ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intEnable ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intEnable__E
xdc__CODESECT(ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intEnable__E, "ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intEnable")
__extern xdc_Void ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intEnable__E( xdc_UInt16 remoteProcId, ti_sdo_ipc_notifyDrivers_IInterrupt_IntInfo *intInfo );

/* intDisable__E */
#define ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intDisable ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intDisable__E
xdc__CODESECT(ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intDisable__E, "ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intDisable")
__extern xdc_Void ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intDisable__E( xdc_UInt16 remoteProcId, ti_sdo_ipc_notifyDrivers_IInterrupt_IntInfo *intInfo );

/* intRegister__E */
#define ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intRegister ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intRegister__E
xdc__CODESECT(ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intRegister__E, "ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intRegister")
__extern xdc_Void ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intRegister__E( xdc_UInt16 remoteProcId, ti_sdo_ipc_notifyDrivers_IInterrupt_IntInfo *intInfo, xdc_Fxn func, xdc_UArg arg );

/* intUnregister__E */
#define ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intUnregister ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intUnregister__E
xdc__CODESECT(ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intUnregister__E, "ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intUnregister")
__extern xdc_Void ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intUnregister__E( xdc_UInt16 remoteProcId, ti_sdo_ipc_notifyDrivers_IInterrupt_IntInfo *intInfo );

/* intSend__E */
#define ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intSend ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intSend__E
xdc__CODESECT(ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intSend__E, "ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intSend")
__extern xdc_Void ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intSend__E( xdc_UInt16 remoteProcId, ti_sdo_ipc_notifyDrivers_IInterrupt_IntInfo *intInfo, xdc_UArg arg );

/* intPost__E */
#define ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intPost ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intPost__E
xdc__CODESECT(ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intPost__E, "ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intPost")
__extern xdc_Void ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intPost__E( xdc_UInt16 srcProcId, ti_sdo_ipc_notifyDrivers_IInterrupt_IntInfo *intInfo, xdc_UArg arg );

/* intClear__E */
#define ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intClear ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intClear__E
xdc__CODESECT(ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intClear__E, "ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intClear")
__extern xdc_UInt ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intClear__E( xdc_UInt16 remoteProcId, ti_sdo_ipc_notifyDrivers_IInterrupt_IntInfo *intInfo );


/*
 * ======== CONVERTORS ========
 */

/* Module_upCast */
static inline ti_sdo_ipc_notifyDrivers_IInterrupt_Module ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module_upCast( void )
{
    return (ti_sdo_ipc_notifyDrivers_IInterrupt_Module)ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Proxy__delegate__S();
}

/* Module_to_ti_sdo_ipc_notifyDrivers_IInterrupt */
#define ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module_to_ti_sdo_ipc_notifyDrivers_IInterrupt ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module_upCast


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */
#define ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module_startupDone() ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__startupDone__S()

/* Object_heap */
#define ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object_heap() ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__heap__C

/* Module_heap */
#define ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module_heap() ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object__heap__C

/* Module_id */
static inline CT__ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__id ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module_id( void ) 
{
    return ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module__id__C;
}

/* Proxy_abstract */
#define ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Proxy_abstract() ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Proxy__abstract__S()

/* Proxy_delegate */
#define ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Proxy_delegate() ((ti_sdo_ipc_notifyDrivers_IInterrupt_Module)ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Proxy__delegate__S())


/*
 * ======== EPILOGUE ========
 */

#ifdef ti_ipc_family_tci6638_VirtQueue_InterruptProxy__top__
#undef __nested__
#endif

#endif /* ti_ipc_family_tci6638_VirtQueue_InterruptProxy__include */


/*
 * ======== PREFIX ALIASES ========
 */

#if !defined(__nested__) && !defined(ti_ipc_family_tci6638_VirtQueue_InterruptProxy__nolocalnames)

#ifndef ti_ipc_family_tci6638_VirtQueue_InterruptProxy__localnames__done
#define ti_ipc_family_tci6638_VirtQueue_InterruptProxy__localnames__done

/* module prefix */
#define VirtQueue_InterruptProxy_IntInfo ti_ipc_family_tci6638_VirtQueue_InterruptProxy_IntInfo
#define VirtQueue_InterruptProxy_intEnable ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intEnable
#define VirtQueue_InterruptProxy_intDisable ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intDisable
#define VirtQueue_InterruptProxy_intRegister ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intRegister
#define VirtQueue_InterruptProxy_intUnregister ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intUnregister
#define VirtQueue_InterruptProxy_intSend ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intSend
#define VirtQueue_InterruptProxy_intPost ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intPost
#define VirtQueue_InterruptProxy_intClear ti_ipc_family_tci6638_VirtQueue_InterruptProxy_intClear
#define VirtQueue_InterruptProxy_Module_name ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module_name
#define VirtQueue_InterruptProxy_Module_id ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module_id
#define VirtQueue_InterruptProxy_Module_startup ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module_startup
#define VirtQueue_InterruptProxy_Module_startupDone ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module_startupDone
#define VirtQueue_InterruptProxy_Module_hasMask ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module_hasMask
#define VirtQueue_InterruptProxy_Module_getMask ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module_getMask
#define VirtQueue_InterruptProxy_Module_setMask ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module_setMask
#define VirtQueue_InterruptProxy_Object_heap ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Object_heap
#define VirtQueue_InterruptProxy_Module_heap ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module_heap
#define VirtQueue_InterruptProxy_Proxy_abstract ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Proxy_abstract
#define VirtQueue_InterruptProxy_Proxy_delegate ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Proxy_delegate
#define VirtQueue_InterruptProxy_Module_upCast ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module_upCast
#define VirtQueue_InterruptProxy_Module_to_ti_sdo_ipc_notifyDrivers_IInterrupt ti_ipc_family_tci6638_VirtQueue_InterruptProxy_Module_to_ti_sdo_ipc_notifyDrivers_IInterrupt

#endif /* ti_ipc_family_tci6638_VirtQueue_InterruptProxy__localnames__done */
#endif
