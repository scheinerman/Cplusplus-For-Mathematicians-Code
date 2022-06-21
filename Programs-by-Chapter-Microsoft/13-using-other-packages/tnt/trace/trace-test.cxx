#include "trace.h"
#include <iostream>

using namespace std;
using namespace TNT;


template <class T>
Array1D<T> operator*(T s, const Array1D<T>& vec) {
  Array1D<T> ans(vec.dim1()); // place to hold the answer of same size as vec
  for (int i=0; i<vec.dim1(); i++) ans[i] = s*vec[i];
  return ans;
}

int main() {
  Array2D<int> X(5,5);
  Array1D<int> v(5);

  cout << TNT_VERSION_STRING << endl;

  for (int i=0; i<5; i++) for (int j=0; j<5; j++) {
    X[i][j] = (i+1)*(j+1);
  }

  for (int i=0; i<5; i++) v[i] = i-2;

  cout << X << endl << trace(X) << endl;

  cout << v << endl;
  cout << 5*v << endl;
}
