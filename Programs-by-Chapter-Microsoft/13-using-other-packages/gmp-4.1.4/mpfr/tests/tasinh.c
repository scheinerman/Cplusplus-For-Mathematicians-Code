/* Test file for mpfr_asinh.

Copyright 2001, 2002, 2003, 2004 Free Software Foundation.
Adapted from tatan.c.

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

#define TEST_FUNCTION mpfr_asinh
#include "tgeneric.c"

static void
special (void)
{
  mpfr_t x, y, z;

  mpfr_init (x);
  mpfr_init (y);

  MPFR_SET_INF(x);
  mpfr_set_ui (y, 1, GMP_RNDN);
  mpfr_asinh (x, y, GMP_RNDN);
  if (MPFR_IS_INF(x) || MPFR_IS_NAN(x) )
    {
      printf ("Inf flag not clears in asinh!\n");
      exit (1);
    }

  MPFR_SET_NAN(x);
  mpfr_asinh (x, y, GMP_RNDN);
  if (MPFR_IS_NAN(x) || MPFR_IS_INF(x))
    {
      printf ("NAN flag not clears in asinh!\n");
      exit (1);
    }

  /* asinh(+0) = +0, asinh(-0) = -0 */
  mpfr_set_ui (x, 0, GMP_RNDN);
  mpfr_asinh (y, x, GMP_RNDN);
  if (mpfr_cmp_ui (y, 0) || mpfr_sgn (y) < 0)
    {
      printf ("Error: mpfr_asinh(+0) <> +0\n");
      exit (1);
    }
  mpfr_neg (x, x, GMP_RNDN);
  mpfr_asinh (y, x, GMP_RNDN);
  if (mpfr_cmp_ui (y, 0) || mpfr_sgn (y) > 0)
    {
      printf ("Error: mpfr_asinh(-0) <> -0\n");
      exit (1);
    }

  MPFR_SET_NAN(x);
  mpfr_asinh (y, x, GMP_RNDN);
  if (!mpfr_nan_p (y))
    {
      printf ("Error: mpfr_asinh(NaN) <> NaN\n");
      exit (1);
    }

  mpfr_set_inf (x, 1);
  mpfr_asinh (y, x, GMP_RNDN);
  if (!mpfr_inf_p (y) || mpfr_sgn (y) < 0)
    {
      printf ("Error: mpfr_asinh(+Inf) <> +Inf\n");
      exit (1);
    }

  mpfr_set_inf (x, -1);
  mpfr_asinh (y, x, GMP_RNDN);
  if (!mpfr_inf_p (y) || mpfr_sgn (y) > 0)
    {
      printf ("Error: mpfr_asinh(-Inf) <> -Inf\n");
      exit (1);
    }

  mpfr_set_prec (x, 32);
  mpfr_set_prec (y, 32);

  mpfr_set_str_binary (x, "0.1010100100111011001111100101E-1");
  mpfr_asinh (x, x, GMP_RNDN);
  mpfr_set_str_binary (y, "0.10100110010010101101010011011101E-1");
  if (mpfr_cmp (x, y))
    {
      printf ("Error: mpfr_asinh (1)\n");
      exit (1);
    }

  mpfr_set_str_binary (x, "-.10110011011010111110010001100001");
  mpfr_asinh (x, x, GMP_RNDN);
  mpfr_set_str_binary (y, "-.10100111010000111001011100110011");
  if (mpfr_cmp (x, y))
    {
      printf ("Error: mpfr_asinh (2)\n");
      exit (1);
    }

  mpfr_set_prec (x, 33);
  mpfr_set_prec (y, 43);
  mpfr_set_str_binary (x, "0.111001101100000110011001010000101");
  mpfr_asinh (y, x, GMP_RNDZ);
  mpfr_init2 (z, 43);
  mpfr_set_str_binary (z, "0.1100111101010101101010101110000001000111001");
  if (mpfr_cmp (y, z))
    {
      printf ("Error: mpfr_asinh (3)\n");
      exit (1);
    }

  mpfr_clear (x);
  mpfr_clear (y);
  mpfr_clear (z);
}

int
main (int argc, char *argv[])
{
  tests_start_mpfr ();

  special ();

  test_generic (2, 100, 25);

  tests_end_mpfr ();
  return 0;
}
