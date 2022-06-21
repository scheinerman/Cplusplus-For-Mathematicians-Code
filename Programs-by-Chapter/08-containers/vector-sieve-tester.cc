#include "vector-sieve.h"
#include <iostream>
using namespace std;
/// Test the vector version of sieve.
int main() {
  vector<long> primes;
  long N;

  cout << "Find primes up to what value? ";
  cin >> N;

  // Generate the primes
  sieve(N, primes);

  cout << "We generated " << primes.size() << " primes" << endl;
  cout << "The largest of which is " << primes[primes.size()-1] << endl;
  return 0;
}
