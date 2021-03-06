/* Test file for mpfr_cmp_ld.

Copyright 2004 Free Software Foundation, Inc.

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
main (void)
{
  mpfr_t x;
  int c;

  tests_start_mpfr ();

  mpfr_init2(x, MPFR_LDBL_MANT_DIG);

  mpfr_set_ld (x, 2.34763465, GMP_RNDN);
  if (mpfr_cmp_ld(x, 2.34763465)!=0) {
    printf("Error in mpfr_cmp_ld 2.34763465 and ");
    mpfr_out_str(stdout, 10, 0, x, GMP_RNDN); putchar('\n');
    exit(1);
  }
  if (mpfr_cmp_ld(x, 2.345)<=0) {
    printf("Error in mpfr_cmp_ld 2.345 and ");
    mpfr_out_str(stdout, 10, 0, x, GMP_RNDN); putchar('\n');
    exit(1);
  }
  if (mpfr_cmp_ld(x, 2.4)>=0) {
    printf("Error in mpfr_cmp_ld 2.4 and ");
    mpfr_out_str(stdout, 10, 0, x, GMP_RNDN); putchar('\n');
    exit(1);
  }

  mpfr_set_ui (x, 0, GMP_RNDZ);
  mpfr_neg (x, x, GMP_RNDZ);
  if (mpfr_cmp_ld (x, 0.0)) {
    printf("Error in mpfr_cmp_ld 0.0 and ");
    mpfr_out_str(stdout, 10, 0, x, GMP_RNDN); putchar('\n');
    exit(1);
  }

  mpfr_set_ui (x, 0, GMP_RNDN);
  mpfr_ui_div (x, 1, x, GMP_RNDU);
  if (mpfr_cmp_ld (x, 0.0) == 0)
    {
      printf ("Error in mpfr_cmp_ld (Inf, 0)\n");
      exit (1);
    }

  /* Check NAN */
  mpfr_clear_erangeflag ();
  c = mpfr_cmp_ld (x, DBL_NAN);
  if (c != 0 || !mpfr_erangeflag_p ())
    {
      printf ("ERROR for NAN (1)\n");
      exit (1);
    }
  mpfr_set_nan (x);
  mpfr_clear_erangeflag ();
  c = mpfr_cmp_ld (x, 2.0);
  if (c != 0 || !mpfr_erangeflag_p ())
    {
      printf ("ERROR for NAN (2)\n");
      exit (1);
    }


  mpfr_clear(x);

  tests_end_mpfr ();
  return 0;
}


