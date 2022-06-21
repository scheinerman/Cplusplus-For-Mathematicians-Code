#include "totient.h"
#include <iostream>
using namespace std;

/**
 * A program to test the totient procedure.
 */

int main() {
  for (int k=1; k<=100; k++) {
    cout << k << "\t" << totient(k) << endl;
  }
  return 0;
}
