#include "PObject.h"
#include "uniform.h"

double PObject::tolerance = default_tolerance;

void PObject::scale() {
  if (z != 0.) {
    x /= z;
    y /= z;
    z = 1.;
    return;
  }
  if (y != 0.) {
    x /= y;
    y = 1.;
    return;
  }
  if (x != 0) {
    x = 1.;
  } 
}

double PObject::dot(const PObject& that) const {
  return x*that.x + y*that.y + z*that.z;
}

void PObject::randomize() {
  do {
    x = unif(-1.,1.);
    y = unif(-1.,1.);
    z = unif(-1.,1.);
  } while (x*x + y*y + z*z > 1.);
  scale();
}

bool PObject::equals(const PObject& that) const {
  double d = abs(x-that.x) + abs(y-that.y) + abs(z-that.z);

  return d <= tolerance;
}

bool PObject::less(const PObject& that) const {
  if (x < that.x) return true;
  if (x > that.x) return false;
  if (y < that.y) return true;
  if (y > that.y) return false;
  if (z < that.z) return true;
  return false;
}
  
bool PObject::incident(const PObject& that) const {
  return abs(dot(that)) <= tolerance;
}

ostream& operator<<(ostream& os, const PObject& A) {
  os << "<" 
     << A.getX() << "," 
     << A.getY() << ","
     << A.getZ() 
     << ">";
  return os;
}

bool dependent(const PObject& A, const PObject& B, const PObject& C){
  double a1 = A.getX();
  double a2 = A.getY();
  double a3 = A.getZ();

  double b1 = B.getX();
  double b2 = B.getY();
  double b3 = B.getZ();

  double c1 = C.getX();
  double c2 = C.getY();
  double c3 = C.getZ();

  double det = a1*b2*c3 + a2*b3*c1 + a3*b1*c2
             - a3*b2*c1 - a1*b3*c2 - a2*b1*c3;

  return abs(det) <= PObject::get_tolerance();
}

PObject PObject::rand_perp() const {
  if (is_invalid()) return PObject(0,0,0); 

  double x1,y1,z1;   // One vector orthogonal to (x,y,z)
  double x2,y2,z2;   // Another orthogonal to (x,y,z) and (x1,y1,z1)

  if (z == 0.) { // If z==0, take (0,0,1) for (x1,y1,y2)
    x1 = 0;
    y1 = 0;
    z1 = 1;
  }
  else {
    if (y == 0.) {  // z != 0 and y == 0, use (0,1,0)
      x1 = 0;
      y1 = 1;
      z1 = 1;
    }
    else {  // y and z both nonzero, use (0,-z,y)
      x1 = 0;
      y1 = -z;
      z1 = y;
    }
  }

  // normalize (x1,y1,z1)
  double r1 = sqrt(x1*x1 + y1*y1 + z1*z1);
  x1 /= r1;
  y1 /= r1;
  z1 /= r1;

  // (get x2,y2,z2) by cross product with (x,y,z) and (x1,y1,z1)
  x2 = -(y1*z) + y*z1;
  y2 = x1*z - x*z1;
  z2 = -(x1*y) + x*y1;

  // normalize (x2,y2,z2)
  double r2 = sqrt(x2*x2 + y2*y2 + z2*z2);
  x2 /= r2;
  y2 /= r2;
  z2 /= r2;
  
  // get a point uniformly on the unit circle
  double a,b,r;
  do {
    a = unif(-1.,1.);
    b = unif(-1.,1.);
    r = a*a + b*b;
  } while (r > 1.);
  r = sqrt(r);
  a /= r;
  b /= r;  

  double xx = x1 * a + x2 * b;
  double yy = y1 * a + y2 * b;
  double zz = z1 * a + z2 * b;

  return PObject(xx,yy,zz);      
}

    
PObject PObject::op(const PObject& that) const {

  if (equals(that)) return PObject(0,0,0);

  double c1 = y*that.z - z*that.y;
  double c2 = z*that.x - x*that.z;
  double c3 = x*that.y - y*that.x;

  return PObject(c1,c2,c3);
}
