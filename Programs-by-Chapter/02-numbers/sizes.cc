#include <iostream>
using namespace std;

/**
 * Report on the size of various C++ data types.
 *
 * This program may give different results when run on different
 * computers depending on how each of the fundamental data types is
 * defined on those platforms.
 */

int main() {
  // Integer types:
  cout << "The size of short is "  << sizeof(short) 
       << " bytes" << endl;
  cout << "The size of int is " << sizeof(int) 
       << " bytes" << endl;
  cout << "The size of long is " << sizeof(long) 
       << " bytes" << endl;
 
  // long long might not exist on all computers
  cout << "The size of long long is " << sizeof(long long) 
       << " bytes" << endl;

  // Character and boolean types:
  cout << "The size of char is " << sizeof(char) << " bytes" << endl;
  cout << "The size of bool is " << sizeof(bool) << " bytes" << endl;

  // Floating point types
  cout << "The size of float is " << sizeof(float) 
       << " bytes" << endl;
  cout << "The size of double is " << sizeof(double) 
       << " bytes" << endl;

  // long double might not exist on all computers
  cout << "The size of long double is " << sizeof(long double) 
       << " bytes" << endl;

  return 0;
}
