#ifndef POLYGRAM_H
#define POLYGRAM_H

/**
 * @file Polygram.h
 * @brief Header file for the Polygram class
 */

#include <cctype>
#include <iostream>
using namespace std;

/// A sequence of letters
/**
 * A Polygram is a sequence of letters from the Latin alphabet. 
 */
class Polygram {
private:
  string poly;
public:
  /// Default constructor
  /**
   * This creates an empty Polygram
   */
  Polygram() { poly = string(""); }

  /// Construct from a given string
  /**
   * @param word A sequence of characters
   */
  Polygram(string word);

  /// String version of this Polygram
  /**
   * @return the sequence of letters in this Polygram
   */
  string toString() const { return poly; }

  /// For comparison so we can hold Polygrams in a container
  bool operator<(const Polygram& that) const { return poly < that.poly; }

  /// Number of letters 
  /**
   * @return the length of this polygram
   */
  int size() const { return poly.size(); }
};

inline
ostream& operator<<(ostream& os, const Polygram& P) {
  os << P.toString();
  return os;
}
#endif

