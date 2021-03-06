/* mpfr_log1p -- Compute log(1+x)

Copyright 2001, 2002, 2003, 2004, 2005 Free Software Foundation, Inc.

This file is part of the MPFR Library.

The MPFR Library is free software; you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation; either version 2.1 of the License, or (at your
option) any later version.

The MPFR Library is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public
License for more details.

You should have received a copy of the GNU Lesser General Public License
along with the MPFR Library; see the file COPYING.LIB.  If not, write to
the Free Software Foundation, Inc., 51 Franklin Place, Fifth Floor, Boston,
MA 02110-1301, USA. */

#define MPFR_NEED_LONGLONG_H
#include "mpfr-impl.h"

 /* The computation of log1p is done by
    log1p(x)=log(1+x)                      */

int
mpfr_log1p (mpfr_ptr y, mpfr_srcptr x, mp_rnd_t rnd_mode)
{
  int comp, inexact;
  MPFR_SAVE_EXPO_DECL (expo);

  if (MPFR_UNLIKELY (MPFR_IS_SINGULAR (x)))
    {
      if (MPFR_IS_NAN (x))
        {
          MPFR_SET_NAN (y);
          MPFR_RET_NAN;
        }
      /* check for inf or -inf (result is not defined) */
      else if (MPFR_IS_INF (x))
        {
          if (MPFR_IS_POS (x))
            {
              MPFR_SET_INF (y);
              MPFR_SET_POS (y);
              MPFR_RET (0);
            }
          else
            {
              MPFR_SET_NAN (y);
              MPFR_RET_NAN;
            }
        }
      else /* x is zero */
        {
          MPFR_ASSERTD (MPFR_IS_ZERO (x));
          MPFR_SET_ZERO (y);   /* log1p(+/- 0) = +/- 0 */
          MPFR_SET_SAME_SIGN (y, x);
          MPFR_RET (0);
        }
    }

  /* log(1+x) = x-x^2/2 + ... so the error is < 2^(2*EXP(x)-1) */
  MPFR_FAST_COMPUTE_IF_SMALL_INPUT (y, x, -MPFR_GET_EXP (x)+1,0,rnd_mode,);

  comp = mpfr_cmp_si (x, -1);
  /* log1p(x) is undefined for x < -1 */
  if (MPFR_UNLIKELY(comp <= 0))
    {
      if (comp == 0)
        /* x=0: log1p(-1)=-inf (division by zero) */
        {
          MPFR_SET_INF (y);
          MPFR_SET_NEG (y);
          MPFR_RET (0);
        }
      MPFR_SET_NAN (y);
      MPFR_RET_NAN;
    }

  MPFR_SAVE_EXPO_MARK (expo);

  /* General case */
  {
    /* Declaration of the intermediary variable */
    mpfr_t t;
    /* Declaration of the size variable */
    mp_prec_t Ny = MPFR_PREC(y);             /* target precision */
    mp_prec_t Nt;                            /* working precision */
    mp_exp_t err;                            /* error */
    MPFR_ZIV_DECL (loop);

    /* compute the precision of intermediary variable */
    /* the optimal number of bits : see algorithms.tex */
    Nt = Ny + MPFR_INT_CEIL_LOG2 (Ny) + 6;

    /* if |x| is smaller than 2^(-e), we will loose about e bits
       in log(1+x) */
    if (MPFR_EXP(x) < 0)
      Nt += -MPFR_EXP(x);

    /* initialise of intermediary variable */
    mpfr_init2 (t, Nt);

    /* First computation of cosh */
    MPFR_ZIV_INIT (loop, Nt);
    for (;;)
      {
        /* compute log1p */
        mpfr_add_ui (t, x, 1, GMP_RNDN);      /* 1+x */
        mpfr_log (t, t, GMP_RNDN);        /* log(1+x)*/

        /* estimation of the error */
        /*err=Nt-(__gmpfr_ceil_log2(1+pow(2,1-MPFR_GET_EXP(t))));*/
        err = Nt - (MAX (1 - MPFR_GET_EXP (t), 0) + 1);

        if (MPFR_LIKELY (MPFR_CAN_ROUND (t, err, Ny, rnd_mode)))
          break;

        /* increase the precision */
        MPFR_ZIV_NEXT (loop, Nt);
        mpfr_set_prec (t, Nt);
      }
    MPFR_ZIV_FREE (loop);
    inexact = mpfr_set (y, t, rnd_mode);

    mpfr_clear (t);
  }

  MPFR_SAVE_EXPO_FREE (expo);
  return mpfr_check_range (y, inexact, rnd_mode);
}
