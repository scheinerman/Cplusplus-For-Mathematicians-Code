#include <iostream>
#include <fstream>
using namespace std;

int main() {
  const char* input_file_name = "example.out";

  ifstream my_in(input_file_name);
  if (my_in.fail()) {
    cerr << "Unable to open the file " << input_file_name 
	 << " for input." << endl;
    return 1;
  }
  int n;
  int sum = 0;
  while (true) {
    my_in >> n;
    if (my_in.fail()) break;
    sum += n;
  }
  cout << "The sum of the numbers is " << sum << endl;
  
  return 0;
}
