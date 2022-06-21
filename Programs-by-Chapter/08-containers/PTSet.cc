#include "PTriple.h"
#include <set>

int main() {
  set<PTriple> S;            // Set to hold the PTriples we find

  // Ask the user for N
  cout << "Please enter N (upper bound on triples) --> ";
  long N;
  cin >> N;
  if (N <= 0) return 0;  // Nothing to do when N isn't positive

  // We only need to run the constructor arguments up to the square
  // root of N.
  long rootN = long (sqrt(double(N)) );
  
  // Run through possibilities and if appropriate, add to the set S.
  for (int k=1; k<=rootN; k++) {
    for (int j=1; j<=rootN; j++) {
      PTriple P(j,k);
      if (P.getC() <= N) 
	S.insert(P);
    }
  }

  // Print out the elements of the set
  set<PTriple>::iterator si;         // Iterator for S
  for (si = S.begin(); si != S.end() ; si++) {
    cout << *si << endl;
  }

  return 0;   
}
