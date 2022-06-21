#include "Token.h"

/**
 * @file Token.cc
 * @brief Code file for the Token class.
 */

Token::Token(char ch) {
  if (isupper(ch)) ch = tolower(ch);
  if (isalpha(ch)) {
    tt = variable;
    tv = ch;
    return;
  }
  switch(ch) {
  case '*':
  case '&':
    tt = binary_op;
    tv = AND;
    break;
  case '+':
  case '|':
    tt = binary_op;
    tv = OR;
    break;
  case '-':
  case '~':
    tt = unary_op;
    tv = NOT;
    break;
  case '>':
    tt = binary_op;
    tv = IF_THEN;
    break;
  case '<':
    tt = binary_op;
    tv = THEN_IF;
    break;
  case '=':
    tt = binary_op;
    tv = IFF;
    break;
  case '0':
    tt = constant;
    tv = 0;
    break;
  case '1':
    tt = constant;
    tv = 1;
    break;
  default:
    tt = invalid;
    tv = NOP;
  }
}

ostream& operator<<(ostream& os, const Token& T) {
  switch(T.tt) {
  case variable:
    os << char(T.tv);
    break;
  case constant:
    os << T.tv;
    break;
  case unary_op:
    os << "-";  // only unary operation
    break;
  case binary_op:
    switch (T.tv) {
    case AND:
      os << "*";
      break;
    case OR:
      os << "+";
      break;
    case IF_THEN:
      os << ">";
      break;
    case THEN_IF:
      os << "<";
      break;
    case IFF:
      os << "=";
      break;
    }
    break;
  case invalid:
    os << "!";
    break;
  }
  return os;
}

      

