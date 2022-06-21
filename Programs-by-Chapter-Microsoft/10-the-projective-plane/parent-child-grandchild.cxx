#include <iostream>
using namespace std;

class Base {
private:
  int a;
protected:
  int b;
  int sum() const { return a+b; }
public:
  Base(int x, int y) { a=x; b=y; }
  void print() const { cout << "(" << a << "," << b << ")"; }
};

class Child : public Base {
public:
  Child(int x, int y) : Base(x,y) { }
  void increase_b() { b++; }
  void print() const { Base::print(); cout << "=" << sum(); }
};

class GrandChild : public Child {
private:
  int c;
public:
  GrandChild(int x, int y, int z) : Child(x,y) { c = z; }
  void print() const { Base::print(); cout << "/" << c; }
};

int main() {
  Base       B(1,2);
  Child      C(3,4);
  GrandChild D(5,6,7);

  B.print(); cout << endl;
  // cout << B.sum() << endl; // Illegal, sum is protected

  C.print(); cout << "  -->  ";
  C.increase_b();
  C.print(); cout << endl;

  D.print(); cout << "  -->  ";
  D.increase_b();
  D.print(); cout << endl;

  return 0;
}
