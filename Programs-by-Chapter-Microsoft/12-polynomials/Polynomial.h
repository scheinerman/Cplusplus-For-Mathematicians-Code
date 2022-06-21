#ifndef POLYNOMIAL_H
#define POLYNOMIAL_H

#include <vector>
#include <iostream>
using namespace std;

template <class K>
class Polynomial {
private:
  vector<K> coef;
  long      dg;

  void deg_check() {
    dg = -1;
    for (long k=0; k< long(coef.size()); k++) {
      if (coef[k] != K(0)) dg = k;
    }
    coef.resize(dg+1);
  }

public:
  Polynomial<K>() {
    clear();
  }

  template <class J>
  Polynomial<K>(J a) {
    coef.clear();
    coef.resize(1);
    coef[0] = K(a);
    deg_check();
  }
  
  template <class J, class JJ, class JJJ>
  Polynomial<K>(J a, JJ b, JJJ c) {
    coef.clear();
    coef.resize(3);
    coef[2] = K(a);
    coef[1] = K(b);
    coef[0] = K(c);
    deg_check();
  }

  template <class J>
  Polynomial<K>(long array_size, const J* array) {
    if (array_size < 0) {
      coef.clear();
      coef.resize(1);
      coef[0] = K(0);
      dg = -1;
      return;
    }
    coef.clear();
    coef.resize(array_size);
    for (long k=0; k<array_size; k++) {
      coef[k] = K(array[k]);
    }
    deg_check();
  }

  long deg() const { return dg; }

  K get(long k) const { 
    if ( (k<0) || (k>dg) ) return K(0);
    return coef[k];
  }
  
  K operator[](long k) const { return get(k); }

  void set(long idx, K a) {
    if (idx < 0) return;
    if (idx+1 >long(coef.size())) coef.resize(idx+1);
    coef[idx] = a;
    deg_check();
  }

  void clear() {
    coef.resize(1);
    dg = -1;
    coef[0] = K(0);
  }

  void minimize() {
    deg_check();
    coef.reserve(dg+1);
  }

  bool isZero() const { return (dg < 0); }

  void shift(long n = 1) {
    if (n==0) return;

    if (n<0) {
      for (long k=0; k<=dg+n; k++) coef[k] = coef[k-n];
      for (long k=dg+n+1; k<=dg; k++) coef[k] = K(0);
      deg_check();
      return; 
    }

    coef.resize(n+dg+1);
    for (long k=dg; k>=0; k--) coef[k+n] = coef[k];
    for (long k=0; k<n; k++) coef[k] = K(0);
    dg += n;
  }

  // FUNCTION APPLICATION //
  
  K of(K a) const {
    if (dg <= 0) return coef[0];
    K ans;
    ans = K(0);
    for (long k=dg; k>=0; k--) {
      ans *= a;
      ans += coef[k];
    }
    return ans;
  }

  K operator()(K a) const { return of(a); }

  Polynomial<K> of(const Polynomial<K>& that) const {
    if (dg <= 0) return Polynomial<K>(coef[0]);

    Polynomial<K> ans(K(0));
    for (long k=dg; k>=0; k--) {
      ans *= that;
      ans += Polynomial<K>(coef[k]);
    }
    return ans;
  }

  Polynomial<K> operator()(const Polynomial<K>& that) const {
    return of(that);
  }

  // COMPARISON //

  bool operator==(const Polynomial<K>& that) const {
    if (dg != that.dg) return false;
    for (long k=0; k<=dg; k++) {
      if (coef[k] != that.coef[k]) return false;
    }
    return true;
  }

  bool operator!=(const Polynomial<K>& that) const {
    return !(*this == that);
  }

  // ARITHMETIC //

  Polynomial<K> operator+(const Polynomial<K>& that) const {
    Polynomial<K> ans;
    long dmax = (dg > that.dg) ? dg : that.dg;
    ans.coef.resize(dmax+1);
    for (long k=0; k<=dmax; k++) {
      ans.coef[k] = get(k) + that.get(k);
    }
    ans.deg_check();
    return ans;
  }

  Polynomial<K> operator+=(const Polynomial<K>& that) {
    (*this) = (*this) + that;
    return *this;
  }
	
  Polynomial<K> operator-() const {
    Polynomial<K> ans;
    ans.coef.resize(dg+1);
    for (long k=0; k<=dg; k++) ans.coef[k] = -coef[k];
    ans.deg_check();
    return ans;
  }
  
  Polynomial<K> operator-(const Polynomial<K>& that) const {
    Polynomial<K> ans;
    long dmax = (dg > that.dg) ? dg : that.dg;
    ans.coef.resize(dmax+1);
    for (long k=0; k<=dmax; k++) {
      ans.coef[k] = get(k) - that.get(k);
    }
    ans.deg_check();
    return ans;
  }
  
  Polynomial<K> operator-=(const Polynomial<K>& that)  {
    (*this) = (*this) - that;
    return *this;
  }

  Polynomial<K> operator*(const Polynomial<K>& that) const {
    Polynomial<K> ans;
    if (isZero() || that.isZero()) return ans;
    long dans = dg + that.dg;
    ans.coef.resize(dans+1);
    for (long k=0; k<=dans; k++) {
      K c(0);
      for (long j=0; j<=k; j++) {
	if ((j<=dg) && (k-j<=that.dg)) c += coef[j]*that.coef[k-j];
      }
      ans.coef[k] = c;
    }
    ans.deg_check();
    return ans;
  }

  Polynomial<K> operator*=(const Polynomial<K>& that)  {
    *this = (*this) * that;
    return *this;
  }
  
  Polynomial<K> pow(long k) const {
    if (k==0) return Polynomial<K>(1);
    if (k==1) return *this;

    if (k%2 == 0) {
      long half_k = k/2;
      Polynomial<K> ans;
      ans = (*this).pow(half_k);
      ans *= ans;
      return ans;
    }

    long half_k = (k-1)/2;
    Polynomial<K> ans;
    ans = (*this).pow(half_k);
    ans *= ans;
    ans *= *this;
    return ans;
  }   

  Polynomial<K> operator/(const Polynomial<K>& that) const {
    Polynomial<K> Q,R;
    quot_rem(*this, that, Q, R);
    return Q;
  }
  
  Polynomial<K> operator/=(const Polynomial<K>& that) {
    *this = (*this)/that;
    return *this;
  }

  Polynomial<K> operator%(const Polynomial<K>& that) const {
    Polynomial<K> Q,R;
    quot_rem(*this, that, Q, R);
    return R;
  }

  Polynomial<K> operator%=(const Polynomial<K>& that) {
    (*this) = (*this) % that;
    return *this;
  }

  void make_monic() {
    if (dg < 0) return; 
    K lead = coef[dg];
    for (long j=0; j<=dg; j++) coef[j] /= lead;
  }

  bool is_monic() const {
    if (dg < 0) return false;
    return coef[dg] == K(1);
  }

};    // end of Polynomial<K> class template

template <class K>
ostream& operator<<(ostream& os, const Polynomial<K>& P) {
  if (P.deg() <= 0) {
    os << "(" << P[0] << ")";
    return os;
  }
  for (long k=P.deg(); k>=0; k--) {
    if (P[k] != K(0)) {
      if (k < P.deg()) os << " + ";
      os << "(" << P[k] << ")";
      if (k>1) {
	os << "X^" << k;
	continue;
      }
      if (k==1) {
	os << "X";
      }
    }
  }
  return os;
}
    
template <class J, class K>
Polynomial<K> operator+(J x, const Polynomial<K>& P) 
{ return P + K(x); }

template <class J, class K>
Polynomial<K> operator-(J x, const Polynomial<K>& P) 
{ return (-P) + K(x); }

template <class J, class K>
Polynomial<K> operator*(J x, const Polynomial<K>& P) 
{ return P * K(x); }

template <class K>
void quot_rem(const Polynomial<K>& A, 
	      const Polynomial<K>& B, 
	      Polynomial<K>& Q, 
	      Polynomial<K>& R) {
  Q.clear();
  R.clear();
  
  Polynomial<K> AA (A);  // copy of A
  
  while (AA.deg() >= B.deg()) {
    long k = AA.deg()-B.deg();
    Polynomial<K> BB = B;
    BB.shift(k);
    K a_lead = AA[AA.deg()];
    K b_lead = BB[BB.deg()];
    for (long j=0; j <= BB.deg(); j++) BB.set(j, BB[j]*a_lead/b_lead);
    AA -= BB;
    Q.set(k,a_lead/b_lead);
  }
  R = A - Q*B;
}

template <class K>
Polynomial<K> gcd(const Polynomial<K>& A, const Polynomial<K>& B) {
  if (B.isZero()) {
    if (A.is_monic()) return A;
    Polynomial<K> AA(A);
    AA.make_monic();
    return AA;
  }

  Polynomial<K> C;
  C = A%B;
  return gcd(B,C);
}

template <class K>
Polynomial<K> gcd(const Polynomial<K>& A, 
		  const Polynomial<K>& B, 
		  Polynomial<K>& S, 
		  Polynomial<K>& T)     {
  Polynomial<K> D; // holds the answer
  
   // If A and B are both 0, set S=T=0 and return 0.
  if (A.isZero() && B.isZero()) {
    S.clear();
    T.clear();
    return D;
  }

  // If A is not 0 but B is, D = A/a_lead, S = a_lead, T = 0
  if (B.isZero()) {
    D = A;
    K a_lead = A[A.deg()];
    D.make_monic();
    S = Polynomial<K>(K(1)/a_lead);
    T.clear();
    return D;
  }

  // Neither A nor B is zero, so we recurse

  Polynomial<K> Q;
  Polynomial<K> R;
  quot_rem(A,B,Q,R);
  
  Polynomial<K> SS;
  Polynomial<K> TT;

  D = gcd(B,R,SS,TT);

  S = TT;
  T = SS - Q*TT;

  return D;
}

#endif
