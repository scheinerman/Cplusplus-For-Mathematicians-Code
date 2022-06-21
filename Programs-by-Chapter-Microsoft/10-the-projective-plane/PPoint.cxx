#include "Projective.h"

ostream& operator<<(ostream& os, const PPoint& P) {
  os << "(" << P.getX() << "," << P.getY() << "," << P.getZ() << ")";
  return os;
}

PLine PPoint::operator+(const PPoint& that) const {
  return PLine(op(that));
}

PLine PPoint::rand_line() const {
  return PLine(rand_perp());
}

bool PPoint::is_on(const PLine& that) const {
  return incident(that);
}
