#ifndef MOD_H
#define MOD_H
#include <iostream>
using namespace std;

/**
 * @file Mod.h
 * @brief Declarations for the class Mod and various supporting procedures.
 */

/**
 * The Mod class includes a class (static) variable named
 * default_modulus. The initial setting for this quanitity is
 * INITIAL_DEFAULT_MODULUS.
 */
const long INITIAL_DEFAULT_MODULUS = 2;

/**
 * Mod is a class to represent numbers in Z_n. Each Mod object has a
 * modulus (an integer greater than 1) and a value (between 0 and
 * modulus-1). For example, Mod(3,7) represents element 3 in Z_7. 
 * <p>
 * Only elements with equal modulus value can be combined (e.g., added
 * or multiplied) and only some Mod value have reciprocals. Operations
 * that give invalid results create an "invalid Mod object" equivalent
 * to Mod(0,0).
 * <p>
 * A default modulus can be set (see <code>set_default_modulus</code>)
 * in which case all Mod objects created will be constructed in that
 * modulus.
 */
class Mod { 
private:
  /// Holds the modulus 
  long mod;
  /// Holds the value in that mod 
  long val;
  /// Holds the class-wide default modulus 
  static long default_modulus;
  /// Make sure val lies in [0, mod)
  void adjust_val() {
    val = val%mod;
    if (val<0) val += mod;
  }


public:

  /// This is the default constructor. 
  /** It creates a new Mod object with value 0 and modulus equal to
   * the default modulus.
   */
  Mod() { 
    mod = get_default_modulus();
    val = 0;
  }

  /// A single argument constructor creates a new Mod object in the
  /// default modulus.
  /**
   * @param x value for this Mod object
   */
  Mod(long x) {
    mod = get_default_modulus();
    val = x;
    adjust_val();
  }

  /// Two argument constructor to specify value and modulus. 
  /**
   * If called with a zero or negative modulus, an invalid Mod object
   * is constructed.
   * @param x the value
   * @param m the modulus
   */
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

  /// Get the value of this Mod object. 
  /** 
   * If this holds Mod(3,10), this method returns 3.
   * @return the value
   */
  long get_val() const { return val; }
  
  /// Set the value of this Mod object (but do not change the modulus).
  /**
   * @param x the new value of this Mod object
   */
  void set_val(long x) { 
    if (mod == 0) return; // no change for an invalid object
    val = x;
    adjust_val();
  }

  /// Get the modulus of this Mod object.
  /** 
   * For example, if this holds Mod(3,10), this method returns 10.
   * @return the modulus
   */
  long get_mod() const { return mod; }

  /// Set the modulus of this Mod object. 
  /**
   * If a zero or negative value  is entered, an invalid Mod object results.
   * @param m the new modulus
   */
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

  /// Set the default modulus. 
  /**
   * If a nonpositive value is given, then INITIAL_DEFAULT_MODULUS is
   * used.  
   * @param m the new default modulus for this class
   */
  static void set_default_modulus(long m) {
    if (m <= 0) {
      default_modulus = INITIAL_DEFAULT_MODULUS;
    }
    else {
      default_modulus = m;
    }
  }

  
  /// What is the default modulus?
  /**
   * @return the current default modulus
   */
  static long get_default_modulus() { 
    if (default_modulus <= 0) set_default_modulus(INITIAL_DEFAULT_MODULUS);
    return default_modulus;
  }

  /// Check if this is an invalid mod object.
  /**
   * @return true if this is invalid
   */
  bool is_invalid() const { return mod==0; }

  // COMPARISON OPERATORS //
  
  /// Check for equality
  bool operator==(const Mod& that) const {
    return ( (val==that.val) && (mod==that.mod) );
  }
  
  /// Check for equality
  bool operator==(long that) const {
    return (*this) == Mod(that,mod);
  }
  
  /// Check for inequality
  bool operator!=(const Mod& that) const {
    return ( (val != that.val) || (mod != that.mod) );
  }

  /// Check for inequality
  bool operator !=(long that) const {
    return (*this) != Mod(that,mod);
  }

  /**
   * A less-than operator for Mod numbers so they can be stored in
   * containers. We sort first on modulus and then on value.
   */
  bool operator<(const Mod& that) const {
    if (mod < that.mod) return true;
    if (mod > that.mod) return false;
    if (val < that.val) return true;
    return false;
  }

  // ARITHMETIC OPERATORS //
  
  /// Add Mod objects
  /**
   * It is easier to use the + operation instead of this method. This method is 
   * used to define the various + operations.
   * @param that another Mod
   * @return the sum of this Mod and that. If the modulii do not agree, an invalid 
   * Mod is returned.
   */
  Mod add(Mod that) const;

  /// Mod addition
  Mod operator+(const Mod& x) const { return add(x); }
   
  /// Add an integer to a mod
  Mod operator+(long x) const { return add(Mod(x,mod)); }

  /// Increment this mod by another
  Mod& operator+=(const Mod& x) { 
    *this = add(x);
    return *this;
  }
    
  /// Increment by a long.
  Mod& operator+=(long x) {
    *this = add(Mod(x,mod));
    return *this;
  }


  /// Unary minus
  Mod operator-() const { return Mod(-val,mod); }

  /// Mod subtraction
  Mod operator-(const Mod& x) const {
    return (*this) + (-x);
  }

  /// Subtract a long from this Mod object
  Mod operator-(long x) const {
    return (*this) + (-x);
  }

  /// Decrement by a Mod
  Mod& operator-=(const Mod& x) {
    *this = add(-x);
    return *this;
  }

  /// Decrement by a long
  Mod& operator-=(long x) {
    *this = *this + (-x);
    return *this;
  }

  /// Multiply Mod objects
  /**
   * It is easier to use the * operation instead of this method. This method is 
   * used to define the various * operations.
   * @param that another Mod
   * @return the procuct of this Mod and that. If the modulii do not
   * agree, an invalid Mod is returned.
   */
  Mod multiply(Mod that) const;

  /// Multiply two Mod objects
  Mod operator*(const Mod& x) const { return multiply(x); }

  /// Multiply by a long
  Mod operator*(long x) const { return multiply(Mod(x,mod)); }

  /// Multiply and save
  Mod& operator*=(const Mod& x) {
    *this = multiply(x);
    return *this;
  }

  /// Multiply and save by a long
  Mod& operator*=(long x) {
    *this =  multiply(Mod(x,val));
    return *this;
  }

  /// Find the reciprocal of this Mod object
  /**
   * @return the multiplicative inverse of this Mod if it exists;
   * otherwise, return an invalid Mod.
   */
  Mod inverse() const;

  /// Modular division
  Mod operator/(const Mod& x) const { return multiply(x.inverse()); }

  /// Divide by a long
  Mod operator/(long x) const {
    return multiply(Mod(x,mod).inverse());
  }

  /// Divide and save
  Mod& operator/=(const Mod& x) {
    *this = multiply(x.inverse());
    return *this;
  }

  /// Divide and save by a long
  Mod& operator/=(long x) {
    *this = multiply(Mod(x,mod).inverse());
    return *this;
  }


  /// Raise to an integer power.
  /**
   * This is an efficient way to calculate large powers of a Mod. The
   * exponent may be negative (but that may produce invalid results if
   * the Mod is not invertible. Raising to a 0 power always returns 1.
   * @param k the exponent.
   * @return this Mod raised to the k'th power.
   */
  Mod pow(long k) const;


};



/// Write a Mod object to an output stream. 
/**
 * If the mod is invalid, we write "INVALID" to the output stream.
 */
ostream& operator<<(ostream& os, const Mod& M);


// Mod object on the right for comparisons

inline bool operator==(long x, const Mod& y) {
  return (y==x);
}

inline bool operator!=(long x, const Mod& y) {
  return (y!=x);
}

// Mod object on the right for arithmetic

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
