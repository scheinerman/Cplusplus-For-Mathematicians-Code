/*
This Visual Studio version of the gmp-tester relies on a custom build of the
GMP library. This custom build uses Brian Gladman's patches for Visual C++ 7.
His patches and commentary can be found here:
http://fp.gladman.plus.com/computing/gmp4win.htm

Note that some project configuration is required for VC7 in order to find the
GMP headers, since they are not built into any default path on Windows systems.
*/

#include <gmpxx.h>
#include <iostream>
#include <ctime>

using namespace std;

int main() {
  mpz_class a, b;

  a = "54098745908347598037452";
  b = "44523409864";

  cout << "a = " << a << endl;
  cout << "b = " << b << endl;
  cout << "a*b = " << a*b << endl;
  cout << "a/b = " << a/b << endl;
  cout << "a%b = " << a%b << endl;
  cout << "a+b = " << a+b << endl;
  cout << "a-b = " << a-b << endl;
  cout << "b-a = " << b-a << endl;

  mpz_class d;
  mpz_gcd(d.get_mpz_t(), a.get_mpz_t(), b.get_mpz_t());
  cout << "gcd(a,b) = " << d << endl;


  cout << "Is a < b? " << ((a<b) ? "Yes" : "No"); 
  cout << endl;

  mpq_class r(a,b);
  r.canonicalize();

  cout << "As a rational number, a/b is " << r << endl;

  mpq_class q(-1.125);
  cout << "q = " << q << endl;

  gmp_randclass X(gmp_randinit_default);
  X.seed((unsigned long) time(0));
  cout << "Here's a random number: " << X.get_z_bits(100) << endl;

  return 0;
}

