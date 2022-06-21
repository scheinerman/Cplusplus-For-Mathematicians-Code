#include <iostream>
#include <utility>
#include "uniform.h"
using namespace std;

pair<long, long> dice() {
  long a = unif(6);
  long b = unif(6);
  return make_pair(a,b);
}

int main() {
  pair<long,long> toss;
  seed();
  for (long k=0; k<10; k++) {
    
    toss = dice();
    
    cout << toss.first << "," << toss.second << endl;
  }    
    
  return 0;
}
