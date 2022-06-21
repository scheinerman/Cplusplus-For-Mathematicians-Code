#ifndef LONG_TO_POLY_H
#define LONG_TO_POLY_H

#include "Polynomial.h"
#include "Mod.h"

const long max_bits = 31;

Polynomial<Mod> long2poly(long m);

#endif
