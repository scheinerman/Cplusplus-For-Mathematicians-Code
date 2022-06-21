#include "totient.h"
#include "sieve.h"
#include <iostream>
#include <iomanip>
using namespace std;

/**
 * A program to calculate the probability that two integers chosen in
 * {1,2,...,n} are relatively prime. This probability is calculated
 * for values of n up to ten million.
 */

int main() {

  const long N = 1000000;          // one million
  const long TABLE_SIZE = 200000;  // prime number th'm overestimate

  // set up the table of primes
  long* primes;   
  primes = new long[TABLE_SIZE];
  long np;
  np = sieve(2*N,primes);

  long long count=0;   // sum of phi(d) from 1 to n

  cout << setprecision(20);
  for (long k=1; k<=N; k++) {
    count += totient(k, primes);
    if (k%100000==0) {
      cout << k/1000 << " thousand \t";
      cout << double(2*count-1) / (double(k)*double(k)) << endl;
    }
  }
  return 0;
}

