#include "totient.h"
#include "sieve.h"
#include <iostream>
using namespace std;

/**
 * A main to test the faster version of Euler's totient on 
 * the integers from 1 to 100.
 */

int main() {

  const int N = 100;   // testing up to N
  
  long primes[10*N]; // table of primes
  sieve(10*N, primes);

  for (long k=1; k<=N; k++) {
    cout << k << "\t" << totient(k,primes) << endl;
  }
}
