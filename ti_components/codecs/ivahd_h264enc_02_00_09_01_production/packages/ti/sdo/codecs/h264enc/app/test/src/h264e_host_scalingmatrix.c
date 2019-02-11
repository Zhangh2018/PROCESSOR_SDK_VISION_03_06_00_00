/* ========================================================================= */
/*            Copyright (C) 2008 Texas Instruments, Incorporated.            */
/*                           All Rights Reserved.                            */
/*  Exclusive property of the DSPS R&D Center, Texas Instruments Inc. Any    */
/*   handling, use, disclosure, reproduction, duplication, transmission, or   */
/*   storage of any part of this work by any means is subject to restrictions */
/*  and prior written permission set forth in TI's program license agreements*/
/*  and associated software documentation.                                   */
/*                                       */
/*  This copyright notice, restricted rights legend, or other proprietary    */
/*  markings must be reproduced without modification in any authorized       */
/*  copies of any part of this work.  Removal or modification of any part    */
/*  of this notice is prohibited.                                            */
/*                                       */
/*  =========================================================================*/

/*!  
 *****************************************************************************
 * \file                                     
 *  h264e_host_scalingmatrix.c
 *                                       
 * \brief                                   
 *   Scaling matrix test file
 *  
 * \version 0.1
 * \version 0.2  Added changes to include size of the message
 *               [Rama Mohana Reddy]
 *
 * \date Jan 2009
 *
 * \author                                     
 *  MMCodecs TI India
 *****************************************************************************
 */

 
#pragma DATA_SECTION(h264e_host_scalingMatrix, ".h264e_host_scalingMatrix");
const short h264e_host_scalingMatrix[448] = 
{
      /* Size of the scaling matrics */
      /*    0x0380,0x0000, */
      
      /* INTRA */
        /* Y */
        /* {                                                                  */
          /* [INV] */
          0x0010, 0x0010, 0x0010, 0x0010,
          0x0010, 0x0010, 0x0010, 0x0010,
          0x0010, 0x0010, 0x0010, 0x0010,
          0x0010, 0x0010, 0x0010, 0x0010,
        /* },                                                                 */
        /* {                                                                  */
          /* [FWD] */
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
        /* },                                                                 */

        /* CB*/
        /* {                                                                  */
          /* [INV] */
          0x0010, 0x0010, 0x0010, 0x0010 ,
          0x0010, 0x0010, 0x0010, 0x0010 ,
          0x0010, 0x0010, 0x0010, 0x0010 ,
          0x0010, 0x0010, 0x0010, 0x0010 ,
        /* },                                                                 */
        /* {                                                                  */
           /* [FWD] */
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
        /* },                                                                 */

        /* CR */
        /* {                                                                  */
          /* [INV] */
          0x0010, 0x0010, 0x0010, 0x0010 ,
          0x0010, 0x0010, 0x0010, 0x0010 ,
          0x0010, 0x0010, 0x0010, 0x0010 ,
          0x0010, 0x0010, 0x0010, 0x0010 ,
        /* },                                                                 */
        /* {                                                                  */
           /* [FWD] */
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
        /* },                                                                 */

      /* INTER */
        /* Y */
        /* {                                                                  */
          /* [INV] */
          0x0010, 0x0010, 0x0010, 0x0010 ,
          0x0010, 0x0010, 0x0010, 0x0010 ,
          0x0010, 0x0010, 0x0010, 0x0010 ,
          0x0010, 0x0010, 0x0010, 0x0010 ,
        /* },                                                                 */
        /* {                                                                  */
          /* [FWD] */
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
        /* },                                                                 */

        /* CB*/
        /* {                                                                  */
          /* [INV] */
          0x0010, 0x0010, 0x0010, 0x0010 ,
          0x0010, 0x0010, 0x0010, 0x0010 ,
          0x0010, 0x0010, 0x0010, 0x0010 ,
          0x0010, 0x0010, 0x0010, 0x0010 ,
        /* },                                                                 */
        /* {                                                                  */
          /* [FWD] */
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
        /* },                                                                 */

        /* CR */
        /* {                                                                  */
          /* [INV] */
          0x0010, 0x0010, 0x0010, 0x0010 ,
          0x0010, 0x0010, 0x0010, 0x0010 ,
          0x0010, 0x0010, 0x0010, 0x0010 ,
          0x0010, 0x0010, 0x0010, 0x0010 ,
        /* },                                                                 */
        /* {                                                                  */
          /* [FWD] */
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
          (0x40000 + 0x0010/2)/0x0010, (0x40000 + 0x0010/2)/0x0010,            \
        /* },                                                                 */

  /* 8x8 */
   /* Intra */
   /* Inv */
      /* {                                                                    */
       0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010,   \
       0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010,   \
       0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010,   \
       0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010,   \
       0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010,   \
       0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010,   \
       0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010,   \
       0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010,   \
      /* },                                                                   */
   /* Fwd */
      /* {                                                                    */
       0x4000,  0x4000, 0x4000,  0x4000  , 0x4000,  0x4000  , 0x4000,  0x4000, \
       0x4000,  0x4000, 0x4000,  0x4000  , 0x4000,  0x4000  , 0x4000,  0x4000, \
       0x4000,  0x4000, 0x4000,  0x4000  , 0x4000,  0x4000  , 0x4000,  0x4000, \
       0x4000,  0x4000, 0x4000,  0x4000  , 0x4000,  0x4000  , 0x4000,  0x4000, \
       0x4000,  0x4000, 0x4000,  0x4000  , 0x4000,  0x4000  , 0x4000,  0x4000, \
       0x4000,  0x4000, 0x4000,  0x4000  , 0x4000,  0x4000  , 0x4000,  0x4000, \
       0x4000,  0x4000, 0x4000,  0x4000  , 0x4000,  0x4000  , 0x4000,  0x4000, \
       0x4000,  0x4000, 0x4000,  0x4000  , 0x4000,  0x4000  , 0x4000,  0x4000, \
      /* },                                                                   */

   /* Inter */
   /* Inv */
      /* {                                                                    */
       0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010,   \
       0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010,   \
       0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010,   \
       0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010,   \
       0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010,   \
       0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010,   \
       0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010,   \
       0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010  , 0x0010, 0x0010,   \
      /* },                                                                   */
   /* Fwd */
      /* {                                                                    */
       0x4000,  0x4000, 0x4000,  0x4000  , 0x4000,  0x4000  , 0x4000,  0x4000, \
       0x4000,  0x4000, 0x4000,  0x4000  , 0x4000,  0x4000  , 0x4000,  0x4000, \
       0x4000,  0x4000, 0x4000,  0x4000  , 0x4000,  0x4000  , 0x4000,  0x4000, \
       0x4000,  0x4000, 0x4000,  0x4000  , 0x4000,  0x4000  , 0x4000,  0x4000, \
       0x4000,  0x4000, 0x4000,  0x4000  , 0x4000,  0x4000  , 0x4000,  0x4000, \
       0x4000,  0x4000, 0x4000,  0x4000  , 0x4000,  0x4000  , 0x4000,  0x4000, \
       0x4000,  0x4000, 0x4000,  0x4000  , 0x4000,  0x4000  , 0x4000,  0x4000, \
       0x4000,  0x4000, 0x4000,  0x4000  , 0x4000,  0x4000  , 0x4000,  0x4000  \
      /* },                                                                   */
};