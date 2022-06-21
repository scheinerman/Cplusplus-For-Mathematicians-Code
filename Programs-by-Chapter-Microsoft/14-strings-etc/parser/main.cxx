#include "LineParser.h"
#include <iostream>
using namespace std;

int main(int argc, char** argv) {
  
  if (argc != 2) {
    cerr << "Usage: " << argv[0] << " filename" << endl;
    return 1;
  }

  LineParser LP(argv[1]);

  while (LP.read()) {
    cout << "Line " << LP.show_line_number() << "\t\t\"" 
	 << LP.show_line() << "\"" << endl << endl;
    for (int k=0; k<LP.num_words(); k++) {
      cout << "Word " << k << " is \t\"" << LP[k] << "\"" << endl;
    }
    cout << "-------------------------------------------------" 
	 << endl;
  }

  return 0;
}
