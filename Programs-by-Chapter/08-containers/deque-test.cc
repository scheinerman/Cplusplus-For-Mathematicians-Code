#include <iostream>
#include <deque>
using namespace std;

int main() {
  deque<long> D;

  D.push_back(17);
  D.push_back(23);
  D.push_front(-9);
  D.push_front(5);

  D[1] = 0;
  
  cout << "The first element of the deque is " << D.front() << endl;
  cout << "The last element of the deque is " << D.back() << endl;
  cout << "Here is the entire structure: " ;
  for (long k=0; k<D.size(); k++) {
    cout << D[k] << " " ;
  }
  cout << endl;

  return 0;
}
