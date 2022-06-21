#ifndef FACTOR_H
#define FACTOR_H

/**
 * Factor an integer n. The prime factors are saved in the second
 * argument, flist. It is the user's responsibility to be sure that
 * flist is large enough to hold all the primes. If n is negative, we
 * factor -n instead. If n is zero, we return -1. The case n equal to
 * 1 causes this procedure to return 0 and no primes are saved in
 * flist.
 *
 * @param n the integer we wish to factor
 * @param flist an array to hold the prime factors
 * @return the number of prime factors
 */
long factor(long n, long* flist);



#endif
