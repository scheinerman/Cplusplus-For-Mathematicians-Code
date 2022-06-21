#include "sieve.h"
#include <iostream>
using namespace std;

const long N = 10000000;        // ten million
const long TABLE_SIZE = 800000; // prime number theorem overestimate

/**
 * A program to test the sieve procedure.
 */

int main() {
  long primes[TABLE_SIZE];
  long np = sieve(N,primes);

  cout << "We found " << np << " primes" << endl;

  cout << "The first 10 primes we found are these: " << endl;
  for (long k=0; k<10; k++) cout << primes[k] << " ";
  cout << endl;

  cout << "The largest prime we found is " << primes[np-1] << endl;

  return 0;
}
