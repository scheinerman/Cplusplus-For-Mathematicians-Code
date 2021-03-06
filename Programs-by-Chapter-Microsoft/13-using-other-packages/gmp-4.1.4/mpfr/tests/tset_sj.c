/* Test file for
   mpfr_set_sj, mpfr_set_uj, mpfr_set_sj_2exp and mpfr_set_uj_2exp.

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

#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

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

#include "mpfr-test.h"

#ifndef _MPFR_H_HAVE_INTMAX_T
int main() { return 0; }
#else

#define ERROR(str) {printf("Error for "str"\n"); exit(1);}

static int
inexact_sign (int x)
{
  return (x < 0) ? -1 : (x > 0);
}

static void
check_set_uj (mp_prec_t pmin, mp_prec_t pmax, int N)
{
  mpfr_t x, y;
  mp_prec_t p;
  int inex1, inex2, n;
  mp_limb_t limb;

  mpfr_inits2 (pmax, x, y, NULL);

  for ( p = pmin ; p < pmax ; p++)
    {
      mpfr_set_prec (x, p);
      mpfr_set_prec (y, p);
      for (n = 0 ; n < N ; n++)
        {
          /* mp_limb_t may be unsigned long long */
          limb = (unsigned long) randlimb ();
          inex1 = mpfr_set_uj (x, limb, GMP_RNDN);
          inex2 = mpfr_set_ui (y, limb, GMP_RNDN);
          if (mpfr_cmp (x, y))
            {
              printf ("ERROR for mpfr_set_uj and j=%lu and p=%lu\n",
                      (unsigned long) limb, p);
              printf ("X="); mpfr_dump (x);
              printf ("Y="); mpfr_dump (y);
              exit (1);
            }
          if (inexact_sign (inex1) != inexact_sign (inex2))
            {
              printf ("ERROR for inexact(set_uj): j=%lu p=%lu\n"
                      "Inexact1= %d Inexact2= %d\n",
                      (unsigned long) limb, p, inex1, inex2);
              exit (1);
            }
        }
    }
  /* Special case */
  mpfr_set_prec (x, sizeof(uintmax_t)*CHAR_BIT);
  inex1 = mpfr_set_uj (x, UINTMAX_MAX, GMP_RNDN);
  if (inex1 != 0 || mpfr_sgn(x) <= 0)
    ERROR ("inexact / UINTMAX_MAX");
  inex1 = mpfr_add_ui (x, x, 1, GMP_RNDN);
  if (inex1 != 0 || !mpfr_powerof2_raw (x)
      || MPFR_EXP (x) != (sizeof(uintmax_t)*CHAR_BIT+1) )
    ERROR ("power of 2");
  mpfr_set_uj (x, 0, GMP_RNDN);
  if (!MPFR_IS_ZERO (x))
    ERROR ("Setting 0");

  mpfr_clears (x, y, NULL);
}

static void
check_set_uj_2exp (void)
{
  mpfr_t x;
  int inex;

  mpfr_init2 (x, sizeof(uintmax_t)*CHAR_BIT);

  inex = mpfr_set_uj_2exp (x, 1, 0, GMP_RNDN);
  if (inex || mpfr_cmp_ui(x, 1))
    ERROR("(1U,0)");

  inex = mpfr_set_uj_2exp (x, 1024, -10, GMP_RNDN);
  if (inex || mpfr_cmp_ui(x, 1))
    ERROR("(1024U,-10)");

  inex = mpfr_set_uj_2exp (x, 1024, 10, GMP_RNDN);
  if (inex || mpfr_cmp_ui(x, 1024*1024))
    ERROR("(1024U,+10)");

  inex = mpfr_set_uj_2exp (x, UINTMAX_MAX, 1000, GMP_RNDN);
  inex |= mpfr_div_2ui (x, x, 1000, GMP_RNDN);
  inex |= mpfr_add_ui (x, x, 1, GMP_RNDN);
  if (inex || !mpfr_powerof2_raw (x)
      || MPFR_EXP (x) != (sizeof(uintmax_t)*CHAR_BIT+1) )
    ERROR("(UINTMAX_MAX)");

  inex = mpfr_set_uj_2exp (x, UINTMAX_MAX, MPFR_EMAX_MAX-10, GMP_RNDN);
  if (inex == 0 || !mpfr_inf_p (x))
    ERROR ("Overflow");

  inex = mpfr_set_uj_2exp (x, UINTMAX_MAX, MPFR_EMIN_MIN-1000, GMP_RNDN);
  if (inex == 0 || !MPFR_IS_ZERO (x))
    ERROR ("Underflow");

  mpfr_clear (x);
}

static void
check_set_sj ()
{
  mpfr_t x;
  int inex;

  mpfr_init2 (x, sizeof(intmax_t)*CHAR_BIT-1);

  inex = mpfr_set_sj (x, -INTMAX_MAX, GMP_RNDN);
  inex |= mpfr_add_si (x, x, -1, GMP_RNDN);
  if (inex || mpfr_sgn (x) >=0 || !mpfr_powerof2_raw (x)
      || MPFR_EXP (x) != (sizeof(intmax_t)*CHAR_BIT) )
    ERROR("set_sj (-INTMAX_MAX)");

  inex = mpfr_set_sj (x, 1742, GMP_RNDN);
  if (inex || mpfr_cmp_ui (x, 1742))
    ERROR ("set_sj (1742)");

  mpfr_clear (x);
}

static void
check_set_sj_2exp ()
{
  mpfr_t x;
  int inex;

  mpfr_init2 (x, sizeof(intmax_t)*CHAR_BIT-1);

  inex = mpfr_set_sj_2exp (x, INTMAX_MIN, 1000, GMP_RNDN);
  if (inex || mpfr_sgn (x) >=0 || !mpfr_powerof2_raw (x)
      || MPFR_EXP (x) != (sizeof(intmax_t)*CHAR_BIT+1000) )
    ERROR("set_sj_2exp (INTMAX_MIN)");

  mpfr_clear (x);
}

int
main (int argc, char *argv[])
{
  tests_start_mpfr ();

  check_set_uj (2, 128, 50);
  check_set_uj_2exp ();
  check_set_sj ();
  check_set_sj_2exp ();

  tests_end_mpfr ();
  return 0;
}

#endif
