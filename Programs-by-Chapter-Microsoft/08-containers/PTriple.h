#ifndef PTRIPLE_H
#define PTRIPLE_H
#include <iostream>
using namespace std;

/**
 * A PTriple represents a reduced Pythagorean triple. That is, a
 * sequence of three nonnegavie integers (a,b,c) in nondecreasing
 * order for which a^2+b^2=c^2 and (a,b,c) are relatively prime. The
 * relatively prime requirement means that we only deal with primitive
 * Pythagorean triples. We allow (0,0,0).
 */
class PTriple {
private:
  /// Shorter leg of the triple
  long a;
  /// Longer leg of the triple
  long b;
  /// Hypotenuse
  long c;

  /**
   * This private method makes sure the triple elements are
   * nonnegative, in nondecreasing order, and relatively prime.
   */
  void reduce();

public:
  /**
   * Default constructor. Makes the triple (0,0,0).
   */
  PTriple() {
    a = b = c = 0;
  }

  /**
   * Construct from a pair of integers. Given integers m and n, we
   * make a Pythagorean triple by taking the legs to be 2mn and
   * m^2-n^2 and the hypotenuse to be m^2+n^2. We then make sure the
   * three numbers are nonnegative, in nondecreasing order, and then
   * divide out by their gcd. For example PTriple(2,1) creates the
   * famous (3,4,5) triple.
   */
  PTriple(long m, long n);

  /// What is the shorter leg of this triple?
  long getA() const {
    return a;
  }

  /// What is the longer leg of this triple?
  long getB() const {
    return b;
  }

  /// What is the hypotenuse of this triple?
  long getC() const {
    return c;
  }

  /**
   * Check if this PTriple is less than another.  The ordering is
   * lexicographic starting with c, then b. That is we first compare
   * hypotenuses. If these are equal, then we compare the longer leg.
   * @param that Another PTriple
   * @return true if this PTriple is lexicographically less than that.
   */
  bool operator<(const PTriple& that) const;

  /**
   * Check if this PTriple is equal to another.
   */
  bool operator==(const PTriple& that) const {
    return ( (a==that.a) && (b==that.b) && (c==that.c) );
  }

  /**
   * Check if this PTriple is not equal to another.
   */
  bool operator!=(const PTriple& that) const {
    return !( (*this) == that );
  }
};

/// Send a PTriple to an output stream
ostream& operator<<(ostream& os, const PTriple& PT);

#endif
