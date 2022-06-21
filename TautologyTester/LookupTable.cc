#include "LookupTable.h"
#include <iostream>
using namespace std;

/**
 * @file LookupTable.cc
 * @brief Code for the LookupTable class
 */

LookupTable::LookupTable(set<char> S) {
  for (int k=0;k<26;k++) {
    char2index[k] = -1;  // all invalid
  }
  n = S.size();
  set<char>::iterator si;
  int k = 0;
  for (si = S.begin(); si != S.end(); ++si) {
    char ch = *si;
    char2index[ch - 'a'] = k;
    k++;
  }
}

void LookupTable::set_values(unsigned long x) {
  for (int k=0; k<n; k++) {
    unsigned long mask = 1<<k;
    values[k] = (x&mask) != 0;
  }
}

bool LookupTable::lookup(char ch) const {
  int idx = char2index[ch - 'a'];
  if (idx < 0) {
    cerr << "This shouldn't happen (lookup invalid variable)" << endl;
    return false;
  }
  return values[idx];
}

// DEBUG ROUTINE //
void LookupTable::dump() const {
  for(int k=0; k<26; k++) {
    char ch = 'a' + k;
    int idx = char2index[k];
    if (idx >= 0) {
      cerr << ch << " -> " << values[idx] << endl;
    }
  }
}
    
