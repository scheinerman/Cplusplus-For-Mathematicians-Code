/* Test file for mpfr_ui_div.

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

#include "mpfr-test.h"

/* checks that y/x gives the right result with 53 bits of precision */
static void
check (unsigned long y, const char *xs, mp_rnd_t rnd_mode, const char *zs)
{
  mpfr_t xx, zz;

  mpfr_inits2 (53, xx, zz, NULL);
  mpfr_set_str1 (xx, xs);
  mpfr_ui_div (zz, y, xx, rnd_mode);
  if (mpfr_cmp_str1(zz, zs))
    {
      printf ("expected quotient is %s, got ", zs);
      mpfr_out_str (stdout, 10, 0, zz, GMP_RNDN);
      printf ("mpfr_ui_div failed for y=%lu x=%s with rnd_mode=%s\n",
              y, xs, mpfr_print_rnd_mode (rnd_mode));
      exit (1);
    }
  mpfr_clears (xx, zz, NULL);
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
      do
        {
          mpfr_random (x);
        }
      while (mpfr_cmp_ui (x, 0) == 0);
      u = randlimb ();
      for (py=2; py<300; py++)
        {
          mpfr_set_prec (y, py);
          mpfr_set_prec (z, py + px);
          for (rnd = 0; rnd < GMP_RND_MAX; rnd++)
            {
              inexact = mpfr_ui_div (y, u, x, (mp_rnd_t) rnd);
              if (mpfr_mul (z, y, x, (mp_rnd_t) rnd))
                {
                  printf ("z <- y * x should be exact\n");
                  exit (1);
                }
              cmp = mpfr_cmp_ui (z, u);
              if (((inexact == 0) && (cmp != 0)) ||
                  ((inexact > 0) && (cmp <= 0)) ||
                  ((inexact < 0) && (cmp >= 0)))
                {
                  printf ("Wrong inexact flag for u=%lu, rnd=%s\n",
                          u, mpfr_print_rnd_mode ((mp_rnd_t) rnd));
                  printf ("expected %d, got %d\n", cmp, inexact);
                  printf ("x="); mpfr_print_binary (x); puts ("");
                  printf ("y="); mpfr_print_binary (y); puts ("");
                  printf ("y*x="); mpfr_print_binary (z); puts ("");
                  exit (1);
                }
            }
        }
    }

  mpfr_clear (x);
  mpfr_clear (y);
  mpfr_clear (z);
}

static void
check_nan (void)
{
  mpfr_t  d, q;

  mpfr_init2 (d, 100L);
  mpfr_init2 (q, 100L);

  /* 1/+inf == 0 */
  MPFR_CLEAR_FLAGS (d);
  MPFR_SET_INF (d);
  MPFR_SET_POS (d);
  MPFR_ASSERTN (mpfr_ui_div (q, 1L, d, GMP_RNDZ) == 0); /* exact */
  MPFR_ASSERTN (mpfr_number_p (q));
  MPFR_ASSERTN (mpfr_sgn (q) == 0);

  /* 1/-inf == -0 */
  MPFR_CLEAR_FLAGS (d);
  MPFR_SET_INF (d);
  MPFR_SET_NEG (d);
  MPFR_ASSERTN (mpfr_ui_div (q, 1L, d, GMP_RNDZ) == 0); /* exact */
  MPFR_ASSERTN (mpfr_number_p (q));
  MPFR_ASSERTN (mpfr_sgn (q) == 0);

  /* 1/nan == nan */
  MPFR_SET_NAN (d);
  MPFR_ASSERTN (mpfr_ui_div (q, 1L, d, GMP_RNDZ) == 0); /* exact */
  MPFR_ASSERTN (mpfr_nan_p (q));

  /* 0/0 == nan */
  mpfr_set_ui (d, 0L, GMP_RNDN);
  MPFR_ASSERTN (mpfr_ui_div (q, 0L, d, GMP_RNDZ) == 0); /* exact */
  MPFR_ASSERTN (mpfr_nan_p (q));

  /* 1/+0 = +inf */
  mpfr_set_ui (d, 0L, GMP_RNDN);
  MPFR_ASSERTN (mpfr_ui_div (q, 1L, d, GMP_RNDZ) == 0); /* exact */
  MPFR_ASSERTN (mpfr_inf_p (q) && mpfr_sgn (q) > 0);

  /* 1/-0 = -inf */
  mpfr_set_ui (d, 0L, GMP_RNDN);
  mpfr_neg (d, d, GMP_RNDN);
  MPFR_ASSERTN (mpfr_ui_div (q, 1L, d, GMP_RNDZ) == 0); /* exact */
  MPFR_ASSERTN (mpfr_inf_p (q) && mpfr_sgn (q) < 0);

  /* 0/1 = +0 */
  mpfr_set_ui (d, 1L, GMP_RNDN);
  MPFR_ASSERTN (mpfr_ui_div (q, 0L, d, GMP_RNDZ) == 0); /* exact */
  MPFR_ASSERTN (mpfr_cmp_ui (q, 0) == 0 && MPFR_IS_POS (q));

  /* 0/-1 = -0 */
  mpfr_set_si (d, -1, GMP_RNDN);
  MPFR_ASSERTN (mpfr_ui_div (q, 0L, d, GMP_RNDZ) == 0); /* exact */
  MPFR_ASSERTN (mpfr_cmp_ui (q, 0) == 0 && MPFR_IS_NEG (q));

  mpfr_clear (d);
  mpfr_clear (q);
}

int
main (int argc, char *argv[])
{
  tests_start_mpfr ();

  check_nan ();
  check_inexact ();
  check(948002822, "1.22191250737771397120e+20", GMP_RNDN,
        "7.758352715731357946e-12");
  check(1976245324, "1.25296395864546893357e+232", GMP_RNDZ,
        "1.5772563211925444801e-223");
  check(740454110, "2.11496253355831863313e+183", GMP_RNDZ,
        "3.5010270784996976041e-175");
  check(1690540942, "1.28278599852446657468e-276", GMP_RNDU,
        "1.3178666932321966062e285");
  check(1476599377, "-2.14191393656148625995e+305", GMP_RNDD,
        "-6.8938315017943889615e-297");

  tests_end_mpfr ();
  return 0;
}
