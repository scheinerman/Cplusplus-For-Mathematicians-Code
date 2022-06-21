#include <iostream>
#include <complex>
using namespace std;

/**
 * A program to illustrate the use of complex numbers.
 */

typedef complex<double> C;

int main() {
  C x(3,4);     // define x = 3+4i
  C z;          // declare z to be complex
  z = C(2,7);   // assign z = 2+7i
  C i(0,1);     // define i = sqrt(-1)

  cout << "z = " << z << endl;
  cout << "x = " << x << endl;
  cout << "z+x = " << z+x << endl;
  cout << "z*x = " << z*x << endl;
  cout << "z/x = " << z/x << endl;

  z = 5. - 4.*i;
  cout << "Now z = " << z << endl;

  cout << "The real part of z is " << z.real() 
       << " and the imaginary part is " << z.imag() << endl;

  return 0;
}
