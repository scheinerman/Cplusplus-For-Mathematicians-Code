#include "PolygramCounter.h"

/**
 * @file PolygramCounter.cc
 * @brief Program file for the PolygramCounter class
 */

long PolygramCounter::count(const Polygram& P) const {
  if (counter.count(P) == 0) return 0;
  map<Polygram,long>::const_iterator mi;
  mi = counter.find(P);
  return (*mi).second;
}


void PolygramCounter::process(const string& word) {
  if (int(word.size()) < n) return;
  for (unsigned k=0; k<word.size()-n; k++) {
    Polygram P(word.substr(k,n));
    if (P.size() < n) continue;
    if (counter.count(P) == 0) {
      counter[P] = 1;
      total++;
    }
    else {
      counter[P]++;
      total++;
    }
  }
}

void PolygramCounter::report(int ntop) const {
  set<pair<double,Polygram> > freq2poly;
  map<Polygram,long>::const_iterator ci;

  for (ci=counter.begin(); ci!=counter.end(); ++ci) {
    Polygram P = (*ci).first;
    double f = -frequency(P);
    freq2poly.insert( make_pair(f,P) );
  }

  
  set<pair<double,Polygram> >::iterator si;
  int k = 0;
  for (si = freq2poly.begin(); k<ntop && si!=freq2poly.end(); ++si, ++k) {
    Polygram P = (*si).second;
    double f = -(*si).first;
    cout << P << "\t" << 100*f << endl;
  }
}
