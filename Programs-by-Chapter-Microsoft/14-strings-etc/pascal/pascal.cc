#include <iostream>
#include <fstream>
#include "plotter.h"
using namespace std;

const char* IMAGE_FILE = "pascal.gif";
const int   NROWS = 2048;

int main() {

  // Place to hold row of Pascal's triangle and a copy to generate the
  // next row.
  int row[NROWS+1];
  int prev_row[NROWS+1];
  for (int i=0; i<=NROWS; i++) {
    row[i] = 0;
    prev_row[i] = 0;
  }

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
  P.space(-1,-1,NROWS+1,NROWS+1);

  // Set drawing parameters
  P.pencolorname("black");

  // Generate rows of Pascal's triangle (mod 2)
  for (int r=0; r<NROWS; r++) {
    row[0] = 1;
    for (int j=1; j<r; j++) {
      row[j] = (prev_row[j-1]+prev_row[j])%2;
    }
    row[r] = 1;
    
    // Plot points for this row
    for (int j=0; j<=r; j++) {
      if (row[j] == 1) {
	P.point(NROWS-r,j);
      }
    }

    // copy row to prev_row
    for (int j=0; j<=r; j++) prev_row[j] = row[j];
  }

  // Close the image
  if (P.closepl() < 0) {
    cerr << "Unable to close plotter" << endl;
    return 1;
  }

  return 0;
}
