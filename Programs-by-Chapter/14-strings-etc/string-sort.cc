#include <iostream>
using namespace std;

const int NWORDS = 7;

int main() {
  string words[NWORDS];
  words[0] = " zebra";
  words[1] = "ant eater";
  words[2] = "Aaron";
  words[3] = "aardvark";
  words[4] = "Baltimore";
  words[5] = "anteater";
  words[6] = "BREAKFAST";

  sort(words, words+NWORDS);

  for (int k=0; k<NWORDS; k++) {
    cout << words[k] << endl;
  }
  
  return 0;
}
