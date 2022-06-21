#include "Permutation.h"
#include "uniform.h"
#include "monotone.h"
#include <iostream>
using namespace std;

int main() {
  long n;
  long reps;
  seed();

  cout << "Enter n (size of permutation) --> ";
  cin >> n;
  cout << "Enter number of repetitions   --> ";
  cin >> reps;

  Permutation P(n);

  long sum_up = 0;
  long sum_dn = 0;

  for (long k=0; k<reps; k++) {
    P.randomize();
    pair<long,long> ans;
    ans = monotone(P);
    sum_up += ans.first;
    sum_dn += ans.second;
  }

  cout << "Average length of longest increasing subsequence is " 
       << double(sum_up)/double(reps) << endl;
  
  cout << "Average length of longest decreasing subsequence is " 
       << double(sum_dn)/double(reps) << endl;
  
  return 0;
}
