#include <iostream>
#include "newmat.h"
#include "newmatio.h"
#include "newmatap.h"
using namespace std;

int main() {
  SymmetricMatrix A(3);
  A(1,2) = 3;
  A(3,2) = 2;
  cout << A << endl;

  DiagonalMatrix D;
  Jacobi(A,D);
  cout << D << endl;
  cout << IdentityMatrix(6) << endl;

  ColumnVector X;

  X << D;

  cout << "X = " << X << endl;
  return 0;
}
