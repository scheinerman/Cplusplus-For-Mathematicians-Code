#include "Polynomial.h"
#include "Mod.h"
#include "long2poly.h"

using namespace std;

int main() {
  long d;
  cout << "Enter degree bound --> ";
  cin >> d;
  
  if ( (d<1) || (d>max_bits) ) {
    cerr << "Please choose d between 1 and " << max_bits << endl;
    return 0;
  }
  
  long bound = 1<<d;
  
  Polynomial<Mod> *list;

  list = new Polynomial<Mod>[bound];

  cerr << "Generating polynomials ... ";
  for (long k=0; k<bound; k++) {
    list[k] = long2poly(k);
  }
  cerr << "done! " << endl << bound 
       << " polynomials of degree less than " 
       << d <<" generated" << endl;

  long count = 0;
  const Polynomial<Mod> one(Mod(1,2));

  for (long i=0; i<bound-1; i++) {
    for (long j=i+1; j<bound; j++) {
      if( gcd(list[i],list[j]) == one ) count++;
    }
  }

  count = 2*count + 1;

  cout << count << " out of " << bound*bound 
       << " pairs are relatively prime" << endl;

  cout << count / (double(bound) * double(bound)) << endl;

  return 0;
} 
