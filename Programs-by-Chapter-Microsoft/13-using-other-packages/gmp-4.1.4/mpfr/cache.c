/* mpfr_cache -- cache interface for multi-precision const in MPFR.

Copyright 2004, 2005 Free Software Foundation.

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

void
mpfr_init_cache (mpfr_cache_t cache, int (*func)(mpfr_ptr, mp_rnd_t))
{
  MPFR_PREC (cache->x) = 0; /* Invalid prec to detect that the cache is not
                               valid. Maybe add a flag? */
  cache->func = func;
}

void
mpfr_clear_cache (mpfr_cache_t cache)
{
  if (MPFR_PREC(cache->x) != 0)
    mpfr_clear (cache->x);
  MPFR_PREC(cache->x) = 0;
}

int
mpfr_cache (mpfr_ptr dest, mpfr_cache_t cache, mp_rnd_t rnd)
{
  mp_prec_t prec = MPFR_PREC (dest);
  mp_prec_t pold = MPFR_PREC (cache->x);
  int inexact, sign;
  MPFR_SAVE_EXPO_DECL (expo);

  MPFR_SAVE_EXPO_MARK (expo);

  /* Check if the cache has been already filled */
  if (MPFR_UNLIKELY(pold == 0))
    mpfr_init2 (cache->x, prec);

  /* Check if we can round with the previous result */
  else if (MPFR_LIKELY(prec <= pold))
    goto round;

  /* Update the cache */
  pold = prec /*MPFR_PREC_MIN + prec + __gmpfr_ceil_exp2 (prec)*/;
  MPFR_ASSERTD (pold >= prec);
  mpfr_prec_round (cache->x, pold, GMP_RNDN);
  cache->inexact = (*cache->func) (cache->x, GMP_RNDN);

 round:
  /* First check if the cache has the exact value (Unlikely)
     Else the exact value is between (assuming x=cache->x > 0)
     x and x+ulp(x) if cache->inexact < 0
     x-ulp(x) and x if cache->inexact > 0
     and abs(x-exact) <= ulp(x)/2 */
  MPFR_ASSERTD (MPFR_IS_POS(cache->x)); /* TODO...*/
  /* We must use nextbelow instead of sub_one_ulp, since we know
     that the exact value is < 1/2ulp(x) (We want sub_demi_ulp(x)).
     Can't use mpfr_set since we need the even flag. */
  sign = MPFR_SIGN (cache->x);
  MPFR_SET_EXP (dest, MPFR_GET_EXP (cache->x));
  MPFR_SET_SIGN (dest, sign);
  MPFR_RNDRAW_EVEN (inexact, dest,
                    MPFR_MANT (cache->x), MPFR_PREC (cache->x), rnd, sign,
                    if (MPFR_UNLIKELY ( ++MPFR_EXP (dest) > __gmpfr_emax))
                       mpfr_overflow (dest, rnd, sign) );
  /* inexact = mpfr_set (dest, cache->x, rnd); */
  if (MPFR_LIKELY(cache->inexact != 0))
    {
      switch (rnd)
        {
        case GMP_RNDZ:
        case GMP_RNDD:
          if (MPFR_UNLIKELY(inexact == 0))
            {
              inexact = cache->inexact;
              if (inexact > 0)
                mpfr_nextbelow (dest);
            }
          break;
        case GMP_RNDU:
          if (MPFR_UNLIKELY(inexact == 0))
            {
              inexact = cache->inexact;
              if (inexact < 0)
                mpfr_nextabove (dest);
            }
          break;
        default: /* GMP_RNDN */
          if (MPFR_UNLIKELY(inexact == MPFR_EVEN_INEX ||
                            inexact == -MPFR_EVEN_INEX))
            {
              if (cache->inexact < 0)
                mpfr_nextabove (dest);
              else
                mpfr_nextbelow (dest);
              inexact = -inexact;
            }
          else if (MPFR_UNLIKELY(inexact == 0))
            inexact = cache->inexact;
          break;
        }
    }

  MPFR_SAVE_EXPO_FREE (expo);
  return mpfr_check_range (dest, inexact, rnd);
}
