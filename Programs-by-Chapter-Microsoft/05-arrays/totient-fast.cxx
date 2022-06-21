#include "totient.h"

long totient(long n, const long* primes) {
  if (n<=0) return 0;

  long ans = n;
  for (long k=0; primes[k] <= n; k++) {
    if (n%primes[k]==0) {
      ans /= primes[k];
      ans *= primes[k]-1;
    }
  }
  return ans;
}
