/* mpfr_frac -- Fractional part of a floating-point number.

Copyright 2002, 2003, 2004 Free Software Foundation, Inc.

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

/* Optimization note: it is not a good idea to call mpfr_integer_p,
   as some cases will take longer (the number may be parsed twice). */

int
mpfr_frac (mpfr_ptr r, mpfr_srcptr u, mp_rnd_t rnd_mode)
{
  mp_exp_t re, ue;
  mp_prec_t uq, fq;
  mp_size_t un, tn, t0;
  mp_limb_t *up, *tp, k;
  int sh;
  mpfr_t tmp;
  mpfr_ptr t;

  /* Special cases */
  if (MPFR_UNLIKELY(MPFR_IS_NAN(u)))
    {
      MPFR_SET_NAN(r);
      MPFR_RET_NAN;
    }
  else if (MPFR_UNLIKELY(MPFR_IS_INF(u) || mpfr_integer_p (u)))
    {
      MPFR_CLEAR_FLAGS(r);
      MPFR_SET_SAME_SIGN(r, u);
      MPFR_SET_ZERO(r);
      MPFR_RET(0);  /* zero is exact */
    }

  ue = MPFR_GET_EXP (u);
  if (ue <= 0)  /* |u| < 1 */
    return mpfr_set (r, u, rnd_mode);

  uq = MPFR_PREC(u);
  un = (uq - 1) / BITS_PER_MP_LIMB;  /* index of most significant limb */
  un -= (mp_size_t) (ue / BITS_PER_MP_LIMB);
  /* now the index of the MSL containing bits of the fractional part */

  up = MPFR_MANT(u);
  sh = ue % BITS_PER_MP_LIMB;
  k = up[un] << sh;
  /* the first bit of the fractional part is the MSB of k */

  if (k != 0)
    {
      int cnt;

      count_leading_zeros(cnt, k);
      /* first bit 1 of the fractional part -> MSB of the number */
      re = -cnt;
      sh += cnt;
      MPFR_ASSERTN (sh < BITS_PER_MP_LIMB);
      k <<= cnt;
    }
  else
    {
      re = sh - BITS_PER_MP_LIMB;
      /* searching for the first bit 1 (exists since u isn't an integer) */
      while (up[--un] == 0)
        re -= BITS_PER_MP_LIMB;
      MPFR_ASSERTN(un >= 0);
      k = up[un];
      count_leading_zeros(sh, k);
      re -= sh;
      k <<= sh;
    }
  /* The exponent of r will be re */
  /* un: index of the limb of u that contains the first bit 1 of the FP */

  ue -= re;  /* number of bits of u to discard */
  fq = uq - ue;  /* number of bits of the fractional part of u */

  /* Temporary fix */
  t = /* fq > MPFR_PREC(r) */
    (mp_size_t) (MPFR_PREC(r) - 1) / BITS_PER_MP_LIMB < un ?
    (mpfr_init2 (tmp, (un + 1) * BITS_PER_MP_LIMB), tmp) : r;
  /* t has enough precision to contain the fractional part of u */
  /* If we use a temporary variable, we take the non-significant bits
     of u into account, because of the mpn_lshift below. */
  MPFR_CLEAR_FLAGS(t);
  MPFR_SET_SAME_SIGN(t, u);
  MPFR_SET_EXP (t, re);

  /* Put the fractional part of u into t */
  tn = (MPFR_PREC(t) - 1) / BITS_PER_MP_LIMB;
  MPFR_ASSERTN(tn >= un);
  t0 = tn - un;
  tp = MPFR_MANT(t);
  if (sh == 0)
    MPN_COPY_DECR(tp + t0, up, un + 1);
  else /* warning: un may be 0 here */
    tp[tn] = k | ((un) ? mpn_lshift (tp + t0, up, un, sh) : (mp_limb_t) 0);
  if (t0 > 0)
    MPN_ZERO(tp, t0);

  if (t != r)
    { /* t is tmp */
      int inex;

      inex = mpfr_set (r, t, rnd_mode);
      mpfr_clear (t);
      return inex;
    }
  else
    MPFR_RET(0);
}
