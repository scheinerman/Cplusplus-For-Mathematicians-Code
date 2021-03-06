/* mpfr_mpn_exp -- auxiliary function for mpfr_get_str and mpfr_set_str

Copyright 1999, 2000, 2001, 2002, 2003, 2004, 2005 Free Software Foundation, Inc.
This function was contributed by Alain Delplanque and Paul Zimmermann.

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

/* this function computes an approximation of b^e in {a, n}, with exponent
   stored in exp_r. The computed value is rounded towards zero (truncated).
   It returns an integer f such that the final error is bounded by 2^f ulps,
   that is:
   a*2^exp_r <= b^e <= 2^exp_r (a + 2^f),
   where a represents {a, n}, i.e. the integer
   a[0] + a[1]*B + ... + a[n-1]*B^(n-1) where B=2^BITS_PER_MP_LIMB

   Return -2 if an overflow occurred in the computation of exp_r.
*/

long
mpfr_mpn_exp (mp_limb_t *a, mp_exp_t *exp_r, int b, mp_exp_t e, size_t n)
{
  mp_limb_t *c, B;
  mp_exp_t f, h;
  int i;
  unsigned long t; /* number of bits in e */
  unsigned long bits;
  size_t n1;
  unsigned int error;           /* (number - 1) of loop a^2b inexact */
                                 /* error == t means no error */
  int err_s_a2 = 0;
  int err_s_ab = 0;              /* number of error when shift A^2, AB */
  MPFR_TMP_DECL(marker);

  MPFR_ASSERTN(e > 0);
  MPFR_ASSERTN((2 <= b) && (b <= 36));

  MPFR_TMP_MARK(marker);

  /* initialization of a, b, f, h */

  /* normalize the base */
  B = (mp_limb_t) b;
  count_leading_zeros (h, B);

  bits = BITS_PER_MP_LIMB - h;

  B = B << h;
  h = - h;

  /* allocate space for A and set it to B */
  c = (mp_limb_t*) MPFR_TMP_ALLOC(2 * n * BYTES_PER_MP_LIMB);
  a [n - 1] = B;
  MPN_ZERO (a, n - 1);
  /* initial exponent for A: invariant is A = {a, n} * 2^f */
  f = h - (n - 1) * BITS_PER_MP_LIMB;

  /* determine number of bits in e */
  count_leading_zeros (t, (mp_limb_t) e);

  t = BITS_PER_MP_LIMB - t; /* number of bits of exponent e */

  error = t; /* error <= BITS_PER_MP_LIMB */

  MPN_ZERO (c, 2 * n);

  for (i = t - 2; i >= 0; i--)
    {

      /* determine precision needed */
      bits = n * BITS_PER_MP_LIMB - mpn_scan1 (a, 0);
      n1 = (n * BITS_PER_MP_LIMB - bits) / BITS_PER_MP_LIMB;

      /* square of A : {c+2n1, 2(n-n1)} = {a+n1, n-n1}^2 */
      mpn_sqr_n (c + 2 * n1, a + n1, n - n1);

      /* set {c+n, 2n1-n} to 0 : {c, n} = {a, n}^2*K^n */

      /* check overflow on f */
      if (MPFR_UNLIKELY(f < MPFR_EXP_MIN/2 || f > MPFR_EXP_MAX/2))
        {
        overflow:
          MPFR_TMP_FREE(marker);
          return -2;
        }
      /* FIXME: Could f = 2*f + n * BITS_PER_MP_LIMB be used? */
      f = 2*f;
      MPFR_SADD_OVERFLOW (f, f, n * BITS_PER_MP_LIMB,
                          mp_exp_t, mp_exp_unsigned_t,
                          MPFR_EXP_MIN, MPFR_EXP_MAX,
                          goto overflow, goto overflow);
      if ((c[2*n - 1] & MPFR_LIMB_HIGHBIT) == 0)
        {
          /* shift A by one bit to the left */
          mpn_lshift (a, c + n, n, 1);
          a[0] |= mpn_lshift (c + n - 1, c + n - 1, 1, 1);
          f --;
          if (error != t)
            err_s_a2 ++;
        }
      else
        MPN_COPY (a, c + n, n);

      if ((error == t) && (2 * n1 <= n) &&
          (mpn_scan1 (c + 2 * n1, 0) < (n - 2 * n1) * BITS_PER_MP_LIMB))
        error = i;

      if (e & ((mp_exp_t) 1 << i))
        {
          /* multiply A by B */
          c[2 * n - 1] = mpn_mul_1 (c + n - 1, a, n, B);
          f += h + BITS_PER_MP_LIMB;
          if ((c[2 * n - 1] & MPFR_LIMB_HIGHBIT) == 0)
            { /* shift A by one bit to the left */
              mpn_lshift (a, c + n, n, 1);
              a[0] |= mpn_lshift (c + n - 1, c + n - 1, 1, 1);
              f --;
            }
          else
            {
              MPN_COPY (a, c + n, n);
              if (error != t)
                err_s_ab ++;
            }
          if ((error == t) && (c[n - 1] != 0))
            error = i;
        }
    }

  MPFR_TMP_FREE(marker);

  *exp_r = f;

  if (error == t)
    return -1; /* result is exact */
  else /* error <= t-2 <= BITS_PER_MP_LIMB-2
          err_s_ab, err_s_a2 <= t-1       */
    {
      /* if there are p loops after the first inexact result, with
         j shifts in a^2 and l shifts in a*b, then the final error is
         at most 2^(p+ceil((j+1)/2)+l+1)*ulp(res).
         This is bounded by 2^(5/2*t-1/2) where t is the number of bits of e.
      */
      error = error + err_s_ab + err_s_a2 / 2 + 3; /* <= 5t/2-1/2 */
#if 0
      if ((error - 1) >= ((n * BITS_PER_MP_LIMB - 1) / 2))
        error = n * BITS_PER_MP_LIMB; /* result is completely wrong:
                                         this is very unlikely since error is
                                         at most 5/2*log_2(e), and
                                         n * BITS_PER_MP_LIMB is at least
                                         3*log_2(e) */
#endif
      return error;
    }
}
