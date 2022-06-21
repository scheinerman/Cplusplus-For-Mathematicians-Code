#include <iostream>
#include <set>
using namespace std;

bool subset(const set<long>& A, const set<long>& B) {
  if (A.empty()) return true;
  set<long>::const_iterator si;
  for (si=A.begin(); si!=A.end(); si++) {
    if (B.count(*si) == 0) return false;
  }
  return true;
}

void Union(const set<long>& A, const set<long>& B, set<long>& C) {
  C = A;
  set<long>::const_iterator si;
  for (si = B.begin(); si != B.end(); si++) { 
    C.insert(*si);
  }
}

void Intersection(const set<long>& A, const set<long>&B, set<long>& C) {
  C.clear();
  set<long>::const_iterator si;
  for (si = A.begin(); si != A.end(); si++) {
    if (B.count(*si)>0) {
      C.insert(*si);
    }
  }
}


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
  set<long> A,B,C;
  
  for(long k=1; k<=5; k++) {
    A.insert(k);
    B.insert(k);
    B.insert(2*k);
  }

  A.insert(-2);
  C.insert(99);
  Union(A,B,C);

  cout << "A = "; print_set(A);
  cout << "B = "; print_set(B);
  cout << "A U B = " ;
  print_set(C);
  Intersection(A,B,C);
  cout << "A * B = "; print_set(C);
  return 0;
}
