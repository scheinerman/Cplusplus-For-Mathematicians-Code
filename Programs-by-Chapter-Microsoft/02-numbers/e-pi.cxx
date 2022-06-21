#include <iostream>
#include <cmath>
using namespace std;

const double M_PI = 3.14159265358979323846;

/**
 * Which is larger, pi to the e or e to the pi? We calcualte both to
 * find out.
 */

int main() {
  double e = exp(1.);
  double pi = M_PI;

  cout << "e to the pi is " << exp(pi) << endl; 
  cout << "pi to the e is " << pow(pi,e) << endl;
}
