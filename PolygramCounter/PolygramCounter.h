#ifndef POLYGRAM_COUNTER_H
#define POLYGRAM_COUNTER_H

/**
 * @file PolygramCounter.h
 * @brief Header file for the PolygramCounter class
 */
#include "Polygram.h"
#include <map>
#include <set>
using namespace std;

/// A device to count polygrams
/**
 * This is a class to count polygrams by scanning through words and
 * counting the number of polygrams of a given length we encounter.
 */
class PolygramCounter {
private:
  int n;   // the n in n-gram
  map<Polygram,long> counter;  // hold the polygram counts
  long total;  // total number of polygrams counted

public:
  /// Set up a new PolygramCounter
  /**
   * This initializes a new n-gram counter. This counts only n-grams
   * for a fixed value of n, given as the input argument.
   * @param N the size of the polygram to count
   */
  PolygramCounter(int N=2) { 
    if (N<1) N=1; 
    n = N; 
    counter.clear();
    total = 0; 
  }

  /// Get total number of polygrams counted thus far
  /**
   * @return The number of polygrams this counter has recorded
   */ 
  long total_count() const { return total; }

  /// Get the number of times a given polygram has been seen
  /**
   * @param P a Polygram
   * @return The number of times P has been counted
   */
  long count(const Polygram& P) const;

  /// Get the frequency of a Polygram
  /**
   * @param P a Polygram
   * @return the frequency that P has been seen
   */
  double frequency(const Polygram& P) const {
    return double(count(P))/double(total);
  }

  /// Process a word
  /**
   * Find the n-grams in a string and count them
   * @param word the string to count
   */
  void process(const string& word);

  /// Print report on top polygrams found
  /**
   * @param ntop number of polygrams to report
   * @return print out the top polygrams found
   */
  void report(int ntop=10) const;
};

#endif
