/* mpfr_get_uj -- convert a MPFR number to a huge machine unsigned integer

Copyright 2004 Free Software Foundation, Inc.

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

#if HAVE_CONFIG_H
# include "config.h"       /* for a build within gmp */
#endif

/* The ISO C99 standard specifies that in C++ implementations the
   INTMAX_MAX, ... macros should only be defined if explicitly requested.  */
#if defined __cplusplus
# define __STDC_LIMIT_MACROS
# define __STDC_CONSTANT_MACROS
#endif

#ifdef HAVE_STDINT_H
# include <stdint.h>
#endif
#ifdef HAVE_INTTYPES_H
# include <inttypes.h>
#endif

#include "mpfr-impl.h"

#ifdef _MPFR_H_HAVE_INTMAX_T

uintmax_t
mpfr_get_uj (mpfr_srcptr f, mpfr_rnd_t rnd)
{
  uintmax_t r;
  mp_prec_t prec;
  mpfr_t x;

  if (!mpfr_fits_uintmax_p (f, rnd))
    {
      MPFR_SET_ERANGE ();
      return MPFR_IS_NEG (f) ? (uintmax_t) 0 : UINTMAX_MAX;
    }

  if (MPFR_IS_ZERO (f))
    return (uintmax_t) 0;

  /* determine the precision of uintmax_t */
  for (r = UINTMAX_MAX, prec = 0; r != 0; r /= 2, prec++)
    { }

  /* Now, r = 0. */

  mpfr_init2 (x, prec);
  mpfr_rint (x, f, rnd);
  MPFR_ASSERTN (MPFR_IS_FP (x));

  if (MPFR_NOTZERO (x))
    {
      mp_limb_t *xp;
      int sh, n;  /* An int should be sufficient in this context. */

      MPFR_ASSERTN (MPFR_IS_POS (x));
      xp = MPFR_MANT (x);
      sh = MPFR_GET_EXP (x);
      MPFR_ASSERTN ((mp_prec_t) sh <= prec);
      for (n = MPFR_LIMB_SIZE(x) - 1; n >= 0; n--)
        {
          sh -= BITS_PER_MP_LIMB;
          r += (sh >= 0
                ? (uintmax_t) xp[n] << sh
                : (uintmax_t) xp[n] >> (- sh));
        }
    }

  mpfr_clear (x);

  return r;
}

#endif
