#ifndef QUATERNIONS_H
#define QUATERNIONS_H

/**
 * @file quaternions.h 
 * @brief Declaration of the class H representing
 * the quaternions
 */

/**
 * @mainpage
 * 
 * @section about About
 * 
 * The file <code>quaternions.h</code> implements the class
 * <code>H</code> representing Hamilton's quaternions. To use this in
 * a C++ program copy this file to your program's directory and use
 * the directive <code>\#include "quaternions.h"</code> in any file in
 * which you wish to use quaternions.  <p> The quaternion class is
 * named <code>H</code> since quaternions are usually denoted by a
 * bold <b>H</b>. For convenience, this file also defines
 * <code>R</code> for real numbers (type <code>double</code> and
 * <code>C</code> for complex numbers (type
 * <code>complex<double></code>).  The class and all its methods and
 * related procedures are defined inline in this header file; there is
 * no <code>.cc</code> file.
 * 
 * @section copy Copying
 * 
 * This code is copyright Edward R. Scheinerman (C) 2006 and
 * distributed under the terms of the <a
 * href="http://www.gnu.org/licenses/gpl.html">GNU General Purpose
 * License</a>. This license gives you rights to copy and to modify
 * this code, but also indicates that it comes with no warranty
 * whatsoever. See the license for more detail.
 */

#include <complex>
#include <iostream>
using namespace std;

/// We define R to stand for real numbers
typedef double R;
/// We define C to stand for complex numbers
typedef complex<double> C;

/// The quaternions
/**
 * The class H represents Hamilton's quaternions. These are numbers of
 * the form \f$a+bi+cj+dk\f$ where \f$a,b,c,d\f$ are real and
 * \f$i,j,k\f$ satisfy \f$i^2 = j^2 = k^2 = ijk = -1\f$.
 * 
 * @author Edward Scheinerman
 */

class H {
private:
  R a,b,c,d;

public:
  /// Construct from a list of real values.
  /**
   * This constructor sets the a,b,c,d components of the
   * quaternion. Using fewer than four arguments is permissible as
   * missing values are interpresented as zero.
   * @param aa real part
   * @param bb coefficient of i
   * @param cc coefficient of j
   * @param dd coefficient of k
   */
  H(R aa = 0., R bb = 0., R cc = 0., R dd = 0.) { 
    a = aa; b = bb; c = cc; d = dd; 
  }

  /// Construct from a complex number
  /**
   * This single argument constructor converts a complex number into a
   * quaterion. The real part of the argument becomes the real part of
   * the quaterion and the complex part of the argument becomse the
   * coefficient of i.
   * @param z a complex number
   */
  H(C z) { 
    a = z.real();
    b = z.imag();
    c = d = 0.;
  }

  // GET METHODS
  /**
   * Real part.
   * @return the real part of this quaternion
   */
  R getA() const { return a; }

  /**
   * Coefficient of i.
   * @return the coefficient of i
   */
  R getB() const { return b; }

  /**
   * Coefficient of j.
   * @return the coefficient of j
   */
  R getC() const { return c; }

  /**
   * Coefficient of k.
   * @return the coefficient of k
   */
  R getD() const { return d; }


  // BASIC ARITHMETIC

  /**
   * Addition operator.
   * @param that another quaternion
   * @return the sum of this and that
   */
  H operator+(const H& that) const {
      return H(a + that.a, b+that.b, c+that.c, d+that.d);
  }

  /** 
   * Unary minus
   * @return the negative of this quaternion
   */
  H operator-() const {
    return H(-a,-b,-c,-d);
  }

  /** 
   * Subtraction operator.
   * @param that another quaternion
   * @return the result of this minus that
   */
  H operator-(const H& that) const {
    return (*this) + (-that);
  }

  /**
   * Multiplication operator.
   * @param that another quaternion
   * @return the product of this and that
   */
  H operator*(const H& that) const {
    R aa = a*that.a - b*that.b - c*that.c - d*that.d;
    R bb = b*that.a + a*that.b - d*that.c + c*that.d;
    R cc = c*that.a + a*that.c + d*that.b - b*that.d;
    R dd = b*that.c - c*that.b + d*that.a + a*that.d;
    return H(aa,bb,cc,dd);
  }

  /** 
   * The norm of this quaternion.
   *
   * Note: No absolute value method or procedure is defined in this
   * file (to avoid the need to include <code>cmath</code>). It is easy
   * enough to create your own absolute value procedure like this:
   * @code
   * #include "quaternions.h"
   * #include <cmath>
   * R abs(H x) { 
   *    return sqrt(x.norm());
   * }
   * @endcode
   *
   * @return \f$a^2+b^2+c^2+d^2\f$
   */
  R norm() const {
    return a*a + b*b + c*c + d*d;
  }

  /**
   * The conjugate of this quaternion
   * @return \f$a -bi -cj -dk\f$
   */
  H conjugate() const {
    return H(a,-b,-c,-d);
  }

  /** 
   * Multiplicative inverse.
   * @return the multiplicative inverse of this quaterion
   */
  H inverse() const  {
    R n = norm();
    return H(a/n, -b/n, -c/n, -d/n);
  }


  /** 
   * Division operator.
   *
   * @return the quotient of this/that equal to this times the inverse
   * of that.
   */
  H operator/(const H& that) const {
    return (*this) * (that.inverse());
  }

  // OPERATORS COMBINED WITH ASSIGN
  
  /// Add and assign
  H operator+=(const H& that) {
    *this = *this + that;
    return *this;
  }

  /// Subtract and assign
  H operator-=(const H& that) {
    *this = *this - that;
    return *this;
  }

  /// Multiply and assign
  H operator*=(const H& that) {
    *this = (*this) * that;
    return *this;
  }

  /// Divide and assign
  H operator/=(const H& that) {
    *this = (*this)/that;
    return *this;
  }

  // COMPARISON OPERATORS
  /// Equality operator
  bool operator==(const H& that) const {
    return (a==that.a) && (b==that.b) && (c==that.c) && (d==that.d);
  }

  /// Inequality operator
  bool operator!=(const H& that) const {
    return !((*this) == that);
  }
  
  /**
   * Less-than operator.
   * 
   * The purpose of this operator is to allow STL containers (such as
   * set) to be able to hold objects of type H. The order is lexicographic
   */
  bool operator<(const H& that) const {
    if (a < that.a) return true;
    if (a > that.a) return false;
    if (b < that.b) return true;
    if (b > that.b) return false;
    if (c < that.c) return true;
    if (c > that.c) return false;
    if (d < that.d) return true;
    return false;
  }

};

// OPERATIONS WITH R or C on the left

/**
 * Real plus quaternion
 */
inline H operator+(R x, const H& h) {
  return h+x;
}

/**
 * Complex plus quaternion
 */
inline H operator+(C z, const H& h) {
  return h+z;
}

/**
 * Real minus quaternion
 */
inline H operator-(R x, const H& h) {
  return H(x) - h;
}

/**
 * Complex minus quaternion
 */
inline H operator-(C z, const H& h) {
  return H(z) - h;
}

/**
 * Real times quaternion.
 */
inline H operator*(R x, const H& h) {
  return H(x) * h;
}

/** 
 * Complex times quaternion.
 */
inline H operator*(C z, const H& h) {
  return H(z)*h;
}

/**
 * Real divided by quaternion.
 */
inline H operator/(R x, const H& h) {
  return H(x)/h;
}

/**
 * Complex divide by quaternion.
 */
inline H operator/(C z, const H& h) {
  return H(z)/h;
}



/**
 * Write a quaternion to an output stream.
 * The quaternion \f$a+bi+cj+dk\f$ is written in the format
 * <code>(a,b,c,d)</code>.
 *
 * @param os the output stream
 * @param h the quaternion we want to write
 */
inline
ostream& operator<<(ostream& os, const H& h)  {
  os << "(" << h.getA() << "," << h.getB() << "," 
     << h.getC() << "," << h.getD() << ")";
  return os;
}


#endif
