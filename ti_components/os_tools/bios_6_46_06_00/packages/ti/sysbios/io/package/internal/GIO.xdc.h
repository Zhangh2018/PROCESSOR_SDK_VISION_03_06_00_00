/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-A71
 */

#ifndef ti_sysbios_io_GIO__INTERNAL__
#define ti_sysbios_io_GIO__INTERNAL__

#ifndef ti_sysbios_io_GIO__internalaccess
#define ti_sysbios_io_GIO__internalaccess
#endif

#include <ti/sysbios/io/GIO.h>

#undef xdc_FILE__
#ifndef xdc_FILE
#define xdc_FILE__ NULL
#else
#define xdc_FILE__ xdc_FILE
#endif

/* addDevice */
#undef ti_sysbios_io_GIO_addDevice
#define ti_sysbios_io_GIO_addDevice ti_sysbios_io_GIO_addDevice__E

/* removeDevice */
#undef ti_sysbios_io_GIO_removeDevice
#define ti_sysbios_io_GIO_removeDevice ti_sysbios_io_GIO_removeDevice__E

/* abort */
#undef ti_sysbios_io_GIO_abort
#define ti_sysbios_io_GIO_abort ti_sysbios_io_GIO_abort__E

/* control */
#undef ti_sysbios_io_GIO_control
#define ti_sysbios_io_GIO_control ti_sysbios_io_GIO_control__E

/* flush */
#undef ti_sysbios_io_GIO_flush
#define ti_sysbios_io_GIO_flush ti_sysbios_io_GIO_flush__E

/* issue */
#undef ti_sysbios_io_GIO_issue
#define ti_sysbios_io_GIO_issue ti_sysbios_io_GIO_issue__E

/* reclaim */
#undef ti_sysbios_io_GIO_reclaim
#define ti_sysbios_io_GIO_reclaim ti_sysbios_io_GIO_reclaim__E

/* read */
#undef ti_sysbios_io_GIO_read
#define ti_sysbios_io_GIO_read ti_sysbios_io_GIO_read__E

/* write */
#undef ti_sysbios_io_GIO_write
#define ti_sysbios_io_GIO_write ti_sysbios_io_GIO_write__E

/* submit */
#undef ti_sysbios_io_GIO_submit
#define ti_sysbios_io_GIO_submit ti_sysbios_io_GIO_submit__E

/* prime */
#undef ti_sysbios_io_GIO_prime
#define ti_sysbios_io_GIO_prime ti_sysbios_io_GIO_prime__E

/* Module_startup */
#undef ti_sysbios_io_GIO_Module_startup
#define ti_sysbios_io_GIO_Module_startup ti_sysbios_io_GIO_Module_startup__E

/* Instance_init */
#undef ti_sysbios_io_GIO_Instance_init
#define ti_sysbios_io_GIO_Instance_init ti_sysbios_io_GIO_Instance_init__E

/* Instance_finalize */
#undef ti_sysbios_io_GIO_Instance_finalize
#define ti_sysbios_io_GIO_Instance_finalize ti_sysbios_io_GIO_Instance_finalize__E

/* per-module runtime symbols */
#undef Module__MID
#define Module__MID ti_sysbios_io_GIO_Module__id__C
#undef Module__DGSINCL
#define Module__DGSINCL ti_sysbios_io_GIO_Module__diagsIncluded__C
#undef Module__DGSENAB
#define Module__DGSENAB ti_sysbios_io_GIO_Module__diagsEnabled__C
#undef Module__DGSMASK
#define Module__DGSMASK ti_sysbios_io_GIO_Module__diagsMask__C
#undef Module__LOGDEF
#define Module__LOGDEF ti_sysbios_io_GIO_Module__loggerDefined__C
#undef Module__LOGOBJ
#define Module__LOGOBJ ti_sysbios_io_GIO_Module__loggerObj__C
#undef Module__LOGFXN0
#define Module__LOGFXN0 ti_sysbios_io_GIO_Module__loggerFxn0__C
#undef Module__LOGFXN1
#define Module__LOGFXN1 ti_sysbios_io_GIO_Module__loggerFxn1__C
#undef Module__LOGFXN2
#define Module__LOGFXN2 ti_sysbios_io_GIO_Module__loggerFxn2__C
#undef Module__LOGFXN4
#define Module__LOGFXN4 ti_sysbios_io_GIO_Module__loggerFxn4__C
#undef Module__LOGFXN8
#define Module__LOGFXN8 ti_sysbios_io_GIO_Module__loggerFxn8__C
#undef Module__G_OBJ
#define Module__G_OBJ ti_sysbios_io_GIO_Module__gateObj__C
#undef Module__G_PRMS
#define Module__G_PRMS ti_sysbios_io_GIO_Module__gatePrms__C
#undef Module__GP_create
#define Module__GP_create ti_sysbios_io_GIO_Module_GateProxy_create
#undef Module__GP_delete
#define Module__GP_delete ti_sysbios_io_GIO_Module_GateProxy_delete
#undef Module__GP_enter
#define Module__GP_enter ti_sysbios_io_GIO_Module_GateProxy_enter
#undef Module__GP_leave
#define Module__GP_leave ti_sysbios_io_GIO_Module_GateProxy_leave
#undef Module__GP_query
#define Module__GP_query ti_sysbios_io_GIO_Module_GateProxy_query

/* Object__sizingError */
#line 1 "Error_inconsistent_object_size_in_ti.sysbios.io.GIO"
typedef char ti_sysbios_io_GIO_Object__sizingError[sizeof(ti_sysbios_io_GIO_Object) > sizeof(ti_sysbios_io_GIO_Struct) ? -1 : 1];


#endif /* ti_sysbios_io_GIO__INTERNAL____ */
