#include <iostream>
#include <fstream>
using namespace std;

int main() {
  const char* input_file_name = "example.out";

  ifstream my_in(input_file_name);
  if (!my_in) {
    cerr << "Unable to open the file " << input_file_name 
	 << " for writing." << endl;
    return 1;
  }
  int n;
  int sum = 0;
  while (my_in >> n) {
    sum += n;
  }
  cout << "The sum of the numbers is " << sum << endl;
  
  return 0;
}
