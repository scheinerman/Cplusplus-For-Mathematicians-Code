#include "Projective.h"
#include "uniform.h"

/**
 * An illustration of Pappus's theorem and its dual
 */

void pappus() {
  seed();

  // two random lines
  PLine L1,L2;
  L1.randomize();
  L2.randomize();
  cout << "The two lines are " << endl << L1 << " and " << L2 << endl;

  // get three points on the first
  PPoint P1 = L1.rand_point();
  PPoint P2 = L1.rand_point();
  PPoint P3 = L1.rand_point();

  cout << "Three points on the first line are " << endl
       << P1 << endl << P2 << endl << P3 << endl;

  // get three points on the second
  PPoint Q1 = L2.rand_point();
  PPoint Q2 = L2.rand_point();
  PPoint Q3 = L2.rand_point();

  cout << "Three points on the second line are " << endl
       << Q1 << endl << Q2 << endl << Q3 << endl;

  // find the three pairwise intersections
  PPoint X1 = (P2+Q3)*(P3+Q2);
  PPoint X2 = (P1+Q3)*(P3+Q1);
  PPoint X3 = (P1+Q2)*(P2+Q1);

  cout << "The three points constructed are " << endl;
  cout << X1 << endl << X2 << endl << X3 << endl;

  if (collinear(X1,X2,X3)) {
    cout << "They are collinear, as guaranteed by Pappus's theorem" 
	 << endl;
  }
  else {
    cout << "TROUBLE! The three points are not collinear!!" 
	 << endl;
  }
}

void dual_pappus() {
  // Two random points
  PPoint A,B;
  A.randomize();
  B.randomize();
  cout << "The two points are " << endl << A << " and " << B << endl;

  // Three lines through the first
  PLine L1 = A.rand_line();
  PLine L2 = A.rand_line();
  PLine L3 = A.rand_line();

  cout << "The three lines through the first point are " << endl
       << L1 << endl << L2 << endl << L3 << endl;

  // Three lines through the second
  PLine M1 = B.rand_line();
  PLine M2 = B.rand_line();
  PLine M3 = B.rand_line();
  
  cout << "The three lines through the second point are " << endl
       << M1 << endl << M2 << endl << M3 << endl;

  // Get the three dual Pappus lines
  PLine X1 = L2*M3 + L3*M2;
  PLine X2 = L1*M3 + L3*M1;
  PLine X3 = L1*M2 + L2*M1;

  cout << "The three lines constructed are " << endl;
  cout << X1 << endl << X2 << endl << X3 << endl;

  if (concurrent(X1,X2,X3)) {
    cout << "They are concurrent, as guaranteed by Pappus's theorem" 
	 << endl;
  }
  else {
    cout << "TROUBLE! The three lines are not concurrent!!" 
	 << endl;
  }
}
  

int main() {
  double t;
  cout << "Enter desired tolerance --> ";
  cin >> t;
  PObject::set_tolerance(t);
  cout << "You set the tolerance to " << PObject::get_tolerance()
       << endl << endl;

  pappus();
  cout << endl;
  dual_pappus();

  return 0;
}
