/* mpfr_ui_pow -- power of n function n^x

Copyright 2001, 2002, 2003, 2004 Free Software Foundation, Inc.

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

#include <limits.h>

#include "mpfr-impl.h"

int
mpfr_ui_pow (mpfr_ptr y, unsigned long int n, mpfr_srcptr x, mp_rnd_t rnd_mode)
{
  mpfr_t t;
  int inexact;
  MPFR_SAVE_EXPO_DECL (expo);

  MPFR_SAVE_EXPO_MARK (expo);
  mpfr_init2 (t, sizeof(n) * CHAR_BIT);
  inexact = mpfr_set_ui (t, n, GMP_RNDN);
  MPFR_ASSERTN (!inexact);
  inexact = mpfr_pow (y, t, x, rnd_mode);
  mpfr_clear (t);
  MPFR_SAVE_EXPO_FREE (expo);
  return mpfr_check_range (y, inexact, rnd_mode);
}
