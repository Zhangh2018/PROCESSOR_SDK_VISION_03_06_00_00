/*
*
* Copyright (c) 2017 Texas Instruments Incorporated
*
* All rights reserved not granted herein.
*
* Limited License.
*
* Texas Instruments Incorporated grants a world-wide, royalty-free, non-exclusive
* license under copyrights and patents it now or hereafter owns or controls to make,
* have made, use, import, offer to sell and sell ("Utilize") this software subject to the
* terms herein.  With respect to the foregoing patent license, such license is granted
* solely to the extent that any such patent is necessary to Utilize the software alone.
* The patent license shall not apply to any combinations which include this software,
* other than combinations with devices manufactured by or for TI ("TI Devices").
* No hardware patent is licensed hereunder.
*
* Redistributions must preserve existing copyright notices and reproduce this license
* (including the above copyright notice and the disclaimer and (if applicable) source
* code license limitations below) in the documentation and/or other materials provided
* with the distribution
*
* Redistribution and use in binary form, without modification, are permitted provided
* that the following conditions are met:
*
* *       No reverse engineering, decompilation, or disassembly of this software is
* permitted with respect to any software provided in binary form.
*
* *       any redistribution and use are licensed by TI for use only with TI Devices.
*
* *       Nothing shall obligate TI to provide you with source code for the software
* licensed and provided to you in object code.
*
* If software source code is provided to you, modification and redistribution of the
* source code are permitted provided that the following conditions are met:
*
* *       any redistribution and use of the source code, including any resulting derivative
* works, are licensed by TI for use only with TI Devices.
*
* *       any redistribution and use of any object code compiled from the source code
* and any resulting derivative works, are licensed by TI for use only with TI Devices.
*
* Neither the name of Texas Instruments Incorporated nor the names of its suppliers
*
* may be used to endorse or promote products derived from this software without
* specific prior written permission.
*
* DISCLAIMER.
*
* THIS SOFTWARE IS PROVIDED BY TI AND TI'S LICENSORS "AS IS" AND ANY EXPRESS
* OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
* OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
* IN NO EVENT SHALL TI AND TI'S LICENSORS BE LIABLE FOR ANY DIRECT, INDIRECT,
* INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
* BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
* DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
* OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
* OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
* OF THE POSSIBILITY OF SUCH DAMAGE.
*
*/



#include <TI/tivx.h>
#include <VX/vx.h>
#include <tivx_openvx_core_kernels.h>
#include <tivx_target_kernels_priv.h>
#include <tivx_kernel_phase.h>
#include <TI/tivx_target_kernel.h>
#include <ti/vxlib/vxlib.h>
#include <tivx_kernels_target_utils.h>

static tivx_target_kernel vx_phase_target_kernel = NULL;

static vx_status VX_CALLBACK tivxKernelPhaseProcess(
    tivx_target_kernel_instance kernel, tivx_obj_desc_t *obj_desc[],
    uint16_t num_params, void *priv_arg)
{
    vx_status status = VX_SUCCESS;
    uint32_t i;
    tivx_obj_desc_image_t *src0, *src1, *dst;
    vx_uint8 *dst_addr;
    vx_int16 *src0_addr, *src1_addr;
    VXLIB_bufParams2D_t vxlib_src0, vxlib_src1, vxlib_dst;

    if (num_params != TIVX_KERNEL_PHASE_MAX_PARAMS)
    {
        status = VX_FAILURE;
    }
    else
    {
        for (i = 0U; i < TIVX_KERNEL_PHASE_MAX_PARAMS; i ++)
        {
            if (NULL == obj_desc[i])
            {
                status = VX_FAILURE;
                break;
            }
        }
    }

    if (VX_SUCCESS == status)
    {
        void *src0_target_ptr;
        void *src1_target_ptr;
        void *dst_target_ptr;

        src0 = (tivx_obj_desc_image_t *)obj_desc[TIVX_KERNEL_PHASE_IN0_IMG_IDX];
        src1 = (tivx_obj_desc_image_t *)obj_desc[TIVX_KERNEL_PHASE_IN1_IMG_IDX];
        dst = (tivx_obj_desc_image_t *)obj_desc[TIVX_KERNEL_PHASE_OUT_IMG_IDX];

        src0_target_ptr = tivxMemShared2TargetPtr(
            src0->mem_ptr[0].shared_ptr, src0->mem_ptr[0].mem_heap_region);
        src1_target_ptr = tivxMemShared2TargetPtr(
            src1->mem_ptr[0].shared_ptr, src1->mem_ptr[0].mem_heap_region);
        dst_target_ptr = tivxMemShared2TargetPtr(
            dst->mem_ptr[0].shared_ptr, dst->mem_ptr[0].mem_heap_region);

        tivxMemBufferMap(src0_target_ptr, src0->mem_size[0],
            VX_MEMORY_TYPE_HOST, VX_READ_ONLY);
        tivxMemBufferMap(src1_target_ptr, src1->mem_size[0],
            VX_MEMORY_TYPE_HOST, VX_READ_ONLY);
        tivxMemBufferMap(dst_target_ptr, dst->mem_size[0],
            VX_MEMORY_TYPE_HOST, VX_WRITE_ONLY);

        tivxSetTwoPointerLocation(src0, src1, &src0_target_ptr, &src1_target_ptr, (uint8_t**)&src0_addr, (uint8_t**)&src1_addr);
        tivxSetPointerLocation(dst, &dst_target_ptr, &dst_addr);

        tivxInitTwoBufParams(src0, src1, &vxlib_src0, &vxlib_src1);
        tivxInitBufParams(dst, &vxlib_dst);

        status = VXLIB_phase_i16s_i16s_o8u(src0_addr, &vxlib_src0,
            src1_addr, &vxlib_src1, dst_addr, &vxlib_dst);

        if (status != VXLIB_SUCCESS)
        {
            status = VX_FAILURE;
        }

        tivxMemBufferUnmap(src0_target_ptr, src0->mem_size[0],
            VX_MEMORY_TYPE_HOST, VX_READ_ONLY);
        tivxMemBufferUnmap(src1_target_ptr, src1->mem_size[0],
            VX_MEMORY_TYPE_HOST, VX_READ_ONLY);
        tivxMemBufferUnmap(dst_target_ptr, dst->mem_size[0],
            VX_MEMORY_TYPE_HOST, VX_WRITE_ONLY);
    }

    return (status);
}

static vx_status VX_CALLBACK tivxKernelPhaseCreate(
    tivx_target_kernel_instance kernel, tivx_obj_desc_t *obj_desc[],
    uint16_t num_params, void *priv_arg)
{
    return (VX_SUCCESS);
}

static vx_status VX_CALLBACK tivxKernelPhaseDelete(
    tivx_target_kernel_instance kernel, tivx_obj_desc_t *obj_desc[],
    uint16_t num_params, void *priv_arg)
{
    return (VX_SUCCESS);
}

static vx_status VX_CALLBACK tivxKernelPhaseControl(
    tivx_target_kernel_instance kernel, tivx_obj_desc_t *obj_desc[],
    uint16_t num_params, void *priv_arg)
{
    return (VX_SUCCESS);
}

void tivxAddTargetKernelPhase(void)
{
    char target_name[TIVX_TARGET_MAX_NAME];
    vx_enum self_cpu;

    self_cpu = tivxGetSelfCpuId();

    if ((self_cpu == TIVX_CPU_ID_DSP1) || (self_cpu == TIVX_CPU_ID_DSP2))
    {
        if (self_cpu == TIVX_CPU_ID_DSP1)
        {
            strncpy(target_name, TIVX_TARGET_DSP1,
                TIVX_TARGET_MAX_NAME);
        }
        else
        {
            strncpy(target_name, TIVX_TARGET_DSP2,
                TIVX_TARGET_MAX_NAME);
        }

        vx_phase_target_kernel = tivxAddTargetKernel(
            VX_KERNEL_PHASE,
            target_name,
            tivxKernelPhaseProcess,
            tivxKernelPhaseCreate,
            tivxKernelPhaseDelete,
            tivxKernelPhaseControl,
            NULL);
    }
}


void tivxRemoveTargetKernelPhase(void)
{
    tivxRemoveTargetKernel(vx_phase_target_kernel);
}
