#include <iostream>
#include <string>
using namespace std;

int main() {

  // Construction
  string s1("Hello");
  string s2;
  s2 = "Hilbert";

  // Concatenation
  string c = s1 + " " + s2;
  cout << "The string c is: " << c << endl;


  return 0;
}
