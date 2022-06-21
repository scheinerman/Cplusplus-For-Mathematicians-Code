#include "vector-sieve.h"

long sieve(long n, vector<long>& primes) {
  primes.clear(); // erase the sieve

  if (n < 2) return 0;  // no primes < 2

  // Make a table of boolean values. true = prime and false =
  // composite. We initialize the table to all true.
  vector<bool> theSieve;
  theSieve.resize(n+1);
  for (long k=2; k<=n; k++) theSieve[k] = true;

  long idx = 0;
  for (long k=2; k<=n; k++) {
    if (theSieve[k]) {
      primes.resize(idx+1);
      primes[idx] = k;
      idx++;
      for (long d = 2*k ; d<=n; d+=k) theSieve[d] = false;
    }
  }
  return primes.size();
}
