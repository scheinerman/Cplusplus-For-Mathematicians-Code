#include "PTriple.h"

/**
 * A main to test PTriple
 */

int main() {
  PTriple X;
  PTriple Y(3,2);
  PTriple Z(0,1);

  cout << X << endl;
  cout << Y << endl;
  cout << Z << endl;
  cout << PTriple(2,5) << endl;

  cout << "Does " << X << " == " << Y << "?" << endl;

  if (X == Y) cout << "YES" << endl;
  if (X != Y) cout << "NO" << endl;


  // A table of triples
  for (int a=0; a<5; a++) {
    for (int b=0; b<5; b++) {
      cout << "(" << a << "," << b << ") --> " << PTriple(a,b) << endl;
    }
  }
  return 0;
}
