#ifndef LOOKUP_TABLE_H
#define LOOKUP_TABLE_H

/**
 * @file LookupTable.h
 * @brief Header file for the LookupTable class.
 */

#include <set>
using namespace std;

/// Assigns values to variables
/**
 * A LookupTable is used to assign values to variables, and to get the
 * values of the variables.
 */
class LookupTable {
private:
  int char2index[26]; // convert 'a' to variable number
  bool values[26];    // values of variables
  int n;              // number of variables

public:
  /// Create from a set of variables
  /**
   * @param S a set of variables used in an Expression
   */
  LookupTable(set<char> S);

  /// Default constructor
  LookupTable() { n = 0; }

  /// Convert a binary integer into values for the variables
  /**
   * @param x binary number containing the values of the variables
   */
  void set_values(unsigned long x);

  /// Size of this LookupTable
  /**
   * @return number of variables
   */
  int size() const { return n; }

  /// Look up the value of a variable
  /**
   * @param ch a variable whose value we seek
   */
  bool lookup(char ch) const;

  /// For debugging, write status to cerr
  void dump() const;  // DEBUG //

};


#endif
