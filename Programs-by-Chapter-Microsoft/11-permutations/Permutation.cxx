#include "Permutation.h"
#include "uniform.h"
#include <algorithm>

Permutation::Permutation() {
  data = new long[2];
  n = 1;
  data[1] = 1;
}

Permutation::Permutation(long nels) {
  if (nels <= 0) {
    nels = 1;
  }
  data = new long[nels+1];
  n = nels;
  for (long k=1; k<=n; k++) {
    data[k] = k;
  }
}

Permutation::Permutation(long nels, long* array) {
  if (nels <= 0) {
    nels = 1;
    data = new long[2];
    data[1] = 1;
    return;
  }
  n = nels;
  data = new long[n+1];
  for (long k=1; k<=n; k++) data[k] = array[k];
  if (!check()) reset();
}

Permutation::Permutation(const Permutation& that) {
  n = that.n;
  data = new long[n+1];
  for (long k=1; k<=n; k++) data[k] = that.data[k];
}

Permutation::~Permutation() {
  delete[] data;
}

void Permutation::reset() {
  for (long k=1; k<=n; k++) data[k] = k;
}

void Permutation::swap(long i, long j) {
  if ( (i<1) || (i>n) || (j<1) || (j>n) || (i==j) ) return;
  long a = data[i];
  long b = data[j];
  data[i] = b;
  data[j] = a;
}

void Permutation::randomize() {
  for (long k=1; k<n; k++) {
    long j = unif(n-k+1)-1+k;
    long tmp = data[j];
    data[j] = data[k];
    data[k] = tmp;
  }
}

bool Permutation::check() const {
  long* temp;
 
  temp = new long[n+1];
  for (long k=1; k<=n; k++) {
    if ( (data[k] < 1) || (data[k] > n)) {
      delete[] temp;
      return false;
    }
    temp[k] = data[k];
  }
  sort(temp+1, temp+n+1);
  for (long k=1; k<=n; k++) {
    if (temp[k] != k) {
      delete[] temp;
      return false;
    }
  }
  delete[] temp;
  return true;
}
  
long Permutation::of(long k) const {
  if ( (k<1) || (k>n) ) return k;
  return data[k];
}

Permutation Permutation::operator=(const Permutation& that) {
  delete[] data;
  n = that.n;
  data = new long[n+1];
  for (long k=1; k<=n; k++) data[k] = that.data[k];
  return *this;
}

Permutation Permutation::operator*(const Permutation& that) const {
  long nmax = (n > that.n) ? n : that.n;
  long* tmp = new long[nmax+1];

  for (long k=1; k<=n; k++) {
    tmp[k] = of(that(k));
  }
  
  Permutation ans(nmax,tmp);
  delete[] tmp;
  return ans;  
}

Permutation Permutation::operator*=(const Permutation& that) {
  (*this) = (*this) * that;
  return *this;
}

Permutation Permutation::inverse() const {
  Permutation ans(n);
  for (long k=1; k<=n; k++) ans.data[data[k]] = k;
  return ans;
}

bool Permutation::operator==(const Permutation& that) const {
  if (n != that.n) return false;

  for (long k=1; k<=n; k++) {
    if (data[k] != that.data[k]) return false;
  }
  return true;
}

bool Permutation::operator!=(const Permutation& that) const {
  return !( (*this)==that );
}

bool Permutation::operator<(const Permutation& that) const {
  if (n < that.n) return true;
  if (n > that.n) return false;

  for (long k=1; k<=n; k++) {
    if (data[k] < that.data[k]) return true;
    if (data[k] > that.data[k]) return false;
  }
  return false;
}

bool Permutation::isIdentity() const {
  for (int k=1; k<=n; k++) {
    if (data[k] != k) return false;
  }
  return true;
}

ostream& operator<<(ostream& os, const Permutation& P) {
  long n = P.getN();
  bool* done = new bool[n+1];
  for (long k=1; k<=n; k++) done[k] = false;

  for (long k=1; k<=n; k++) {
    if (!done[k]) {
      os << "(" << k;
      done[k] = true;
      long j = P(k);
      while (j!=k) {
	os << "," << j;
	done[j] = true;
	j = P(j);
      }
      os << ")";
    }
  }
  delete[] done;
  return os;
}

