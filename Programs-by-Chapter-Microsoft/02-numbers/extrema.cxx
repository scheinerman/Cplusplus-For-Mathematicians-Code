#include <iostream>
#include <climits>   // max & min size of integer types
#include <cfloat>    // max & min size of real types
using namespace std;

/**
 * Print out the extreme values of various integer types.
 */

int main() {
  cout << "The maximum size of a short is " << SHRT_MAX << endl;
  cout << "The minimum size of a short is " << SHRT_MIN << endl;

  cout << "The maximum size of a int is " << INT_MAX << endl;
  cout << "The minimum size of a int is " << INT_MIN << endl;

  cout << "The maximum size of a long is " << LONG_MAX << endl;
  cout << "The minimum size of a long is " << LONG_MIN << endl;

  // long long values might not exist on some computers
  cout << "The maximum size of a long long is " << LLONG_MAX << endl;
  cout << "The minimum size of a long long is " << LLONG_MIN << endl;


  cout << "The minimum positive value of a float is " 
       << FLT_MIN << endl;
  cout << "The minimum epsilon value of a float is " 
       << FLT_EPSILON << endl;
  cout << "The maximum value of a float is " 
       << FLT_MAX << endl;

  cout << "The minimum positive value of a double is " 
       << DBL_MIN<< endl;
  cout << "The minimum epsilon value of a double is " 
       << DBL_EPSILON << endl;
  cout << "The maximum value of a double is " 
       << DBL_MAX << endl;

  // long double might not be defined on some systems
  cout << "The minimum positive value of a long double is " 
       << LDBL_MIN<< endl;
  cout << "The minimum epsilon value of a long double is " 
       << LDBL_EPSILON << endl;
  cout << "The maximum value of a long double is " 
       << LDBL_MAX << endl;

  return 0;
}
