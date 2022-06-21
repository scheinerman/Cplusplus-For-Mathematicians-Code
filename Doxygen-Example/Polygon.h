/**
 * @file Polygon.h
 * @brief Declaration of the Polygon class
 */

#ifndef _POLYGON_
#define _POLYGON_

#include <vector>
#include "Point.h"

/// Planar polygons
/**
 * The Polygon class represents a closed n-gon in the plane. The
 * vertices of the Polygon are held as a vector of Point objects.
 */
class Polygon {
private:
  /// Hold the vertices of the Polygon
  vector<Point> vertices;

  /// The number of points in the Polygon
  int np;

public:
  /// Default constructor
  /**
   * This default constructor creates an empty Polygon, i.e., a
   * Polygon without any points.
   */
  Polygon();

  /// Create a basic n-gon
  /**
   * This creates a polygon with a specified number of points. The
   * points are placed evenly around the unit circle.
   * @param n the number of points.
   */
  Polygon(int n);

  /// Copy constructor
  /**
   * Creates an exact copy of another Polygon.
   * @param P the Polygon we're copying
   */
  Polygon(const Polygon& P) {
    np = P.np;
    vertices = P.vertices;
  }

  /// Move a vertex to a new location
  /**
   * Note: If an invalid vertex index is given, no change is made to
   * this Polygon.
   *
   * @param j index of the vertex we want to relocate
   * @param P new location for vertex j
   */
  void move_vertex(int j, Point P);
  
  /// Perimeter of this Polygon
  /**
   * If the Polygon has fewer than two vertices, its perimeter is 0.
   * If it consists of exactly two vertices, the perimeter is twice 
   * the distance between those points.
   * 
   * @return the perimeter of this polygon
   */
  double perimeter() const;
};

#endif
