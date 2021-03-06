/* Test file for mpfr_sub.

Copyright 2001, 2002, 2003, 2004, 2005 Free Software Foundation.

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

#ifdef CHECK_EXTERNAL
static int
test_sub (mpfr_ptr a, mpfr_srcptr b, mpfr_srcptr c, mp_rnd_t rnd_mode)
{
  int res;
  int ok = rnd_mode == GMP_RNDN && mpfr_number_p (b) && mpfr_number_p (c);
  if (ok)
    {
      mpfr_print_raw (b);
      printf (" ");
      mpfr_print_raw (c);
    }
  res = mpfr_sub (a, b, c, rnd_mode);
  if (ok)
    {
      printf (" ");
      mpfr_print_raw (a);
      printf ("\n");
    }
  return res;
}
#else
#define test_sub mpfr_sub
#endif

static void
check_diverse (void)
{
  mpfr_t x, y, z;
  int inexact;

  mpfr_init (x);
  mpfr_init (y);
  mpfr_init (z);

  /* check corner case cancel=0, but add_exp=1 */
  mpfr_set_prec (x, 2);
  mpfr_set_prec (y, 4);
  mpfr_set_prec (z, 2);
  mpfr_setmax (y, __gmpfr_emax);
  mpfr_set_str_binary (z, "0.1E-10"); /* tiny */
  test_sub (x, y, z, GMP_RNDN); /* should round to 2^emax, i.e. overflow */
  if (!mpfr_inf_p (x) || mpfr_sgn (x) < 0)
    {
      printf ("Error in mpfr_sub(a,b,c,RNDN) for b=maxfloat, prec(a)<prec(b), c tiny\n");
      exit (1);
    }

  /* other coverage test */
  mpfr_set_prec (x, 2);
  mpfr_set_prec (y, 2);
  mpfr_set_prec (z, 2);
  mpfr_set_ui (y, 1, GMP_RNDN);
  mpfr_set_si (z, -2, GMP_RNDN);
  test_sub (x, y, z, GMP_RNDD);
  if (mpfr_cmp_ui (x, 3))
    {
      printf ("Error in mpfr_sub(1,-1,RNDD)\n");
      exit (1);
    }

  mpfr_set_prec (x, 288);
  mpfr_set_prec (y, 288);
  mpfr_set_prec (z, 288);
  mpfr_set_str_binary (y, "0.111000110011000001000111101010111011110011101001101111111110000011100101000001001010110010101010011001010100000001110011110001010101101010001011101110100100001011110100110000101101100011010001001011011010101010000010001101001000110010010111111011110001111101001000101101001100101100101000E80");
  mpfr_set_str_binary (z, "0.100001111111101001011010001100110010100111001110000110011101001011010100001000000100111011010110110010000000000010101101011000010000110001110010100001100101011100100100001011000100011110000001010101000100011101001000010111100000111000111011001000100100011000100000010010111000000100100111E-258");
  inexact = test_sub (x, y, z, GMP_RNDN);
  if (inexact <= 0)
    {
      printf ("Wrong inexact flag for prec=288\n");
      exit (1);
    }

  mpfr_set_prec (x, 32);
  mpfr_set_prec (y, 63);
  mpfr_set_prec (z, 63);
  mpfr_set_str_binary (x, "0.101101111011011100100100100111E31");
  mpfr_set_str_binary (y, "0.111110010010100100110101101010001001100101110001000101110111111E-1");
  test_sub (z, x, y, GMP_RNDN);
  mpfr_set_str_binary (y, "0.1011011110110111001001001001101100000110110101101100101001011E31");
  if (mpfr_cmp (z, y))
    {
      printf ("Error in mpfr_sub (5)\n");
      printf ("expected "); mpfr_print_binary (y); puts ("");
      printf ("got      "); mpfr_print_binary (z); puts ("");
      exit (1);
    }

  mpfr_set_prec (y, 63);
  mpfr_set_prec (z, 63);
  mpfr_set_str_binary (y, "0.1011011110110111001001001001101100000110110101101100101001011E31");
  mpfr_sub_ui (z, y, 1541116494, GMP_RNDN);
  mpfr_set_str_binary (y, "-0.11111001001010010011010110101E-1");
  if (mpfr_cmp (z, y))
    {
      printf ("Error in mpfr_sub (7)\n");
      printf ("expected "); mpfr_print_binary (y); puts ("");
      printf ("got      "); mpfr_print_binary (z); puts ("");
      exit (1);
    }

  mpfr_set_prec (y, 63);
  mpfr_set_prec (z, 63);
  mpfr_set_str_binary (y, "0.1011011110110111001001001001101100000110110101101100101001011E31");
  mpfr_sub_ui (z, y, 1541116494, GMP_RNDN);
  mpfr_set_str_binary (y, "-0.11111001001010010011010110101E-1");
  if (mpfr_cmp (z, y))
    {
      printf ("Error in mpfr_sub (6)\n");
      printf ("expected "); mpfr_print_binary (y); puts ("");
      printf ("got      "); mpfr_print_binary (z); puts ("");
      exit (1);
    }

  mpfr_set_prec (x, 32);
  mpfr_set_prec (y, 32);
  mpfr_set_str_binary (x, "0.10110111101001110100100101111000E0");
  mpfr_set_str_binary (y, "0.10001100100101000100110111000100E0");
  if ((inexact = test_sub (x, x, y, GMP_RNDN)))
    {
      printf ("Wrong inexact flag (2): got %d instead of 0\n", inexact);
      exit (1);
    }

  mpfr_set_prec (x, 32);
  mpfr_set_prec (y, 32);
  mpfr_set_str_binary (x, "0.11111000110111011000100111011010E0");
  mpfr_set_str_binary (y, "0.10011111101111000100001000000000E-3");
  if ((inexact = test_sub (x, x, y, GMP_RNDN)))
    {
      printf ("Wrong inexact flag (1): got %d instead of 0\n", inexact);
      exit (1);
    }

  mpfr_set_prec (x, 33);
  mpfr_set_prec (y, 33);
  mpfr_set_ui (x, 1, GMP_RNDN);
  mpfr_set_str_binary (y, "-0.1E-32");
  mpfr_add (x, x, y, GMP_RNDN);
  mpfr_set_str_binary (y, "0.111111111111111111111111111111111E0");
  if (mpfr_cmp (x, y))
    {
      printf ("Error in mpfr_sub (1 - 1E-33) with prec=33\n");
      printf ("Expected "); mpfr_print_binary (y); puts ("");
      printf ("got      "); mpfr_print_binary (x); puts ("");
      exit (1);
    }

  mpfr_set_prec (x, 32);
  mpfr_set_prec (y, 33);
  mpfr_set_ui (x, 1, GMP_RNDN);
  mpfr_set_str_binary (y, "-0.1E-32");
  mpfr_add (x, x, y, GMP_RNDN);
  if (mpfr_cmp_ui (x, 1))
    {
      printf ("Error in mpfr_sub (1 - 1E-33) with prec=32\n");
      printf ("Expected 1.0, got "); mpfr_print_binary (x); puts ("");
      exit (1);
    }

  mpfr_set_prec (x, 65);
  mpfr_set_prec (y, 65);
  mpfr_set_prec (z, 64);
  mpfr_set_str_binary (x, "1.1110111011110001110111011111111111101000011001011100101100101101");
  mpfr_set_str_binary (y, "0.1110111011110001110111011111111111101000011001011100101100101100");
  test_sub (z, x, y, GMP_RNDZ);
  if (mpfr_cmp_ui (z, 1))
    {
      printf ("Error in mpfr_sub (1)\n");
      exit (1);
    }
  test_sub (z, x, y, GMP_RNDU);
  mpfr_set_str_binary (x, "1.000000000000000000000000000000000000000000000000000000000000001");
  if (mpfr_cmp (z, x))
    {
      printf ("Error in mpfr_sub (2)\n");
      exit (1);
    }
  mpfr_set_str_binary (x, "1.1110111011110001110111011111111111101000011001011100101100101101");
  test_sub (z, x, y, GMP_RNDN);
  if (mpfr_cmp_ui (z, 1))
    {
      printf ("Error in mpfr_sub (3)\n");
      exit (1);
    }
  mpfr_set_prec (x, 66);
  mpfr_set_str_binary (x, "1.11101110111100011101110111111111111010000110010111001011001010111");
  test_sub (z, x, y, GMP_RNDN);
  if (mpfr_cmp_ui (z, 1))
    {
      printf ("Error in mpfr_sub (4)\n");
      exit (1);
    }

  /* check in-place operations */
  mpfr_set_ui (x, 1, GMP_RNDN);
  test_sub (x, x, x, GMP_RNDN);
  if (mpfr_cmp_ui(x, 0))
    {
      printf ("Error for mpfr_sub (x, x, x, GMP_RNDN) with x=1.0\n");
      exit (1);
    }

  mpfr_set_prec (x, 53);
  mpfr_set_prec (y, 53);
  mpfr_set_prec (z, 53);
  mpfr_set_str1 (x, "1.229318102e+09");
  mpfr_set_str1 (y, "2.32221184180698677665e+05");
  test_sub (z, x, y, GMP_RNDN);
  if (mpfr_cmp_str1 (z, "1229085880.815819263458251953125"))
    {
      printf ("Error in mpfr_sub (1.22e9 - 2.32e5)\n");
      printf ("expected 1229085880.815819263458251953125, got ");
      mpfr_out_str(stdout, 10, 0, z, GMP_RNDN);
      putchar('\n');
      exit (1);
    }

  mpfr_set_prec (x, 112);
  mpfr_set_prec (y, 98);
  mpfr_set_prec (z, 54);
  mpfr_set_str_binary (x, "0.11111100100000000011000011100000101101010001000111E-401");
  mpfr_set_str_binary (y, "0.10110000100100000101101100011111111011101000111000101E-464");
  test_sub (z, x, y, GMP_RNDN);
  if (mpfr_cmp (z, x)) {
    printf ("mpfr_sub(z, x, y) failed for prec(x)=112, prec(y)=98\n");
    printf ("expected "); mpfr_print_binary (x); puts ("");
    printf ("got      "); mpfr_print_binary (z); puts ("");
    exit (1);
  }

  mpfr_set_prec (x, 33);
  mpfr_set_ui (x, 1, GMP_RNDN);
  mpfr_div_2exp (x, x, 32, GMP_RNDN);
  mpfr_sub_ui (x, x, 1, GMP_RNDN);

  mpfr_set_prec (x, 5);
  mpfr_set_prec (y, 5);
  mpfr_set_str_binary (x, "1e-12");
  mpfr_set_ui (y, 1, GMP_RNDN);
  test_sub (x, y, x, GMP_RNDD);
  mpfr_set_str_binary (y, "0.11111");
  if (mpfr_cmp (x, y))
    {
      printf ("Error in mpfr_sub (x, y, x, GMP_RNDD) for x=2^(-12), y=1\n");
      exit (1);
    }

  mpfr_set_prec (x, 24);
  mpfr_set_prec (y, 24);
  mpfr_set_str_binary (x, "-0.100010000000000000000000E19");
  mpfr_set_str_binary (y, "0.100000000000000000000100E15");
  mpfr_add (x, x, y, GMP_RNDD);
  mpfr_set_str_binary (y, "-0.1E19");
  if (mpfr_cmp (x, y))
    {
      printf ("Error in mpfr_add (2)\n");
      exit (1);
    }

  mpfr_set_prec (x, 2);
  mpfr_set_prec (y, 10);
  mpfr_set_prec (z, 10);
  mpfr_set_ui (y, 0, GMP_RNDN);
  mpfr_set_str_binary (z, "0.10001");
  if (test_sub (x, y, z, GMP_RNDN) <= 0)
    {
      printf ("Wrong inexact flag in x=mpfr_sub(0,z) for prec(z)>prec(x)\n");
      exit (1);
    }
  if (test_sub (x, z, y, GMP_RNDN) >= 0)
    {
      printf ("Wrong inexact flag in x=mpfr_sub(z,0) for prec(z)>prec(x)\n");
      exit (1);
    }

  mpfr_clear (x);
  mpfr_clear (y);
  mpfr_clear (z);
}

static void
bug_ddefour(void)
{
    mpfr_t ex, ex1, ex2, ex3, tot, tot1;

    mpfr_init2(ex, 53);
    mpfr_init2(ex1, 53);
    mpfr_init2(ex2, 53);
    mpfr_init2(ex3, 53);
    mpfr_init2(tot, 150);
    mpfr_init2(tot1, 150);

    mpfr_set_ui( ex, 1, GMP_RNDN);
    mpfr_mul_2exp( ex, ex, 906, GMP_RNDN);
    mpfr_log( tot, ex, GMP_RNDN);
    mpfr_set( ex1, tot, GMP_RNDN); /* ex1 = high(tot) */
    test_sub( ex2, tot, ex1, GMP_RNDN); /* ex2 = high(tot - ex1) */
    test_sub( tot1, tot, ex1, GMP_RNDN); /* tot1 = tot - ex1 */
    mpfr_set( ex3, tot1, GMP_RNDN); /* ex3 = high(tot - ex1) */

    if (mpfr_cmp(ex2, ex3))
      {
        printf ("Error in ddefour test.\n");
        printf ("ex2="); mpfr_print_binary (ex2); puts ("");
        printf ("ex3="); mpfr_print_binary (ex3); puts ("");
        exit (1);
      }

    mpfr_clear (ex);
    mpfr_clear (ex1);
    mpfr_clear (ex2);
    mpfr_clear (ex3);
    mpfr_clear (tot);
    mpfr_clear (tot1);
}

/* if u = o(x-y), v = o(u-x), w = o(v+y), then x-y = u-w */
static void
check_two_sum (mp_prec_t p)
{
  mpfr_t x, y, u, v, w;
  mp_rnd_t rnd;
  int inexact;

  mpfr_init2 (x, p);
  mpfr_init2 (y, p);
  mpfr_init2 (u, p);
  mpfr_init2 (v, p);
  mpfr_init2 (w, p);
  mpfr_random (x);
  mpfr_random (y);
  if (mpfr_cmpabs (x, y) < 0)
    mpfr_swap (x, y);
  rnd = GMP_RNDN;
  inexact = test_sub (u, x, y, rnd);
  test_sub (v, u, x, rnd);
  mpfr_add (w, v, y, rnd);
  /* as u = (x-y) - w, we should have inexact and w of opposite signs */
  if (((inexact == 0) && mpfr_cmp_ui (w, 0)) ||
      ((inexact > 0) && (mpfr_cmp_ui (w, 0) <= 0)) ||
      ((inexact < 0) && (mpfr_cmp_ui (w, 0) >= 0)))
    {
      printf ("Wrong inexact flag for prec=%u, rnd=%s\n", (unsigned)p,
               mpfr_print_rnd_mode (rnd));
      printf ("x="); mpfr_print_binary(x); puts ("");
      printf ("y="); mpfr_print_binary(y); puts ("");
      printf ("u="); mpfr_print_binary(u); puts ("");
      printf ("v="); mpfr_print_binary(v); puts ("");
      printf ("w="); mpfr_print_binary(w); puts ("");
      printf ("inexact = %d\n", inexact);
      exit (1);
    }
  mpfr_clear (x);
  mpfr_clear (y);
  mpfr_clear (u);
  mpfr_clear (v);
  mpfr_clear (w);
}

#define MAX_PREC 200

static void
check_inexact (void)
{
  mpfr_t x, y, z, u;
  mp_prec_t px, py, pu, pz;
  int inexact, cmp;
  mp_rnd_t rnd;

  mpfr_init (x);
  mpfr_init (y);
  mpfr_init (z);
  mpfr_init (u);

  mpfr_set_prec (x, 2);
  mpfr_set_ui (x, 6, GMP_RNDN);
  mpfr_div_2exp (x, x, 4, GMP_RNDN); /* x = 6/16 */
  mpfr_set_prec (y, 2);
  mpfr_set_si (y, -1, GMP_RNDN);
  mpfr_div_2exp (y, y, 4, GMP_RNDN); /* y = -1/16 */
  inexact = test_sub (y, y, x, GMP_RNDN); /* y = round(-7/16) = -1/2 */
  if (inexact >= 0)
    {
      printf ("Error: wrong inexact flag for -1/16 - (6/16)\n");
      exit (1);
    }

  for (px=2; px<MAX_PREC; px++)
    {
      mpfr_set_prec (x, px);
      do
        {
          mpfr_random (x);
        }
      while (mpfr_cmp_ui (x, 0) == 0);
      for (pu=2; pu<MAX_PREC; pu++)
        {
          mpfr_set_prec (u, pu);
          do
            {
              mpfr_random (u);
            }
          while (mpfr_cmp_ui (u, 0) == 0);
          {
              py = 2 + (randlimb () % (MAX_PREC - 2));
              mpfr_set_prec (y, py);
              /* warning: MPFR_EXP is undefined for 0 */
              pz =  (mpfr_cmpabs (x, u) >= 0) ? MPFR_EXP(x) - MPFR_EXP(u)
                : MPFR_EXP(u) - MPFR_EXP(x);
              pz = pz + MAX(MPFR_PREC(x), MPFR_PREC(u));
              mpfr_set_prec (z, pz);
              rnd = (mp_rnd_t) RND_RAND();
              if (test_sub (z, x, u, rnd))
                {
                  printf ("z <- x - u should be exact\n");
                  exit (1);
                }
                {
                  rnd = (mp_rnd_t) RND_RAND ();
                  inexact = test_sub (y, x, u, rnd);
                  cmp = mpfr_cmp (y, z);
                  if (((inexact == 0) && (cmp != 0)) ||
                      ((inexact > 0) && (cmp <= 0)) ||
                      ((inexact < 0) && (cmp >= 0)))
                    {
                      printf ("Wrong inexact flag for rnd=%s\n",
                              mpfr_print_rnd_mode(rnd));
                      printf ("expected %d, got %d\n", cmp, inexact);
                      printf ("x="); mpfr_print_binary (x); puts ("");
                      printf ("u="); mpfr_print_binary (u); puts ("");
                      printf ("y=  "); mpfr_print_binary (y); puts ("");
                      printf ("x-u="); mpfr_print_binary (z); puts ("");
                      exit (1);
                    }
                }
            }
        }
    }

  mpfr_clear (x);
  mpfr_clear (y);
  mpfr_clear (z);
  mpfr_clear (u);
}

#define TEST_FUNCTION test_sub
#define TWO_ARGS
#define RAND_FUNCTION(x) mpfr_random2(x, MPFR_LIMB_SIZE (x), randlimb () % 100)
#include "tgeneric.c"

int
main (void)
{
  mp_prec_t p;
  unsigned int i;

  MPFR_TEST_USE_RANDS ();
  tests_start_mpfr ();

  check_diverse ();
  check_inexact ();
  bug_ddefour ();
  for (p=2; p<200; p++)
    for (i=0; i<50; i++)
      check_two_sum (p);
  test_generic (2, 800, 100);

  tests_end_mpfr ();
  return 0;
}
