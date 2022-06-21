/**
 * @file nroots.cc
 * @brief Code for the nroots procedure
 */
#include "nroots.h"

int nroots(double a, double b, double c) {
  double d; // The discriminant of the quadratic

  d = b*b - 4.*a*c;

  // Check sign of the discriminant and return number of roots

  if (d > 0.) {
    return 2;
  }
  if (d < 0.) {
    return 0;
  }
  return 1;
}
