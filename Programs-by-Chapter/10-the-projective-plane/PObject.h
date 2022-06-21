#ifndef POBJECT_H
#define POBJECT_H
#include <cmath>
#include <iostream>
using namespace std;

const double default_tolerance = 1e-12;

class PObject {
private:
  double x,y,z;
  void scale();
  double dot(const PObject& that) const;
  static double tolerance;

protected:
  bool equals(const PObject& that) const;
  bool less(const PObject& that) const;
  bool incident(const PObject& that) const;
  PObject rand_perp() const;
  PObject op(const PObject& that) const;

public:
  PObject() { 
    x = y = 0.;
    z = 1.;
  }
  PObject(double a, double b, double c) {
    x = a;
    y = b;
    z = c;
    scale();
  }
  void randomize();

  static void set_tolerance(double t) {
    tolerance = abs(t);
  }

  static double get_tolerance() { 
    return tolerance; 
  }

  double getX() const { return x; }
  double getY() const { return y; }
  double getZ() const { return z; }

  bool is_invalid() const {
    return (x==0.) && (y==0.) && (z==0.);
  }

};

ostream& operator<<(ostream& os, const PObject& A);

bool dependent(const PObject& A, const PObject& B, const PObject& C);

#endif
