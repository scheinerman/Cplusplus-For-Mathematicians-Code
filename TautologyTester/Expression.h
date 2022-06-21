#ifndef EXPRESSION_H
#define EXPRESSION_H

/**
 * @file Expression.h
 * @brief Header for the Expression class
 */

#include "Token.h"
#include "LookupTable.h"
#include <vector>
#include <string>
using namespace std;

/// An RPN Boolean expression
/**
 * This class represents an RPN Boolean expression. This is simply a
 * list of Tokens.
 */

class Expression {
private:
  vector<Token> tokens;
  
public:
  /// Create an empty expression
  Expression() {
    tokens.clear();
  }

  /// Create an expression from a string
  /**
   * This is the standard constructor. It reads through a string,
   * converting each character to a token. Invalid tokens are skipped.
   * @param s the string to convert into tokens.
   */
  Expression(const string& s);

  /// Size of this Expression
  /**
   * @return the number of tokens in this expression
   */
  long size() const { return tokens.size(); }

  /// Retrieve a token from this expression
  /**
   * Return a given token in this expression.
   * @param k the index of the desired token
   * @return the k'th token
   */
  Token get(int k) const { return tokens[k]; }
  
  /// Check the syntax
  /**
   * This procedure checks the syntax of an expression. An expression such as 
   * <code>x**</code> is incorrect.
   * @return true if the syntax of the expression is OK.
   */
  bool check() const;

  /// Get set of variables in this expression
  /**
   * @return a set containing all the variables used in this expression
   */
  set<char> variables() const;

  /// How many variables in this expression?
  /**
   * @return The number of variables in this expression.
   */
  int nvars() const { return variables().size(); }

  /// Find the value of this expression
  /**
   * Given the values for the variables, find the value of this expression.
   * @param T a LookupTable containing the values of the variables.
   */
  bool evaluate(const LookupTable& T) const;

};

ostream& operator<<(ostream& os, const Expression& X);

#endif
