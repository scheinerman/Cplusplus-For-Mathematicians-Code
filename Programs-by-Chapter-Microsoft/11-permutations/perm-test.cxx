#include "Permutation.h"
#include "uniform.h"
#include "monotone.h"
#include <iostream>
using namespace std;

int main() {
  seed();
  Permutation P(10);
  P.randomize();
  cout << "P = " << P << endl;
  Permutation Q;
  Q = P.inverse();
  cout << "Q = " << Q << endl;
  cout << "P*Q = " << P*Q << endl;
  
  return 0;


}
