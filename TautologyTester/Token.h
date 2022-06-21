#ifndef TOKEN_H
#define TOKEN_H

/**
 * @file Token.h
 * @brief Header file for the Token class
 */

#include <cctype>
#include <iostream>
using namespace std;

/// Type of Token
/**
 * Each token in a Boolean expression is one of the following types:
 * <ul>
 * <li> A variable
 * <li> A constant (true or false)
 * <li> A binary operator
 * <li> A unary operator
 * </ul>
 */
enum TokenType { invalid, variable, constant, binary_op, unary_op };


/// Token value
/**
 * Each type of token can take on a different sort of value. If the
 * token is a variable, its value is the (int) version of the letter
 * ('a' to 'z'). For operations, it's one of the items in the enumeration below.  
 * For the constants, no value is needed.
 */
enum TokenValue { NOP, AND, OR, NOT, IF_THEN, THEN_IF, IFF };



/// Token in a Boolean expression
/**
 * A Boolean expression is made up of a sequence of tokens. This class
 * represents such a token.
 */
class Token {
public:
  /// The type of this token
  TokenType tt;
  /// The value of this token
  int tv;
  
  /// Set this token based on a character
  /**
   * The character is a letter ('a' to 'z'), a zero or a one, or an
   * operation symbol. We convert the letter into a proper token.
   */
  Token(char ch=' ');

  /// Check if this is a valid token
  /** 
   * @return true if this is a valid token and false otherwise.
   */
  bool valid() const { return tv != invalid; }
};

ostream& operator<<(ostream& os, const Token& T);
		   


#endif
