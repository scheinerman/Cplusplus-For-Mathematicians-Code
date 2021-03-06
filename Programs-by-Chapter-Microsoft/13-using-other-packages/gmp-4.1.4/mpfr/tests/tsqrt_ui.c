/* Test file for mpfr_sqrt_ui.

Copyright 2000, 2001, 2002, 2003 Free Software Foundation, Inc.

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

static void
check (unsigned long a, mp_rnd_t rnd_mode, const char *qs)
{
  mpfr_t q;

  mpfr_init2 (q, 53);
  mpfr_sqrt_ui (q, a, rnd_mode);
  if (mpfr_cmp_str1 (q, qs))
    {
      printf ("mpfr_sqrt_ui failed for a=%lu, rnd_mode=%s\n",
              a, mpfr_print_rnd_mode (rnd_mode));
      printf ("sqrt gives %s, mpfr_sqrt_ui gives ", qs);
      mpfr_out_str(stdout, 10, 0, q, GMP_RNDN);
      exit (1);
    }
  mpfr_clear (q);
}

int
main (void)
{
  tests_start_mpfr ();

  check (0, GMP_RNDN, "0.0");
  check (2116118, GMP_RNDU, "1.45468828276026215e3");

  tests_end_mpfr ();
  return 0;
}
