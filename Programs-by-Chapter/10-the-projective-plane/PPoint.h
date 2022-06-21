#ifndef PPOINT_H
#define PPOINT_H

#include "PObject.h"

class PLine;

class PPoint : public PObject {
public:
  PPoint(double a = 0., double b = 0., double c = 1.) :
    PObject(a,b,c)
    { }

  PPoint(const PObject& that) : 
    PObject(that.getX(), that.getY(), that.getZ())  { }
  
  bool operator==(const PPoint& that) const {
    return equals(that);
  }

  bool operator!=(const PPoint& that) const {
    return !equals(that);
  }

  bool operator<(const PPoint& that) const {
    return less(that);
  }

  PLine operator+(const PPoint& that) const;

  bool is_on(const PLine& that) const;

  PLine rand_line() const;

};

ostream& operator<<(ostream& os, const PPoint& P);

inline bool 
collinear(const PPoint& A, const PPoint& B, const PPoint& C) {
  return dependent(A,B,C);
}

#endif
