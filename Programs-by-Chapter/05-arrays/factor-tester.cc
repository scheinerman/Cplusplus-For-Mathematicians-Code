#include "factor.h"
#include <iostream>
using namespace std;

/**
 * A program to test the factor procedure.
 */

int main() {
  
  long flist[100];   // place to hold the factors

  for (long n=1; n<=100; n++) {
    int nfactors = factor(n,flist);
    cout << n << "\t";
    for (int k=0; k<nfactors; k++) cout << flist[k] << " ";
    cout << endl;
  }
}
