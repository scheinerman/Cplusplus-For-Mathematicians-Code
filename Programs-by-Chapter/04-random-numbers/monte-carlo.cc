#include "uniform.h"
#include "gcd.h"
#include <iostream>
using namespace std;

/**
 * This main generates many pairs of values from the set {1,2,...,n}
 * and reports how often the pairs are relatively prime. The value n
 * and the number of pairs are specified by the user. 
 */

int main() {
  long n;      // max el't in the set {1,2,...,n}
  long reps;   // number of times we perform the experiment
  long a,b;    // values chosen from {1,2,...,n}
  long count;  // number of pairs that are relatively prime

  count = 0;

  cout << "Enter n (maximum el't of the set) --> ";
  cin >> n;

  cout << "Enter the number of pairs to sample --> ";
  cin >> reps;

  for (long k=1; k<=reps; k++) {
    a = unif(n);
    b = unif(n);
    if (gcd(a,b) == 1) ++count;
  }

  cout << count / (double(reps));
  
  return 0;
}
