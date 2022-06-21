#include "Point.h"
#include <iostream>
using namespace std;

/**
 * A main to test the Point class.
 */

int main() {
  Point X;       // Test constructor version 1
  Point Y(3,4);  // Test constructor version 2

  cout << "The point X is " << X << " and the point Y is " 
       << Y << endl;
  cout << "Point Y in polar coordinates is (" 
       << Y.getR() << "," << Y.getA() << ")" << endl; 

  cout << "The distance between these points is " 
       << dist(X,Y) << endl;
  cout << "The midpoint between these points is " 
       << midpoint(X,Y) << endl;

  Y.rotate(M_PI/2);
  cout << "After 90-degree rotation, Y = " << Y << endl;

  Y.setR(100);
  cout << "After rescaling, Y = " << Y << endl;

  Y.setA(M_PI/4);
  cout << "After setting Y's angle to 45 degrees, Y = " << Y << endl;

  Point Z;
  Z = Y;  // Assign one point to another
  cout << "After setting Z = Y, we find Z = " << Z << endl;

  X = Point(5,3);
  Y = Point(5,-3);

  cout << "Now point X is " << X << " and point Y is " << Y << endl;
  if (X==Y) {
    cout << "They are equal." << endl;
  }

  if (X != Y) {
    cout << "They are not equal." << endl;
  }
 
  return 0;
}
