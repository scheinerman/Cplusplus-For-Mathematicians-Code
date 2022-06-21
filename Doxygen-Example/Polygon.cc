/**
 * @file Polygon.cc
 * @brief Code for the Polygon class methods
 */

#include "Polygon.h"

Polygon::Polygon() {
  np = 0;
  vertices.clear();
}

Polygon::Polygon(int n) {
  // If n is negative, set n to be zero.
  if (n < 0) n = 0;

  // If is zero, just clear the vertices data structure
  if (n==0) {
    np = 0;
    vertices.clear();
    return;
  }

  // At this point, n is positive

  np = n;  // set number of points to n
  vertices.resize(n); // allocate enough room

  for (int k=0; k<n; k++) {
    double theta = (2*M_PI*k)/n;
    vertices[k] = Point(cos(theta),sin(theta));
  }
}

void Polygon::move_vertex(int j, Point P) {
  // If the index is invalid, no action is taken
  if ( (j<0) || (j >= np) ) return;
  vertices[j] = P;
}
    

double Polygon::perimeter() const {
  // The perimeter is zero unless we have at least two points
  if (np <= 1) return 0.;

  double ans = 0.; // place to accumulate the distances

  // add up the distances between successive vertices
  for (int k=0; k<np-1; k++) {
    ans += dist(vertices[k],vertices[k+1]);
  }
  
  // Add in the distance between the first and last points
  ans += dist(vertices[0], vertices[np-1]);

  return ans;
}
