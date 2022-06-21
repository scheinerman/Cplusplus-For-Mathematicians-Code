#include <iostream>
#include <cmath>
#include "randn.h"

using namespace std;

int main() {
  seed();
  double sum = 0.;
  double sum2 = 0.;
  const int N = 10000;

  for (int k=0; k<N; k++) {
    double x = randn(3.,2.);
    sum += x;
    sum2 += x*x;
  }

  cout << "Mean = " << sum/N << endl;
  cout << "Variance = " << -sum*sum/N/N + sum2/N << endl;
}
