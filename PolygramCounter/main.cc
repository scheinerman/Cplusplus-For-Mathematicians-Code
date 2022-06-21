#include "PolygramCounter.h"
#include <fstream>
using namespace std;

/**
 * @file main.cc
 * @brief Provides the main() routine for the polygram counter program
 */


int main(int argc, char** argv) {
  ifstream fin;
  if (argc < 2) {
    cerr << "Usage: " << argv[0] << " filename" << endl;
    return 1;
  }
  fin.open(argv[1]);
  if (fin.fail()) {
    cerr << "Unable to open " << argv[1] << " for reading" << endl;
    return 2;
  }

  string word;
  PolygramCounter F2(2);
  PolygramCounter F3(3);
  PolygramCounter F4(4);

  while (true) {
    fin >> word;
    if (fin.fail()) break;
    F2.process(word);
    F3.process(word);
    F4.process(word);
  }

  F2.report();
  F3.report();
  F4.report();

  return 0;
}
