/* Test file for mpfr_asin.

Copyright 2001, 2002, 2003, 2004, 2005 Free Software Foundation.
Original version by Mathieu Dutour.

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

#define TEST_FUNCTION mpfr_asin
#include "tgeneric.c"

static void
special (void)
{
  mpfr_t x, y;
  int r;

  mpfr_init (x);
  mpfr_init (y);

  /* asin(NaN) = NaN */
  mpfr_set_nan (x);
  mpfr_asin (y, x, GMP_RNDN);
  if (!mpfr_nan_p (y))
    {
      printf ("Error: mpfr_asin (NaN) <> NaN\n");
      exit (1);
    }

  /* asin(+/-Inf) = NaN */
  mpfr_set_inf (x, 1);
  mpfr_asin (y, x, GMP_RNDN);
  if (!mpfr_nan_p (y))
    {
      printf ("Error: mpfr_asin (+Inf) <> NaN\n");
      exit (1);
    }
  mpfr_set_inf (x, -1);
  mpfr_asin (y, x, GMP_RNDN);
  if (!mpfr_nan_p (y))
    {
      printf ("Error: mpfr_asin (-Inf) <> NaN\n");
      exit (1);
    }

  /* asin(+/-2) = NaN */
  mpfr_set_ui (x, 2, GMP_RNDN);
  mpfr_asin (y, x, GMP_RNDN);
  if (!mpfr_nan_p (y))
    {
      printf ("Error: mpfr_asin (+2) <> NaN\n");
      exit (1);
    }
  mpfr_set_si (x, -2, GMP_RNDN);
  mpfr_asin (y, x, GMP_RNDN);
  if (!mpfr_nan_p (y))
    {
      printf ("Error: mpfr_asin (-2) <> NaN\n");
      exit (1);
    }

  /* asin(+/-0) = +/-0 */
  mpfr_set_ui (x, 0, GMP_RNDN);
  mpfr_asin (y, x, GMP_RNDN);
  if (mpfr_cmp_ui (y, 0) || mpfr_sgn (y) < 0)
    {
      printf ("Error: mpfr_asin (+0) <> +0\n");
      exit (1);
    }
  mpfr_neg (x, x, GMP_RNDN);
  mpfr_asin (y, x, GMP_RNDN);
  if (mpfr_cmp_ui (y, 0) || mpfr_sgn (y) > 0)
    {
      printf ("Error: mpfr_asin (-0) <> -0\n");
      exit (1);
    }

  /* asin(1) = Pi/2 */
  for (r = 0; r < GMP_RND_MAX; r++)
    {
      mpfr_set_ui (x, 1, GMP_RNDN); /* exact */
      mpfr_asin (y, x, (mp_rnd_t) r);
      mpfr_const_pi (x, (mp_rnd_t) r);
      mpfr_div_2exp (x, x, 1, GMP_RNDN); /* exact */
      if (mpfr_cmp (x, y))
        {
          printf ("Error: asin(1) != Pi/2 for rnd=%s\n",
                  mpfr_print_rnd_mode ((mp_rnd_t) r));
          exit (1);
        }
    }

  /* asin(-1) = -Pi/2 */
  for (r = 0; r < GMP_RND_MAX; r++)
    {
      mpfr_set_si (x, -1, GMP_RNDN); /* exact */
      mpfr_asin (y, x, (mp_rnd_t) r);
      mpfr_const_pi (x, MPFR_INVERT_RND((mp_rnd_t) r));
      mpfr_neg (x, x, GMP_RNDN); /* exact */
      mpfr_div_2exp (x, x, 1, GMP_RNDN); /* exact */
      if (mpfr_cmp (x, y))
        {
          printf ("Error: asin(-1) != -Pi/2 for rnd=%s\n",
                  mpfr_print_rnd_mode ((mp_rnd_t) r));
          exit (1);
        }
    }

  mpfr_set_prec (x, 32);
  mpfr_set_prec (y, 32);

  mpfr_set_str_binary (x, "0.1101110111111111001011101000101");
  mpfr_asin (x, x, GMP_RNDN);
  mpfr_set_str_binary (y, "1.00001100101011000001111100111");
  if (mpfr_cmp (x, y))
    {
      printf ("Error: mpfr_asin (1)\n");
      exit (1);
    }

  mpfr_set_str_binary (x, "-0.01110111000011101010111100000101");
  mpfr_asin (x, x, GMP_RNDN);
  mpfr_set_str_binary (y, "-0.0111101111010100011111110101");
  if (mpfr_cmp (x, y))
    {
      printf ("Error: mpfr_asin (2)\n");
      mpfr_print_binary (x); printf ("\n");
      mpfr_print_binary (y); printf ("\n");
      exit (1);
    }

  mpfr_set_prec (x, 9);
  mpfr_set_prec (y, 19);
  mpfr_set_str_binary (x, "0.110000000E-6");
  mpfr_asin (y, x, GMP_RNDD);
  mpfr_set_prec (x, 19);
  mpfr_set_str_binary (x, "0.1100000000000001001E-6");
  if (mpfr_cmp (x, y))
    {
      printf ("Error: mpfr_asin (3)\n");
      mpfr_dump (x);
      mpfr_dump (y);
      exit (1);
    }

  mpfr_clear (x);
  mpfr_clear (y);
}

static void
special_overflow (void)
{
  mpfr_t x, y;

  set_emin (-125);
  set_emax (128);
  mpfr_init2 (x, 24);
  mpfr_init2 (y, 48);
  mpfr_set_str_binary (x, "0.101100100000000000110100E0");
  mpfr_asin (y, x, GMP_RNDN);
  if (mpfr_cmp_str (y, "0.110001001101001111110000010110001000111011001000E0",
                    2, GMP_RNDN))
    {
      printf("Special Overflow error.\n");
      mpfr_dump (y);
      exit (1);
    }
  mpfr_clear (y);
  mpfr_clear (x);
  set_emin (MPFR_EMIN_MIN);
  set_emax (MPFR_EMAX_MAX);
}

int
main (void)
{
  tests_start_mpfr ();

  special ();
  special_overflow ();

  test_generic (2, 100, 7);

  tests_end_mpfr ();

  return 0;
}
