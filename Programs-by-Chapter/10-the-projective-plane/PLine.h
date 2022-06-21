#ifndef PLINE_H
#define PLINE_H

#include "PObject.h"

class PPoint;

class PLine : public PObject {
public:
  PLine(double a = 0., double b = 0., double c = 1.) :
    PObject(a,b,c)
    { }

  PLine(const PObject& that) : 
    PObject(that.getX(), that.getY(), that.getZ())  { }

  bool operator==(const PLine& that) const {
    return equals(that);
  }

  bool operator!=(const PLine& that) const {
    return !equals(that);
  }

  bool operator<(const PLine& that) const {
    return less(that);
  }

  PPoint operator*(const PLine& that) const;

  bool has(const PPoint& X) const;
  
  PPoint rand_point() const;

};

ostream& operator<<(ostream& os, const PLine& P);

inline bool 
concurrent(const PLine& A, const PLine& B, const PLine& C) {
  return dependent(A,B,C);
}

#endif
