#ifndef POBJECT_H
#define POBJECT_H

/**
 * @file PObject.h
 * @brief Declares the PObject class, the parent of PPoint and PLine.
 */

#include <iostream>
#include <cmath>
using namespace std;

/// Default tolerance
const double default_tolerance = 1e-12;

/**
 * PObject is the parent class for PPoint and PLine. Both are held in
 * the form of homogeneous coordinates (x,y,z). The cannonical form is
 * for the last of these to be equal to 1. We reseve (0,0,0) as an
 * invalid PObject.
 */
class PObject {
private:
  /// Homogeneous coordinates
  double x,y,z;
  /// Scale x,y,z canonically
  void scale();
  /// Dot product of this and another PObject homogeneous coordinates
  double dot(const PObject& that) const;
  /// Tolerance for equality
  static double tolerance;

protected:
  /// Testing equality
  bool equals(const PObject& that) const;
  /// Testing less-than
  bool less(const PObject& that) const;
  /// Testing incidence
  bool incident(const PObject& that) const;
  /// Create a random PObject that dots to zero with this one
  PObject rand_perp() const;
  /// Common code for pt+pt and line*line
  PObject op(const PObject& that) const;

public:
  /// Construct a new PObject; default is <0,0,1>.
  PObject() { 
    x = y = 0.;
    z = 1.;
  }
  /// Three argument constructor: <a,b,c>
  PObject(double a, double b, double c) {
    x = a;
    y = b;
    z = c;
    scale();
  }
  /// Copy constructor
  PObject(const PObject& that) {
    x = that.x;
    y = that.y;
    z = that.z;
  }
  /// Randomize: set this to a random PObject
  void randomize();

  /// Set the tolerance
  static void set_tolerance(double t) {
    tolerance = abs(t);
  }

  /// Get the tolerance
  static double get_tolerance() { 
    return tolerance; 
  }

  /// Get the x,y,z coordinates
  double getX() const { return x; }
  double getY() const { return y; }
  double getZ() const { return z; }

  /// Check if this is an invalid PObject
  bool is_invalid() const {
    return (x==0.) && (y==0.) && (z==0.);
  }

};

/// Print a PObject to an output stream. Format: <x,y,z>
ostream& operator<<(ostream& os, const PObject& A);

/// Check if three objects are dependent.
bool dependent(const PObject& A, const PObject& B, const PObject& C);

#endif
