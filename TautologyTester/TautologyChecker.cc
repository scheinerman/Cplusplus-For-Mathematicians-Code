#include "TautologyChecker.h"
/**
 * @file TautologyChecker.cc
 * @brief Code file for the TautologyChecker class
 */


void TautologyChecker::set_expression(const Expression& BX) {
  X = BX;
  LT = LookupTable(X.variables());
  nvars = LT.size();
}

TautologyChecker::TautologyChecker() {
  set_expression(Expression(string("1")));
  process();
} 

TautologyChecker::TautologyChecker(const Expression& BX) {
  if (!BX.check()) {
    cerr << "Syntax error in the expression: " << BX << endl;
    X = Expression(string("1"));
  }
  set_expression(BX);
  process();
}


void TautologyChecker::process() {
  ans = true;
  for(int xx=0; xx < 1<<nvars; ++xx) {
    LT.set_values(xx);
    if (!X.evaluate(LT)) {
      ans = false;
      return;
    }
  }
}
