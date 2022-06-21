#include <iostream>
#include "newmat.h"
#include "newmatio.h"
#include "newmatap.h"

using namespace std;

int main() {
  cout << "Enter size of Hilbert matrix --> ";
  int n;
  cin >> n;
  
  SymmetricMatrix H(n);
  for (int i=1; i<=n; i++) {
    for (int j=i; j<=n; j++) {
      H(i,j) = 1. / double(i+j-1);
    }
  }

  cout << "The Hilbert matrix is " << endl << H << endl;

  cout << "Its det is " << H.Determinant() << endl;

  cout << "Its inverse is " << endl << H.i() << endl;

  DiagonalMatrix D;
  EigenValues(H,D);

  cout << "The eigenvalues of the Hilbert matrix are" << endl;
  cout << D << endl;
 
  cout << "Trace calculated two ways: " << H.Trace() << " and " 
       << D.Trace() << endl;

  return 0;
}
