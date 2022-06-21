#ifndef TOTIENT_H
#define TOTIENT_H

/**
 * Euler's totient function. 
 * @param n the number whose totient we seek
 * @return the number of elements in {1,2,...,n} that are relatively
 * prime to n.
 */

long totient(long n);

/**
 * A faster version of Euler's totient. This version uses a precomputed
 * table of primes to speed up the calculation.
 * @param n the number whose totient we seek.
 * @param primes a table of primes; this table must include all prime
 * factors of n.
 * @return Euler's totient of n.
 */
long totient(long n, const long* primes);

#endif
