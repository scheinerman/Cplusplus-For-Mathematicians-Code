#include "recur.h"
#include <map>
using namespace std;

long recur(long n) {
  
  static map<long, long> lookup;

  if (n <= 0) return 0;
  if (n == 1) return 1;

  if (lookup.count(n) > 0) return lookup[n];

  long ans = 0;
  for (long k=1; k<=n/2; k++) {
    if (n%k == 0) ans += recur(k);
  }
  
  lookup[n] = ans;
 
  return ans;
}
