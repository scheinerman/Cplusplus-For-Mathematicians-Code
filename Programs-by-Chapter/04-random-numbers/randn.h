#ifndef RANDN_H
#define RANDN_H

#include "uniform.h"

/**
 * Gaussian, N(0,1), random variable.
 */
double randn();

/**
 * N(mu,sigma) random variable.
 * @param mu the mean
 * @param s the standard deviation
 * @returns a random quantity with distribution N(mu,s)
 */
double randn(double mu, double s);

#endif
