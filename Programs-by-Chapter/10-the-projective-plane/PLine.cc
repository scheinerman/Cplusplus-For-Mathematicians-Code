#include "Projective.h"

ostream& operator<<(ostream& os, const PLine& P) {
  os << "[" << P.getX() << "," << P.getY() << "," << P.getZ() << "]";
  return os;
}

PPoint PLine::rand_point() const {
  return PPoint(rand_perp());
}

PPoint PLine::operator*(const PLine& that) const {
  return PLine(op(that));
}

bool PLine::has(const PPoint& that) const {
  return incident(that);
}
