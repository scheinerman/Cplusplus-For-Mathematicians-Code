#include <iostream>
#include <set>
using namespace std;
/**
 * A program to illustrate set concepts.
 */


void print_set(const set<long>& S) {
  cout << "{";
  set<long>::const_iterator it;
  unsigned long count = 0;

  for (it = S.begin(); it != S.end(); it++) {
    cout << *it;
    if (count < S.size()-1) {
      cout << ",";
    }
    else {
      cout << "}" << endl;
    }
    count++;
  }
}

int main() {
  set<long> S;    // A set of integers
  set<long> T;    // another set

  for (long k=1; k<10; k++) S.insert(k);  // S <- {1,2,...,9}
  for (long k=5; k<16; k++) T.insert(k);

  print_set(S);
  print_set(T);

  set<long> X;
  //set_intersection(S.begin(),S.end(), T.begin(), T.end(), X.begin());

  set<long>::iterator it;

  it = T.end();
  it--;
  cout << *it << endl;
  
}
