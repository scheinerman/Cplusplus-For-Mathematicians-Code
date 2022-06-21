#include "totient.h"
#include "factor.h"

long totient(long n) {
  // handle special cases
  if (n <= 0) return 0;
  if (n == 1) return 1;

  // factor n
  long flist[100];
  long nfactors = factor(n,flist);

  long ans = 1;

  for (long k=0; k<nfactors; k++) {
    
    if (k < nfactors-1) {
      if (flist[k] == flist[k+1]) {
	ans *= flist[k];
      }
      else {
	ans *= flist[k]-1;
      }
    }
    else {
      ans *= flist[k]-1;
    }
  }
  return ans;
}
