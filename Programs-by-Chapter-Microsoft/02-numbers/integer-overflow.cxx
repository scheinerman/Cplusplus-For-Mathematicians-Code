#include <iostream>
using namespace std;

/**
 * A  program  to illustrate  what  happens  when  large integers
 * are multiplied together. 
 */

int main() {
  int million = 1000000;
  int trillion = million * million;
  
  cout << "According to this computer, " << million << " squared is " 
       << trillion << "." << endl;
}
