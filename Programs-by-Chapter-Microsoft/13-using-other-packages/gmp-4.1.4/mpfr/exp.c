/* mpfr_exp -- exponential of a floating-point number

Copyright 1999, 2000, 2001, 2002, 2003, 2004, 2005 Free Software Foundation.
Contributed by the Spaces project.

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

#include "mpfr-impl.h"

/* #define DEBUG */

/* use Brent's formula exp(x) = (1+r+r^2/2!+r^3/3!+...)^(2^K)*2^n
   where x = n*log(2)+(2^K)*r
   number of operations = O(K+prec(r)/K)
*/
int
mpfr_exp (mpfr_ptr y, mpfr_srcptr x, mp_rnd_t rnd_mode)
{
  mp_exp_t expx;
  mp_prec_t precy;
  int inexact;
  double d;
  MPFR_SAVE_EXPO_DECL (expo);

  MPFR_LOG_FUNC (("x[%#R]=%R rnd=%d", x, x, rnd_mode),
                 ("y[%#R]=%R inexact=%d", y, y, inexact));

  if (MPFR_UNLIKELY( MPFR_IS_SINGULAR(x) ))
    {
      if (MPFR_IS_NAN(x))
        {
          MPFR_SET_NAN(y);
          MPFR_RET_NAN;
        }
      else if (MPFR_IS_INF(x))
        {
          if (MPFR_IS_POS(x))
            MPFR_SET_INF(y);
          else
            MPFR_SET_ZERO(y);
          MPFR_SET_POS(y);
          MPFR_RET(0);
        }
      else
        {
          MPFR_ASSERTD(MPFR_IS_ZERO(x));
          return mpfr_set_ui (y, 1, GMP_RNDN);
        }
    }
  MPFR_CLEAR_FLAGS(y);

  expx  = MPFR_GET_EXP (x);
  precy = MPFR_PREC (y);

  /* result is +Inf when exp(x) >= 2^(__gmpfr_emax), i.e.
     x >= __gmpfr_emax * log(2) */
  /* TODO: Don't convert to double! */
  d = mpfr_get_d1 (x);
  if (MPFR_UNLIKELY (d >= (double) __gmpfr_emax * LOG2))
    inexact = mpfr_overflow (y, rnd_mode, 1);

  /* result is 0 when exp(x) < 1/2*2^(__gmpfr_emin), i.e.
     x < (__gmpfr_emin-1) * LOG2 */
  else if (MPFR_UNLIKELY(d < ((double) __gmpfr_emin - 1.0) * LOG2))
    {
      /* warning: mpfr_underflow rounds away for RNDN */
      if (rnd_mode == GMP_RNDN && d < ((double) __gmpfr_emin - 2.0) * LOG2)
        rnd_mode = GMP_RNDZ;
      inexact = mpfr_underflow (y, rnd_mode, 1);
    }

  /* if x < 2^(-precy), then exp(x) i.e. gives 1 +/- 1 ulp(1) */
  else if (MPFR_UNLIKELY (expx < 0 && (mpfr_uexp_t) (-expx) > precy))
    {
      int signx = MPFR_SIGN (x);

      MPFR_SET_POS (y);
      if (MPFR_IS_NEG_SIGN (signx) && (rnd_mode == GMP_RNDD ||
                                       rnd_mode == GMP_RNDZ))
        {
          mpfr_setmax (y, 0);  /* y = 1 - epsilon */
          inexact = -1;
        }
      else
        {
          mpfr_setmin (y, 1);  /* y = 1 */
          if (MPFR_IS_POS_SIGN (signx) && rnd_mode == GMP_RNDU)
            {
              mp_size_t yn;
              int sh;

              yn = 1 + (MPFR_PREC(y) - 1) / BITS_PER_MP_LIMB;
              sh = (mp_prec_t) yn * BITS_PER_MP_LIMB - MPFR_PREC(y);
              MPFR_MANT(y)[0] += MPFR_LIMB_ONE << sh;
              inexact = 1;
            }
          else
            inexact = -MPFR_FROM_SIGN_TO_INT(signx);
        }
    }

  /* General case */
  else
    {
      MPFR_SAVE_EXPO_MARK (expo);
      __gmpfr_emin -= 3;  /* So that we can check for underflow properly */

      if (MPFR_UNLIKELY (precy > MPFR_EXP_THRESHOLD))
        inexact = mpfr_exp_3 (y, x, rnd_mode); /* O(M(n) log(n)^2) */
      else
        inexact = mpfr_exp_2 (y, x, rnd_mode); /* O(n^(1/3) M(n)) */
      MPFR_SAVE_EXPO_FREE (expo);
      inexact = mpfr_check_range (y, inexact, rnd_mode);
    }

  return inexact;
}
