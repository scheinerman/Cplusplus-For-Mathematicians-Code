#include "LineParser.h"
#include <sstream>
#include <iostream>
using namespace std;

LineParser::LineParser(const char* file_name) {
  in.open(file_name);
  if (!in) {
    cerr << "WARNING: Unable to open " << file_name << endl;
  }
  lineNumber = 0;
  theLine = "";
}

bool LineParser::read() {
  getline(in,theLine);
  bool result = in.good(); // check if getline succeeded
  if (result) {
    lineNumber++;
    parse();
  }
  return result;
}

void LineParser::parse() {
  words.clear();
  words.resize(100);
  istringstream s(theLine);
  nWords = 0;
  string tmp;
  while (s>>tmp) {
    if (words.size() < unsigned(nWords)) words.resize(nWords+10);
    words[nWords] = tmp;
    nWords++;
  }
}
