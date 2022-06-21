#include <iostream>
#include <sstream>
using namespace std;

int main() {
  ostringstream os;

  os << "The base-ten digits are";
  for (int k=0; k<=9; k++) os << " " << k;
  os << endl;
  cout << os.str();

  string words("  3.9    10  hello    good bye");
  istringstream is(words);
  double x;
  is >> x; // 3.9
  int n;
  is >> n; // 10
  string s;
  is >> s; // hello
  long k;
  is >> k; // good
  cout << "x = " << x << ", n = " << n << ", s = " << s 
       << ", and k = " << k << endl;

  return 0;
}
