template <class T1, class T2>
class mycomplex {
  
private:
  T1 real_part;
  T2 imag_part;

public:
  mycomplex() {
    real_part = T1(0);
    imag_part = T2(0);
  }

  mycomplex(T1 a) {
    real_part = a;
    imag_part = T2(0);
  }

  mycomplex(T1 a, T2 b) {
    real_part = a;
    imag_part = b;
  }

  T1 re() const { return real_part; }
  T2 im() const { return imag_part; }

};

template<class T1, class T2>
ostream& operator<<(ostream& os, const mycomplex<T1,T2>& z) {
  os << "(" << z.re() << ") + (" << z.im() << ")i";
  return os;
}
