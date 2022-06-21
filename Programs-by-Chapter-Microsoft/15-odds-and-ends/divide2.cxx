#include <iostream>

using namespace std;

double quotient(double p, double q) {
  if (q==0.) throw p;
  return p/q;
}

int main() {
  double x,y;
  try {
    cout << "Enter numerator: ";
    cin >> x;
    cout << "Enter denominator: ";
    cin >> y;

    double q = quotient(x,y);
    
    cout << x << " divided by " << y << " is " << q << endl;
  }
  catch (double top) {
    cerr << "Unable to divide " << top << " by zero" << endl;
    exit(1);
  }
  
  cout << "Thank you for dividing." << endl;

  return 0;
}
