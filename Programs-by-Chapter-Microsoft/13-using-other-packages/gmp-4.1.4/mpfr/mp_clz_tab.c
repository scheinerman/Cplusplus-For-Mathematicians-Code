/* __clz_tab -- support for longlong.h

   THE CONTENTS OF THIS FILE ARE FOR INTERNAL USE AND MAY CHANGE
   INCOMPATIBLY OR DISAPPEAR IN A FUTURE GNU MP RELEASE.

Copyright 1991, 1993, 1994, 1996, 1997, 2000, 2001, 2004 Free Software
Foundation,Inc.

This file is part of the GNU MP Library.
Adapted to be used by the MPFR library.

The GNU MP Library is free software; you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation; either version 2.1 of the License, or (at your
option) any later version.

The GNU MP Library is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public
License for more details.

You should have received a copy of the GNU Lesser General Public License
along with the GNU MP Library; see the file COPYING.LIB.  If not, write to
the Free Software Foundation, Inc., 51 Franklin Place, Fifth Floor, Boston,
MA 02110-1301, USA. */

#define MPFR_NEED_LONGLONG_H
#include "mpfr-impl.h"

#if defined(COUNT_LEADING_ZEROS_NEED_CLZ_TAB) && defined(__GMPFR_GMP_H__)
const
unsigned char __clz_tab[128] =
{
  1,2,3,3,4,4,4,4,5,5,5,5,5,5,5,5,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,
  7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
  8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,
  8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8
};
#endif
