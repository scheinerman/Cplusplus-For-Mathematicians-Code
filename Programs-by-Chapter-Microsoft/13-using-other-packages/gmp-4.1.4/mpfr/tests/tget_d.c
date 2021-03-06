/* Test file for mpfr_get_d

Copyright 1999, 2000, 2001, 2002, 2003, 2004, 2005 Free Software Foundation.

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

#include <stdio.h>
#include <stdlib.h>
#include <float.h>

#include "mpfr-test.h"

static int
check_denorms ()
{
  mp_rnd_t rnd_mode;
  mpfr_t x;
  double d, d2, dd, f, dbl_min;
  int fail = 0, k, n;

  /* workaround for gcc bug on m68040-unknown-netbsd1.4.1,
     where DBL_MIN gives (1-2^(-52))/2^1022 */
  dbl_min = 1.0;
  for (d = DBL_MIN; d < 0.9; d *= 2.0)
    dbl_min /= 2.0;

  mpfr_init2 (x, BITS_PER_MP_LIMB);

  rnd_mode = GMP_RNDN;
  for (k = -17; k <= 17; k += 2)
    {
      d = (double) k * dbl_min; /* k * 2^(-1022) */
      f = 1.0;
      mpfr_set_si (x, k, GMP_RNDN);
      mpfr_div_2exp (x, x, 1022, GMP_RNDN); /* k * 2^(-1022) */
      for (n = 0; n <= 58; n++)
        {
          d2 = d * f;
          dd = mpfr_get_d (x, rnd_mode);
          if (d2 != dd) /* should be k * 2^(-1022-n) for n < 53 */
            {
              printf ("Wrong result for %d * 2^(%d), rnd_mode %d\n",
                      k, -1022-n, rnd_mode);
              printf ("got %.20e instead of %.20e\n", dd, d2);
              fail = 1;
            }
          f *= 0.5;
          mpfr_div_2exp (x, x, 1, GMP_RNDN);
        }
    }

  mpfr_clear (x);
  return fail;
}

static void
check_inf_nan ()
{
  /* only if nans and infs are available */
#if _GMP_IEEE_FLOATS
  mpfr_t  x;
  double  d;

  mpfr_init2 (x, 123);

  mpfr_set_inf (x, 1);
  d = mpfr_get_d (x, GMP_RNDZ);
  ASSERT_ALWAYS (d > 0);
  ASSERT_ALWAYS (DOUBLE_ISINF (d));

  mpfr_set_inf (x, -1);
  d = mpfr_get_d (x, GMP_RNDZ);
  ASSERT_ALWAYS (d < 0);
  ASSERT_ALWAYS (DOUBLE_ISINF (d));

  mpfr_set_nan (x);
  d = mpfr_get_d (x, GMP_RNDZ);
  ASSERT_ALWAYS (DOUBLE_ISNAN (d));

  mpfr_clear (x);
#endif
}

static void
check_max (void)
{
  double d, e;
  mpfr_t u;

  d = 1.0;
  while (d < (DBL_MAX / 2.0))
    d += d;
  mpfr_init (u);
  if (mpfr_set_d (u, d, GMP_RNDN) == 0)
    {
      /* If setting is exact */
      e = (mpfr_get_d1) (u);
      if (e != d)
        {
          printf ("get_d(set_d)(1): %1.20e != %1.20e\n", d, e);
          exit (1);
        }
    }

  mpfr_set_str_binary (u, "-1E1024");
  d = mpfr_get_d (u, GMP_RNDZ);
  MPFR_ASSERTN(d == -DBL_MAX);
  d = mpfr_get_d (u, GMP_RNDU);
  MPFR_ASSERTN(d == -DBL_MAX);
  d = mpfr_get_d (u, GMP_RNDN);
  MPFR_ASSERTN(DOUBLE_ISINF(d) && d < 0.0);
  d = mpfr_get_d (u, GMP_RNDD);
  MPFR_ASSERTN(DOUBLE_ISINF(d) && d < 0.0);

  mpfr_set_str_binary (u, "1E1024");
  d = mpfr_get_d (u, GMP_RNDZ);
  MPFR_ASSERTN(d == DBL_MAX);
  d = mpfr_get_d (u, GMP_RNDD);
  MPFR_ASSERTN(d == DBL_MAX);
  d = mpfr_get_d (u, GMP_RNDN);
  MPFR_ASSERTN(DOUBLE_ISINF(d) && d > 0.0);
  d = mpfr_get_d (u, GMP_RNDU);
  MPFR_ASSERTN(DOUBLE_ISINF(d) && d > 0.0);

  mpfr_clear (u);
}

static void
check_min(void)
{
  double d, e;
  mpfr_t u;

  d = 1.0; while (d > (DBL_MIN * 2.0)) d /= 2.0;
  mpfr_init(u);
  if (mpfr_set_d(u, d, GMP_RNDN) == 0)
    {
      /* If setting is exact */
      e = mpfr_get_d1(u);
      if (e != d)
        {
          printf("get_d(set_d)(2): %1.20e != %1.20e\n", d, e);
          exit(1);
        }
    }
  mpfr_clear(u);
}

int
main (void)
{
  tests_start_mpfr ();
  mpfr_test_init ();

#ifndef MPFR_DOUBLE_SPEC
  printf ("Warning! The MPFR_DOUBLE_SPEC macro is not defined. This means\n"
          "that you do not have a conforming C implementation and problems\n"
          "may occur with conversions between MPFR numbers and standard\n"
          "floating-point types. Please contact the MPFR team.\n");
#elif MPFR_DOUBLE_SPEC == 0
  /*
  printf ("The type 'double' of your C implementation does not seem to\n"
          "correspond to the IEEE-754 double precision. Though code has\n"
          "been written to support such implementations, tests have been\n"
          "done only on IEEE-754 double-precision implementations and\n"
          "conversions between MPFR numbers and standard floating-point\n"
          "types may be inaccurate. You may wish to contact the MPFR team\n"
          "for further testing.\n");
  */
  printf ("The type 'double' of your C implementation does not seem to\n"
          "correspond to the IEEE-754 double precision. Such particular\n"
          "implementations are not supported yet, and conversions between\n"
          "MPFR numbers and standard floating-point types may be very\n"
          "inaccurate.\n");
  printf ("FLT_RADIX    = %ld\n", (long) FLT_RADIX);
  printf ("DBL_MANT_DIG = %ld\n", (long) DBL_MANT_DIG);
  printf ("DBL_MIN_EXP  = %ld\n", (long) DBL_MIN_EXP);
  printf ("DBL_MAX_EXP  = %ld\n", (long) DBL_MAX_EXP);
#endif

  if (check_denorms ())
    exit (1);

  check_inf_nan ();
  check_min();
  check_max();

  tests_end_mpfr ();
  return 0;
}
