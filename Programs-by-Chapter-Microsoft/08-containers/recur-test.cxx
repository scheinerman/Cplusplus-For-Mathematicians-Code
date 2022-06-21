#include "recur.h"
#include <iostream>
using namespace std;

const long int NMAX   = 20;
const long int NSTART = 1;


int main() {

  cout << "Enter n --> ";
  long n;
  cin >> n;

  for (int k=1; k<=n; k++) {
    cout << "a(" << k << ") = " << recur(k) << endl;
  }
  return 0;

}
