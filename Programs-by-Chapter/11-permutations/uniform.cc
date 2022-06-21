#include "uniform.h"
#include <cstdlib>
#include <ctime>
#include <cmath>
using namespace std;

double unif() {
  return drand48();
}

double unif(double a, double b) {
  return (b-a)*unif() + a;
}

long unif(long a) {
  if (a < 0) a = -a;
  if (a==0) return  0;
  return long(unif()*a) + 1;
}

void seed() {
  srand48(time(0));
}
