#ifndef POINT_H
#define POINT_H
#include <iostream>
using namespace std;

class Point {

private:
  double x;
  double y;

public:
  Point();
  Point(double xx, double yy);
  double getX() const;
  double getY() const;
  void setX(double xx);
  void setY(double yy);
  double getR() const;
  void setR(double r);
  double getA() const;
  void setA(double theta);
  void rotate(double theta);
  bool operator==(const Point& Q) const;
  bool operator!=(const Point& Q) const;

  friend double dist(Point P, Point Q);
  friend Point midpoint(Point P, Point Q);

};

ostream& operator<<(ostream& os, const Point& P);

#endif
