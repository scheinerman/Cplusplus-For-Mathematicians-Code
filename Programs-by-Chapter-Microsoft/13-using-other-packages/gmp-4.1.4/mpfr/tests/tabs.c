/* Test file for mpfr_abs.

Copyright 2000, 2001, 2002, 2003, 2004, 2005 Free Software Foundation, Inc.

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

static void
check_inexact (void)
{
  mp_prec_t p, q;
  mpfr_t x, y, absx;
  int rnd;
  int inexact, cmp;

  mpfr_init (x);
  mpfr_init (y);
  mpfr_init (absx);

  for (p=2; p<500; p++)
    {
      mpfr_set_prec (x, p);
      mpfr_set_prec (absx, p);
      mpfr_random (x);
      if (randlimb () % 2)
        {
          mpfr_set (absx, x, GMP_RNDN);
          mpfr_neg (x, x, GMP_RNDN);
        }
      else
        mpfr_set (absx, x, GMP_RNDN);
      for (q=2; q<2*p; q++)
        {
          mpfr_set_prec (y, q);
          for (rnd = 0; rnd < GMP_RND_MAX; rnd++)
            {
              inexact = mpfr_abs (y, x, (mp_rnd_t) rnd);
              cmp = mpfr_cmp (y, absx);
              if (((inexact == 0) && (cmp != 0)) ||
                  ((inexact > 0) && (cmp <= 0)) ||
                  ((inexact < 0) && (cmp >= 0)))
                {
                  printf ("Wrong inexact flag: expected %d, got %d\n",
                          cmp, inexact);
                  printf ("x="); mpfr_print_binary (x); puts ("");
                  printf ("absx="); mpfr_print_binary (absx); puts ("");
                  printf ("y="); mpfr_print_binary (y); puts ("");
                  exit (1);
                }
            }
        }
    }

  mpfr_clear (x);
  mpfr_clear (y);
  mpfr_clear (absx);
}

static void
check_cmp(int argc, char *argv[])
{
  mpfr_t x, y;
  int n, k, rnd;

  mpfr_inits2(53, x, y, NULL);

  mpfr_set_ui(x, 1, GMP_RNDN);
  (mpfr_abs) (x, x, GMP_RNDN);
  if (mpfr_cmp_ui (x, 1))
    {
      printf ("Error in mpfr_abs(1.0)\n");
      exit (1);
    }

  mpfr_set_si(x, -1, GMP_RNDN);
  mpfr_abs(x, x, GMP_RNDN);
  if (mpfr_cmp_ui (x, 1))
    {
      printf ("Error in mpfr_abs(1.0)\n");
      exit (1);
    }

  mpfr_set_si(x, -1, GMP_RNDN);
  mpfr_abs(x, x, GMP_RNDN);
  if (mpfr_cmp_ui (x, 1))
    {
      printf ("Error in mpfr_abs(-1.0)\n");
      exit (1);
    }

  mpfr_set_inf (x, 1);
  mpfr_abs (x, x, GMP_RNDN);
  if (!mpfr_inf_p(x) || (mpfr_sgn(x) <= 0))
    {
      printf ("Error in mpfr_abs(Inf).\n");
      exit (1);
    }
  mpfr_set_inf (x, -1);
  mpfr_abs (x, x, GMP_RNDN);
  if (!mpfr_inf_p(x) || (mpfr_sgn(x) <= 0))
    {
      printf ("Error in mpfr_abs(-Inf).\n");
      exit (1);
    }

  MPFR_SET_NAN(x);
  mpfr_abs (x, x, GMP_RNDN);
  if (!MPFR_IS_NAN(x))
    {
      printf ("Error in mpfr_abs(NAN).\n");
      exit (1);
    }

  n = (argc==1) ? 25000 : atoi(argv[1]);
  for (k = 1; k <= n; k++)
    {
      int sign = SIGN_RAND();
      mpfr_random(x);
      MPFR_SET_SIGN(x, sign);
      rnd = RND_RAND();
      mpfr_abs(y, x, (mp_rnd_t) rnd);
      MPFR_SET_POS(x);
      if (mpfr_cmp(x,y))
        {
          printf ("Mismatch for sign=%d and x=", sign);
          mpfr_print_binary(x);
          printf ("\nResults=");
          mpfr_print_binary(y);
          putchar ('\n');
          exit (1);
        }
    }

  mpfr_clears(x, y, NULL);
}

int
main (int argc, char *argv[])
{
  mpfr_test_init ();
  tests_start_mpfr ();

  check_inexact ();
  check_cmp (argc, argv);

  tests_end_mpfr ();
  return 0;
}
