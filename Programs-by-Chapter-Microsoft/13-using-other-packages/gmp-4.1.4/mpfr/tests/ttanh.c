/* Test file for mpfr_tanh.

Copyright 2001, 2002, 2003, 2004, 2005 Free Software Foundation.
Adapted from tarctan.c.

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

#include "mpfr-test.h"

#define TEST_FUNCTION mpfr_tanh
#include "tgeneric.c"

static void
special (void)
{
  mpfr_t x;

  mpfr_init (x);

  mpfr_set_nan (x);
  mpfr_tanh (x, x, GMP_RNDN);
  MPFR_ASSERTN(mpfr_nan_p (x));

  mpfr_set_inf (x, 1);
  mpfr_tanh (x, x, GMP_RNDN);
  MPFR_ASSERTN(mpfr_cmp_ui (x, 1) == 0);

  mpfr_set_inf (x, -1);
  mpfr_tanh (x, x, GMP_RNDN);
  MPFR_ASSERTN(mpfr_cmp_si (x, -1) == 0);

  mpfr_set_prec (x, 10);
  mpfr_set_str_binary (x, "-0.1001011001");
  mpfr_tanh (x, x, GMP_RNDN);
  MPFR_ASSERTN(mpfr_cmp_si_2exp (x, -135, -8) == 0);

  mpfr_clear (x);
}

static void
special_overflow (void)
{
  mpfr_t x, y;
  int i;

  mpfr_clear_overflow ();
  set_emin (-125);
  set_emax (128);
  mpfr_init2 (x, 24);
  mpfr_init2 (y, 24);

  mpfr_set_str_binary (x, "0.101100100000000000110100E7");
  i = mpfr_tanh (y, x, GMP_RNDN);
  if (mpfr_cmp_ui (y, 1) || i != 1)
    {
      printf("Overflow error (1). i=%d\ny=", i);
      mpfr_dump (y);
      exit (1);
    }
  MPFR_ASSERTN (!mpfr_overflow_p ());

  i = mpfr_tanh (y, x, GMP_RNDZ);
  if (mpfr_cmp_str (y, "0.111111111111111111111111E0", 2, GMP_RNDN)
      || i != -1)
    {
      printf("Overflow error (2).i=%d\ny=", i);
      mpfr_dump (y);
      exit (1);
    }
  MPFR_ASSERTN (!mpfr_overflow_p ());

  set_emin (MPFR_EMIN_MIN);
  set_emax (MPFR_EMAX_MAX);

  mpfr_set_str_binary (x, "0.1E1000000000");
  i = mpfr_tanh (y, x, GMP_RNDN);
  if (mpfr_cmp_ui (y, 1) || i != 1)
    {
      printf("Overflow error (3). i=%d\ny=", i);
      mpfr_dump (y);
      exit (1);
    }
  MPFR_ASSERTN (!mpfr_overflow_p ());
  mpfr_set_str_binary (x, "-0.1E1000000000");
  i = mpfr_tanh (y, x, GMP_RNDU);
  if (mpfr_cmp_str (y, "-0.111111111111111111111111E0", 2, GMP_RNDN)
      || i != 1)
    {
      printf("Overflow error (4). i=%d\ny=", i);
      mpfr_dump (y);
      exit (1);
    }

  mpfr_clear (y);
  mpfr_clear (x);
}

int
main (int argc, char *argv[])
{
  tests_start_mpfr ();

  special_overflow ();
  special ();

  test_generic (2, 100, 100);

  tests_end_mpfr ();
  return 0;
}
