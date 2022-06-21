#include "TautologyChecker.h"
#include "ExpressionLoader.h"

/**
 * @file main.cc
 * @brief main() for the Tautology Tester program
 */

int main(int argc, char** argv){
  Expression X;
  if (argc == 1) {
    cout << "Enter expression now; finish with a period." 
	 << endl;
    ExpressionLoader XL;
    X = XL.get();
  }
  else {
    ExpressionLoader XL(argv[1]);
    X = XL.get();
  } 
  if (!X.check()) {
    cerr << "Synatx error in the expression: " << X << endl;
    return 1;
  }
  
  TautologyChecker TC(X);
  if (TC.result()) {
    cout << "Expression is a tautology." << endl;
  }
  else {
    cout << "Not a tautology:" << endl;
    TC.get_vars().dump();
  }
  return 0;
}

