#ifndef PERMUTATION_H
#define PERMUTATION_H
#include <iostream>
using namespace std;

class Permutation {
private:
  long  n;
  long* data;

public:
  Permutation();
  Permutation(long nels);
  Permutation(long nels, long* array);
  Permutation(const Permutation& that);
  ~Permutation();

  void swap(long i, long j);
  void randomize();
  void reset();

  bool check() const;

  long getN() const { return n; }
  long of(long k) const;
  long operator()(long k) const { return of(k); }
  
  Permutation operator=(const Permutation& that);

  Permutation operator*(const Permutation& that) const;
  Permutation operator*=(const Permutation& that);

  Permutation inverse() const;

  bool operator==(const Permutation& that) const;
  bool operator!=(const Permutation& that) const;
  bool operator< (const Permutation& that) const;
  bool isIdentity() const;
};

ostream& operator<<(ostream& os, const Permutation& P);

#endif
