#ifndef MAX_OF_THREE_H
#define MAX_OF_THREE_H

template <class T>
T max_of_three(T a, T b, T c) {
  if (a<b) {
    if (b<c) return c;
    return b;
  }
  if (b<c) return c;
  return b;
}

#endif
