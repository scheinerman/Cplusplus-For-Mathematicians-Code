/* Test file for mpfr_const_euler.

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

int
main (int argc, char *argv[])
{
  mpfr_t gamma, y, z, t;
  unsigned int err, prec, yprec, p0 = 2, p1 = 200;
  int rnd;

  tests_start_mpfr ();

  prec = (argc < 2) ? 53 : atoi(argv[1]);

  if (argc > 1)
    {
      mpfr_init2 (gamma, prec);
      mpfr_const_euler (gamma, GMP_RNDN);
      printf("gamma="); mpfr_out_str (stdout, 10, 0, gamma, GMP_RNDD);
      puts ("");
      mpfr_clear (gamma);
      return 0;
    }

  mpfr_init (y);
  mpfr_init (z);
  mpfr_init (t);

  mpfr_set_prec (y, 32);
  mpfr_set_prec (z, 32);
  (mpfr_const_euler) (y, GMP_RNDN);
  mpfr_set_str_binary (z, "0.10010011110001000110011111100011");
  if (mpfr_cmp (y, z))
    {
      printf ("Error for prec=32\n");
      exit (1);
    }

  for (prec = p0; prec <= p1; prec++)
    {
      mpfr_set_prec (z, prec);
      mpfr_set_prec (t, prec);
      yprec = prec + 10;

      for (rnd = 0; rnd < GMP_RND_MAX; rnd++)
        {
          mpfr_set_prec (y, yprec);
          mpfr_const_euler (y, (mp_rnd_t) rnd);
          err = (rnd == GMP_RNDN) ? yprec + 1 : yprec;
          if (mpfr_can_round (y, err, (mp_rnd_t) rnd, (mp_rnd_t) rnd, prec))
            {
              mpfr_set (t, y, (mp_rnd_t) rnd);
              mpfr_const_euler (z, (mp_rnd_t) rnd);
              if (mpfr_cmp (t, z))
                {
                  printf ("results differ for prec=%u rnd_mode=%s\n", prec,
                          mpfr_print_rnd_mode ((mp_rnd_t) rnd));
                  printf ("   got      ");
                  mpfr_out_str (stdout, 2, prec, z, GMP_RNDN);
                  puts ("");
                  printf ("   expected ");
                  mpfr_out_str (stdout, 2, prec, t, GMP_RNDN);
                  puts ("");
                  printf ("   approximation was ");
                  mpfr_print_binary (y);
                  puts ("");
                  exit (1);
                }
            }
        }
    }

  mpfr_clear (y);
  mpfr_clear (z);
  mpfr_clear (t);

  tests_end_mpfr ();
  return 0;
}
