#ifndef MY_COMPLEX_H
#define MY_COMPLEX_H

#include <iostream>
using namespace std;

template <class T>
class mycomplex {
  
private:
  T real_part;
  T imag_part;

public:
  mycomplex<T>() {
    real_part = T(0);
    imag_part = T(0);
  }

  mycomplex<T>(T a) {
    real_part = a;
    imag_part = T(0);
  }

  mycomplex<T>(T a, T b) {
    real_part = a;
    imag_part = b;
  }

  T re() const { return real_part; }
  T im() const { return imag_part; }

};

template<class T>
ostream& operator<<(ostream& os, const mycomplex<T>& z) {
  os << "(" << z.re() << ") + (" << z.im() << ")i";
  return os;
}

#endif
