#ifndef POINT_H
#define POINT_H
#include <iostream>
using namespace std;

const double M_PI = 3.14159265358979323846;

/**
 * A point in the plane. This is a simple class to demonstrate the
 * basics of classes in C++. 
 */

class Point {

private:
  /// x-coordinate of the point
  double x;
  /// y-coordiante of the point
  double y;

public:
  /**
   * Default constructor. Creates a new point at the origin.
   */
  Point();

  /**
   * Construct from x and y coordinates.
   * @param xx the x-coordinate of the point.
   * @param yy the y-coordiante of the point.
   */
  Point(double xx, double yy);

  /**
   * What is the x-coordinate of this point?
   * @return the x-coordinate.
   */
  double getX() const;

  /**
   * What is the y-coordinate of this point?
   * @return the y-coordinate.
   */
  double getY() const;

  /**
   * Set the x-coordinate of this point.
   * @param xx the new x-coordinate of this point.
   */
  void setX(double xx);

  /**
   * Set the y-coordinate of this point.
   * @param yy the new y-coordinate of this point.
   */
  void setY(double yy);

  /**
   * What is the radius (distance from the origin) of this point?
   * @return the radius.
   */
  double getR() const;

  /**
   * Set the radius of this point.  The angle of the point is
   * unaffected. If the point happens to be at the origin, then the
   * new location has given radius and angle 0.
   * @param r the radius
   */
  void setR(double r);

  /**
   * What is the angle of this point?
   * If the point happens to be at the origin, we return 0.
   * @return the angle of this point in [0,2Pi).
   */
  double getA() const;

  /**
   * Set the angle of this point. The radius is unaffected by this
   * method.
   * @param theta the angle
   */
  void setA(double theta);

  /**
   * Rotate this point about the origin.
   * @param theta the angle of rotation.
   */
  void rotate(double theta);

  /**
   * Test if this point is equal to another.
   * @param Q another point
   * @return true if this point equals Q
   */
  bool operator==(const Point& Q) const;

  /**
   * Test if this point is different from another.
   * @param Q another point
   * @return true if this point is not equal to Q
   */
  bool operator!=(const Point& Q) const;
};


/**
 * Find the distance between two points.
 * @param P first point
 * @param Q second point
 * @return the distance from P to Q
 */
double dist(Point P, Point Q);

/**
 * Find the midpoint between two points.
 * @param P first point
 * @param Q second point
 * @return the midpoint of the segment PQ
 */
Point midpoint(Point P, Point Q);

/**
 * Print a point to an output stream. The format is (x,y).
 */
ostream& operator<<(ostream& os, const Point& P);

#endif
