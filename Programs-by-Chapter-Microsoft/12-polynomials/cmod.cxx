#include <complex>
#include "Mod.h"
using namespace std;

int main() {
  Mod::set_default_modulus(11);
  complex<Mod> z(4,7);

  cout << "z = " << z << endl;
  cout << "z squared = " << z*z << endl;

  return 0;
}
