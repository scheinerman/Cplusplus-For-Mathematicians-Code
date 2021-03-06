/* Implementations of operations between mpfr and mpz/mpq data

Copyright 2001, 2003, 2004, 2005 Free Software Foundation, Inc.

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

#include <stddef.h>

#define MPFR_NEED_LONGLONG_H
#include "mpfr-impl.h"

/* Init and set a mpfr_t with enought precision to store a mpz */
static void
init_set_z (mpfr_ptr t, mpz_srcptr z)
{
  mp_prec_t p;
  int i;

  if (mpz_size (z) <= 1)
    p = BITS_PER_MP_LIMB;
  else
    MPFR_MPZ_SIZEINBASE2 (p, z);
  mpfr_init2 (t, p);
  i = mpfr_set_z (t, z, GMP_RNDN);
  MPFR_ASSERTD (i == 0);
}

/* Init, set a mpfr_t with enought precision to store a mpz_t without round,
   call the function, and clear the allocated mpfr_t  */
static int
foo (mpfr_ptr x, mpfr_srcptr y, mpz_srcptr z, mp_rnd_t r,
     int (*f)(mpfr_ptr, mpfr_srcptr, mpfr_srcptr, mp_rnd_t))
{
  mpfr_t t;
  int i;
  init_set_z (t, z);
  i = (*f) (x, y, t, r);
  mpfr_clear (t);
  return i;
}

int
mpfr_mul_z (mpfr_ptr y, mpfr_srcptr x, mpz_srcptr z, mp_rnd_t r)
{
  return foo (y, x, z, r, mpfr_mul);
}

int
mpfr_div_z (mpfr_ptr y, mpfr_srcptr x, mpz_srcptr z, mp_rnd_t r)
{
  return foo (y, x, z, r, mpfr_div);
}

int
mpfr_add_z (mpfr_ptr y, mpfr_srcptr x, mpz_srcptr z, mp_rnd_t r)
{
  /* Mpz 0 is unsigned */
  if (MPFR_UNLIKELY (mpz_sgn (z) == 0))
    return mpfr_set (y, x, r);
  else
    return foo (y, x, z, r, mpfr_add);
}

int
mpfr_sub_z (mpfr_ptr y, mpfr_srcptr x, mpz_srcptr z, mp_rnd_t r)
{
  /* Mpz 0 is unsigned */
  if (MPFR_UNLIKELY (mpz_sgn (z) == 0))
    return mpfr_set (y, x, r);
  else
    return foo (y, x, z, r, mpfr_sub);
}

int
mpfr_cmp_z (mpfr_srcptr x, mpz_srcptr z)
{
  mpfr_t t;
  int res;
  init_set_z (t, z);
  res = mpfr_cmp (x, t);
  mpfr_clear (t);
  return res;
}

int
mpfr_mul_q (mpfr_ptr y, mpfr_srcptr x, mpq_srcptr z, mp_rnd_t rnd_mode)
{
  mpfr_t tmp;
  int res;
  mp_prec_t p;

  if (MPFR_UNLIKELY (mpq_sgn (z) == 0))
    return mpfr_mul_ui (y, x, 0, rnd_mode);
  else
    {
      MPFR_MPZ_SIZEINBASE2 (p, mpq_numref (z));
      mpfr_init2 (tmp, MPFR_PREC (x) + p);
      res = mpfr_mul_z (tmp, x, mpq_numref(z), GMP_RNDN );
      MPFR_ASSERTD (res == 0);
      res = mpfr_div_z (y, tmp, mpq_denref(z), rnd_mode);
      mpfr_clear (tmp);
      return res;
    }
}

int
mpfr_div_q (mpfr_ptr y, mpfr_srcptr x, mpq_srcptr z, mp_rnd_t rnd_mode)
{
  mpfr_t tmp;
  int res;
  mp_prec_t p;

  if (MPFR_UNLIKELY (mpq_sgn (z) == 0))
    return mpfr_div_ui (y, x, 0, rnd_mode);
  else if (MPFR_UNLIKELY (mpz_sgn (mpq_denref (z)) == 0))
    p = 0;
  else
    MPFR_MPZ_SIZEINBASE2 (p, mpq_denref (z));
  mpfr_init2 (tmp, MPFR_PREC(x) + p);
  res = mpfr_mul_z (tmp, x, mpq_denref(z), GMP_RNDN );
  MPFR_ASSERTD( res == 0 );
  res = mpfr_div_z (y, tmp, mpq_numref(z), rnd_mode);
  mpfr_clear (tmp);
  return res;
}

int
mpfr_add_q (mpfr_ptr y, mpfr_srcptr x, mpq_srcptr z, mp_rnd_t rnd_mode)
{
  mpfr_t    t,q;
  mp_prec_t p;
  mp_exp_t  err;
  int res;
  MPFR_ZIV_DECL (loop);

  if (MPFR_UNLIKELY (MPFR_IS_SINGULAR (x)))
    {
      if (MPFR_IS_NAN (x))
        {
          MPFR_SET_NAN (y);
          MPFR_RET_NAN;
        }
      else if (MPFR_IS_INF (x))
        {
          MPFR_ASSERTD (mpz_sgn (mpq_denref (z)) != 0);
          MPFR_SET_INF (y);
          MPFR_SET_SAME_SIGN (y, x);
          MPFR_RET (0);
        }
      else
        {
          MPFR_ASSERTD (MPFR_IS_ZERO (x));
          if (MPFR_UNLIKELY (mpq_sgn (z) == 0))
            return mpfr_set (y, x, rnd_mode); /* signed 0 - Unsigned 0 */
          else
            return mpfr_set_q (y, z, rnd_mode);
        }
    }

  p = MPFR_PREC (y) + 10;
  mpfr_init2 (t, p);
  mpfr_init2 (q, p);

  MPFR_ZIV_INIT (loop, p);
  for (;;)
    {
      res = mpfr_set_q (q, z, GMP_RNDN);  /* Error <= 1/2 ulp(q) */
      /* If z if @INF@ (1/0), res = 0, so it quits immediately */
      if (MPFR_UNLIKELY (res == 0))
        /* Result is exact so we can add it directly! */
        {
          res = mpfr_add (y, x, q, rnd_mode);
          break;
        }
      mpfr_add (t, x, q, GMP_RNDN);       /* Error <= 1/2 ulp(t) */
      /* Error / ulp(t)      <= 1/2 + 1/2 * 2^(EXP(q)-EXP(t))
         If EXP(q)-EXP(t)>0, <= 2^(EXP(q)-EXP(t)-1)*(1+2^-(EXP(q)-EXP(t)))
                             <= 2^(EXP(q)-EXP(t))
         If EXP(q)-EXP(t)<0, <= 2^0 */
      /* We can get 0, but we can't round since q is inexact */
      if (MPFR_LIKELY (!MPFR_IS_ZERO (t)))
        {
          err = (mp_exp_t) p - 1 - MAX (MPFR_GET_EXP(q)-MPFR_GET_EXP(t), 0);
          if (MPFR_LIKELY (MPFR_CAN_ROUND (t, err, MPFR_PREC (y), rnd_mode)))
            {
              res = mpfr_set (y, t, rnd_mode);
              break;
            }
        }
      MPFR_ZIV_NEXT (loop, p);
      mpfr_set_prec (t, p);
      mpfr_set_prec (q, p);
    }
  MPFR_ZIV_FREE (loop);
  mpfr_clear (t);
  mpfr_clear (q);
  return res;
}

int
mpfr_sub_q (mpfr_ptr y, mpfr_srcptr x, mpq_srcptr z,mp_rnd_t rnd_mode)
{
  mpfr_t t,q;
  mp_prec_t p;
  int res;
  mp_exp_t err;
  MPFR_ZIV_DECL (loop);

  if (MPFR_UNLIKELY (MPFR_IS_SINGULAR (x)))
    {
      if (MPFR_IS_NAN (x))
        {
          MPFR_SET_NAN (y);
          MPFR_RET_NAN;
        }
      else if (MPFR_IS_INF (x))
        {
          MPFR_ASSERTD (mpz_sgn (mpq_denref (z)) != 0);
          MPFR_SET_INF (y);
          MPFR_SET_SAME_SIGN (y, x);
          MPFR_RET (0);
        }
      else
        {
          MPFR_ASSERTD (MPFR_IS_ZERO (x));

          if (MPFR_UNLIKELY (mpq_sgn (z) == 0))
            return mpfr_set (y, x, rnd_mode); /* signed 0 - Unsigned 0 */
          else
            {
              res =  mpfr_set_q (y, z, MPFR_INVERT_RND (rnd_mode));
              MPFR_CHANGE_SIGN (y);
              return -res;
            }
        }
    }

  p = MPFR_PREC (y) + 10;
  mpfr_init2 (t, p);
  mpfr_init2 (q, p);

  MPFR_ZIV_INIT (loop, p);
  for(;;)
    {
      res = mpfr_set_q(q, z, GMP_RNDN);  /* Error <= 1/2 ulp(q) */
      /* If z if @INF@ (1/0), res = 0, so it quits immediately */
      if (MPFR_UNLIKELY (res == 0))
        /* Result is exact so we can add it directly!*/
        {
          res = mpfr_sub (y, x, q, rnd_mode);
          break;
        }
      mpfr_sub (t, x, q, GMP_RNDN);       /* Error <= 1/2 ulp(t) */
      /* Error / ulp(t)      <= 1/2 + 1/2 * 2^(EXP(q)-EXP(t))
         If EXP(q)-EXP(t)>0, <= 2^(EXP(q)-EXP(t)-1)*(1+2^-(EXP(q)-EXP(t)))
                             <= 2^(EXP(q)-EXP(t))
                             If EXP(q)-EXP(t)<0, <= 2^0 */
      /* We can get 0, but we can't round since q is inexact */
      if (MPFR_LIKELY (!MPFR_IS_ZERO (t)))
        {
          err = (mp_exp_t) p - 1 - MAX (MPFR_GET_EXP(q)-MPFR_GET_EXP(t), 0);
          res = MPFR_CAN_ROUND (t, err, MPFR_PREC (y), rnd_mode);
          if (MPFR_LIKELY (res != 0))  /* We can round! */
            {
              res = mpfr_set (y, t, rnd_mode);
              break;
            }
        }
      MPFR_ZIV_NEXT (loop, p);
      mpfr_set_prec (t, p);
      mpfr_set_prec (q, p);
    }
  MPFR_ZIV_FREE (loop);
  mpfr_clear (t);
  mpfr_clear (q);
  return res;
}

int
mpfr_cmp_q (mpfr_srcptr x, mpq_srcptr z)
{
  mpfr_t t;
  int res;
  mp_prec_t p;
  /* x < a/b ? <=> x*b < a */
  MPFR_ASSERTD (mpz_sgn (mpq_denref (z)) != 0);
  MPFR_MPZ_SIZEINBASE2 (p, mpq_denref (z));
  mpfr_init2 (t, MPFR_PREC(x) + p);
  res = mpfr_mul_z (t, x, mpq_denref (z), GMP_RNDN );
  MPFR_ASSERTD (res == 0);
  res = mpfr_cmp_z (t, mpq_numref (z) );
  mpfr_clear (t);
  return res;
}

int
mpfr_cmp_f (mpfr_srcptr x, mpf_srcptr z)
{
  mpfr_t t;
  int res;

  mpfr_init2 (t, MPFR_PREC_MIN + ABS(SIZ(z)) * BITS_PER_MP_LIMB );
  res = mpfr_set_f (t, z, GMP_RNDN);
  MPFR_ASSERTD (res == 0);
  res = mpfr_cmp (x, t);
  mpfr_clear (t);
  return res;
}
