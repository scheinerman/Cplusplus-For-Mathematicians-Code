#ifndef LINE_PARSER_H
#define LINE_PARSER_H
#include <fstream>
#include <vector>
#include <string>
using namespace std;

class LineParser {
private:
  ifstream       in;
  string         theLine;
  long           lineNumber;
  int            nWords;
  vector<string> words;
  void           parse();

public:
  LineParser(const char* file_name);
  bool read(); 
  string show_line() const { return theLine; }
  long   show_line_number() const { return lineNumber; }
  int    num_words() const { return nWords; } 
  string operator[](int k) const { return words[k]; }
};

#endif
