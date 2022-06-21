#include "PTriple.h"
#include <iostream>
#include <cmath>
using namespace std;
/**
 * Find all primitive Pythagorean triples (a,b,c) with 0 <= a <= b <=
 * c <= N where N is specified by the user.
 */

int main() {
  PTriple* table;    // table to hold the triples
  long N;            // upper bound on triples.

  // Ask the user for N
  cout << "Please enter N (upper bound on triples) --> ";
  cin >> N;
  if (N <= 0) return 0;   // nothing to do when N isn't positive

  // Allocate space for the table
  table = new PTriple[N];

  // Populate the table with all possible PTriples
  long idx = 0;        // index into the table
  long rootN = long( sqrt(double(N)) );

  for (long m=1; m<=rootN; m++) {
    for (long n=1; n<=rootN; n++) {
      PTriple P = PTriple(m,n);
      if (P.getC() <= N) {
	table[idx] = P;
	idx++;
      }
    }
  }

  // Sort the table
  sort(table, table+idx);

  // Print out nonduplicate elements of the table
  cout << table[0] << endl;
  for (int k=1; k<idx; k++) {
    if (table[k] != table[k-1]) {
      cout << table[k] << endl;
    }
  }

  // Release memory held by the table
  delete[] table;
  return 0;
}
