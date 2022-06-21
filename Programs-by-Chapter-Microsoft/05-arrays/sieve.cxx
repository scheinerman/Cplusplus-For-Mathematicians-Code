#include "sieve.h"

long sieve(long n, long* primes) {

  if (n<2) return 0;  // no primes unless n is at least 2.
  
  char* theSieve;

  theSieve = new char[n+1];  // hold the marks

  // Names of marks to put in theSieve
  const char blank   = 0;
  const char marked  = 1;

  // Make sure theSieve is blank to begin
  for (long k=2; k<=n; k++) theSieve[k] = blank;

  long idx = 0; // index into the primes array

  for (long k=2; k<=n; k++) {
    if (theSieve[k]==blank) {  // we found an unmarked entry
      theSieve[k] = marked;    // mark it as a prime
      primes[idx] = k;         // record k in the primes array
      idx++;

      // Now mark off all multiples of k 
      for(long d=2*k; d<=n; d+=k) theSieve[d] = marked;
    }
  }
  
  delete[] theSieve;
  return idx;
}
