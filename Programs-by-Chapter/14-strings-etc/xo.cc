#include <iostream>
#include <fstream>
#include "plotter.h"
using namespace std;

const char* IMAGE_FILE = "xo.eps";

int main(int argc, char** argv) {

  // Construct the plotter 
  ofstream pout(IMAGE_FILE);
  PlotterParams params;
  PSPlotter P(cin, pout, cerr, params);

  // Open the plotter
  if (P.openpl() < 0) {
    cerr << "Unable to open plotter" << endl;
    return 1;
  }

  // Set up my coordinate system
  P.fspace(-1.5, -1.5, 1.5, 1.5);

  // Set drawing parameters
  P.flinewidth(0.05);
  P.pencolorname("black");

  // Draw the X
  P.line(-1,-1,1,1);
  P.line(-1,1,1,-1);

  // Draw the circle
  P.fcircle(0.,0.,sqrt(2.));

  // Close the image
  if (P.closepl() < 0) {
    cerr << "Unable to close plotter" << endl;
    return 1;
  }

  return 0;
}
