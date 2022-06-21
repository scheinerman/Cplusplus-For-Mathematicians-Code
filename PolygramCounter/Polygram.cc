#include "Polygram.h"

/**
 * @file Polygram.cc
 * @brief Program file for the Polygram class
 */

Polygram::Polygram(string word) {
  poly = "";
  for (unsigned k=0; k<word.size(); k++) {
    char ch = word[k];
    if (isalpha(ch)) poly += tolower(ch);
  }
}
