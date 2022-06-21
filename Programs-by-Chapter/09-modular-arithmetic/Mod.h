#ifndef MOD_H
#define MOD_H
#include <iostream>
using namespace std;

const long INITIAL_DEFAULT_MODULUS = 2;

class Mod { 
private:
  long mod;
  long val;
  static long default_modulus;
  void adjust_val() {
    val = val%mod;
    if (val<0) val += mod;
  }

public:
  Mod() { 
    mod = get_default_modulus();
    val = 0;
  }

  Mod(long x) {
    mod = get_default_modulus();
    val = x;
    adjust_val();
  }

  Mod(long x, long m) {
    if (m <= 0) {
      val = 0;
      mod = 0;
    }
    else {
      mod = m;
      val = x;
      adjust_val();
    }
  }

  long get_val() const { return val; }

  void set_val(long x) { 
    if (mod == 0) return; // no change for an invalid object
    val = x;
    adjust_val();
  }

  long get_mod() const { return mod; }

  void set_mod(long m) {
    if (m <= 0) {
      mod = 0;
      val = 0;
    }
    else {
      mod = m;
      adjust_val();
    }
  }

  static void set_default_modulus(long m) {
    if (m <= 0) {
      default_modulus = INITIAL_DEFAULT_MODULUS;
    }
    else {
      default_modulus = m;
    }
  }

  static long get_default_modulus() { 
    if (default_modulus <= 0) 
      set_default_modulus(INITIAL_DEFAULT_MODULUS);
    return default_modulus;
  }
  bool is_invalid() const { return mod==0; }

  bool operator==(const Mod& that) const {
    return ( (val==that.val) && (mod==that.mod) );
  }
  
  bool operator==(long that) const {
    return (*this) == Mod(that,mod);
  }
  
  bool operator!=(const Mod& that) const {
    return ( (val != that.val) || (mod != that.mod) );
  }

  bool operator !=(long that) const {
    return (*this) != Mod(that,mod);
  }

  bool operator<(const Mod& that) const {
    if (mod < that.mod) return true;
    if (mod > that.mod) return false;
    if (val < that.val) return true;
    return false;
  }

  Mod add(Mod that) const;

  Mod operator+(const Mod& x) const { return add(x); }
   
  Mod operator+(long x) const { return add(Mod(x,mod)); }

  Mod operator+=(const Mod& x) { 
    *this = add(x);
    return *this;
  }
    
  Mod operator+=(long x) {
    *this = add(Mod(x,mod));
    return *this;
  }

  Mod operator-() const { return Mod(-val,mod); }

  Mod operator-(const Mod& x) const {
    return (*this) + (-x);
  }

  Mod operator-(long x) const {
    return (*this) + (-x);
  }

  Mod operator-=(const Mod& x) {
    *this = add(-x);
    return *this;
  }

  Mod operator-=(long x) {
    *this = *this + (-x);
    return *this;
  }

  Mod multiply(Mod that) const;

  Mod operator*(const Mod& x) const { return multiply(x); }

  Mod operator*(long x) const { return multiply(Mod(x,mod)); }

  Mod operator*=(const Mod& x) {
    *this = multiply(x);
    return *this;
  }

  Mod operator*=(long x) {
    *this =  multiply(Mod(x,val));
    return *this;
  }

  Mod inverse() const;

  Mod operator/(const Mod& x) const { return multiply(x.inverse()); }

  Mod operator/(long x) const {
    return multiply(Mod(x,mod).inverse());
  }

  Mod operator/=(const Mod& x) {
    *this = multiply(x.inverse());
    return *this;
  }

  Mod operator/=(long x) {
    *this = multiply(Mod(x,mod).inverse());
    return *this;
  }

  Mod pow(long k) const;

};

ostream& operator<<(ostream& os, const Mod& M);

inline bool operator==(long x, const Mod& y) {
  return (y==x);
}

inline bool operator!=(long x, const Mod& y) {
  return (y!=x);
}

inline Mod operator+(long x, Mod y) {
  return y+x;
}

inline Mod operator-(long x, Mod y) {
  return (-y) + x;
}

inline Mod operator*(long x, Mod y) {
  return y*x;
}

inline Mod operator/(long x, Mod y) {
  return y.inverse() * x;
}

#endif
