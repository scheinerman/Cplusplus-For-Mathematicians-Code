#include <iostream>
#include <fstream>
#include <set>
#include "plotter.h"
#include "Mod.h"
using namespace std;

const char* IMAGE_FILE = "paley.eps";

int main(int argc, char** argv) {
  // check that user specified number of points
  if (argc < 2) {
    cerr << "Usage: " << argv[0] << " n" << endl;
    return 1;
  }

  int n;  // number of vertices in the graph and the modulus

  // convert 2nd arg to an integer; make sure its positive
  n = atoi(argv[1]);
  if (n < 3) {
    cerr << "Usage: " << argv[0] << " n" << endl;
    cerr << "where n is an integer greater than 2" << endl;
    return 1;
  }

  // We'll only be working in Z_n
  Mod::set_default_modulus(n) ;
  
  // Find all perfect squares in Z_n
  set<Mod> squares;
  for(int k=0; k<n; k++) {
    Mod S(k*k);
    squares.insert(S);
  }

  // Check if -1 is a perfect square
  Mod neg1(-1);
  
  if (squares.find(neg1) == squares.end()) {
    cerr << "-1 is not a perfect square in Z_" << n << endl;
    return 1;
  }
  
  // Create tables of the x and y coordinates of the vertex centers
  float* x = new float[n];
  float* y = new float[n];

  double theta = 2*M_PI/n;

  for (int i=0; i<n; i++) {
    x[i] = n * sin(i*theta);
    y[i] = n * cos(i*theta);
  }

  // Construct the plotter 
  PlotterParams params;
  ofstream pout(IMAGE_FILE);
  PSPlotter P(cin, pout, cerr, params);

  // Open the plotter
  if (P.openpl() < 0) {
    cerr << "Unable to open plotter" << endl;
    return 1;
  }
  // Set drawing parameters
  P.flinewidth(0.05);
  P.pencolorname("black");

  // Set up my coordinate system
  P.space(-n-1, -n-1, n+1, n+1);
  
  // Draw the edges
  for (int i=0; i<n-1; i++) {
    for (int j=i+1; j<n; j++) {
      // if i-j is a perfect square ...
      Mod diff(i-j);
      if (squares.find(diff) != squares.end()) {
	// ... then we draw the edge
	P.fline(x[i],y[i],x[j],y[j]);
      }
    }
  }

  // Draw the vertices
  P.fillcolorname("white");
  P.filltype(1);
  for (int i=0; i<n; i++) {
    P.fcircle(x[i], y[i], 0.5);
  }

  // Release allocated arrays for x and y
  delete[] x;
  delete[] y;

  // Close the image
  if (P.closepl() < 0) {
    cerr << "Unable to close plotter" << endl;
    return 1;
  }

  return 0;
}
