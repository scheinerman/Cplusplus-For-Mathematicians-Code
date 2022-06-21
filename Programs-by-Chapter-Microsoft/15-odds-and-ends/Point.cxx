#include "Point.h"
#include <cmath>

const double M_PI = 3.14159265358979323846;

Point::Point() {
  x = y = 0.;
}

Point::Point(double xx, double yy) {
  x = xx;
  y = yy;
}

double Point::getX() const { 
  return x;
}

double Point::getY() const {
  return y;
}

void Point::setX(double xx) {
  x = xx;
}

void Point::setY(double yy) {
  y = yy;
}

double Point::getR() const {
  return sqrt(x*x + y*y);
}

void Point::setR(double r) {
  // If this point is at the origin, set location to (r,0)
  if ( (x==0.) && (y==0.) ) {
    x = r;
    return;
  }

  // Otherwise, set position as (r cos A, r sin A)
  double A = getA(); 
  x = r * cos(A);
  y = r * sin(A);
}

double Point::getA() const {
  if ( (x==0.) && (y==0.) ) return 0.;

  double A = atan2(y,x);
  if (A<0) A += 2*M_PI;
  return A;
}
  
void Point::setA(double theta) {
  double r = getR();
  x = r * cos(theta);
  y = r * sin(theta);
}

void Point::rotate(double theta) {
  double A = getA();
  A += theta;
  setA(A);
}

bool Point::operator==(const Point& Q) const {
  return ( (x==Q.x) && (y==Q.y) );
}

bool Point::operator!=(const Point &Q) const {
  return ! ( (*this) == Q );
}

double dist(Point P, Point Q) {
  double dx = P.x - Q.x;
  double dy = P.y - Q.y;
  return sqrt(dx*dx + dy*dy);
}

Point midpoint(Point P, Point Q) {
  double xx = ( P.x + Q.x ) / 2;
  double yy = ( P.y + Q.y ) / 2;
  return Point(xx,yy);
}

ostream& operator<<(ostream& os, const Point& P) {
  os << "(" << P.getX() << "," << P.getY() << ")";
  return os;
}


