/* mpfr_set_sj -- set a MPFR number from a huge machine signed integer

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

int
mpfr_set_sj (mpfr_t x, intmax_t j, mp_rnd_t rnd)
{
  return mpfr_set_sj_2exp (x, j, 0, rnd);
}

int
mpfr_set_sj_2exp (mpfr_t x, intmax_t j, intmax_t e, mp_rnd_t rnd)
{
  if (j>=0)
    return mpfr_set_uj_2exp (x, j, e, rnd);
  else
    {
      int inex;
      inex = mpfr_set_uj_2exp (x, - (uintmax_t) j, e, MPFR_INVERT_RND (rnd));
      MPFR_CHANGE_SIGN (x);
      return -inex;
    }
}

#endif
