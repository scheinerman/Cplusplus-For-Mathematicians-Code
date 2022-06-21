#include <iostream>
using namespace std;

int main() {
  double z = 1.2;
  double* zp;
  zp = &z;

  cout << "zp  = " << zp << endl;
  cout << "*zp = " << *zp << endl << endl;

  *zp = M_PI;

  cout << "zp  = " << zp << endl;
  cout << "z   = " << z << endl;

  return 0;
}
