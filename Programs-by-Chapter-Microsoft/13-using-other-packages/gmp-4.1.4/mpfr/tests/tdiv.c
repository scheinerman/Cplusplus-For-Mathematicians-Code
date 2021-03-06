/* Test file for mpfr_div.

Copyright 1999, 2001, 2002, 2003, 2004, 2005 Free Software Foundation, Inc.

This file is part of the MPFR Library.

The MPFR Library is free software; you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation; either version 2.1 of the License, or (at your
option) any later version.

The MPFR Library is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public
License for more details.

You should have received a copy of the GNU Lesser General Public License
along with the MPFR Library; see the file COPYING.LIB.  If not, write to
the Free Software Foundation, Inc., 51 Franklin Place, Fifth Floor, Boston,
MA 02110-1301, USA. */

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include "mpfr-test.h"

#ifdef CHECK_EXTERNAL
static int
test_div (mpfr_ptr a, mpfr_srcptr b, mpfr_srcptr c, mp_rnd_t rnd_mode)
{
  int res;
  int ok = rnd_mode == GMP_RNDN && mpfr_number_p (b) && mpfr_number_p (c);
  if (ok)
    {
      mpfr_print_raw (b);
      printf (" ");
      mpfr_print_raw (c);
    }
  res = mpfr_div (a, b, c, rnd_mode);
  if (ok)
    {
      printf (" ");
      mpfr_print_raw (a);
      printf ("\n");
    }
  return res;
}
#else
#define test_div mpfr_div
#endif

#define check53(n, d, rnd, res) check4(n, d, rnd, 53, res)

/* return 0 iff a and b are of the same sign */
static int
inex_cmp (int a, int b)
{
  if (a > 0)
    return (b > 0) ? 0 : 1;
  else if (a == 0)
    return (b == 0) ? 0 : 1;
  else
    return (b < 0) ? 0 : 1;
}

static void
check4 (const char *Ns, const char *Ds, mp_rnd_t rnd_mode, int p,
        const char *Qs)
{
  mpfr_t q, n, d;

  mpfr_inits2 (p, q, n, d, NULL);
  mpfr_set_str1 (n, Ns);
  mpfr_set_str1 (d, Ds);
  test_div(q, n, d, rnd_mode);
  if (mpfr_cmp_str (q, Qs, ((p==53) ? 10 : 2), GMP_RNDN) )
    {
      printf ("mpfr_div failed for n=%s, d=%s, p=%d, rnd_mode=%s\n",
              Ns, Ds, p, mpfr_print_rnd_mode (rnd_mode));
      printf ("got      ");mpfr_print_binary(q);
      mpfr_set_str (q, Qs, ((p==53) ? 10 : 2), GMP_RNDN);
      printf("\nexpected "); mpfr_print_binary(q);
      putchar('\n');
      exit (1);
    }
  mpfr_clears (q, n, d, NULL);
}

static void
check24 (const char *Ns, const char *Ds, mp_rnd_t rnd_mode, const char *Qs)
{
  mpfr_t q, n, d;

  mpfr_inits2(24, q, n, d, NULL);

  mpfr_set_str1 (n, Ns);
  mpfr_set_str1 (d, Ds);
  test_div(q, n, d, rnd_mode);
  if (mpfr_cmp_str1 (q, Qs) )
    {
      printf ("mpfr_div failed for n=%s, d=%s, prec=24, rnd_mode=%s\n",
             Ns, Ds, mpfr_print_rnd_mode(rnd_mode));
      printf ("expected quotient is %s, got ", Qs);
      mpfr_out_str(stdout,10,0,q, GMP_RNDN); putchar('\n');
      exit (1);
    }
  mpfr_clears(q,n,d,NULL);
}

/* the following examples come from the paper "Number-theoretic Test
   Generation for Directed Rounding" from Michael Parks, Table 2 */
static void
check_float(void)
{
  check24("70368760954880.0", "8388609.0", GMP_RNDN, "8.388609e6");
  check24("140737479966720.0", "16777213.0", GMP_RNDN, "8.388609e6");
  check24("70368777732096.0", "8388611.0", GMP_RNDN, "8.388609e6");
  check24("105553133043712.0", "12582911.0", GMP_RNDN, "8.38861e6");
  /* the exponent for the following example was forgotten in
     the Arith'14 version of Parks' paper */
  check24 ("12582913.0", "12582910.0", GMP_RNDN, "1.000000238");
  check24 ("105553124655104.0", "12582910.0", GMP_RNDN, "8388610.0");
  check24("140737479966720.0", "8388609.0", GMP_RNDN, "1.6777213e7");
  check24("70368777732096.0", "8388609.0", GMP_RNDN, "8.388611e6");
  check24("105553133043712.0", "8388610.0", GMP_RNDN, "1.2582911e7");
  check24("105553124655104.0", "8388610.0", GMP_RNDN, "1.258291e7");

  check24("70368760954880.0", "8388609.0", GMP_RNDZ, "8.388608e6");
  check24("140737479966720.0", "16777213.0", GMP_RNDZ, "8.388609e6");
  check24("70368777732096.0", "8388611.0", GMP_RNDZ, "8.388608e6");
  check24("105553133043712.0", "12582911.0", GMP_RNDZ, "8.38861e6");
  check24("12582913.0", "12582910.0", GMP_RNDZ, "1.000000238");
  check24 ("105553124655104.0", "12582910.0", GMP_RNDZ, "8388610.0");
  check24("140737479966720.0", "8388609.0", GMP_RNDZ, "1.6777213e7");
  check24("70368777732096.0", "8388609.0", GMP_RNDZ, "8.38861e6");
  check24("105553133043712.0", "8388610.0", GMP_RNDZ, "1.2582911e7");
  check24("105553124655104.0", "8388610.0", GMP_RNDZ, "1.258291e7");

  check24("70368760954880.0", "8388609.0", GMP_RNDU, "8.388609e6");
  check24("140737479966720.0", "16777213.0", GMP_RNDU, "8.38861e6");
  check24("70368777732096.0", "8388611.0", GMP_RNDU, "8.388609e6");
  check24("105553133043712.0", "12582911.0", GMP_RNDU, "8.388611e6");
  check24("12582913.0", "12582910.0", GMP_RNDU, "1.000000357");
  check24 ("105553124655104.0", "12582910.0", GMP_RNDU, "8388611.0");
  check24("140737479966720.0", "8388609.0", GMP_RNDU, "1.6777214e7");
  check24("70368777732096.0", "8388609.0", GMP_RNDU, "8.388611e6");
  check24("105553133043712.0", "8388610.0", GMP_RNDU, "1.2582912e7");
  check24("105553124655104.0", "8388610.0", GMP_RNDU, "1.2582911e7");

  check24("70368760954880.0", "8388609.0", GMP_RNDD, "8.388608e6");
  check24("140737479966720.0", "16777213.0", GMP_RNDD, "8.388609e6");
  check24("70368777732096.0", "8388611.0", GMP_RNDD, "8.388608e6");
  check24("105553133043712.0", "12582911.0", GMP_RNDD, "8.38861e6");
  check24("12582913.0", "12582910.0", GMP_RNDD, "1.000000238");
  check24 ("105553124655104.0", "12582910.0", GMP_RNDD, "8388610.0");
  check24("140737479966720.0", "8388609.0", GMP_RNDD, "1.6777213e7");
  check24("70368777732096.0", "8388609.0", GMP_RNDD, "8.38861e6");
  check24("105553133043712.0", "8388610.0", GMP_RNDD, "1.2582911e7");
  check24("105553124655104.0", "8388610.0", GMP_RNDD, "1.258291e7");

}

static void
check_double(void)
{
  check53("0.0", "1.0", GMP_RNDZ, "0.0");
  check53("-7.4988969224688591e63", "4.8816866450288732e306", GMP_RNDD,
          "-1.5361282826510687291e-243");
  check53("-1.33225773037748601769e+199", "3.63449540676937123913e+79",
          GMP_RNDZ, "-3.6655920045905428978e119");
  check53("9.89438396044940256501e-134", "5.93472984109987421717e-67",GMP_RNDU,
          "1.6672003992376663654e-67");
  check53("9.89438396044940256501e-134", "-5.93472984109987421717e-67",
          GMP_RNDU, "-1.6672003992376663654e-67");
  check53("-4.53063926135729747564e-308", "7.02293374921793516813e-84",
          GMP_RNDD, "-6.4512060388748850857e-225");
  check53("6.25089225176473806123e-01","-2.35527154824420243364e-230",
          GMP_RNDD, "-2.6540006635008291192e229");
  check53("6.52308934689126e15", "-1.62063546601505417497e273", GMP_RNDN,
          "-4.0250194961676020848e-258");
  check53("1.04636807108079349236e-189", "3.72295730823253012954e-292",
          GMP_RNDZ, "2.810583051186143125e102");
  /* problems found by Kevin under HP-PA */
  check53 ("2.861044553323177e-136", "-1.1120354257068143e+45", GMP_RNDZ,
           "-2.5727998292003016e-181");
  check53 ("-4.0559157245809205e-127", "-1.1237723844524865e+77", GMP_RNDN,
           "3.6091968273068081e-204");
  check53 ("-1.8177943561493235e-93", "-8.51233984260364e-104", GMP_RNDU,
           "2.1354814184595821e+10");
}

static void
check_64(void)
{
  mpfr_t x,y,z;

  mpfr_inits2 (64, x, y, z, NULL);

  mpfr_set_str_binary(x, "1.00100100110110101001010010101111000001011100100101010000000000E54");
  mpfr_set_str_binary(y, "1.00000000000000000000000000000000000000000000000000000000000000E584");
  test_div(z, x, y, GMP_RNDU);
  if (mpfr_cmp_str (z, "0.1001001001101101010010100101011110000010111001001010100000000000E-529", 2, GMP_RNDN))
    {
      printf("Error for tdiv for GMP_RNDU and p=64\nx=");
      mpfr_print_binary(x);
      printf("\ny=");
      mpfr_print_binary(y);
      printf("\ngot      ");
      mpfr_print_binary(z);
      printf("\nexpected 0.1001001001101101010010100101011110000010111001001010100000000000E-529\n");
      exit(1);
    }

  mpfr_clears(x, y, z, NULL);
}

static void
check_convergence (void)
{
  mpfr_t x, y; int i, j;

  mpfr_init2(x, 130);
  mpfr_set_str_binary(x, "0.1011111101011010101000001010011111101000011100011101010011111011000011001010000000111100100111110011001010110100100001001000111001E6944");
  mpfr_init2(y, 130);
  mpfr_set_ui(y, 5, GMP_RNDN);
  test_div(x, x, y, GMP_RNDD); /* exact division */

  mpfr_set_prec(x, 64);
  mpfr_set_prec(y, 64);
  mpfr_set_str_binary(x, "0.10010010011011010100101001010111100000101110010010101E55");
  mpfr_set_str_binary(y, "0.1E585");
  test_div(x, x, y, GMP_RNDN);
  mpfr_set_str_binary(y, "0.10010010011011010100101001010111100000101110010010101E-529");
  if (mpfr_cmp (x, y))
    {
      printf ("Error in mpfr_div for prec=64, rnd=GMP_RNDN\n");
      printf ("got        "); mpfr_print_binary(x); puts ("");
      printf ("instead of "); mpfr_print_binary(y); puts ("");
      exit(1);
    }

  for (i=32; i<=64; i+=32)
    {
      mpfr_set_prec(x, i);
      mpfr_set_prec(y, i);
      mpfr_set_ui(x, 1, GMP_RNDN);
      for (j = 0;j < GMP_RND_MAX; j++)
        {
          mpfr_set_ui (y, 1, GMP_RNDN);
          test_div (y, x, y, (mp_rnd_t) j);
          if (mpfr_cmp_ui (y, 1))
            {
              printf ("mpfr_div failed for x=1.0, y=1.0, prec=%d rnd=%s\n",
                      i, mpfr_print_rnd_mode ((mp_rnd_t) j));
              printf ("got "); mpfr_print_binary(y); puts ("");
              exit (1);
            }
        }
    }

  mpfr_clear (x);
  mpfr_clear (y);
}

#define KMAX 10000

/* given y = o(x/u), x, u, find the inexact flag by
   multiplying y by u */
static int
get_inexact (mpfr_t y, mpfr_t x, mpfr_t u)
{
  mpfr_t xx;
  int inex;
  mpfr_init2 (xx, mpfr_get_prec (y) + mpfr_get_prec (u));
  mpfr_mul (xx, y, u, GMP_RNDN); /* exact */
  inex = mpfr_cmp (xx, x);
  mpfr_clear (xx);
  return inex;
}

static void
check_hard (void)
{
  mpfr_t u, v, q, q2;
  mp_prec_t precu, precv, precq;
  int rnd;
  int inex, inex2, i, j;

  mpfr_init (q);
  mpfr_init (q2);
  mpfr_init (u);
  mpfr_init (v);

  for (precq = MPFR_PREC_MIN; precq <= 64; precq ++)
    {
      mpfr_set_prec (q, precq);
      mpfr_set_prec (q2, precq + 1);
      for (j = 0; j < 2; j++)
        {
          if (j == 0)
            {
              do
                {
                  mpfr_random (q2);
                }
              while (mpfr_cmp_ui (q2, 0) == 0);
            }
          else /* use q2=1 */
            mpfr_set_ui (q2, 1, GMP_RNDN);
      for (precv = precq; precv <= 10 * precq; precv += precq)
        {
          mpfr_set_prec (v, precv);
          do
            {
              mpfr_random (v);
            }
          while (mpfr_cmp_ui (v, 0) == 0);
          for (precu = precq; precu <= 10 * precq; precu += precq)
            {
              mpfr_set_prec (u, precu);
              mpfr_mul (u, v, q2, GMP_RNDN);
              mpfr_nextbelow (u);
              for (i = 0; i <= 2; i++)
                {
                  for (rnd = 0; rnd < GMP_RND_MAX; rnd++)
                    {
                      inex = test_div (q, u, v, (mp_rnd_t) rnd);
                      inex2 = get_inexact (q, u, v);
                      if (inex_cmp (inex, inex2))
                        {
                          printf ("Wrong inexact flag for rnd=%s: expected %d, got %d\n",
                                  mpfr_print_rnd_mode ((mp_rnd_t) rnd), inex2, inex);
                          printf ("u=  "); mpfr_dump (u);
                          printf ("v=  "); mpfr_dump (v);
                          printf ("q=  "); mpfr_dump (q);
                          mpfr_set_prec (q2, precq + precv);
                          mpfr_mul (q2, q, v, GMP_RNDN);
                          printf ("q*v="); mpfr_dump (q2);
                          exit (1);
                        }
                    }
                  mpfr_nextabove (u);
                }
            }
        }
        }
    }

  mpfr_clear (q);
  mpfr_clear (q2);
  mpfr_clear (u);
  mpfr_clear (v);
}

static void
check_lowr (void)
{
  mpfr_t x, y, z, z2, z3, tmp;
  int k, c, c2;


  mpfr_init2 (x, 1000);
  mpfr_init2 (y, 100);
  mpfr_init2 (tmp, 850);
  mpfr_init2 (z, 10);
  mpfr_init2 (z2, 10);
  mpfr_init2 (z3, 50);

  for (k = 1; k < KMAX; k++)
    {
      do
        {
          mpfr_random (z);
        }
      while (mpfr_cmp_ui (z, 0) == 0);
      do
        {
          mpfr_random (tmp);
        }
      while (mpfr_cmp_ui (tmp, 0) == 0);
      mpfr_mul (x, z, tmp, GMP_RNDN); /* exact */
      c = test_div (z2, x, tmp, GMP_RNDN);

      if (c || mpfr_cmp (z2, z))
        {
          printf ("Error in mpfr_div rnd=GMP_RNDN\n");
          printf ("got        "); mpfr_print_binary(z2); puts ("");
          printf ("instead of "); mpfr_print_binary(z); puts ("");
          printf ("inex flag = %d, expected 0\n", c);
          exit (1);
        }
    }

  /* x has still precision 1000, z precision 10, and tmp prec 850 */
  mpfr_set_prec (z2, 9);
  for (k = 1; k < KMAX; k++)
    {
      mpfr_random (z);
      do
        {
          mpfr_random (tmp);
        }
      while (mpfr_cmp_ui (tmp, 0) == 0);
      mpfr_mul (x, z, tmp, GMP_RNDN); /* exact */
      c = test_div (z2, x, tmp, GMP_RNDN);
      /* since z2 has one less bit that z, either the division is exact
         if z is representable on 9 bits, or we have an even round case */

      c2 = get_inexact (z2, x, tmp);
      if ((mpfr_cmp (z2, z) == 0 && c) || inex_cmp (c, c2))
        {
          printf ("Error in mpfr_div rnd=GMP_RNDN\n");
          printf ("got        "); mpfr_print_binary(z2); puts ("");
          printf ("instead of "); mpfr_print_binary(z); puts ("");
          printf ("inex flag = %d, expected %d\n", c, c2);
          exit (1);
        }
      else if (c == 2)
        {
          mpfr_nexttoinf (z);
          if (mpfr_cmp(z2, z))
            {
              printf ("Error in mpfr_div [even rnd?] rnd=GMP_RNDN\n");
              printf ("Dividing ");
              printf ("got        "); mpfr_print_binary(z2); puts ("");
              printf ("instead of "); mpfr_print_binary(z); puts ("");
              printf ("inex flag = %d\n", 1);
              exit (1);
            }
        }
      else if (c == -2)
        {
          mpfr_nexttozero (z);
          if (mpfr_cmp(z2, z))
            {
              printf ("Error in mpfr_div [even rnd?] rnd=GMP_RNDN\n");
              printf ("Dividing ");
              printf ("got        "); mpfr_print_binary(z2); puts ("");
              printf ("instead of "); mpfr_print_binary(z); puts ("");
              printf ("inex flag = %d\n", 1);
              exit (1);
            }
        }
    }

  mpfr_set_prec(x, 1000);
  mpfr_set_prec(y, 100);
  mpfr_set_prec(tmp, 850);
  mpfr_set_prec(z, 10);
  mpfr_set_prec(z2, 10);

  /* almost exact divisions */
  for (k = 1; k < KMAX; k++)
    {
      do
        {
          mpfr_random(z);
        }
      while (mpfr_cmp_ui (z, 0) == 0);
      do
        {
          mpfr_random (tmp);
        }
      while (mpfr_cmp_ui (tmp, 0) == 0);
      mpfr_mul(x, z, tmp, GMP_RNDN);
      mpfr_set(y, tmp, GMP_RNDD);
      mpfr_nexttoinf (x);

      c = test_div(z2, x, y, GMP_RNDD);
      test_div(z3, x, y, GMP_RNDD);
      mpfr_set(z, z3, GMP_RNDD);

      if (c != -1 || mpfr_cmp(z2, z))
        {
          printf ("Error in mpfr_div rnd=GMP_RNDD\n");
          printf ("got        "); mpfr_print_binary(z2); puts ("");
          printf ("instead of "); mpfr_print_binary(z); puts ("");
          printf ("inex flag = %d\n", c);
          exit (1);
        }

      mpfr_set (y, tmp, GMP_RNDU);
      test_div (z3, x, y, GMP_RNDU);
      mpfr_set (z, z3, GMP_RNDU);
      c = test_div (z2, x, y, GMP_RNDU);
      if (c != 1 || mpfr_cmp (z2, z))
        {
          printf ("Error in mpfr_div rnd=GMP_RNDU\n");
          printf ("u="); mpfr_dump (x);
          printf ("v="); mpfr_dump (y);
          printf ("got        "); mpfr_print_binary (z2); puts ("");
          printf ("instead of "); mpfr_print_binary (z); puts ("");
          printf ("inex flag = %d\n", c);
          exit (1);
        }
    }

  mpfr_clear (x);
  mpfr_clear (y);
  mpfr_clear (z);
  mpfr_clear (z2);
  mpfr_clear (z3);
  mpfr_clear (tmp);
}

#define MAX_PREC 128

static void
check_inexact (void)
{
  mpfr_t x, y, z, u;
  mp_prec_t px, py, pu;
  int inexact, cmp;
  mp_rnd_t rnd;

  mpfr_init (x);
  mpfr_init (y);
  mpfr_init (z);
  mpfr_init (u);

  mpfr_set_prec (x, 28);
  mpfr_set_prec (y, 28);
  mpfr_set_prec (z, 1023);
  mpfr_set_str_binary (x, "0.1000001001101101111100010011E0");
  mpfr_set_str (z, "48284762641021308813686974720835219181653367326353400027913400579340343320519877153813133510034402932651132854764198688352364361009429039801248971901380781746767119334993621199563870113045276395603170432175354501451429471578325545278975153148347684600400321033502982713296919861760382863826626093689036010394", 10, GMP_RNDN);
  mpfr_div (x, x, z, GMP_RNDN);
  mpfr_set_str_binary (y, "0.1111001011001101001001111100E-1023");
  if (mpfr_cmp (x, y))
    {
      printf ("Error in mpfr_div for prec=28, RNDN\n");
      printf ("Expected "); mpfr_dump (y);
      printf ("Got      "); mpfr_dump (x);
      exit (1);
    }

  mpfr_set_prec (x, 53);
  mpfr_set_str_binary (x, "0.11101100110010100011011000000100001111011111110010101E0");
  mpfr_set_prec (u, 127);
  mpfr_set_str_binary (u, "0.1000001100110110110101110110101101111000110000001111111110000000011111001010110100110010111111111101000001011011101011101101000E-2");
  mpfr_set_prec (y, 95);
  inexact = test_div (y, x, u, GMP_RNDN);
  if (inexact != (cmp = get_inexact (y, x, u)))
    {
      printf ("Wrong inexact flag (0): expected %d, got %d\n", cmp, inexact);
      printf ("x="); mpfr_out_str (stdout, 10, 99, x, GMP_RNDN); printf ("\n");
      printf ("u="); mpfr_out_str (stdout, 10, 99, u, GMP_RNDN); printf ("\n");
      printf ("y="); mpfr_out_str (stdout, 10, 99, y, GMP_RNDN); printf ("\n");
      exit (1);
    }

  mpfr_set_prec (x, 33);
  mpfr_set_str_binary (x, "0.101111100011011101010011101100001E0");
  mpfr_set_prec (u, 2);
  mpfr_set_str_binary (u, "0.1E0");
  mpfr_set_prec (y, 28);
  if ((inexact = test_div (y, x, u, GMP_RNDN) >= 0))
    {
      printf ("Wrong inexact flag (1): expected -1, got %d\n",
              inexact);
      exit (1);
    }

  mpfr_set_prec (x, 129);
  mpfr_set_str_binary (x, "0.111110101111001100000101011100101100110011011101010001000110110101100101000010000001110110100001101010001010100010001111001101010E-2");
  mpfr_set_prec (u, 15);
  mpfr_set_str_binary (u, "0.101101000001100E-1");
  mpfr_set_prec (y, 92);
  if ((inexact = test_div (y, x, u, GMP_RNDN)) <= 0)
    {
      printf ("Wrong inexact flag for rnd=GMP_RNDN(1): expected 1, got %d\n",
              inexact);
      mpfr_dump (x);
      mpfr_dump (u);
      mpfr_dump (y);
      exit (1);
    }

  for (px=2; px<MAX_PREC; px++)
    {
      mpfr_set_prec (x, px);
      mpfr_random (x);
      for (pu=2; pu<=MAX_PREC; pu++)
        {
          mpfr_set_prec (u, pu);
          do { mpfr_random (u); } while (mpfr_cmp_ui (u, 0) == 0);
            {
              py = MPFR_PREC_MIN + (randlimb () % (MAX_PREC - MPFR_PREC_MIN));
              mpfr_set_prec (y, py);
              mpfr_set_prec (z, py + pu);
                {
                  rnd = (mp_rnd_t) RND_RAND ();
                  inexact = test_div (y, x, u, rnd);
                  if (mpfr_mul (z, y, u, rnd))
                    {
                      printf ("z <- y * u should be exact\n");
                      exit (1);
                    }
                  cmp = mpfr_cmp (z, x);
                  if (((inexact == 0) && (cmp != 0)) ||
                      ((inexact > 0) && (cmp <= 0)) ||
                      ((inexact < 0) && (cmp >= 0)))
                    {
                      printf ("Wrong inexact flag for rnd=%s\n",
                              mpfr_print_rnd_mode(rnd));
                      printf ("expected %d, got %d\n", cmp, inexact);
                      printf ("x="); mpfr_print_binary (x); puts ("");
                      printf ("u="); mpfr_print_binary (u); puts ("");
                      printf ("y="); mpfr_print_binary (y); puts ("");
                      printf ("y*u="); mpfr_print_binary (z); puts ("");
                      exit (1);
                    }
                }
            }
        }
    }

  mpfr_clear (x);
  mpfr_clear (y);
  mpfr_clear (z);
  mpfr_clear (u);
}

static void
check_nan (void)
{
  mpfr_t  a, d, q;
  mp_exp_t emax, emin;

  mpfr_init2 (a, 100L);
  mpfr_init2 (d, 100L);
  mpfr_init2 (q, 100L);

  /* 1/nan == nan */
  mpfr_set_ui (a, 1L, GMP_RNDN);
  MPFR_SET_NAN (d);
  MPFR_ASSERTN (test_div (q, a, d, GMP_RNDZ) == 0); /* exact */
  MPFR_ASSERTN (mpfr_nan_p (q));

  /* nan/1 == nan */
  MPFR_SET_NAN (a);
  mpfr_set_ui (d, 1L, GMP_RNDN);
  MPFR_ASSERTN (test_div (q, a, d, GMP_RNDZ) == 0); /* exact */
  MPFR_ASSERTN (mpfr_nan_p (q));

  /* +inf/1 == +inf */
  MPFR_CLEAR_FLAGS (a);
  MPFR_SET_INF (a);
  MPFR_SET_POS (a);
  mpfr_set_ui (d, 1L, GMP_RNDN);
  MPFR_ASSERTN (test_div (q, a, d, GMP_RNDZ) == 0); /* exact */
  MPFR_ASSERTN (mpfr_inf_p (q));
  MPFR_ASSERTN (mpfr_sgn (q) > 0);

  /* 1/+inf == 0 */
  mpfr_set_ui (a, 1L, GMP_RNDN);
  MPFR_CLEAR_FLAGS (d);
  MPFR_SET_INF (d);
  MPFR_SET_POS (d);
  MPFR_ASSERTN (test_div (q, a, d, GMP_RNDZ) == 0); /* exact */
  MPFR_ASSERTN (mpfr_number_p (q));
  MPFR_ASSERTN (mpfr_sgn (q) == 0);

  /* 0/0 == nan */
  mpfr_set_ui (a, 0L, GMP_RNDN);
  mpfr_set_ui (d, 0L, GMP_RNDN);
  MPFR_ASSERTN (test_div (q, a, d, GMP_RNDZ) == 0); /* exact */
  MPFR_ASSERTN (mpfr_nan_p (q));

  /* +inf/+inf == nan */
  MPFR_CLEAR_FLAGS (a);
  MPFR_SET_INF (a);
  MPFR_SET_POS (a);
  MPFR_CLEAR_FLAGS (d);
  MPFR_SET_INF (d);
  MPFR_SET_POS (d);
  MPFR_ASSERTN (test_div (q, a, d, GMP_RNDZ) == 0); /* exact */
  MPFR_ASSERTN (mpfr_nan_p (q));

  /* 1/+0 = +Inf */
  mpfr_set_ui (a, 1, GMP_RNDZ);
  mpfr_set_ui (d, 0, GMP_RNDZ);
  MPFR_ASSERTN (test_div (q, a, d, GMP_RNDZ) == 0); /* exact */
  MPFR_ASSERTN (mpfr_inf_p (q) && mpfr_sgn (q) > 0);

  /* 1/-0 = -Inf */
  mpfr_set_ui (a, 1, GMP_RNDZ);
  mpfr_set_ui (d, 0, GMP_RNDZ);
  mpfr_neg (d, d, GMP_RNDZ);
  MPFR_ASSERTN (test_div (q, a, d, GMP_RNDZ) == 0); /* exact */
  MPFR_ASSERTN (mpfr_inf_p (q) && mpfr_sgn (q) < 0);

  /* -1/+0 = -Inf */
  mpfr_set_si (a, -1, GMP_RNDZ);
  mpfr_set_ui (d, 0, GMP_RNDZ);
  MPFR_ASSERTN (test_div (q, a, d, GMP_RNDZ) == 0); /* exact */
  MPFR_ASSERTN (mpfr_inf_p (q) && mpfr_sgn (q) < 0);

  /* -1/-0 = +Inf */
  mpfr_set_si (a, -1, GMP_RNDZ);
  mpfr_set_ui (d, 0, GMP_RNDZ);
  mpfr_neg (d, d, GMP_RNDZ);
  MPFR_ASSERTN (test_div (q, a, d, GMP_RNDZ) == 0); /* exact */
  MPFR_ASSERTN (mpfr_inf_p (q) && mpfr_sgn (q) > 0);

  /* check overflow */
  emax = mpfr_get_emax ();
  set_emax (1);
  mpfr_set_ui (a, 1, GMP_RNDZ);
  mpfr_set_ui (d, 1, GMP_RNDZ);
  mpfr_div_2exp (d, d, 1, GMP_RNDZ);
  test_div (q, a, d, GMP_RNDU); /* 1 / 0.5 = 2 -> overflow */
  MPFR_ASSERTN (mpfr_inf_p (q) && mpfr_sgn (q) > 0);
  set_emax (emax);

  /* check underflow */
  emin = mpfr_get_emin ();
  set_emin (-1);
  mpfr_set_ui (a, 1, GMP_RNDZ);
  mpfr_div_2exp (a, a, 2, GMP_RNDZ);
  mpfr_set_ui (d, 2, GMP_RNDZ);
  test_div (q, a, d, GMP_RNDZ); /* 0.5*2^(-2) -> underflow */
  MPFR_ASSERTN (mpfr_cmp_ui (q, 0) == 0 && MPFR_IS_POS (q));
  test_div (q, a, d, GMP_RNDN); /* 0.5*2^(-2) -> underflow */
  MPFR_ASSERTN (mpfr_cmp_ui (q, 0) == 0 && MPFR_IS_POS (q));
  set_emin (emin);

  mpfr_clear (a);
  mpfr_clear (d);
  mpfr_clear (q);
}

#define TEST_FUNCTION test_div
#define TWO_ARGS
#define RAND_FUNCTION(x) mpfr_random2(x, MPFR_LIMB_SIZE (x), randlimb () % 100)
#include "tgeneric.c"

int
main (int argc, char *argv[])
{
  MPFR_TEST_USE_RANDS ();
  tests_start_mpfr ();

  check_inexact ();
  check_hard ();
  check_nan ();
  check_lowr();
  check_float(); /* checks single precision */
  check_double();
  check_convergence();
  check_64();

  check4("4.0","4.503599627370496e15", GMP_RNDZ, 62,
   "0.10000000000000000000000000000000000000000000000000000000000000E-49");
  check4("1.0","2.10263340267725788209e+187", GMP_RNDU, 65,
   "0.11010011111001101011111001100111110100000001101001111100111000000E-622");
  check4("2.44394909079968374564e-150", "2.10263340267725788209e+187",GMP_RNDU,
         65,
  "0.11010011111001101011111001100111110100000001101001111100111000000E-1119");

  test_generic (2, 800, 50);

  tests_end_mpfr ();
  return 0;
}
