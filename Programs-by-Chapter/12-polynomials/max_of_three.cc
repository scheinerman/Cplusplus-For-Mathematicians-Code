#include "max_of_three.h"
#include <iostream>
using namespace std;

int main() {
  double x = 3.4;
  double y = -4.1;
  double z = 11.2;

  long a = 14;
  long b = 17;
  long c = 0;

  cout << "The max of " << x << ", " << y << ", " << z << " is " 
       << max_of_three(x,y,z) << endl;

  cout << "The max of " << a << ", " << b << ", " << c << " is " 
       << max_of_three(a,b,c) << endl;

  return 0;
}
