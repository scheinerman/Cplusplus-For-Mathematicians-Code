#include <iostream>
#include <fstream>
using namespace std;

int main(int argc, char** argv) {
  ifstream in;

  for(int k=1; k<argc; k++) {
    in.open(argv[k]);
    if (in.fail()) {
      cerr << "*** Unable to process file " << argv[k] << endl;
    }
    else {
      cerr << "Working on file " << argv[k] << endl;
      // do whatever we need to do with the file named in argv[k]
      // in >> variables; etc; etc;
    }
    in.close();
    in.clear();
  }
  return 0;
}
