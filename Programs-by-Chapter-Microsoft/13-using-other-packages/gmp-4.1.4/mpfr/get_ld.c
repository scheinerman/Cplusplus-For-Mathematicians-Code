/* mpfr_get_ld -- convert a multiple precision floating-point number
                  to a machine long double

Copyright 2002, 2003, 2004, 2005 Free Software Foundation, Inc.

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

#include <float.h>

#include "mpfr-impl.h"

#ifndef HAVE_LDOUBLE_IEEE_EXT_LITTLE

long double
mpfr_get_ld (mpfr_srcptr x, mp_rnd_t rnd_mode)
{

  if (MPFR_UNLIKELY (MPFR_IS_SINGULAR (x)))
    return (long double) mpfr_get_d (x, rnd_mode);
  else /* now x is a normal non-zero number */
    {
      long double r; /* result */
      long double m;
      double s; /* part of result */
      mp_exp_t sh; /* exponent shift, so that x/2^sh is in the double range */
      mpfr_t y, z;
      int sign;

      /* first round x to the target long double precision, so that
         all subsequent operations are exact (this avoids double rounding
         problems) */
      mpfr_init2 (y, MPFR_LDBL_MANT_DIG);
      mpfr_init2 (z, IEEE_DBL_MANT_DIG);

      mpfr_set (y, x, rnd_mode);
      sh = MPFR_GET_EXP (y);
      sign = MPFR_SIGN (y);
      MPFR_SET_EXP (y, 0);
      MPFR_SET_POS (y);

      r = 0.0;
      do {
        s = mpfr_get_d (y, GMP_RNDN); /* high part of y */
        r += (long double) s;
        mpfr_set_d (z, s, GMP_RNDN);  /* exact */
        mpfr_sub (y, y, z, GMP_RNDN); /* exact */
      } while (!MPFR_IS_ZERO (y));

      mpfr_clear (z);
      mpfr_clear (y);

      /* we now have to multiply back by 2^sh */
      MPFR_ASSERTD (r > 0);
      if (sh != 0)
        {
          /* An overflow may occurs (example: 0.5*2^1024) */
          while (r < 1.0)
            {
              r += r;
              sh--;
            }

          if (sh > 0)
            m = 2.0;
          else
            {
              m = 0.5;
              sh = -sh;
            }

          for (;;)
            {
              if (sh % 2)
                r = r * m;
              sh >>= 1;
              if (sh == 0)
                break;
              m = m * m;
            }
        }
      if (sign < 0)
        r = -r;
      return r;
    }
}

#else

static const struct {
  char         bytes[10];
  long double  dummy;  /* for memory alignment */
} ldbl_max_struct = {
  { '\377','\377','\377','\377',
    '\377','\377','\377','\377',
    '\376','\177' }, 0.0
};

#define MPFR_LDBL_MAX   (* (const long double *) ldbl_max_struct.bytes)

long double
mpfr_get_ld (mpfr_srcptr x, mp_rnd_t rnd_mode)
{
  mpfr_long_double_t ld;
  mpfr_t tmp;
  MPFR_SAVE_EXPO_DECL (expo);

  MPFR_SAVE_EXPO_MARK (expo);
  mpfr_set_emin (-16382-63);
  mpfr_set_emax (16383);

  mpfr_init2 (tmp, MPFR_LDBL_MANT_DIG);
  mpfr_subnormalize(tmp, mpfr_set (tmp, x, rnd_mode), rnd_mode);
  mpfr_prec_round (tmp, 64, GMP_RNDZ); /* exact */
  if (MPFR_UNLIKELY (MPFR_IS_SINGULAR (tmp)))
    ld.ld = (long double) mpfr_get_d (tmp, rnd_mode);
  else
    {
      mp_limb_t *tmpmant;
      mp_exp_t e, denorm;

      tmpmant = MPFR_MANT (tmp);
      e = MPFR_GET_EXP (tmp);
      denorm = MPFR_UNLIKELY (e < -16382) ? - e - 16382 + 1 : 0;
#if BITS_PER_MP_LIMB >= 64
      ld.s.manl = (tmpmant[0] >> denorm);
      ld.s.manh = (tmpmant[0] >> denorm) >> 32;
#elif BITS_PER_MP_LIMB == 32
      if (MPFR_LIKELY (denorm == 0))
        {
          ld.s.manl = tmpmant[0];
          ld.s.manh = tmpmant[1];
        }
      else if (denorm < 32)
        {
          ld.s.manl = (tmpmant[0] >> denorm) | (tmpmant[1] << (32 - denorm));
          ld.s.manh = tmpmant[1] >> denorm;
        }
      else /* 32 <= denorm <= 64 */
        {
          ld.s.manl = tmpmant[1] >> (denorm - 32);
          ld.s.manh = 0;
        }
#else
# error "BITS_PER_MP_LIMB must be 32 or >= 64"
      /* Other values have never been supported anyway. */
#endif
      if (MPFR_LIKELY (denorm == 0))
        {
          ld.s.exph = (e + 0x3FFE) >> 8;
          ld.s.expl = (e + 0x3FFE);
        }
      else
        ld.s.exph = ld.s.expl = 0;
      ld.s.sign = MPFR_IS_NEG (x);
    }

  mpfr_clear (tmp);
  MPFR_SAVE_EXPO_FREE (expo);
  return ld.ld;
}

#endif
