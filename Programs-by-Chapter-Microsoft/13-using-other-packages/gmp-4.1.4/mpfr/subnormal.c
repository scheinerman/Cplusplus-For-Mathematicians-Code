/* mpfr_subnormalize -- Subnormalize a floating point number
   emulating sub-normal numbers.

Copyright 2005 Free Software Foundation, Inc.

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

/* For GMP_RNDN, we can have a problem of double rounding.
   In such a case, this table helps to conclude what to do (y positive):
     Rounding Bit |  Sticky Bit | inexact  | Action    | new inexact
     0            |   ?         | ?        | Trunc     | sticky
     1            |   0         | -1       | Trunc     |
     1            |   0         |  0       | Trunc if even |
     1            |   0         |  1       | AddOneUlp |
     1            |   1         |  ?       | AddOneUlp |

   For other rounding mode, there isn't such a problem.
   Just round it again and merge the inexact flags.
*/

int
mpfr_subnormalize (mpfr_ptr y, int old_inexact, mp_rnd_t rnd)
{
  int inexact = 0;

  MPFR_ASSERTD ((mpfr_uexp_t) __gmpfr_emax - __gmpfr_emin >= MPFR_PREC (y));

  /* The subnormal exponent range are from:
      mpfr_emin to mpfr_emin + MPFR_PREC(y) - 1  */
  if (MPFR_LIKELY (MPFR_IS_SINGULAR (y)
                   || (MPFR_GET_EXP (y) >=
                       __gmpfr_emin + (mp_exp_t) MPFR_PREC (y) - 1)))
    inexact = old_inexact;

  /* We have to emulate one bit rounding if EXP(y) = emin */
  else if (MPFR_GET_EXP (y) == __gmpfr_emin)
    {
      /* If this is a power of 2, we don't need rounding.
         It handles cases when rouding away and y=0.1*2^emin */
      if (mpfr_powerof2_raw (y))
        inexact = old_inexact;
      /* We keep the same sign for y.
         Assuming Y is the real value and y the approximation
         and since y is not a power of 2:  0.5*2^emin < Y < 1*2^emin
         We also know the direction of the error thanks to inexact flag */
      else if (rnd == GMP_RNDN)
        {
          mp_limb_t *mant, rb ,sb;
          mp_size_t s;
          /* We need the rounding bit and the sticky bit. Read them
             and use the previous table to conclude. */
          s = MPFR_LIMB_SIZE (y) - 1;
          mant = MPFR_MANT (y) + s;
          rb = *mant & (MPFR_LIMB_HIGHBIT>>1);
          if (rb == 0)
            goto set_min;
          sb = *mant & ((MPFR_LIMB_HIGHBIT>>1)-1);
          while (sb == 0 && s-- != 0)
            sb = *--mant;
          if (sb != 0)
            goto set_min_p1;
          /* Rounding bit is 1 and sticky bit is 0.
             We need to examine old inexact flag to conclude. */
          if (old_inexact * MPFR_SIGN (y) < 0)
            goto set_min;
          /* If inexact != 0, return 0.1*2^emin+1.
             Otherwise, rounding bit = 1, sticky bit = 0 and inexact = 0
             So we have 0.1100000000000000000000000*2^emin exactly!!!
             we choose to return 0.1*2^emin+1 which minimizes the relative
             error. */
          goto set_min_p1;
        }
      else if (MPFR_IS_LIKE_RNDZ (rnd, MPFR_IS_NEG (y)))
        {
        set_min:
          mpfr_setmin (y, __gmpfr_emin);
          inexact = -MPFR_SIGN (y);
        }
      else
        {
        set_min_p1:
          mpfr_setmin (y, __gmpfr_emin+1);
          inexact = MPFR_SIGN (y);
        }
    }

  else /* Hard case: It is more or less the same problem than mpfr_cache */
    {
      mpfr_t dest;
      mp_prec_t q;
      int sign;

      /* Compute the intermediary precision */
      q = (mpfr_uexp_t) MPFR_GET_EXP (y) - __gmpfr_emin + 1;
      mpfr_init2 (dest, q);
      /* Round y in dest */
      sign = MPFR_SIGN (y);
      MPFR_SET_EXP (dest, MPFR_GET_EXP (y));
      MPFR_SET_SIGN (dest, sign);
      MPFR_RNDRAW_EVEN (inexact, dest,
                        MPFR_MANT (y), MPFR_PREC (y), rnd, sign,
                        MPFR_SET_EXP (dest, MPFR_GET_EXP (dest)+1));
      if (MPFR_LIKELY (old_inexact != 0))
        {
          if (MPFR_UNLIKELY(rnd==GMP_RNDN && (inexact == MPFR_EVEN_INEX
                                              || inexact == -MPFR_EVEN_INEX)))
            {
              if (old_inexact*inexact*MPFR_INT_SIGN (y) > 0)
                {
                  if (inexact < 0)
                    mpfr_nexttoinf (dest);
                  else
                    mpfr_nexttozero (dest);
                  inexact = -inexact;
                }
            }
          else if (MPFR_UNLIKELY (inexact == 0))
            inexact = old_inexact;
        }
      old_inexact = mpfr_set (y, dest, rnd);
      MPFR_ASSERTD (old_inexact == 0);
      mpfr_clear (dest);
    }
  return inexact;
}
