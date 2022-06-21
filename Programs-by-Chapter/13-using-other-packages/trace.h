#ifndef TRACE_H
#define TRACE_H

#include "tnt.h"

template <class T>
T trace(const TNT::Array2D<T>& X) {
  T sum = T(0);
  for (int k=0; k<X.dim1() && k<X.dim2(); k++) {
    sum += X[k][k];
  }
  return sum;
}

#endif
