#include <iostream>
#include <fstream>
using namespace std;

int main() {
  const char* output_file_name = "example.out";

  ofstream my_out(output_file_name);
  if (my_out.fail()) {
    cerr << "Unable to open the file " << output_file_name 
	 << " for writing." << endl;
    return 1;
  }

  for (int k=1; k<=10; k++) {
    my_out << k << " ";
  }
  my_out << endl;
  
  return 0;
}
