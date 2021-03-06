/* mpfr_clear -- free the memory space allocated for a floating-point number

Copyright 1999, 2000, 2001, 2004, 2005 Free Software Foundation.

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

#include "mpfr-impl.h"

void
mpfr_clear (mpfr_ptr m)
{
  (*__gmp_free_func) (MPFR_GET_REAL_PTR (m),
                      MPFR_MALLOC_SIZE (MPFR_GET_ALLOC_SIZE (m)));
  MPFR_MANT (m) = (mp_limb_t *) 0;
}
