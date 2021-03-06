/* mpfr_round_raw_generic, mpfr_round_raw2, mpfr_round_raw, mpfr_prec_round,
   mpfr_can_round, mpfr_can_round_raw -- various rounding functions

Copyright 1999, 2000, 2001, 2002, 2003, 2004, 2005
  Free Software Foundation, Inc.

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

#define mpfr_round_raw_generic mpfr_round_raw
#define flag 0
#define use_inexp 1
#include "round_raw_generic.c"

#define mpfr_round_raw_generic mpfr_round_raw_2
#define flag 1
#define use_inexp 0
#include "round_raw_generic.c"

/* Seems to be unused. Remove comment to implement it.
#define mpfr_round_raw_generic mpfr_round_raw_3
#define flag 1
#define use_inexp 1
#include "round_raw_generic.c"
*/

#define mpfr_round_raw_generic mpfr_round_raw_4
#define flag 0
#define use_inexp 0
#include "round_raw_generic.c"

int
mpfr_prec_round (mpfr_ptr x, mp_prec_t prec, mp_rnd_t rnd_mode)
{
  mp_limb_t *tmp, *xp;
  int carry, inexact;
  mp_prec_t nw, ow;
  MPFR_TMP_DECL(marker);

  MPFR_ASSERTN(prec >= MPFR_PREC_MIN && prec <= MPFR_PREC_MAX);

  nw = 1 + (prec - 1) / BITS_PER_MP_LIMB; /* needed allocated limbs */

  /* check if x has enough allocated space for the mantissa */
  ow = MPFR_GET_ALLOC_SIZE(x);
  if (nw > ow)
    {
      /* Realloc mantissa */
      mp_ptr tmp = (mp_ptr) (*__gmp_reallocate_func)
        (MPFR_GET_REAL_PTR(x),  MPFR_MALLOC_SIZE(ow), MPFR_MALLOC_SIZE(nw));
      MPFR_SET_MANT_PTR(x, tmp); /* mant ptr must be set before alloc size */
      MPFR_SET_ALLOC_SIZE(x, nw); /* new number of allocated limbs */
    }

  if (MPFR_UNLIKELY( MPFR_IS_SINGULAR(x) ))
    {
      MPFR_PREC(x) = prec; /* Special value: need to set prec */
      if (MPFR_IS_NAN(x))
        MPFR_RET_NAN;
      MPFR_ASSERTD(MPFR_IS_INF(x) || MPFR_IS_ZERO(x));
      return 0; /* infinity and zero are exact */
    }

  /* x is a non-zero real number */

  MPFR_TMP_MARK(marker);
  tmp = (mp_limb_t*) MPFR_TMP_ALLOC (nw * BYTES_PER_MP_LIMB);
  xp = MPFR_MANT(x);
  carry = mpfr_round_raw (tmp, xp, MPFR_PREC(x), MPFR_IS_NEG(x),
                          prec, rnd_mode, &inexact);
  MPFR_PREC(x) = prec;

  if (MPFR_UNLIKELY(carry))
    {
      mp_exp_t exp = MPFR_EXP (x);

      if (MPFR_UNLIKELY(exp == __gmpfr_emax))
        (void) mpfr_overflow(x, rnd_mode, MPFR_SIGN(x));
      else
        {
          MPFR_ASSERTD (exp < __gmpfr_emax);
          MPFR_SET_EXP (x, exp + 1);
          xp[nw - 1] = MPFR_LIMB_HIGHBIT;
          if (nw - 1 > 0)
            MPN_ZERO(xp, nw - 1);
        }
    }
  else
    MPN_COPY(xp, tmp, nw);

  MPFR_TMP_FREE(marker);
  return inexact;
}

/* assumption: BITS_PER_MP_LIMB is a power of 2 */

/* assuming b is an approximation to x in direction rnd1 with error at
   most 2^(MPFR_EXP(b)-err), returns 1 if one is able to round exactly
   x to precision prec with direction rnd2, and 0 otherwise.

   Side effects: none.
*/

int
mpfr_can_round (mpfr_srcptr b, mp_exp_t err, mp_rnd_t rnd1,
                mp_rnd_t rnd2, mp_prec_t prec)
{
  if (MPFR_UNLIKELY(MPFR_IS_SINGULAR(b)))
    return 0; /* We cannot round if Zero, Nan or Inf */
  else
    return mpfr_can_round_raw(MPFR_MANT(b), MPFR_LIMB_SIZE(b),
                              MPFR_SIGN(b), err, rnd1, rnd2, prec);
}

int
mpfr_can_round_raw (const mp_limb_t *bp, mp_size_t bn, int neg, mp_exp_t err0,
                    mp_rnd_t rnd1, mp_rnd_t rnd2, mp_prec_t prec)
{
  mp_prec_t err;
  mp_size_t k, k1, tn;
  int s, s1;
  mp_limb_t cc, cc2;
  mp_limb_t *tmp;
  MPFR_TMP_DECL(marker);

  if (MPFR_UNLIKELY(err0 < 0 || (mp_exp_unsigned_t) err0 <= prec))
    return 0;  /* can't round */
  else if (MPFR_UNLIKELY (prec > (mp_prec_t) bn * BITS_PER_MP_LIMB))
    { /* then ulp(b) < precision < error */
      return rnd2 == GMP_RNDN && (mp_exp_unsigned_t) err0 - 2 >= prec;
      /* can round only in rounding to the nearest and err0 >= prec + 2 */
    }

  MPFR_ASSERT_SIGN(neg);
  neg = MPFR_IS_NEG_SIGN(neg);

  /* if the error is smaller than ulp(b), then anyway it will propagate
     up to ulp(b) */
  err = ((mp_exp_unsigned_t) err0 > (mp_prec_t) bn * BITS_PER_MP_LIMB) ?
    (mp_prec_t) bn * BITS_PER_MP_LIMB : (mp_prec_t) err0;

  /* warning: if k = m*BITS_PER_MP_LIMB, consider limb m-1 and not m */
  k = (err - 1) / BITS_PER_MP_LIMB;
  MPFR_UNSIGNED_MINUS_MODULO(s, err);

  /* the error corresponds to bit s in limb k, the most significant limb
     being limb 0 */
  k1 = (prec - 1) / BITS_PER_MP_LIMB;
  MPFR_UNSIGNED_MINUS_MODULO(s1, prec);

  /* the last significant bit is bit s1 in limb k1 */

  /* don't need to consider the k1 most significant limbs */
  k -= k1;
  bn -= k1;
  prec -= (mp_prec_t) k1 * BITS_PER_MP_LIMB;
  /* if when adding or subtracting (1 << s) in bp[bn-1-k], it does not
     change bp[bn-1] >> s1, then we can round */

  MPFR_TMP_MARK(marker);
  tn = bn;
  k++; /* since we work with k+1 everywhere */
  tmp = (mp_limb_t*) MPFR_TMP_ALLOC(tn * BYTES_PER_MP_LIMB);
  if (bn > k)
    MPN_COPY (tmp, bp, bn - k);

  MPFR_ASSERTD (k > 0);

  /* Transform RNDD and RNDU to Zero / Away */
  MPFR_ASSERTD((neg == 0) || (neg ==1));
  if (MPFR_IS_RNDUTEST_OR_RNDDNOTTEST(rnd1, neg))
    rnd1 = GMP_RNDZ;

  switch (rnd1)
    {
    case GMP_RNDZ:
      /* Round to Zero */
      cc = (bp[bn - 1] >> s1) & 1;
      cc ^= mpfr_round_raw2(bp, bn, neg, rnd2, prec);
      /* now round b +/- 2^(MPFR_EXP(b)-err) */
      cc2 = mpn_add_1 (tmp + bn - k, bp + bn - k, k, MPFR_LIMB_ONE << s);
      break;
    case GMP_RNDN:
      /* Round to nearest */
       /* first round b+2^(MPFR_EXP(b)-err) */
      cc = mpn_add_1 (tmp + bn - k, bp + bn - k, k, MPFR_LIMB_ONE << s);
      cc = (tmp[bn - 1] >> s1) & 1; /* gives 0 when cc=1 */
      cc ^= mpfr_round_raw2 (tmp, bn, neg, rnd2, prec);
      /* now round b-2^(MPFR_EXP(b)-err) */
      cc2 = mpn_sub_1 (tmp + bn - k, bp + bn - k, k, MPFR_LIMB_ONE << s);
      break;
    default:
      /* Round away */
      cc = (bp[bn - 1] >> s1) & 1;
      cc ^= mpfr_round_raw2(bp, bn, neg, rnd2, prec);
      /* now round b +/- 2^(MPFR_EXP(b)-err) */
      cc2 = mpn_sub_1 (tmp + bn - k, bp + bn - k, k, MPFR_LIMB_ONE << s);
      break;
    }

  if (cc2 && cc)
    {
      MPFR_TMP_FREE(marker);
      return 0;
    }

  cc2 = (tmp[bn - 1] >> s1) & 1;
  cc2 ^= mpfr_round_raw2 (tmp, bn, neg, rnd2, prec);

  MPFR_TMP_FREE(marker);
  return cc == cc2;
}
