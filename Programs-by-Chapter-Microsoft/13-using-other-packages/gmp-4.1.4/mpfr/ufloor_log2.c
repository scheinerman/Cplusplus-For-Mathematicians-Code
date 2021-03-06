/* __gmpfr_floor_log2 - returns floor(log(d)/log(2))

Copyright 1999, 2000, 2001, 2002, 2003, 2004 Free Software Foundation.

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

/* returns floor(log2(d)) */
long
__gmpfr_floor_log2 (double d)
{
#if _GMP_IEEE_FLOATS
  union ieee_double_extract x;

  x.d = d;
  return (long) x.s.exp - 1023;
#else
  long exp;
  double m;

  MPFR_ASSERTD (d >= 0);
  if (d >= 1.0)
    {
      exp = -1;
      for( m= 1.0 ; m <= d ; m *=2.0 )
        exp++;
    }
  else
    {
      exp = 0;
      for( m= 1.0 ; m > d ; m *= (1.0/2.0) )
        exp--;
    }
  return exp;
#endif
}
