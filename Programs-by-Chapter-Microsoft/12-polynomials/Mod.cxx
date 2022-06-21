#include "Mod.h"
#include "gcdx.h"

long Mod::default_modulus = INITIAL_DEFAULT_MODULUS;

ostream& operator<<(ostream& os, const Mod& M) {
  if (!M.is_invalid()) {
    os << "Mod(" << M.get_val() << "," << M.get_mod() << ")";
  }
  else {
    os << "INVALID";
  }
  return os;
}

Mod Mod::add(Mod that) const  {
  if (is_invalid() || that.is_invalid()) return Mod(0,0);
  if (mod != that.mod) return Mod(0,0);
  return Mod(val + that.val, mod);
}

Mod Mod::multiply(Mod that) const {
  if (is_invalid() || that.is_invalid()) return Mod(0,0);
  if (mod != that.mod) return Mod(0,0);
  return Mod(val * that.val, mod);
}

Mod Mod::inverse() const {
  long d,a,b;
  if (is_invalid()) return Mod(0,0);

  d = gcd(val, mod, a, b);

  if (d>1) return Mod(0,0); // no reciprocal if gcd(v,x)!= 1
  return Mod(a,mod);
}

Mod Mod::pow(long k) const {
  if (is_invalid()) return Mod(0,0);  // invalid is forever

  // negative exponent: reciprocal and try again
  if (k<0) {
    return (inverse()).pow(-k);
  }

  // zero exponent: return 1 
  if (k==0) return Mod(1,mod);

  // exponent equal to 1: return self
  if (k==1) return *this;

  // even exponent: return ( m^(k/2) )^2
  if (k%2 == 0) {
    Mod tmp = pow(k/2);
    return tmp*tmp;
  }

  // odd exponent: return ( m^((k-1)/2) )^2 * m
  Mod tmp = pow((k-1)/2);
  return tmp*tmp*(*this);
}
