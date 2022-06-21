#include "ExpressionLoader.h"

/**
 * @file ExpressionLoader.cc
 * @brief Code file for the ExpressionLoader class
 */

void ExpressionLoader::read(istream& sin) {
  if (!sin) {
    X = Expression(string("1"));
    return;
  }
  string word;
  char ch;
  while(sin){
    sin >> ch;
    if (ch == '.') break;
    word += ch;
    ch = ' ';
  }
  X = Expression(word);
}

ExpressionLoader::ExpressionLoader(const char* file) {
  ifstream sin(file);
  if (!sin) {
    cerr << "Unable to open file " << file << " for reading" << endl;
    X = Expression(string("1"));
    return;
  }
  read(sin);
}

