#ifndef SIEVE_H
#define SIEVE_H

/**
 * The Sieve of Eratosthenes: Generate a table of primes.
 *
 * @param n upper limit on the primes (that is, we find all primes
 * less than or equal to n).
 * @param primes array to hold the table of primes.
 * @return the number of primes we found.
 */

long sieve(long n, long* primes);

#endif
