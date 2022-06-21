#include <iostream>
#include <set>
using namespace std;

int main() {
  multiset<long> A;
  
  for (int k=1; k<=5; k++) A.insert(k);  // A <- {1,2,3,4,5}
  A.insert(3);  // we put an extra 3 into A

  cout << "The size of A is " << A.size() << endl;

  // print the set
  multiset<long>::iterator ai;
  cout << "The elements of A are: ";
  for (ai = A.begin(); ai != A.end(); ai++) {
    cout << *ai << " ";
  }
  cout << endl;
  return 0;
}
