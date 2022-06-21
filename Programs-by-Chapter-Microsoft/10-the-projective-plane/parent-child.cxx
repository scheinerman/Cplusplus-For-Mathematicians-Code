#include <iostream>
using namespace std;

class Parent {
private:
  double x, y;
public:
  Parent(double a, double b) { x = a; y = b; }
  double sum() const { return x+y; }
  void print() const { cout << "(" << x << "," << y << ")"; }
};

class Child : public Parent {
private:
  int k;
public:
  Child(double a, double b, int n) : Parent(a,b) {
    k = n;
  }
  double value() const { return sum()*k; }
  void print() const { Parent::print(); cout << "*" << k; }
};

int main() {
  Parent P(3., -2.);
  P.print();
  cout << " --> " << P.sum() << endl;
  
  Child C(-1., 3., 5);
  C.print();
  cout << " --> " << C.sum() << " --> " << C.value() << endl;
  
  return 0;
}
