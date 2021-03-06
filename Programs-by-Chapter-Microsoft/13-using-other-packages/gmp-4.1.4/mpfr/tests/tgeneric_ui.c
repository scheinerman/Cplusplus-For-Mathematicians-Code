/* Generic test file for functions with one mpfr_t argument and an integer.

Copyright 2005 Free Software Foundation.

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

/* define INTEGER_TYPE to what we want */
#ifndef INTEGER_TYPE
# define INTEGER_TYPE mp_limb_t
#endif
#ifndef RAND_FUNCTION
# define RAND_FUNCTION mpfr_random
#endif
#ifndef INT_RAND_FUNCTION
# define INT_RAND_FUNCTION() (INTEGER_TYPE) randlimb ()
#endif

static void
test_generic_ui (mp_prec_t p0, mp_prec_t p1, unsigned int N)
{
  mp_prec_t prec, yprec;
  mpfr_t x, y, z, t;
  INTEGER_TYPE u;
  mp_rnd_t rnd;
  int inexact, compare, compare2;
  unsigned int n;

  mpfr_init (x);
  mpfr_init (y);
  mpfr_init (z);
  mpfr_init (t);

  /* generic test */
  for (prec = p0; prec <= p1; prec++)
    {
      mpfr_set_prec (x, prec);
      mpfr_set_prec (z, prec);
      mpfr_set_prec (t, prec);
      yprec = prec + 10;

      for (n=0; n<N; n++)
        {
          RAND_FUNCTION (x);
          u = INT_RAND_FUNCTION ();
          rnd = (mp_rnd_t) RND_RAND ();
          mpfr_set_prec (y, yprec);
          compare = TEST_FUNCTION (y, x, u, rnd);
          if (mpfr_can_round (y, yprec, rnd, rnd, prec))
            {
              mpfr_set (t, y, rnd);
              inexact = TEST_FUNCTION (z, x, u, rnd);
              if (mpfr_cmp (t, z))
                {
                  printf ("results differ for x=");
                  mpfr_out_str (stdout, 2, prec, x, GMP_RNDN);
                  printf ("\nu=%lu", (unsigned long) u);
                  printf (" prec=%lu rnd_mode=%s\n",
                          (unsigned long ) prec, mpfr_print_rnd_mode (rnd));
#ifdef TEST_FUNCTION_NAME
                  printf ("Function: %s\n", TEST_FUNCTION_NAME);
#endif
                  printf ("got      ");
                  mpfr_out_str (stdout, 2, prec, z, GMP_RNDN);
                  puts ("");
                  printf ("expected ");
                  mpfr_out_str (stdout, 2, prec, t, GMP_RNDN);
                  puts ("");
                  printf ("approx  ");
                  mpfr_print_binary (y);
                  puts ("");
                  exit (1);
                }
              compare2 = mpfr_cmp (t, y);
              /* if rounding to nearest, cannot know the sign of t - f(x)
                 because of composed rounding: y = o(f(x)) and t = o(y) */
              if (compare * compare2 >= 0)
                compare = compare + compare2;
              else
                compare = inexact; /* cannot determine sign(t-f(x)) */
              if (((inexact == 0) && (compare != 0)) ||
                  ((inexact > 0) && (compare <= 0)) ||
                  ((inexact < 0) && (compare >= 0)))
                {
                  printf ("Wrong inexact flag for rnd=%s: expected %d, got %d"
                          "\n", mpfr_print_rnd_mode (rnd), compare, inexact);
                  printf ("x="); mpfr_print_binary (x); puts ("");
                  printf ("u=%lu", (unsigned long) u);
                  printf ("y="); mpfr_print_binary (y); puts ("");
                  printf ("t="); mpfr_print_binary (t); puts ("");
                  exit (1);
                }
            }
        }
    }

  mpfr_clear (x);
  mpfr_clear (y);
  mpfr_clear (z);
  mpfr_clear (t);
}

#undef RAND_FUNCTION
#undef INTEGER_TYPE
#undef TEST_FUNCTION
#undef TEST_FUNCTION_NAME
#undef test_generic_ui
#undef INT_RAND_FUNCTION
