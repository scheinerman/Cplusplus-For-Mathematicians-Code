#ifndef TAUTOLOGY_CHECKER_H
#define TAUTOLOGY_CHECKER_H

/**
 * @file TautologyChecker.h
 * @brief Header file for the TautologyChecker class.
 */

#include "Expression.h"


/// A device for checking a Boolean expression to see if it is a Tautology
/**
 * A TautologyChecker checks if an Expression object is a Tautology by
 * exhaustively substituting all possible truth values for the
 * variables in the Expression.
 */
class TautologyChecker {
private:
  /// Expression we are checking
  Expression X;
  /// Number of variables in the expression
  int nvars;
  /// If not a tautology, save variables that make X false
  LookupTable LT;
  /// Result of checking this expression
  bool ans;
public:
  /// Default constructor
  /**
   * Creates a default object based on the expression 1.
   */
  TautologyChecker();

  /// Standard constructor
  /**
   * Create a new TautologyChecker based on a given expression
   * @param BX a Boolean Expression
   */
  TautologyChecker(const Expression& BX);

  /// Set the expression to be analyzed.
  /**
   * @param BX a Boolean Expression to analyze.
   */
  void set_expression(const Expression& BX);

  /// Perform the analysis
  /** 
   * Note: This is automatically invoked when this object is created
   * or when set_expression is called.
   */
  void process();

  /// Is this or isn't this a tautology?
  /**
   * @return true if this is a tautology; false otherwise.
   */
  bool result() { return ans; }

  /// Get "offending" set of variables
  /**
   * If result() yields false, this returns a LookupTable with a
   * setting of the variables that yield false for the expression.
   * @return a LookupTable with the offending set of variables.
   */
  LookupTable get_vars() const { return LT; }


};


#endif
