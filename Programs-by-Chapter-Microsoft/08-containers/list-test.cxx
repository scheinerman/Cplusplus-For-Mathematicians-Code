#include <iostream>
#include <list>
using namespace std;

/// A procedure to print a list to cout
void print_list(const list<long>& L) {
  list<long>::const_iterator Li;
  for (Li = L.begin(); Li != L.end(); Li++) {
    cout << *Li << " ";
  }
  cout << endl;
}

/// Check if an integer is even (to illustrate remove_if)
bool is_even(long n) {
  return (n%2 == 0);
}

/// A main to illustrate various list operations
int main() {
  list<long> L;
  L.insert(L.begin(),4);
  L.insert(L.end(),15);
  L.insert(L.begin(),7);

  L.push_front(24);
  L.push_back(5);
  L.push_front(99);

  list<long>::iterator Li;
  Li = L.begin();
  Li++;           // Focus on 2nd element in the list
  L.insert(Li,0); // Inserts in front of 2nd element
  
  cout << "Here is the list: ";
  print_list(L);
  cout << "The first element of the list is: " << L.front() << endl;
  cout << "The last element of the list is: " << L.back() << endl;
  cout << "The list contains " << (unsigned int) L.size() << " elements" << endl;
 
  L.sort();
  cout << "And now sorted:   ";
  print_list(L);

  L.pop_back();
  L.pop_front();
  cout << "First and last deleted: ";
  print_list(L);

  L.remove_if(is_even);
  cout << "Even values deleted: ";
  print_list(L);
  return 0;
}

