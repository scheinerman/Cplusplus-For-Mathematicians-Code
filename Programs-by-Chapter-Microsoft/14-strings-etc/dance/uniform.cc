#include "uniform.h"
#include <cstdlib>
#include <ctime>
#include <cmath>
using namespace std;

double unif() {
  return rand() / double(RAND_MAX);
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
  srand(time(0));
}
