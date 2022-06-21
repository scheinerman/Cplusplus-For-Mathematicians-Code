#include "gcd.h"
#include <iostream>
using namespace std;

long gcd(long a, long b) {
  
  // if a and b are both zero, print an error and return 0
  if ( (a==0) && (b==0) ) {
    cerr << "WARNING: gcd called with both arguments equal to zero." 
	 << endl;
    return 0;
  }
   
  // Make sure a and b are both nonnegative
  if (a<0) {
    a = -a;
  }
  if (b<0) {
    b = -b;
  }

  // if a is zero, the answer is b
  if (a==0) {
    return b;
  }

  // otherwise, we check all possibilities from 1 to a
       
  long d;  // d will hold the answer

  for (long t=1; t<=a; t++) {
    if ( (a%t==0) && (b%t==0) ) {
      d = t;
    }
  }

  return d;
}
