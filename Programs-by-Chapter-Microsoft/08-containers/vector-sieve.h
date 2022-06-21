#ifndef VECTOR_SIEVE_H
#define VECTOR_SIEVE_H

#include <vector>
using namespace std;

/**
 * The Sieve of Eratosthenes: Generate a table of primes.
 *
 * @param n upper limit on the primes (that is, we find all primes
 * less than or equal to n).
 * @param primes vector to hold the table of primes.
 * @return the number of primes we found.
 */
long sieve(long n, vector<long>& primes);
#endif
