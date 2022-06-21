#include "long2poly.h"

Polynomial<Mod> long2poly(long m) {
  Polynomial<Mod> ans;

  long j = 0;   
  while (m != 0) {
    ans.set(j, Mod(m,2));
    m /= 2;
    j++;
  }

  return ans;
}
