/* Test file for mpfr_div_ui.

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

static void
check (const char *ds, unsigned long u, mp_rnd_t rnd, const char *es)
{
  mpfr_t x, y;

  mpfr_init2 (x, 53);
  mpfr_init2 (y, 53);
  mpfr_set_str1 (x, ds);
  mpfr_div_ui (y, x, u, rnd);
  if (mpfr_cmp_str1 (y, es))
    {
      printf ("mpfr_div_ui failed for x=%s, u=%lu, rnd=%s\n", ds, u,
              mpfr_print_rnd_mode (rnd));
      printf ("expected result is %s, got", es);
      mpfr_out_str(stdout, 10, 0, y, GMP_RNDN);
      exit (1);
    }
  mpfr_clear (x);
  mpfr_clear (y);
}

static void
special (void)
{
  mpfr_t x, y;
  unsigned xprec, yprec;

  mpfr_init (x);
  mpfr_init (y);

  mpfr_set_prec (x, 32);
  mpfr_set_prec (y, 32);
  mpfr_set_ui (x, 1, GMP_RNDN);
  mpfr_div_ui (y, x, 3, GMP_RNDN);

  mpfr_set_prec (x, 100);
  mpfr_set_prec (y, 100);
  mpfr_random (x);
  mpfr_div_ui (y, x, 123456, GMP_RNDN);
  mpfr_set_ui (x, 0, GMP_RNDN);
  mpfr_div_ui (y, x, 123456789, GMP_RNDN);
  if (mpfr_cmp_ui (y, 0))
    {
      printf ("mpfr_div_ui gives non-zero for 0/ui\n");
      exit (1);
    }

  /* bug found by Norbert Mueller, 21 Aug 2001 */
  mpfr_set_prec (x, 110);
  mpfr_set_prec (y, 60);
  mpfr_set_str_binary (x, "0.110101110011111110011111001110011001110111000000111110001000111011000011E-44");
  mpfr_div_ui (y, x, 17, GMP_RNDN);
  mpfr_set_str_binary (x, "0.11001010100101100011101110000001100001010110101001010011011E-48");
  if (mpfr_cmp (x, y))
    {
      printf ("Error in x/17 for x=1/16!\n");
      printf ("Expected ");
      mpfr_out_str (stdout, 2, 0, x, GMP_RNDN);
      printf ("\nGot      ");
      mpfr_out_str (stdout, 2, 0, y, GMP_RNDN);
      printf ("\n");
      exit (1);
    }

  /* corner case */
  mpfr_set_prec (x, 2 * mp_bits_per_limb);
  mpfr_set_prec (y, 2);
  mpfr_set_ui (x, 4, GMP_RNDN);
  mpfr_nextabove (x);
  mpfr_div_ui (y, x, 2, GMP_RNDN); /* exactly in the middle */
  MPFR_ASSERTN(mpfr_cmp_ui (y, 2) == 0);

  mpfr_set_prec (x, 3 * mp_bits_per_limb);
  mpfr_set_prec (y, 2);
  mpfr_set_ui (x, 2, GMP_RNDN);
  mpfr_nextabove (x);
  mpfr_div_ui (y, x, 2, GMP_RNDN);
  MPFR_ASSERTN(mpfr_cmp_ui (y, 1) == 0);

  mpfr_set_prec (x, 3 * mp_bits_per_limb);
  mpfr_set_prec (y, 2);
  mpfr_set_si (x, -4, GMP_RNDN);
  mpfr_nextbelow (x);
  mpfr_div_ui (y, x, 2, GMP_RNDD);
  MPFR_ASSERTN(mpfr_cmp_si (y, -3) == 0);

  for (xprec = 53; xprec <= 128; xprec++)
    {
      mpfr_set_prec (x, xprec);
      mpfr_set_str_binary (x, "0.1100100100001111110011111000000011011100001100110111E2");
      for (yprec = 53; yprec <= 128; yprec++)
        {
          mpfr_set_prec (y, yprec);
          mpfr_div_ui (y, x, 1, GMP_RNDN);
          if (mpfr_cmp(x,y))
            {
              printf ("division by 1.0 fails for xprec=%u, yprec=%u\n", xprec, yprec);
              printf ("expected "); mpfr_print_binary (x); puts ("");
              printf ("got      "); mpfr_print_binary (y); puts ("");
              exit (1);
            }
        }
    }

  mpfr_clear (x);
  mpfr_clear (y);
}

static void
check_inexact (void)
{
  mpfr_t x, y, z;
  mp_prec_t px, py;
  int inexact, cmp;
  unsigned long int u;
  int rnd;

  mpfr_init (x);
  mpfr_init (y);
  mpfr_init (z);

  for (px=2; px<300; px++)
    {
      mpfr_set_prec (x, px);
      mpfr_random (x);
      do
        {
          u = randlimb ();
        }
      while (u == 0);
      for (py=2; py<300; py++)
        {
          mpfr_set_prec (y, py);
          mpfr_set_prec (z, py + mp_bits_per_limb);
          for (rnd = 0; rnd < GMP_RND_MAX; rnd++)
            {
              inexact = mpfr_div_ui (y, x, u, (mp_rnd_t) rnd);
              if (mpfr_mul_ui (z, y, u, (mp_rnd_t) rnd))
                {
                  printf ("z <- y * u should be exact for u=%lu\n", u);
                  printf ("y="); mpfr_print_binary (y); puts ("");
                  printf ("z="); mpfr_print_binary (z); puts ("");
                  exit (1);
                }
              cmp = mpfr_cmp (z, x);
              if (((inexact == 0) && (cmp != 0)) ||
                  ((inexact > 0) && (cmp <= 0)) ||
                  ((inexact < 0) && (cmp >= 0)))
                {
                  printf ("Wrong inexact flag for u=%lu, rnd=%s\n", u,
                          mpfr_print_rnd_mode ((mp_rnd_t) rnd));
                  printf ("x="); mpfr_print_binary (x); puts ("");
                  printf ("y="); mpfr_print_binary (y); puts ("");
                  exit (1);
                }
            }
        }
    }

  mpfr_clear (x);
  mpfr_clear (y);
  mpfr_clear (z);
}

#define TEST_FUNCTION mpfr_div_ui
#define INTEGER_TYPE  unsigned long
#define RAND_FUNCTION(x) mpfr_random2(x, MPFR_LIMB_SIZE (x), 1)
#include "tgeneric_ui.c"

int
main (int argc, char **argv)
{
  mpfr_t x;

  MPFR_TEST_USE_RANDS ();
  tests_start_mpfr ();

  special ();

  check_inexact ();

  check("1.0", 3, GMP_RNDN, "3.3333333333333331483e-1");
  check("1.0", 3, GMP_RNDZ, "3.3333333333333331483e-1");
  check("1.0", 3, GMP_RNDU, "3.3333333333333337034e-1");
  check("1.0", 3, GMP_RNDD, "3.3333333333333331483e-1");
  check("1.0", 2116118, GMP_RNDN, "4.7256343927890600483e-7");
  check("1.098612288668109782", 5, GMP_RNDN, "0.21972245773362195087");

  mpfr_init2 (x, 53);
  mpfr_set_ui (x, 3, GMP_RNDD);
  mpfr_log (x, x, GMP_RNDD);
  mpfr_div_ui (x, x, 5, GMP_RNDD);
  if (mpfr_cmp_str1 (x, "0.21972245773362189536"))
    {
      printf ("Error in mpfr_div_ui for x=ln(3), u=5\n");
      exit (1);
    }
  mpfr_clear (x);

  test_generic_ui (2, 200, 100);

  tests_end_mpfr ();
  return 0;
}
