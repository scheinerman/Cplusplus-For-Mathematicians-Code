#include <iostream>
#include <iomanip>
#include <cmath>
using namespace std;

int main() {
  double x = 3.14159265358979323846;

  cout << "12345678901234567890" << endl;
  cout << x << endl;
  cout << setprecision(12) << 10*x << endl;
  cout << exp(1.) << endl;
  cout << showpos << showpoint << 10.0 << endl;

  return 0;
}
