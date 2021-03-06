/* Tune various threshold of MPFR

Copyright 2005 Free Software Foundation.

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

#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <limits.h>

#define MPFR_NEED_LONGLONG_H
#include "mpfr-impl.h"

#undef _PROTO
#define _PROTO __GMP_PROTO
#include "speed.h"

int verbose;

/* s->size: precision of both input and output
   s->xp  : Mantissa of first input
   s->yp  : mantissa of second input                    */

#define SPEED_MPFR_FUNC(mean_fun) do {               \
  unsigned  i;                                       \
  mp_ptr    wp;                                      \
  double    t;                                       \
  mpfr_t    w, x;                                    \
  mp_size_t size;                                    \
  MPFR_TMP_DECL (marker);                                 \
                                                     \
  SPEED_RESTRICT_COND (s->size >= MPFR_PREC_MIN);    \
  SPEED_RESTRICT_COND (s->size <= MPFR_PREC_MAX);    \
  MPFR_TMP_MARK (marker);                                 \
                                                     \
  size = (s->size-1)/BITS_PER_MP_LIMB+1;             \
  s->xp[size-1] |= MPFR_LIMB_HIGHBIT;                \
  MPFR_TMP_INIT1 (s->xp, x, s->size);                \
  MPFR_SET_EXP (x, 0);                               \
                                                     \
  MPFR_TMP_INIT (wp, w, s->size, size);              \
                                                     \
  speed_operand_src (s, s->xp, size);                \
  speed_operand_dst (s, wp, size);                   \
  speed_cache_fill (s);                              \
                                                     \
  speed_starttime ();                                \
  i = s->reps;                                       \
  do                                                 \
    mean_fun (w, x, GMP_RNDN);                       \
  while (--i != 0);                                  \
  t = speed_endtime ();                              \
                                                     \
  MPFR_TMP_FREE (marker);                                 \
  return t;                                          \
} while (0)

#define SPEED_MPFR_OP(mean_fun) do {                 \
  unsigned  i;                                       \
  mp_ptr    wp;                                      \
  double    t;                                       \
  mpfr_t    w, x, y;                                 \
  mp_size_t size;                                    \
  MPFR_TMP_DECL (marker);                                 \
                                                     \
  SPEED_RESTRICT_COND (s->size >= MPFR_PREC_MIN);    \
  SPEED_RESTRICT_COND (s->size <= MPFR_PREC_MAX);    \
  MPFR_TMP_MARK (marker);                                 \
                                                     \
  size = (s->size-1)/BITS_PER_MP_LIMB+1;             \
  s->xp[size-1] |= MPFR_LIMB_HIGHBIT;                \
  MPFR_TMP_INIT1 (s->xp, x, s->size);                \
  MPFR_SET_EXP (x, 0);                               \
  s->yp[size-1] |= MPFR_LIMB_HIGHBIT;                \
  MPFR_TMP_INIT1 (s->yp, y, s->size);                \
  MPFR_SET_EXP (y, 0);                               \
                                                     \
  MPFR_TMP_INIT (wp, w, s->size, size);              \
                                                     \
  speed_operand_src (s, s->xp, size);                \
  speed_operand_src (s, s->yp, size);                \
  speed_operand_dst (s, wp, size);                   \
  speed_cache_fill (s);                              \
                                                     \
  speed_starttime ();                                \
  i = s->reps;                                       \
  do                                                 \
    mean_fun (w, x, y, GMP_RNDN);                    \
  while (--i != 0);                                  \
  t = speed_endtime ();                              \
                                                     \
  MPFR_TMP_FREE (marker);                                 \
  return t;                                          \
} while (0)


/* First we include all the functions we want to tune inside this program.
   We can't use MPFR library since the THRESHOLD can't vary */

/* Setup mpfr_exp_2 */
mp_prec_t mpfr_exp_2_threshold;
#undef  MPFR_EXP_2_THRESHOLD
#define MPFR_EXP_2_THRESHOLD mpfr_exp_2_threshold
#include "exp_2.c"
static double speed_mpfr_exp_2 (struct speed_params *s) {
  SPEED_MPFR_FUNC (mpfr_exp_2);
}

/* Setup mpfr_exp */
mp_prec_t mpfr_exp_threshold;
#undef  MPFR_EXP_THRESHOLD
#define MPFR_EXP_THRESHOLD mpfr_exp_threshold
#include "exp.c"
static double speed_mpfr_exp (struct speed_params *s) {
  SPEED_MPFR_FUNC (mpfr_exp);
}

/* Setup mpfr_mul */
mp_prec_t mpfr_mul_threshold;
#undef  MPFR_MUL_THRESHOLD
#define MPFR_MUL_THRESHOLD mpfr_mul_threshold
#include "mul.c"
static double speed_mpfr_mul (struct speed_params *s) {
  SPEED_MPFR_OP (mpfr_mul);
}



/************************************************
 * Common functions (inspired by GMP function)  *
 ************************************************/
static int
analyze_data (double *dat, int ndat) {
  double  x, min_x;
  int     j, min_j;

  x = 0.0;
  for (j = 0; j < ndat; j++)
    if (dat[j] > 0.0)
      x += dat[j];

  min_x = x;
  min_j = 0;

  for (j = 0; j < ndat; x -= dat[j], j++)
    {
      if (x < min_x)
        {
          min_x = x;
          min_j = j;
        }
    }
  return min_j;
}

#define THRESHOLD_WINDOW 16
#define THRESHOLD_FINAL_WINDOW 128
static double domeasure (mp_prec_t *threshold,
                         double (*func) (struct speed_params *),
                         mp_prec_t p)
{
  struct speed_params s;
  mp_size_t size;
  double t1, t2, d;

  s.align_xp = s.align_yp = s.align_wp = 64;
  s.size = p;
  size = (p - 1)/BITS_PER_MP_LIMB+1;
  s.xp = malloc (2*size*sizeof (mp_limb_t));
  if (s.xp == NULL)
    {
      fprintf (stderr, "Can't allocate memory.\n");
      abort ();
    }
  mpn_random (s.xp, size);
  s.yp = s.xp + size;
  mpn_random (s.yp, size);
  *threshold = MPFR_PREC_MAX;
  t1 = speed_measure (func, &s);
  if (t1 == -1.0)
    {
      fprintf (stderr, "Failed to measure function 1!\n");
      abort ();
    }
  *threshold = 1;
  t2 = speed_measure (func, &s);
  if (t2 == -1.0)
    {
      fprintf (stderr, "Failed to measure function 2!\n");
      abort ();
    }
  free (s.xp);
  /* t1 is the time of the first alog (used for low prec) */
  if (t2 >= t1)
    d = (t2 - t1) / t2;
  else
    d = (t2 - t1) / t1;
  /* d > 0 if we have to use algo 1.
     d < 0 if we have to use algo 2 */
  return d;
}

/* Tune a function with a simple THRESHOLD
   The function doesn't depend on another threshold.
   It assumes that it uses algo1 if p < THRESHOLD
   and algo2 otherwise.
   if algo2 is better for low prec, and algo1 better for high prec,
   the behaviour of this function is undefined. */
static void
tune_simple_func (mp_prec_t *threshold,
                  double (*func) (struct speed_params *),
                  mp_prec_t pstart)
{
  double measure[THRESHOLD_FINAL_WINDOW+1];
  double d;
  mp_prec_t pstep;
  int i, numpos, numneg, try;
  mp_prec_t pmin, pmax, p;

  /* First Look for a lower bound within 10% */
  pmin = p = pstart;
  d = domeasure (threshold, func, pmin);
  if (d < 0.0) {
    if (verbose)
      printf ("Oups: even for %lu, algo 2 seems to be faster!\n",
              (unsigned long) pmin);
    *threshold = MPFR_PREC_MIN;
    return;
  }
  if (d >= 1.00)
    for (;;) {
      d = domeasure (threshold, func, pmin);
      if (d < 1.00)
        break;
      p = pmin;
      pmin += pmin/2;
    }
  pmin = p;
  for (;;) {
    d = domeasure (threshold, func, pmin);
    if (d < 0.10)
      break;
    pmin += BITS_PER_MP_LIMB;
  }

  /* Then Look for a upper bound within 20%  */
  pmax = pmin * 2;
  for (;;) {
    d = domeasure (threshold, func, pmax);
    if (d < -0.20)
      break;
    pmax += pmax/2;
  }

  /* The threshold is between pmin and pmax. Affine them */
  try = 0;
  while ((pmax-pmin) >= THRESHOLD_FINAL_WINDOW)
    {
      pstep = MAX(MIN(BITS_PER_MP_LIMB/2,(pmax-pmin)/(2*THRESHOLD_WINDOW)),1);
      if (verbose)
        printf ("Pmin = %8lu Pmax = %8lu Pstep=%lu\n", pmin, pmax, pstep);
      p = (pmin + pmax) / 2;
      for (i = numpos = numneg = 0 ; i < THRESHOLD_WINDOW + 1 ; i++) {
        measure[i] = domeasure (threshold, func,
                                p+(i-THRESHOLD_WINDOW/2)*pstep);
        if (measure[i] > 0)
          numpos ++;
        else if (measure[i] < 0)
          numneg ++;
      }
      if (numpos > numneg)
        /* We use more often algo 1 than algo 2 */
        pmin = p - THRESHOLD_WINDOW/2*pstep;
      else if (numpos < numneg)
        pmax = p + THRESHOLD_WINDOW/2*pstep;
      else
        /* numpos == numneg ... */
        if (++ try > 2) {
          *threshold = p;
          if (verbose)
            printf ("Quick find: %lu\n", *threshold);
          return ;
        }
    }

  /* Final tune... */
  if (verbose)
    printf ("Finalizing in [%lu, %lu]... ", pmin, pmax);
  for (i = 0 ; i < THRESHOLD_FINAL_WINDOW+1 ; i++)
    measure[i] = domeasure (threshold, func, pmin+i);
  i = analyze_data (measure, THRESHOLD_FINAL_WINDOW+1);
  *threshold = pmin + i;
  if (verbose)
    printf ("%lu\n", *threshold);
  return;
}



/************************************
 * Tune Mulder's mulhigh function   *
 ************************************/
#define TOLERANCE 1.02
#ifndef MPFR_MULHIGH_SIZE
# define MPFR_MULHIGH_SIZE 1024
#endif
#define MPFR_MULHIGH_TAB_SIZE MPFR_MULHIGH_SIZE
#include "mulders.c"

static double speed_mpfr_mulhigh (struct speed_params *s) {
  SPEED_ROUTINE_MPN_MUL_N (mpfr_mulhigh_n);
}

/* Tune size N */
static mp_size_t
tune_mulder_upto (mp_size_t n)
{
  struct speed_params s;
  mp_size_t k, kbest;
  double t, tbest;
  MPFR_TMP_DECL (marker);

  if (n == 0)
    return -1;

  MPFR_TMP_MARK (marker);
  s.align_xp = s.align_yp = s.align_wp = 64;
  s.size = n;
  s.xp   = MPFR_TMP_ALLOC (n*sizeof (mp_limb_t));
  s.yp   = MPFR_TMP_ALLOC (n*sizeof (mp_limb_t));
  mpn_random (s.xp, n);
  mpn_random (s.yp, n);

  /* Check k == -1, mpn_mul_base_basecase */
  mulhigh_ktab[n] = -1;
  kbest = -1;
  tbest =  speed_measure (speed_mpfr_mulhigh, &s);

  /* Check k == 0, mpn_mulhigh_basecase */
  mulhigh_ktab[n] = 0;
  t = speed_measure (speed_mpfr_mulhigh, &s);
  if (t * TOLERANCE < tbest)
    kbest = 0, tbest = t;

  /* Check Mulder */
  for (k = n/2+1 ; k < n ; k++) {
    mulhigh_ktab[n] = k;
    t =  speed_measure (speed_mpfr_mulhigh, &s);
    if (t * TOLERANCE < tbest)
      kbest = k, tbest = t;
  }

  mulhigh_ktab[n] = kbest;

  MPFR_TMP_FREE (marker);
  return kbest;
}

static void
tune_mulder (FILE *f)
{
  mp_size_t k;

  if (verbose)
    printf ("Tuning mpfr_mulhigh_n[%d]", (int) MPFR_MULHIGH_TAB_SIZE);
  fprintf (f, "#define MPFR_MULHIGH_TAB  \\\n ");
  for (k = 0 ; k < MPFR_MULHIGH_TAB_SIZE ; k++)
    {
      fprintf (f, "%d", (int) tune_mulder_upto (k));
      if (k != MPFR_MULHIGH_TAB_SIZE-1)
        fputc (',', f);
      if ((k+1) % 16 == 0)
        fprintf (f, " \\\n ");
      if (verbose)
        putchar ('.');
    }
  fprintf (f, " \n");
  if (verbose)
    putchar ('\n');
}



/*******************************************************
 *            Tune all the threshold of MPFR           *
 * Warning: tune the function in their dependent order!*
 *******************************************************/
static void
all (const char *filename)
{
  FILE *f;
  time_t  start_time, end_time;
  struct tm  *tp;

  f = fopen (filename, "w");
  if (f == NULL) {
    fprintf (stderr, "Can't open file '%s' for writing.\n", filename);
    abort ();
  }

  speed_time_init ();
  if (verbose) {
    printf ("Using: %s\n", speed_time_string);
    printf ("speed_precision %d", speed_precision);
    if (speed_unittime == 1.0)
      printf (", speed_unittime 1 cycle");
    else
      printf (", speed_unittime %.2e secs", speed_unittime);
    if (speed_cycletime == 1.0 || speed_cycletime == 0.0)
      printf (", CPU freq unknown\n");
    else
      printf (", CPU freq %.2f MHz\n\n", 1e-6/speed_cycletime);
  }

  time (&start_time);
  tp = localtime (&start_time);
  fprintf (f, "/* Generated by MPFR's tuneup.c, %d-%02d-%02d, ",
          tp->tm_year+1900, tp->tm_mon+1, tp->tm_mday);

#ifdef __ICC
  fprintf (f, "icc %d.%d.%d */\n", __ICC / 100, __ICC / 10 % 10, __ICC % 10);
#elif defined(__GNUC__)
  fprintf (f, "gcc %d.%d */\n", __GNUC__, __GNUC_MINOR__);
#elif defined (__SUNPRO_C)
  fprintf (f, "Sun C %d.%d */\n", __SUNPRO_C / 0x100, __SUNPRO_C % 0x100);
#elif defined (__sgi) && defined (_COMPILER_VERSION)
  fprintf (f, "MIPSpro C %d.%d.%d */\n",
           _COMPILER_VERSION / 100,
           _COMPILER_VERSION / 10 % 10,
           _COMPILER_VERSION % 10);
#elif defined (__DECC) && defined (__DECC_VER)
  fprintf (f, "DEC C %d */\n", __DECC_VER);
#else
  fprintf (f, "system compiler */\n");
#endif
  fprintf (f, "\n");

  /* Tune mulhigh */
  tune_mulder (f);

  /* Tune mpfr_mul (Threshold is limb size, but it doesn't matter too much */
  if (verbose)
    printf ("Tuning mpfr_mul...\n");
  tune_simple_func (&mpfr_mul_threshold, speed_mpfr_mul,
                    2*BITS_PER_MP_LIMB+1);
  fprintf (f, "#define MPFR_MUL_THRESHOLD %lu\n",
           (unsigned long) (mpfr_mul_threshold-1)/BITS_PER_MP_LIMB+1);

  /* Tune mpfr_exp_2 */
  if (verbose)
    printf ("Tuning mpfr_exp_2...\n");
  tune_simple_func (&mpfr_exp_2_threshold, speed_mpfr_exp_2,
                    MPFR_PREC_MIN);
  mpfr_exp_2_threshold = MAX (BITS_PER_MP_LIMB, mpfr_exp_2_threshold);
  fprintf (f, "#define MPFR_EXP_2_THRESHOLD %lu\n",
           (unsigned long) mpfr_exp_2_threshold);

  /* Tune mpfr_exp */
  if (verbose)
    printf ("Tuning mpfr_exp...\n");
  tune_simple_func (&mpfr_exp_threshold, speed_mpfr_exp,
                    MPFR_PREC_MIN+3*BITS_PER_MP_LIMB);
  fprintf (f, "#define MPFR_EXP_THRESHOLD %lu\n",
           (unsigned long) mpfr_exp_threshold);

  /* End of tuning */
  time (&end_time);
  fprintf (f, "/* Tuneup completed successfully, took %ld seconds */\n",
           end_time - start_time);
  if (verbose)
    printf ("Complete (took %ld seconds).\n", end_time - start_time);

  fclose (f);
}


/* Main function */
int main (int argc, char *argv[])
{
  /* Unbuffered so if output is redirected to a file it isn't lost if the
     program is killed part way through.  */
  setbuf (stdout, NULL);
  setbuf (stderr, NULL);

  verbose = argc > 1;

  if (verbose)
    printf ("Tuning MPFR (Coffee time?)...\n");

  all ("mparam.h");

  return 0;
}
