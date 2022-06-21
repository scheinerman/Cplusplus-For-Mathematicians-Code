#include "PTriple.h"
#include "gcd.h"

PTriple::PTriple(long m, long n) {
  a = 2*m*n;
  b = m*m - n*n;
  c = m*m + n*n;

  reduce();
}

void PTriple::reduce() {
  // Nothing to do if a=b=c=0
  if ((a==0) && (b==0) && (c==0)) return;

  // Make sure a,b are nonnegative (c must be)
  if (a<0) a = -a;
  if (b<0) b = -b;

  // Make sure a <= b
  if (a>b) {
    long tmp = a;
    a = b;
    b = tmp;
  }

  // Make sure a,b,c are relatively prime
  long d = gcd(a,b);
  a /= d;
  b /= d;
  c /= d;
}

bool PTriple::operator<(const PTriple& that) const {
  if (c < that.c) return true;
  if (c > that.c) return false;

  if (b < that.b) return true;
  return false;
}

ostream& operator<<(ostream& os, const PTriple& PT) {
  os << "(" << PT.getA() << "," << PT.getB() << "," << PT.getC() << ")";
  return os;
}
