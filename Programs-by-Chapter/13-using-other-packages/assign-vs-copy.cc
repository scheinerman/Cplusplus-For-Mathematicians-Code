#include <iostream>
#include "tnt.h"

using namespace std;
using namespace TNT;

int main() {
  Array2D<double> A(3,3), B, C;

  for (int i=0; i<3; i++) 
    for (int j=0; j<3; j++) 
      A[i][j] = (i+1) + 0.1*(j+1);

  cout << "Original matrix A:" << endl << A << endl;

  B = A;         // Now B and A share data
  C = A.copy();  // C is an independent copy of a

  B[1][1] = 888;
  A[0][2] = 999;

  cout << "Now A is this " << endl << A << endl;
  cout << "and B is this " << endl << B << endl;
  cout << "and C is this " << endl << C << endl;
  
  return 0;
}
