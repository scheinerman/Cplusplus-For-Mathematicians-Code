#include <iostream>
#include <vector>
using namespace std;

int main() {  vector<long> b(100);
  cout << (unsigned int) b.size() << endl;
  cout << (unsigned int) b.capacity() << endl << endl;

  b.resize(110);
  cout << (unsigned int) b.size() << endl;
  cout << (unsigned int) b.capacity() << endl << endl;

  b.resize(120);
  cout << (unsigned int) b.size() << endl;
  cout << (unsigned int) b.capacity() << endl << endl;

  cout << (unsigned int) b.max_size() << endl;

  
  return 0;
}
