/* mpfr_mul -- multiply two floating-point numbers

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

#define MPFR_NEED_LONGLONG_H
#include "mpfr-impl.h"


/********* BEGINNING CHECK *************/

/* Check if we have to check the result of mpfr_mul.
   TODO: Find a better (and faster?) check than using old implementation */
#ifdef WANT_ASSERT
# if WANT_ASSERT >= 3

int mpfr_mul2 (mpfr_ptr a, mpfr_srcptr b, mpfr_srcptr c, mp_rnd_t rnd_mode);
static int
mpfr_mul3 (mpfr_ptr a, mpfr_srcptr b, mpfr_srcptr c, mp_rnd_t rnd_mode)
{
  /* Old implementation */
  int sign_product, cc, inexact;
  mp_exp_t  ax;
  mp_limb_t *tmp;
  mp_limb_t b1;
  mp_prec_t bq, cq;
  mp_size_t bn, cn, tn, k;
  MPFR_TMP_DECL(marker);

  /* deal with special cases */
  if (MPFR_ARE_SINGULAR(b,c))
    {
      if (MPFR_IS_NAN(b) || MPFR_IS_NAN(c))
        {
          MPFR_SET_NAN(a);
          MPFR_RET_NAN;
        }
      sign_product = MPFR_MULT_SIGN( MPFR_SIGN(b) , MPFR_SIGN(c) );
      if (MPFR_IS_INF(b))
        {
          if (MPFR_IS_INF(c) || MPFR_NOTZERO(c))
            {
              MPFR_SET_SIGN(a,sign_product);
              MPFR_SET_INF(a);
              MPFR_RET(0); /* exact */
            }
          else
            {
              MPFR_SET_NAN(a);
              MPFR_RET_NAN;
            }
        }
      else if (MPFR_IS_INF(c))
        {
          if (MPFR_NOTZERO(b))
            {
              MPFR_SET_SIGN(a, sign_product);
              MPFR_SET_INF(a);
              MPFR_RET(0); /* exact */
            }
          else
            {
              MPFR_SET_NAN(a);
              MPFR_RET_NAN;
            }
        }
      else
        {
          MPFR_ASSERTD(MPFR_IS_ZERO(b) || MPFR_IS_ZERO(c));
          MPFR_SET_SIGN(a, sign_product);
          MPFR_SET_ZERO(a);
          MPFR_RET(0); /* 0 * 0 is exact */
        }
    }
  MPFR_CLEAR_FLAGS(a);
  sign_product = MPFR_MULT_SIGN( MPFR_SIGN(b) , MPFR_SIGN(c) );

  ax = MPFR_GET_EXP (b) + MPFR_GET_EXP (c);

  bq = MPFR_PREC(b);
  cq = MPFR_PREC(c);

  MPFR_ASSERTD(bq+cq > bq); /* PREC_MAX is /2 so no integer overflow */

  bn = (bq+BITS_PER_MP_LIMB-1)/BITS_PER_MP_LIMB; /* number of limbs of b */
  cn = (cq+BITS_PER_MP_LIMB-1)/BITS_PER_MP_LIMB; /* number of limbs of c */
  k = bn + cn; /* effective nb of limbs used by b*c (= tn or tn+1) below */
  tn = (bq + cq + BITS_PER_MP_LIMB - 1) / BITS_PER_MP_LIMB;
  /* <= k, thus no int overflow */
  MPFR_ASSERTD(tn <= k);

  /* Check for no size_t overflow*/
  MPFR_ASSERTD((size_t) k <= ((size_t) -1) / BYTES_PER_MP_LIMB);
  MPFR_TMP_MARK(marker);
  tmp = (mp_limb_t *) MPFR_TMP_ALLOC((size_t) k * BYTES_PER_MP_LIMB);

  /* multiplies two mantissa in temporary allocated space */
  b1 = (MPFR_LIKELY(bn >= cn)) ?
    mpn_mul (tmp, MPFR_MANT(b), bn, MPFR_MANT(c), cn)
    : mpn_mul (tmp, MPFR_MANT(c), cn, MPFR_MANT(b), bn);

  /* now tmp[0]..tmp[k-1] contains the product of both mantissa,
     with tmp[k-1]>=2^(BITS_PER_MP_LIMB-2) */
  b1 >>= BITS_PER_MP_LIMB - 1; /* msb from the product */

  /* if the mantissas of b and c are uniformly distributed in ]1/2, 1],
     then their product is in ]1/4, 1/2] with probability 2*ln(2)-1 ~ 0.386
     and in [1/2, 1] with probability 2-2*ln(2) ~ 0.614 */
  tmp += k - tn;
  if (MPFR_UNLIKELY(b1 == 0))
    mpn_lshift (tmp, tmp, tn, 1); /* tn <= k, so no stack corruption */
  cc = mpfr_round_raw (MPFR_MANT (a), tmp, bq + cq,
                       MPFR_IS_NEG_SIGN(sign_product),
                       MPFR_PREC (a), rnd_mode, &inexact);

  /* cc = 1 ==> result is a power of two */
  if (MPFR_UNLIKELY(cc))
    MPFR_MANT(a)[MPFR_LIMB_SIZE(a)-1] = MPFR_LIMB_HIGHBIT;

  MPFR_TMP_FREE(marker);

  {
    mp_exp_t ax2 = ax + (mp_exp_t) (b1 - 1 + cc);
    if (MPFR_UNLIKELY( ax2 > __gmpfr_emax))
      return mpfr_overflow (a, rnd_mode, sign_product);
    if (MPFR_UNLIKELY( ax2 < __gmpfr_emin))
      {
        /* In the rounding to the nearest mode, if the exponent of the exact
           result (i.e. before rounding, i.e. without taking cc into account)
           is < __gmpfr_emin - 1 or the exact result is a power of 2 (i.e. if
           both arguments are powers of 2), then round to zero. */
        if (rnd_mode == GMP_RNDN &&
            (ax + (mp_exp_t) b1 < __gmpfr_emin ||
             (mpfr_powerof2_raw (b) && mpfr_powerof2_raw (c))))
          rnd_mode = GMP_RNDZ;
        return mpfr_underflow (a, rnd_mode, sign_product);
      }
    MPFR_SET_EXP (a, ax2);
    MPFR_SET_SIGN(a, sign_product);
  }
  return inexact;
}

int
mpfr_mul (mpfr_ptr a, mpfr_srcptr b, mpfr_srcptr c, mp_rnd_t rnd_mode)
{
  mpfr_t ta, tb, tc;
  int inexact1, inexact2;

  mpfr_init2 (ta, MPFR_PREC (a));
  mpfr_init2 (tb, MPFR_PREC (b));
  mpfr_init2 (tc, MPFR_PREC (c));
  MPFR_ASSERTN (mpfr_set (tb, b, GMP_RNDN) == 0);
  MPFR_ASSERTN (mpfr_set (tc, c, GMP_RNDN) == 0);

  inexact2 = mpfr_mul3 (ta, tb, tc, rnd_mode);
  inexact1  = mpfr_mul2 (a, b, c, rnd_mode);
  if (mpfr_cmp (ta, a) || inexact1*inexact2 < 0
      || (inexact1*inexact2 == 0 && (inexact1|inexact2) != 0))
    {
      fprintf (stderr, "mpfr_mul return different values for %s\n"
               "Prec_a = %lu, Prec_b = %lu, Prec_c = %lu\nB = ",
               mpfr_print_rnd_mode (rnd_mode),
               MPFR_PREC (a), MPFR_PREC (b), MPFR_PREC (c));
      mpfr_out_str (stderr, 16, 0, tb, GMP_RNDN);
      fprintf (stderr, "\nC = ");
      mpfr_out_str (stderr, 16, 0, tc, GMP_RNDN);
      fprintf (stderr, "\nOldMul: ");
      mpfr_out_str (stderr, 16, 0, ta, GMP_RNDN);
      fprintf (stderr, "\nNewMul: ");
      mpfr_out_str (stderr, 16, 0, a, GMP_RNDN);
      fprintf (stderr, "\nNewInexact = %d | OldInexact = %d\n",
               inexact1, inexact2);
      MPFR_ASSERTN(0);
    }

  mpfr_clears (ta, tb, tc, NULL);
  return inexact1;
}

# define mpfr_mul mpfr_mul2
# endif
#endif

/****** END OF CHECK *******/

/* Multiply 2 mpfr_t */

int
mpfr_mul (mpfr_ptr a, mpfr_srcptr b, mpfr_srcptr c, mp_rnd_t rnd_mode)
{
  int sign, inexact;
  mp_exp_t  ax, ax2;
  mp_limb_t *tmp;
  mp_limb_t b1;
  mp_prec_t bq, cq;
  mp_size_t bn, cn, tn, k;
  MPFR_TMP_DECL (marker);

  MPFR_LOG_FUNC (("b[%#R]=%R c[%#R]=%R rnd=%d", b, b, c, c, rnd_mode),
                 ("a[%#R]=%R inexact=%d", a, a, inexact));

  /* deal with special cases */
  if (MPFR_ARE_SINGULAR (b, c))
    {
      if (MPFR_IS_NAN (b) || MPFR_IS_NAN (c))
        {
          MPFR_SET_NAN (a);
          MPFR_RET_NAN;
        }
      sign = MPFR_MULT_SIGN (MPFR_SIGN (b), MPFR_SIGN (c));
      if (MPFR_IS_INF (b))
        {
          if (!MPFR_IS_ZERO (c))
            {
              MPFR_SET_SIGN (a, sign);
              MPFR_SET_INF (a);
              MPFR_RET (0);
            }
          else
            {
              MPFR_SET_NAN (a);
              MPFR_RET_NAN;
            }
        }
      else if (MPFR_IS_INF (c))
        {
          if (!MPFR_IS_ZERO (b))
            {
              MPFR_SET_SIGN (a, sign);
              MPFR_SET_INF (a);
              MPFR_RET(0);
            }
          else
            {
              MPFR_SET_NAN (a);
              MPFR_RET_NAN;
            }
        }
      else
        {
          MPFR_ASSERTD (MPFR_IS_ZERO(b) || MPFR_IS_ZERO(c));
          MPFR_SET_SIGN (a, sign);
          MPFR_SET_ZERO (a);
          MPFR_RET (0);
        }
    }
  MPFR_CLEAR_FLAGS (a);
  sign = MPFR_MULT_SIGN (MPFR_SIGN (b), MPFR_SIGN (c));

  ax = MPFR_GET_EXP (b) + MPFR_GET_EXP (c);
  /* Note: the exponent of the exact result will be e = bx + cx + ec with
     ec in {-1,0,1} and the following assumes that e is representable. */

  /* FIXME: Useful since we do an exponent check after ?
   * It is useful iff the precision is big, there is an overflow
   * and we are doing further mults...*/
#ifdef HUGE
  if (MPFR_UNLIKELY (ax > __gmpfr_emax + 1))
    return mpfr_overflow (a, rnd_mode, sign);
  if (MPFR_UNLIKELY (ax < __gmpfr_emin - 2))
    return mpfr_underflow (a, rnd_mode == GMP_RNDN ? GMP_RNDZ : rnd_mode,
                           sign);
#endif

  bq = MPFR_PREC (b);
  cq = MPFR_PREC (c);

  MPFR_ASSERTD (bq+cq > bq); /* PREC_MAX is /2 so no integer overflow */

  bn = (bq+BITS_PER_MP_LIMB-1)/BITS_PER_MP_LIMB; /* number of limbs of b */
  cn = (cq+BITS_PER_MP_LIMB-1)/BITS_PER_MP_LIMB; /* number of limbs of c */
  k = bn + cn; /* effective nb of limbs used by b*c (= tn or tn+1) below */
  tn = (bq + cq + BITS_PER_MP_LIMB - 1) / BITS_PER_MP_LIMB;
  MPFR_ASSERTD (tn <= k); /* tn <= k, thus no int overflow */

  /* Check for no size_t overflow*/
  MPFR_ASSERTD ((size_t) k <= ((size_t) -1) / BYTES_PER_MP_LIMB);
  MPFR_TMP_MARK (marker);
  tmp = (mp_limb_t *) MPFR_TMP_ALLOC ((size_t) k * BYTES_PER_MP_LIMB);

  /* multiplies two mantissa in temporary allocated space */
  if (MPFR_UNLIKELY (bn < cn))
    {
      mpfr_srcptr tmp = b;
      mp_size_t tn  = bn;
      b = c;
      bn = cn;
      c = tmp;
      cn = tn;
    }
  MPFR_ASSERTD (bn >= cn);
  /* longlong's umul_ppmm seems to be buggy on HP-UX. */
#ifndef __hpux
  if (MPFR_LIKELY (bn <= 2))
    {
      if (bn == 1)
        {
          /* 1 limb * 1 limb */
          umul_ppmm (tmp[1], tmp[0], MPFR_MANT (b)[0], MPFR_MANT (c)[0]);
          b1 = tmp[1];
        }
      else if (MPFR_UNLIKELY (cn == 1))
        {
          /* 2 limbs * 1 limb */
          mp_limb_t t;
          umul_ppmm (tmp[1], tmp[0], MPFR_MANT (b)[0], MPFR_MANT (c)[0]);
          umul_ppmm (tmp[2], t, MPFR_MANT (b)[1], MPFR_MANT (c)[0]);
          add_ssaaaa (tmp[2], tmp[1], tmp[2], tmp[1], 0, t);
          b1 = tmp[2];
        }
      else
        {
          /* 2 limbs * 2 limbs */
          mp_limb_t t1, t2, t3;
          /* First 2 limbs * 1 limb */
          umul_ppmm (tmp[1], tmp[0], MPFR_MANT (b)[0], MPFR_MANT (c)[0]);
          umul_ppmm (tmp[2], t1, MPFR_MANT (b)[1], MPFR_MANT (c)[0]);
          add_ssaaaa (tmp[2], tmp[1], tmp[2], tmp[1], 0, t1);
          /* Second, the other 2 limbs * 1 limb product */
          umul_ppmm (t1, t2, MPFR_MANT (b)[0], MPFR_MANT (c)[1]);
          umul_ppmm (tmp[3], t3, MPFR_MANT (b)[1], MPFR_MANT (c)[1]);
          add_ssaaaa (tmp[3], t1, tmp[3], t1, 0, t3);
          /* Sum those two partial products */
          add_ssaaaa (tmp[2], tmp[1], tmp[2], tmp[1], t1, t2);
          tmp[3] += (tmp[2] < t1);
          b1 = tmp[3];
        }
      b1 >>= (BITS_PER_MP_LIMB - 1);
      tmp += k - tn;
      if (MPFR_UNLIKELY (b1 == 0))
        mpn_lshift (tmp, tmp, tn, 1); /* tn <= k, so no stack corruption */
    }
  else
#endif
    if (MPFR_UNLIKELY (bn > MPFR_MUL_THRESHOLD))
      {
        mp_limb_t *bp, *cp;
        mp_size_t n;
        mp_prec_t p;

        /* Fist check if we can reduce the precision of b or c:
           exact values are a nightmare for the short product trick */
        bp = MPFR_MANT (b);
        cp = MPFR_MANT (c);
        MPFR_ASSERTN (MPFR_MUL_THRESHOLD >= 1);
        if (MPFR_UNLIKELY ((bp[0] == 0 && bp[1] == 0) ||
                           (cp[0] == 0 && cp[1] == 0)))
          {
            mpfr_t b_tmp, c_tmp;

            MPFR_TMP_FREE (marker);
            /* Check for b */
            while (*bp == 0)
              {
                bp++;
                bn--;
                MPFR_ASSERTD (bn > 0);
              } /* This must end since the MSL is != 0 */

            /* Check for c too */
            while (*cp == 0)
              {
                cp++;
                cn--;
                MPFR_ASSERTD (cn > 0);
              } /* This must end since the MSL is != 0 */

            /* It is not the faster way, but it is safer */
            MPFR_SET_SAME_SIGN (b_tmp, b);
            MPFR_SET_EXP (b_tmp, MPFR_GET_EXP (b));
            MPFR_PREC (b_tmp) = bn * BITS_PER_MP_LIMB;
            MPFR_MANT (b_tmp) = bp;

            MPFR_SET_SAME_SIGN (c_tmp, c);
            MPFR_SET_EXP (c_tmp, MPFR_GET_EXP (c));
            MPFR_PREC (c_tmp) = cn * BITS_PER_MP_LIMB;
            MPFR_MANT (c_tmp) = cp;

            /* Call again mpfr_mul with the fixed arguments */
            return mpfr_mul (a, b_tmp, c_tmp, rnd_mode);
          }

        /* Compute estimated precision of mulhigh.
           We could use `+ (n < cn) + (n < bn)' instead of `+ 2',
           but does it worth it? */
        n = MPFR_LIMB_SIZE (a) + 1;
        n = MIN (n, cn);
        MPFR_ASSERTD (n >= 1 && 2*n <= k && n <= cn && n <= bn);
        p = n * BITS_PER_MP_LIMB - MPFR_INT_CEIL_LOG2 (n + 2);
        bp += bn - n;
        cp += cn - n;

        /* Check if MulHigh can produce a roundable result.
           We may lost 1 bit due to RNDN, 1 due to final shift. */
        if (MPFR_UNLIKELY (MPFR_PREC (a) > p - 5))
          {
            if (MPFR_UNLIKELY (MPFR_PREC (a) > p - 5 + BITS_PER_MP_LIMB
                               || bn <= MPFR_MUL_THRESHOLD+1))
              {
                /* MulHigh can't produce a roundable result. */
                MPFR_LOG_MSG (("mpfr_mulhigh can't be used (%lu VS %lu)\n",
                               MPFR_PREC (a), p));
                goto full_multiply;
              }
            /* Add one extra limb to mantissa of b and c. */
            if (bn > n)
              bp --;
            else
              {
                bp = MPFR_TMP_ALLOC ((n+1) * sizeof (mp_limb_t));
                bp[0] = 0;
                MPN_COPY (bp + 1, MPFR_MANT (b) + bn - n, n);
              }
            if (cn > n)
              cp --; /* FIXME: Could this happen? */
            else
              {
                cp = MPFR_TMP_ALLOC ((n+1) * sizeof (mp_limb_t));
                cp[0] = 0;
                MPN_COPY (cp + 1, MPFR_MANT (c) + cn - n, n);
              }
            /* We will compute with one extra limb */
            n++;
            p = n * BITS_PER_MP_LIMB - MPFR_INT_CEIL_LOG2 (n + 2);
            /* Due to some nasty reasons we can have only 4 bits */
            MPFR_ASSERTD (MPFR_PREC (a) <= p - 4);

            if (MPFR_LIKELY (k < 2*n))
              {
                tmp = MPFR_TMP_ALLOC (2 * n * sizeof (mp_limb_t));
                tmp += 2*n-k; /* `tmp' still points to an area of `k' limbs */
              }
          }
        MPFR_LOG_MSG (("Use mpfr_mulhigh (%lu VS %lu)\n", MPFR_PREC (a), p));
        /* Compute an approximation of the product of b and c */
        mpfr_mulhigh_n (tmp+k-2*n, bp, cp, n);
        /* now tmp[0]..tmp[k-1] contains the product of both mantissa,
           with tmp[k-1]>=2^(BITS_PER_MP_LIMB-2) */
        b1 = tmp[k-1] >> (BITS_PER_MP_LIMB - 1); /* msb from the product */

        /* If the mantissas of b and c are uniformly distributed in (1/2, 1],
           then their product is in (1/4, 1/2] with probability 2*ln(2)-1
           ~ 0.386 and in [1/2, 1] with probability 2-2*ln(2) ~ 0.614 */
        tmp += k - tn;
        if (MPFR_UNLIKELY (b1 == 0))
          mpn_lshift (tmp, tmp, tn, 1);
        MPFR_ASSERTD (MPFR_LIMB_MSB (tmp[tn-1]) != 0);

        if (MPFR_UNLIKELY (!mpfr_round_p (tmp, tn, p+b1-1, MPFR_PREC(a)
                                          + (rnd_mode == GMP_RNDN))))
          {
            tmp -= k - tn; /* tmp may have changed, FIX IT!!!!! */
            goto full_multiply;
          }
      }
    else
      {
      full_multiply:
        MPFR_LOG_MSG (("Use mpn_mul\n", 0));
        b1 = mpn_mul (tmp, MPFR_MANT (b), bn, MPFR_MANT (c), cn);

        /* now tmp[0]..tmp[k-1] contains the product of both mantissa,
           with tmp[k-1]>=2^(BITS_PER_MP_LIMB-2) */
        b1 >>= BITS_PER_MP_LIMB - 1; /* msb from the product */

        /* if the mantissas of b and c are uniformly distributed in (1/2, 1],
           then their product is in (1/4, 1/2] with probability 2*ln(2)-1
           ~ 0.386 and in [1/2, 1] with probability 2-2*ln(2) ~ 0.614 */
        tmp += k - tn;
        if (MPFR_UNLIKELY (b1 == 0))
          mpn_lshift (tmp, tmp, tn, 1); /* tn <= k, so no stack corruption */
      }

  ax2 = ax + (mp_exp_t) (b1 - 1);
  MPFR_RNDRAW (inexact, a, tmp, bq+cq, rnd_mode, sign, ax2++);
  MPFR_TMP_FREE (marker);
  MPFR_EXP  (a) = ax2; /* Can't use MPFR_SET_EXP: Expo may be out of range */
  MPFR_SET_SIGN (a, sign);
  if (MPFR_UNLIKELY (ax2 > __gmpfr_emax))
    return mpfr_overflow (a, rnd_mode, sign);
  if (MPFR_UNLIKELY (ax2 < __gmpfr_emin))
    {
      /* In the rounding to the nearest mode, if the exponent of the exact
         result (i.e. before rounding, i.e. without taking cc into account)
         is < __gmpfr_emin - 1 or the exact result is a power of 2 (i.e. if
         both arguments are powers of 2), then round to zero. */
      if (rnd_mode == GMP_RNDN
          && (ax + (mp_exp_t) b1 < __gmpfr_emin
              || (mpfr_powerof2_raw (b) && mpfr_powerof2_raw (c))))
        rnd_mode = GMP_RNDZ;
      return mpfr_underflow (a, rnd_mode, sign);
    }
  return inexact;
}
