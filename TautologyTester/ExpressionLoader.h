#ifndef EXPRESSION_LOADER_H
#define EXPRESSION_LOADER_H

/**
 * @file ExpressionLoader.h
 * @brief Header file for the ExpressionLoader class
 */

#include "Expression.h"
#include <fstream>
using namespace std;
/// Read Expressions from an input stream
/**
 * An ExpressionLoader is a device for reading a Boolean Expression
 * either from a file or from the standard input. The input is read
 * either until end of file is reached, or the Expression is ended
 * with a period.
 */

class ExpressionLoader {
private:
  Expression X;
  void read(istream& sin);

public:
  /// Load from cin
  ExpressionLoader() { read(cin); }

  /// Load from a file
  /**
   * @param file name of the file containing the Expression
   */
  ExpressionLoader(const char* file);

  /// What expression did we load?
  /**
   * @return the Expression loaded by this ExpressionLoader
   */
  Expression get() const { return X; }
};


#endif
