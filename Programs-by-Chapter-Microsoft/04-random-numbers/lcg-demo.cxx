#include <iostream>
using namespace std;

/**
 * A sample linear congruential pseudo random number generator that
 * returns values in {0,1,...,63}.
 */
int lcg() {
  static int state = 0;
  const long a = 17;
  const long b = 3;
  const long c = 64;

  state = (a*state+b) % c;
  return state;
}

/**
 * This main calls lcg twenty times and prints out the value modulo
 * two, and then prints twenty more values taken modulo four.
 */
int main() {
  cout << "Values mod 2: ";
  for (int k=0; k<20; k++) {
    cout << lcg()%2 << " ";
  }
  cout << endl;

  cout << "Values mod 4: ";
  for (int k=0; k<20; k++) {
    cout << lcg()%4 << " ";
  }
  cout << endl;

  return 0;
}
