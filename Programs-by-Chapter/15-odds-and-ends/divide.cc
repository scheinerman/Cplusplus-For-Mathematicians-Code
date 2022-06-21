#include <iostream>

using namespace std;

int main() {
  double x,y;
  try {
    cout << "Enter numerator: ";
    cin >> x;
    cout << "Enter denominator: ";
    cin >> y;
    
    if (y==0.) throw x;

    cout << x << " divided by " << y << " is " << x/y << endl;
  }
  catch (double top) {
    cerr << "Unable to divide " << top << " by zero" << endl;
  }
  
  cout << "Thank you for dividing." << endl;

  return 0;
}
