/* mpfr_log -- natural logarithm of a floating-point number

Copyright 1999, 2000, 2001, 2002, 2003, 2004, 2005 Free Software Foundation.

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

/*#define DEBUG */
#define MPFR_NEED_LONGLONG_H
#include "mpfr-impl.h"

/* The computation of log(a) is done using the formula :
     if we want p bits of the result,
                       pi
          log(a) ~ ------------  -   m log 2
                    2 AG(1,4/s)

     where s = x 2^m > 2^(p/2)

     More precisely, if F(x) = int(1/sqrt(1-(1-x^2)*sin(t)^2), t=0..PI/2),
     then for s>=1.26 we have log(s) < F(4/s) < log(s)*(1+4/s^2)
     from which we deduce pi/2/AG(1,4/s)*(1-4/s^2) < log(s) < pi/2/AG(1,4/s)
     so the relative error 4/s^2 is < 4/2^p i.e. 4 ulps.
*/

int
mpfr_log (mpfr_ptr r, mpfr_srcptr a, mp_rnd_t rnd_mode)
{
  int inexact;
  mp_prec_t p, q;
  mpfr_t tmp1, tmp2;
  mp_limb_t *tmp1p, *tmp2p;
  MPFR_SAVE_EXPO_DECL (expo);
  MPFR_ZIV_DECL (loop);
  MPFR_TMP_DECL(marker);

  MPFR_LOG_FUNC (("a[%#R]=%R rnd=%d", a, a, rnd_mode),
                 ("r[%#R]=%R inexact=%d", r, r, inexact));

  /* Special cases */
  if (MPFR_UNLIKELY (MPFR_IS_SINGULAR (a)))
    {
      /* If a is NaN, the result is NaN */
      if (MPFR_IS_NAN (a))
        {
          MPFR_SET_NAN (r);
          MPFR_RET_NAN;
        }
      /* check for infinity before zero */
      else if (MPFR_IS_INF (a))
        {
          if (MPFR_IS_NEG (a))
            /* log(-Inf) = NaN */
            {
              MPFR_SET_NAN (r);
              MPFR_RET_NAN;
            }
          else /* log(+Inf) = +Inf */
            {
              MPFR_SET_INF (r);
              MPFR_SET_POS (r);
              MPFR_RET (0);
            }
        }
      else /* a is zero */
        {
          MPFR_ASSERTD (MPFR_IS_ZERO (a));
          MPFR_SET_INF (r);
          MPFR_SET_NEG (r);
          MPFR_RET (0); /* log(0) is an exact -infinity */
        }
    }
  /* If a is negative, the result is NaN */
  else if (MPFR_UNLIKELY (MPFR_IS_NEG (a)))
    {
      MPFR_SET_NAN (r);
      MPFR_RET_NAN;
    }
  /* If a is 1, the result is 0 */
  else if (MPFR_UNLIKELY (MPFR_GET_EXP (a) == 1 && mpfr_cmp_ui (a, 1) == 0))
    {
      MPFR_SET_ZERO (r);
      MPFR_SET_POS (r);
      MPFR_RET (0); /* only "normal" case where the result is exact */
    }

  q = MPFR_PREC (r);

  /* use initial precision about q+lg(q)+5 */
  p = q + 5 + 2*MPFR_INT_CEIL_LOG2 (q);
  /* % ~(mp_prec_t)BITS_PER_MP_LIMB  ;
     m=q; while (m) { p++; m >>= 1; }  */
  /* if (MPFR_LIKELY(p % BITS_PER_MP_LIMB != 0))
      p += BITS_PER_MP_LIMB - (p%BITS_PER_MP_LIMB); */

  MPFR_TMP_MARK(marker);
  MPFR_SAVE_EXPO_MARK (expo);

  MPFR_ZIV_INIT (loop, p);
  for (;;)
    {
      mp_size_t size;
      long m;
      mp_exp_t cancel;

      /* Calculus of m (depends on p) */
      m = (p + 1) / 2 - MPFR_GET_EXP (a) + 1;

      /* All the mpfr_t needed have a precision of p */
      size = (p-1)/BITS_PER_MP_LIMB+1;
      MPFR_TMP_INIT (tmp1p, tmp1, p, size);
      MPFR_TMP_INIT (tmp2p, tmp2, p, size);

      mpfr_mul_2si (tmp2, a, m, GMP_RNDN);    /* s=a*2^m,        err<=1 ulp  */
      mpfr_div (tmp1, __gmpfr_four, tmp2, GMP_RNDN);/* 4/s,      err<=2 ulps */
      mpfr_agm (tmp2, __gmpfr_one, tmp1, GMP_RNDN); /* AG(1,4/s),err<=3 ulps */
      mpfr_mul_2ui (tmp2, tmp2, 1, GMP_RNDN); /* 2*AG(1,4/s),    err<=3 ulps */
      mpfr_const_pi (tmp1, GMP_RNDN);         /* compute pi,     err<=1ulp   */
      mpfr_div (tmp2, tmp1, tmp2, GMP_RNDN);  /* pi/2*AG(1,4/s), err<=5ulps  */
      mpfr_const_log2 (tmp1, GMP_RNDN);      /* compute log(2),  err<=1ulp   */
      mpfr_mul_si (tmp1, tmp1, m, GMP_RNDN); /* compute m*log(2),err<=2ulps  */
      mpfr_sub (tmp1, tmp2, tmp1, GMP_RNDN); /* log(a),    err<=7ulps+cancel */
      cancel = MPFR_GET_EXP (tmp2) - MPFR_GET_EXP (tmp1);

      MPFR_LOG_MSG (("canceled bits=%ld\n", cancel));
      MPFR_LOG_VAR (tmp1);

      if (MPFR_UNLIKELY (cancel < 0))
        cancel = 0;

      /* we have 7 ulps of error from the above roundings,
         4 ulps from the 4/s^2 second order term,
         plus the canceled bits */
      if (MPFR_LIKELY (MPFR_CAN_ROUND (tmp1, p-cancel-4, q, rnd_mode)))
        break;
      p += cancel;
      MPFR_ZIV_NEXT (loop, p);
    }
  MPFR_ZIV_FREE (loop);
  inexact = mpfr_set (r, tmp1, rnd_mode);
  /* We clean */
  MPFR_TMP_FREE(marker);

  MPFR_SAVE_EXPO_FREE (expo);
  return mpfr_check_range (r, inexact, rnd_mode);
}
