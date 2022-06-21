#include <iostream>
#include <string>
using namespace std;

int main() {
  
  bool again = true;
  while(again) {
    cout << endl;
    cout << "What would you like to do?" << endl;
    cout << "  (a) Prove Fermat's little theorem" << endl;
    cout << "  (b) Prove Fermat's last theorem" << endl;
    cout << "  (c) List some Fermat primes" << endl;
    cout << "  (d) End this program" << endl;
    cout << "Type the character and hit return: ";

    string response;
    cin >> response;

    if (response.empty()) continue;

    char option = response[0];

    switch(option) {
    case 'a':
    case 'A':
      cout << endl 
	   << "Apply Lagrange's theorem to the group Z_p." << endl;
      break;

    case 'b':
    case 'B':
      cout << endl 
	   << "I have a great proof for this but, alas, it will" 
	   << endl << "not fit on this computer screen." << endl;
      break;

    case 'c':
    case 'C':
      cout << endl << "Here are the only ones I know:" << endl
	   << "3 5 17 257 25537." << endl;
      break;

    case 'd':
    case 'D':
      cout << endl << "Good bye." << endl;
      again = false;
      break;

    default:
      cout << endl << "Sorry. Your response was not recognized." 
	   << endl << "Please try again." << endl;
    }
  }
  return 0;
}
    
