/*
 * Copyright (c) 2015-2015 Texas Instruments Incorporated
 *
 * k_sinf.c -- float version of k_sin.c
 * Conversion to float by Ian Lance Taylor, Cygnus Support, ian@cygnus.com.
 * Optimized by Bruce D. Evans.
 */

/*
 * ====================================================
 * Copyright (C) 1993 by Sun Microsystems, Inc. All rights reserved.
 *
 * Developed at SunPro, a Sun Microsystems, Inc. business.
 * Permission to use, copy, modify, and distribute this
 * software is freely granted, provided that this notice
 * is preserved.
 * ====================================================
 */

#include "math.h"
#include "math_private.h"

/* |sin(x)/x - s(x)| < 2**-37.5 (~[-4.89e-12, 4.824e-12]). */
_DATA_ACCESS static const long double
S1 = -0x15555554cbac77.0p-55L,	/* -0.166666666416265235595 */
S2 =  0x111110896efbb2.0p-59L,	/*  0.0083333293858894631756 */
S3 = -0x1a00f9e2cae774.0p-65L,	/* -0.000198393348360966317347 */
S4 =  0x16cd878c3b46a7.0p-71L;	/*  0.0000027183114939898219064 */

#ifdef INLINE_KERNEL_SINDF
_CODE_ACCESS static __inline
#endif
float
__kernel_sindf(long double x)
{
	long double r, s, w, z;

	/* Try to optimize for parallel evaluation as in k_tanf.c. */
	z = x*x;
	w = z*z;
	r = S3+z*S4;
	s = z*x;
	return (x + s*(S1+z*S2)) + s*w*r;
}
