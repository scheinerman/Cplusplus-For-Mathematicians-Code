#include <iostream>
#include <map>
using namespace std;

/**
 * A program to illustrate the use of maps.
 */

int main() {
  map<long, double> f;  // f is a function from integers to reals

  f[-3] = 0.5;
  f[2]  = M_PI;
  f[6]  = 11;
  f[0]  = -1.2;
  f[6] = exp(1.);   // notice we are overwriting f[6]

  for (long k=0; k<10; k++) {
    cout << "The value of f[" << k << "] is ";
    if (f.count(k) > 0) {
      cout << f[k] << endl;
    }
    else {
      cout << "undefined" << endl;
    }
  }

  cout << "There are " << f.size() << " ordered pairs held in f" 
       << endl <<  "They are: ";

  map<long,double>::iterator mi;
  for (mi = f.begin(); mi != f.end(); mi++) {
    long k   = (*mi).first;
    double v = (*mi).second;
    cout << "(" << k << "," << v << ") ";
  }
  cout << endl;

  return 0;
}
