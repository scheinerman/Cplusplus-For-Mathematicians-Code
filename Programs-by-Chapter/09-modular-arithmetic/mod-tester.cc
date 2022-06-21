#include "Mod.h"

/// A main to test the Mod class

int main() {
  Mod x,y,z;

  x.set_default_modulus(11);

  x = Mod(17,10);
  y = Mod(24);
  z = -3;

  cout << "x = " << x << endl;
  cout << "y = " << y << endl;
  cout << "z = " << z << endl << endl;

  cout << "y+z = " << y+z << endl;
  cout << "y-z = " << y-z << endl;
  cout << "y*z = " << y*z << endl;
  cout << "y/z = " << y/z << endl << endl;

  cout << "x+3 = " << x+3 << endl;
  cout << "x-3 = " << x-3 << endl;
  cout << "x*3 = " << x*3 << endl;
  cout << "x/3 = " << x/3 << endl << endl;

  cout << "4+x = " << 4+x << endl;
  cout << "4-x = " << 4-x << endl;
  cout << "4*x = " << 4*x << endl;
  cout << "4/x = " << 4/x << endl << endl;

  cout << "-x = " << -x << endl << endl;

  cout << "x^9 = " << x.pow(9) << endl;
  cout << "x^(-9) = " << x.pow(-9) << endl;

  cout << "-1+y^10 = " << -1+y.pow(10) << endl;
  cout << "y^2  = " << y.pow(2) << endl;
  cout << "y^(-2)+1 = " << y.pow(-2)+1 << endl << endl;

  cout << "x == 17\t" << (x == 17) << endl;
  cout << "x != 17\t" << (x != 17) << endl;

  cout << "17 == x\t" << (17 == x) << endl;
  cout << "17 != x\t" << (17 != x) << endl << endl;

  return 0;
}


