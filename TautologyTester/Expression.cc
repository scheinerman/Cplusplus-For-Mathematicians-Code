#include "Expression.h"
#include <stack>
using namespace std;

/**
 * @file Expression.cc
 * @brief Code file for the Expression class
 */

Expression::Expression(const string& s) {
  tokens.clear();
  for (unsigned k=0; k<s.size(); k++) {
    Token t(s[k]);
    if (t.valid()) {
      tokens.push_back(t);
    }
  }
}
    
ostream& operator<<(ostream& os, const Expression& X) {
  for (int k=0; k<X.size(); k++) {
    os << X.get(k);
  }
  return os;
}

bool Expression::check() const {
  int depth = 0;
  for (int k=0; k<size(); k++) {
    switch(tokens[k].tt) {
    case variable:
    case constant:
      depth++;
      break;
    case binary_op:
      depth--;
      break;
    case unary_op:
      break;
    case invalid:
      cerr << "This shouldn't happen!" << endl;
      break;
    }
    if (depth < 0) return false;
  }
  if (depth != 1) return false;
  return true;
}

set<char> Expression::variables() const {
  set<char> ans;
  for (int k=0; k<size(); k++) {
    Token T = tokens[k];
    if (T.tt == variable) {
      char ch = T.tv;
      ans.insert(ch);
    }
  }
  return ans;
}

bool Expression::evaluate(const LookupTable& Tab) const {
  stack<bool> S;
  for (int k=0; k<size(); k++) {
    Token t = tokens[k];
    char ch;
    bool v,w;
    switch(t.tt) {
    case variable:
      ch = t.tv;
      v = Tab.lookup(ch);
      S.push(v);
      break;
    case constant:
      S.push(t.tv);
      break;
    case unary_op:   // note: - is only unary we have
      v = S.top();
      S.pop();
      S.push(!v);
      break;

    case binary_op:
      v = S.top(); S.pop();  // v is top
      w = S.top(); S.pop();  // w is next-to-top
      switch (t.tv) {
      case AND:
	S.push(v&&w);
	break;
      case OR:
	S.push(v||w);
	break;
      case IF_THEN:  //  w --> v
	S.push((!w)||v);
	break;
      case THEN_IF:  // v --> w
	S.push((!v)||w);
	break;
      case IFF:
	S.push(v==w);
	break;
      }
      break;


    case invalid:
      cerr << "This ought not happen!" << endl;
      break;
    }
  } 
  return S.top();
}
