#include <gmpxx.h>
#include <iostream>

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
  X.seed(time(0));
  cout << "Here's a random number: " << X.get_z_bits(100) << endl;

  return 0;
}

