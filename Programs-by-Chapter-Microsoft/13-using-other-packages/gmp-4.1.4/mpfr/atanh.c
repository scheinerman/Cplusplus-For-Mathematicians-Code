/* mpfr_atanh -- Inverse Hyperbolic Tangente

Copyright 2001, 2002, 2003, 2004, 2005 Free Software Foundation.

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

 /* The computation of atanh is done by
       atanh= 1/2*ln(x+1)-1/2*ln(1-x)   */

int
mpfr_atanh (mpfr_ptr y, mpfr_srcptr xt , mp_rnd_t rnd_mode)
{
  int inexact;
  mpfr_t x, t, te;
  mp_prec_t Nx, Ny, Nt;
  mp_exp_t err;
  MPFR_ZIV_DECL (loop);
  MPFR_SAVE_EXPO_DECL (expo);

  MPFR_LOG_FUNC (("x[%#R]=%R rnd=%d", xt, xt, rnd_mode),
                 ("y[%#R]=%R inexact=%d", y, y, inexact));

  /* Special cases */
  if (MPFR_UNLIKELY (MPFR_IS_SINGULAR (xt)))
    {
      /* atanh(NaN) = NaN, and atanh(+/-Inf) = NaN since tanh gives a result
         between -1 and 1 */
      if (MPFR_IS_NAN (xt) || MPFR_IS_INF (xt))
        {
          MPFR_SET_NAN (y);
          MPFR_RET_NAN;
        }
      else /* necessarily xt is 0 */
        {
          MPFR_ASSERTD (MPFR_IS_ZERO (xt));
          MPFR_SET_ZERO (y);   /* atanh(0) = 0 */
          MPFR_SET_SAME_SIGN (y,xt);
          MPFR_RET (0);
        }
    }

  /* atanh (x) = NaN as soon as |x| > 1, and arctanh(+/-1) = +/-Inf */
  if (MPFR_UNLIKELY (MPFR_EXP (xt) > 0))
    {
      if (MPFR_EXP (xt) == 1 && mpfr_powerof2_raw (xt))
        {
          MPFR_SET_INF (y);
          MPFR_SET_SAME_SIGN (y, xt);
          MPFR_RET (0);
        }
      MPFR_SET_NAN (y);
      MPFR_RET_NAN;
    }

  /* atanh(x) = x + x^3/3 + ... so the error is < 2^(3*EXP(x)-1) */
  MPFR_FAST_COMPUTE_IF_SMALL_INPUT (y, xt, -2*MPFR_GET_EXP (xt)+1,1,rnd_mode,);

  MPFR_SAVE_EXPO_MARK (expo);

  /* Compute initial precision */
  Nx = MPFR_PREC (xt);
  MPFR_TMP_INIT_ABS (x, xt);
  Ny = MPFR_PREC (y);
  Nt = MAX (Nx, Ny);
  /* the optimal number of bits : see algorithms.ps */
  Nt = Nt + MPFR_INT_CEIL_LOG2 (Nt) + 4;

  /* initialise of intermediary variable */
  mpfr_init2 (t, Nt);
  mpfr_init2 (te, Nt);

  /* First computation of cosh */
  MPFR_ZIV_INIT (loop, Nt);
  for (;;)
    {
      /* compute atanh */
      mpfr_ui_sub (te, 1, x, GMP_RNDU);   /* (1-xt)*/
      mpfr_add_ui (t,  x, 1, GMP_RNDD);   /* (xt+1)*/
      mpfr_div (t, t, te, GMP_RNDN);      /* (1+xt)/(1-xt)*/
      mpfr_log (t, t, GMP_RNDN);          /* ln((1+xt)/(1-xt))*/
      mpfr_div_2ui (t, t, 1, GMP_RNDN);   /* (1/2)*ln((1+xt)/(1-xt))*/

      /* error estimate see- algorithms.ps*/
      /* err=Nt-__gmpfr_ceil_log2(1+5*pow(2,1-MPFR_EXP(t)));*/
      err = Nt - (MAX (4 - MPFR_GET_EXP (t), 0) + 1);

      if (MPFR_LIKELY (MPFR_IS_ZERO (t)
                       || MPFR_CAN_ROUND (t, err, Ny, rnd_mode)))
        break;

      /* reactualisation of the precision */
      MPFR_ZIV_NEXT (loop, Nt);
      mpfr_set_prec (t, Nt);
      mpfr_set_prec (te, Nt);
    }
  MPFR_ZIV_FREE (loop);

  inexact = mpfr_set4 (y, t, rnd_mode, MPFR_SIGN (xt));

  mpfr_clear(t);
  mpfr_clear(te);

  MPFR_SAVE_EXPO_FREE (expo);
  return mpfr_check_range (y, inexact, rnd_mode);
}

