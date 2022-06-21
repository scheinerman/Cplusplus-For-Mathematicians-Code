#include "tnt.h"
#include "jama_lu.h"
#include "jama_eig.h"
#include "jama_cholesky.h"
#include <iostream>
using namespace std;
using namespace TNT;
using namespace JAMA;

// A program to demonstrate the use of TNT and JAMA packages for
// linear algebra work.

int main() {
  // Get the size of the matrix from the user
  cout << "Enter Hilbert matrix size --> ";
  int n;
  cin >> n;

  if (n < 2) {
    cerr << "Please enter a value greater than 1" << endl;
    return 1;
  }

  // H holds the n-by-n Hilbert matrix and eye holds the n-by-n
  // identity matrix.
  Array2D<double> H(n,n);
  Array2D<double> eye(n,n);

  // Fill in the entries in H
  for (int i=0; i<n; i++) {
    for (int j=0; j<n; j++) {
      H[i][j] =1./(i+j+1);
    }
  }

  // Set up identity matrix
  for (int i=0; i<n; i++) eye[i][i] = 1;
 
  // Print out H
  cout << "H = " << endl;
  cout << H << endl;

  // Use the LU decomposition's solve method to find the inverse of H.
  LU<double> HLU(H);
  Array2D<double> Hinv = HLU.solve(eye);
  cout << "H inverse = " << endl;
  cout << Hinv<< endl;
  
  // Use the LU decomposition of H to calculate its determinant
  cout << "The determinant of H is " << HLU.det() << endl;

  // Use the Eigenvalue class to find the eigenvalues of H
  Eigenvalue<double> Heig(H);
  cout << "The eigenvalues of H are " << endl;
  Array1D<double> eig_vals;
  Heig.getRealEigenvalues(eig_vals);
  for (int i=0; i<n; i++) cout << eig_vals[i] << " ";
  cout << endl << endl;

  // Use the Cholesky class to find a matrix C so that C*C' = H
  Cholesky<double> Hchol(H);
  Array2D<double> C = Hchol.getL();
  cout << "The Cholesky matrix for H is " << endl;
  cout << C << endl;

  // Construct C's transpose
  Array2D<double> Ctrans(n,n);
  for (int i=0; i<n; i++) {
    for (int j=0; j<n; j++) {
      Ctrans[i][j] = C[j][i];
    }
  }

  // Check that C*C' gives H
  cout << "C * C' = " << endl;
  cout << matmult(C,Ctrans) << endl;

  return 0;
}
