/**
 * @file complexx.h
 * @brief A header file that adds convenient extensions for working
 * with complex numbers.
 */

#ifndef COMPLEXX_H
#define COMPLEXX_H

#include <complex>
using namespace std;

/**
 * We define C to be an abbreviation for complex<double>.
 */
typedef complex<double> C;

/**
 * We define i to be a constant equal to sqrt(-1), i.e., C(0.,1.).
 */
const C i = C(0., 1.);

#endif
