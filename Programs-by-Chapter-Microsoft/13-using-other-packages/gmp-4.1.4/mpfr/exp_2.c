/* mpfr_exp_2 -- exponential of a floating-point number
                using Brent's algorithms in O(n^(1/2)*M(n)) and O(n^(1/3)*M(n))

Copyright 1999, 2000, 2001, 2002, 2003, 2004, 2005 Free Software Foundation, Inc.

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

#include <limits.h>

/* #define DEBUG */
#define MPFR_NEED_LONGLONG_H /* for count_leading_zeros */
#include "mpfr-impl.h"

static unsigned long
mpfr_exp2_aux (mpz_t, mpfr_srcptr, mp_prec_t, mp_exp_t *);
static unsigned long
mpfr_exp2_aux2 (mpz_t, mpfr_srcptr, mp_prec_t, mp_exp_t *);
static mp_exp_t
mpz_normalize  (mpz_t, mpz_t, mp_exp_t);
static mp_exp_t
mpz_normalize2 (mpz_t, mpz_t, mp_exp_t, mp_exp_t);

#define MY_INIT_MPZ(x, s) { \
   (x)->_mp_alloc = (s); \
   PTR(x) = (mp_ptr) MPFR_TMP_ALLOC((s)*BYTES_PER_MP_LIMB); \
   (x)->_mp_size = 0; }

/* if k = the number of bits of z > q, divides z by 2^(k-q) and returns k-q.
   Otherwise do nothing and return 0.
 */
static mp_exp_t
mpz_normalize (mpz_t rop, mpz_t z, mp_exp_t q)
{
  size_t k;

  MPFR_MPZ_SIZEINBASE2 (k, z);
  MPFR_ASSERTD (k == (mpfr_uexp_t) k);
  if (q < 0 || (mpfr_uexp_t) k > (mpfr_uexp_t) q)
    {
      mpz_div_2exp(rop, z, (unsigned long) ((mpfr_uexp_t) k - q));
      return (mp_exp_t) k - q;
    }
  if (MPFR_UNLIKELY(rop != z))
    mpz_set(rop, z);
  return 0;
}

/* if expz > target, shift z by (expz-target) bits to the left.
   if expz < target, shift z by (target-expz) bits to the right.
   Returns target.
*/
static mp_exp_t
mpz_normalize2 (mpz_t rop, mpz_t z, mp_exp_t expz, mp_exp_t target)
{
  if (target > expz)
    mpz_div_2exp(rop, z, target-expz);
  else
    mpz_mul_2exp(rop, z, expz-target);
  return target;
}

/* use Brent's formula exp(x) = (1+r+r^2/2!+r^3/3!+...)^(2^K)*2^n
   where x = n*log(2)+(2^K)*r
   together with Brent-Kung O(t^(1/2)) algorithm for the evaluation of
   power series. The resulting complexity is O(n^(1/3)*M(n)).
*/
int
mpfr_exp_2 (mpfr_ptr y, mpfr_srcptr x, mp_rnd_t rnd_mode)
{
  double d;
  long n;
  unsigned long K, k, l, err; /* FIXME: Which type ? */
  int error_r;
  mp_exp_t exps;
  mp_prec_t q, precy;
  int inexact;
  mpfr_t r, s;
  mpz_t ss;
  MPFR_ZIV_DECL (loop);
  MPFR_TMP_DECL(marker);

  precy = MPFR_PREC(y);

  d = mpfr_get_d1 (x) / LOG2;
  /* FIXME: d may be too large if one decides to change mp_exp_t */
  MPFR_ASSERTN (d >= LONG_MIN && d <= LONG_MAX);
  n = (long) d;
  MPFR_LOG_MSG (("d(x)=%1.30e n=%ld\n", mpfr_get_d1(x), n));

  /* error bounds the cancelled bits in x - n*log(2) */
  if (MPFR_UNLIKELY (n == 0))
    error_r = 0;
  else
    count_leading_zeros (error_r, (mp_limb_t) SAFE_ABS (unsigned long, n));
  error_r = BITS_PER_MP_LIMB - error_r + 2;

  /* for the O(n^(1/2)*M(n)) method, the Taylor series computation of
     n/K terms costs about n/(2K) multiplications when computed in fixed
     point */
  K = (precy < MPFR_EXP_2_THRESHOLD) ? __gmpfr_isqrt ((precy + 1) / 2)
    : __gmpfr_cuberoot (4*precy);
  l = (precy - 1) / K + 1;
  err = K + MPFR_INT_CEIL_LOG2 (2 * l + 18);
  /* add K extra bits, i.e. failure probability <= 1/2^K = O(1/precy) */
  q = precy + err + K + 5;

  mpfr_init2 (r, q + error_r);
  mpfr_init2 (s, q + error_r);

  /* the algorithm consists in computing an upper bound of exp(x) using
     a precision of q bits, and see if we can round to MPFR_PREC(y) taking
     into account the maximal error. Otherwise we increase q. */
  MPFR_ZIV_INIT (loop, q);
  for (;;)
    {
      MPFR_LOG_MSG (("n=%d K=%d l=%d q=%d\n",n,K,l,q) );

      /* if n<0, we have to get an upper bound of log(2)
         in order to get an upper bound of r = x-n*log(2) */
      mpfr_const_log2 (s, (n >= 0) ? GMP_RNDZ : GMP_RNDU);
      /* s is within 1 ulp of log(2) */

      mpfr_mul_ui (r, s, (n < 0) ? -n : n, (n >= 0) ? GMP_RNDZ : GMP_RNDU);
      /* r is within 3 ulps of n*log(2) */
      if (n < 0)
        MPFR_CHANGE_SIGN (r);
      /* r = floor(n*log(2)), within 3 ulps */

      MPFR_LOG_VAR (x);
      MPFR_LOG_VAR (r);

      mpfr_sub (r, x, r, GMP_RNDU);
      /* possible cancellation here: the error on r is at most
         3*2^(EXP(old_r)-EXP(new_r)) */
      while (MPFR_IS_NEG (r))
        { /* initial approximation n was too large */
          n--;
          mpfr_add (r, r, s, GMP_RNDU);
        }
      mpfr_prec_round (r, q, GMP_RNDU);
      MPFR_LOG_VAR (r);
      MPFR_ASSERTD (MPFR_IS_POS (r));
      mpfr_div_2ui (r, r, K, GMP_RNDU); /* r = (x-n*log(2))/2^K, exact */

      MPFR_TMP_MARK(marker);
      MY_INIT_MPZ(ss, 3 + 2*((q-1)/BITS_PER_MP_LIMB));
      exps = mpfr_get_z_exp (ss, s);
      /* s <- 1 + r/1! + r^2/2! + ... + r^l/l! */
      l = (precy < MPFR_EXP_2_THRESHOLD)
        ? mpfr_exp2_aux (ss, r, q, &exps)      /* naive method */
        : mpfr_exp2_aux2 (ss, r, q, &exps);    /* Brent/Kung method */

      MPFR_LOG_MSG (("l=%d q=%d (K+l)*q^2=%1.3e\n", l, q, (K+l)*(double)q*q));

      for (k = 0; k < K; k++)
        {
          mpz_mul (ss, ss, ss);
          exps <<= 1;
          exps += mpz_normalize (ss, ss, q);
        }
      mpfr_set_z (s, ss, GMP_RNDN);

      MPFR_SET_EXP(s, MPFR_GET_EXP (s) + exps);
      MPFR_TMP_FREE(marker); /* don't need ss anymore */

      mpfr_clear_underflow ();
      mpfr_mul_2si (s, s, n, GMP_RNDU);
      /* Check if an overflow occurs */
      if (MPFR_UNLIKELY (MPFR_IS_INF (s)))
        {
          /* We hack to set a FP number outside the valid range so that
             mpfr_check_range properly generates an overflow */
          mpfr_setmax (y, __gmpfr_emax);
          MPFR_EXP (y) ++;
          inexact = 1;
          break;
        }
      /* Check if an underflow occurs */
      else if (MPFR_UNLIKELY (mpfr_underflow_p ()))
        {
          /* We hack to set a FP number outside the valid range so that
             mpfr_check_range properly generates an underflow.
             Note that the range has been increased to allow a safe
             detection of underflow (MPFR_EMIN_MIN-3 in exp.c) even for
             RNDN */
          mpfr_setmax (y, MPFR_EMIN_MIN-2);
          inexact = -1;
          break;
        }

      /* error is at most 2^K*l */
      K += MPFR_INT_CEIL_LOG2 (l);

      MPFR_LOG_MSG (("after mult. by 2^n:\n", 0));
      MPFR_LOG_VAR (s);
      MPFR_LOG_MSG (("err=%d bits\n", K));

      if (MPFR_LIKELY (MPFR_CAN_ROUND (s, q-K, precy, rnd_mode)))
        {
          inexact = mpfr_set (y, s, rnd_mode);
          break;
        }
      MPFR_ZIV_NEXT (loop, q);
      mpfr_set_prec (r, q);
      mpfr_set_prec (s, q);
    }
  MPFR_ZIV_FREE (loop);

  mpfr_clear (r);
  mpfr_clear (s);

  return inexact;
}

/* s <- 1 + r/1! + r^2/2! + ... + r^l/l! while MPFR_EXP(r^l/l!)+MPFR_EXPR(r)>-q
   using naive method with O(l) multiplications.
   Return the number of iterations l.
   The absolute error on s is less than 3*l*(l+1)*2^(-q).
   Version using fixed-point arithmetic with mpz instead
   of mpfr for internal computations.
   s must have at least qn+1 limbs (qn should be enough, but currently fails
   since mpz_mul_2exp(s, s, q-1) reallocates qn+1 limbs)
*/
static unsigned long
mpfr_exp2_aux (mpz_t s, mpfr_srcptr r, mp_prec_t q, mp_exp_t *exps)
{
  unsigned long l;
  mp_exp_t dif, expt, expr;
  mp_size_t qn;
  mpz_t t, rr;
  mp_size_t sbit, tbit;
  MPFR_TMP_DECL(marker);

  MPFR_TMP_MARK(marker);
  qn = 1 + (q-1)/BITS_PER_MP_LIMB;
  expt = 0;
  *exps = 1 - (mp_exp_t) q;                   /* s = 2^(q-1) */
  MY_INIT_MPZ(t, 2*qn+1);
  MY_INIT_MPZ(rr, qn+1);
  mpz_set_ui(t, 1);
  mpz_set_ui(s, 1);
  mpz_mul_2exp(s, s, q-1);
  expr = mpfr_get_z_exp(rr, r);               /* no error here */

  l = 0;
  for (;;) {
    l++;
    mpz_mul(t, t, rr);
    expt += expr;
    MPFR_MPZ_SIZEINBASE2 (sbit, s);
    MPFR_MPZ_SIZEINBASE2 (tbit, t);
    dif = *exps + sbit - expt - tbit;
    /* truncates the bits of t which are < ulp(s) = 2^(1-q) */
    expt += mpz_normalize(t, t, (mp_exp_t) q-dif); /* error at most 2^(1-q) */
    mpz_div_ui(t, t, l);                   /* error at most 2^(1-q) */
    /* the error wrt t^l/l! is here at most 3*l*ulp(s) */
    MPFR_ASSERTD (expt == *exps);
    if (mpz_sgn (t) == 0)
      break;
    mpz_add(s, s, t);                      /* no error here: exact */
    /* ensures rr has the same size as t: after several shifts, the error
       on rr is still at most ulp(t)=ulp(s) */
    MPFR_MPZ_SIZEINBASE2 (tbit, t);
    expr += mpz_normalize(rr, rr, tbit);
  }

  MPFR_TMP_FREE(marker);
  return 3*l*(l+1);
}

/* s <- 1 + r/1! + r^2/2! + ... + r^l/l! while MPFR_EXP(r^l/l!)+MPFR_EXPR(r)>-q
   using Brent/Kung method with O(sqrt(l)) multiplications.
   Return l.
   Uses m multiplications of full size and 2l/m of decreasing size,
   i.e. a total equivalent to about m+l/m full multiplications,
   i.e. 2*sqrt(l) for m=sqrt(l).
   Version using mpz. ss must have at least (sizer+1) limbs.
   The error is bounded by (l^2+4*l) ulps where l is the return value.
*/
static unsigned long
mpfr_exp2_aux2 (mpz_t s, mpfr_srcptr r, mp_prec_t q, mp_exp_t *exps)
{
  mp_exp_t expr, *expR, expt;
  mp_size_t sizer;
  mp_prec_t ql;
  unsigned long l, m, i;
  mpz_t t, *R, rr, tmp;
  mp_size_t sbit, rrbit;
  MPFR_TMP_DECL(marker);

  /* estimate value of l */
  MPFR_ASSERTD (MPFR_GET_EXP (r) < 0);
  l = q / (- MPFR_GET_EXP (r));
  m = __gmpfr_isqrt (l);
  /* we access R[2], thus we need m >= 2 */
  if (m < 2)
    m = 2;

  MPFR_TMP_MARK(marker);
  R = (mpz_t*) MPFR_TMP_ALLOC((m+1)*sizeof(mpz_t));          /* R[i] is r^i */
  expR = (mp_exp_t*) MPFR_TMP_ALLOC((m+1)*sizeof(mp_exp_t)); /* exponent for R[i] */
  sizer = 1 + (MPFR_PREC(r)-1)/BITS_PER_MP_LIMB;
  mpz_init(tmp);
  MY_INIT_MPZ(rr, sizer+2);
  MY_INIT_MPZ(t, 2*sizer);            /* double size for products */
  mpz_set_ui(s, 0);
  *exps = 1-q;                        /* 1 ulp = 2^(1-q) */
  for (i = 0 ; i <= m ; i++)
    MY_INIT_MPZ(R[i], sizer+2);
  expR[1] = mpfr_get_z_exp(R[1], r); /* exact operation: no error */
  expR[1] = mpz_normalize2(R[1], R[1], expR[1], 1-q); /* error <= 1 ulp */
  mpz_mul(t, R[1], R[1]); /* err(t) <= 2 ulps */
  mpz_div_2exp(R[2], t, q-1); /* err(R[2]) <= 3 ulps */
  expR[2] = 1-q;
  for (i = 3 ; i <= m ; i++)
    {
      mpz_mul(t, R[i-1], R[1]); /* err(t) <= 2*i-2 */
      mpz_div_2exp(R[i], t, q-1); /* err(R[i]) <= 2*i-1 ulps */
      expR[i] = 1-q;
    }
  mpz_set_ui (R[0], 1);
  mpz_mul_2exp (R[0], R[0], q-1);
  expR[0] = 1-q; /* R[0]=1 */
  mpz_set_ui (rr, 1);
  expr = 0; /* rr contains r^l/l! */
  /* by induction: err(rr) <= 2*l ulps */

  l = 0;
  ql = q; /* precision used for current giant step */
  do {
    /* all R[i] must have exponent 1-ql */
    if (l != 0)
      for (i = 0 ; i < m ; i++)
        expR[i] = mpz_normalize2 (R[i], R[i], expR[i], 1-ql);
    /* the absolute error on R[i]*rr is still 2*i-1 ulps */
    expt = mpz_normalize2 (t, R[m-1], expR[m-1], 1-ql);
    /* err(t) <= 2*m-1 ulps */
    /* computes t = 1 + r/(l+1) + ... + r^(m-1)*l!/(l+m-1)!
       using Horner's scheme */
    for (i = m-1 ; i-- != 0 ; )
      {
        mpz_div_ui(t, t, l+i+1); /* err(t) += 1 ulp */
        mpz_add(t, t, R[i]);
      }
    /* now err(t) <= (3m-2) ulps */

    /* now multiplies t by r^l/l! and adds to s */
    mpz_mul(t, t, rr);
    expt += expr;
    expt = mpz_normalize2(t, t, expt, *exps);
    /* err(t) <= (3m-1) + err_rr(l) <= (3m-2) + 2*l */
    MPFR_ASSERTD (expt == *exps);
    mpz_add(s, s, t); /* no error here */

    /* updates rr, the multiplication of the factors l+i could be done
       using binary splitting too, but it is not sure it would save much */
    mpz_mul(t, rr, R[m]); /* err(t) <= err(rr) + 2m-1 */
    expr += expR[m];
    mpz_set_ui (tmp, 1);
    for (i = 1 ; i <= m ; i++)
      mpz_mul_ui (tmp, tmp, l + i);
    mpz_fdiv_q(t, t, tmp); /* err(t) <= err(rr) + 2m */
    l += m;
    if (MPFR_UNLIKELY (mpz_sgn (t) == 0))
      break;
    expr += mpz_normalize(rr, t, ql); /* err_rr(l+1) <= err_rr(l) + 2m+1 */
    if (MPFR_UNLIKELY (mpz_sgn (rr) == 0))
      rrbit = 1;
    else
      MPFR_MPZ_SIZEINBASE2 (rrbit, rr);
    MPFR_MPZ_SIZEINBASE2 (sbit, s);
    ql = q - *exps - sbit + expr + rrbit;
    /* TODO: Wrong cast. I don't want what is right, but this is
       certainly wrong */
  }  while ((size_t) expr+rrbit > (size_t)((int)-q));

  MPFR_TMP_FREE(marker);
  mpz_clear(tmp);
  return l*(l+4);
}
