#include "randn.h"
#include <cmath>
using namespace std;

double randn() {
  static bool has_saved = false;
  static double saved;

  if (has_saved) {
    has_saved = false;
    return saved;
  }

  double x,y,r;
  do {
    x = unif(-1.,1.);
    y = unif(-1.,1.);
    r = x*x + y*y;
  } while (r >= 1.);

  double mu = sqrt(-2.0 * log(r) / r);

  saved = mu*y;
  has_saved = true;
  
  return mu*x;
}

double randn(double mu, double s) {
  return s*randn() + mu;
}
