#include <iostream>
#include <queue>
using namespace std;

int main() {
  priority_queue<long> PQ;

  PQ.push(5);
  PQ.push(12);
  PQ.push(0);
  PQ.push(-7);

  cout << "The elements we pushed into the priority_queue are ";
  while (!PQ.empty()) {
    cout << PQ.top() << " ";
    PQ.pop();
  }
  cout << endl;
  return 0;
}
