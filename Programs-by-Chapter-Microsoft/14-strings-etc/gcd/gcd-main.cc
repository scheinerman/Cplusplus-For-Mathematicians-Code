#include <iostream>
#include "gcd.h"

using namespace std;

int main(int argc, char** argv) {
  if (argc != 3) {
    cerr << "Usage: " << argv[0] << " n1 n2" << endl;
    cerr << "to find the gcd of n1 and n2" << endl;
    return 1;
  }

  long n1 = atol(argv[1]);
  long n2 = atol(argv[2]);
  cout << gcd(n1,n2) << endl;
  
  return 0;
}
