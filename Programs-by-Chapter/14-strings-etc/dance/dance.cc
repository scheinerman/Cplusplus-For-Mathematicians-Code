#include <iostream>
#include <fstream>
#include "plotter.h"
#include "Point.h"
#include "uniform.h"
using namespace std;

const char* IMAGE_FILE = "dance.gif";

// Draw a point on a plotter.
void draw_point(Plotter& P, const Point& X) { 
  P.fpoint(X.getX(), X.getY());
}

int main(int argc, char** argv) {
  // check that user specified number of points
  if (argc < 2) {
    cerr << "Usage: " << argv[0] << " npoints" << endl;
    return 1;
  }

  int NPOINTS;

  // convert 2nd arg to an integer; make sure its positive
  NPOINTS = atoi(argv[1]);
  if (NPOINTS < 1) {
    cerr << "Usage: " << argv[0] << " npoints" << endl;
    cerr << "where npoints is a positive integer" << endl;
    return 1;
  }

  // Set the corners of the triangle
  Point A(0.,0.);
  Point B(1.,0.);
  Point C(0.5, sqrt(3.)/2.);
  
  Point X; // the dancing point

  // Construct the plotter 
  PlotterParams params;
  ofstream pout(IMAGE_FILE);
  GIFPlotter P(cin, pout, cerr, params);

  // Open the plotter
  if (P.openpl() < 0) {
    cerr << "Unable to open plotter" << endl;
    return 1;
  }

  // Set up my coordinate system
  P.fspace(0.,0.,1.,1.);
  
  // Set drawing parameters
  P.pencolorname("black");

  // Draw the corners
  draw_point(P,A);
  draw_point(P,B);
  draw_point(P,C);

  // Start X at A
  X = A;

  for (int k=0; k<NPOINTS; k++) {
    switch(unif(3)) {
    case 1:
      X = midpoint(A,X);
      break;
    case 2:
      X = midpoint(B,X);
      break;
    case 3:
      X = midpoint(C,X);
      break;
    default:
      cerr << "This can't happen" << endl;
    }
    draw_point(P,X);
  }

  // Close the image
  if (P.closepl() < 0) {
    cerr << "Unable to close plotter" << endl;
    return 1;
  }

  return 0;
}
