long gcd(long a, long b, long &x, long &y) {
  long d; // place to hold final gcd

  // in case b = 0, we have d=|a|, x=1 or -1, y arbitrary (say, 0)
  if (b==0) {
    if (a<0) {
      d = -a;
      x = -1;
      y = 0;
    }
    else {
      d = a;
      x = 1;
      y = 0;
    }
    return d;
  }

  // if b is negative, here is a work around
  if (b<0) {
    d = gcd(a,-b,x,y);
    y = -y;
    return d;
  }

  // if a is negative, here is a work around
  if (a<0) {
    d = gcd(-a,b,x,y);
    x = -x;
    return d;
  }

  // set up recursion
  long aa = b;
  long bb = a%b;
  long qq = a/b;
  long xx,yy;

  d = gcd(aa,bb,xx,yy);

  x = yy;
  y = xx - qq*yy;

  return d;
}
