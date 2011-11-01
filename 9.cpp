#include <iostream>

using namespace std;

int pythagoreanTriplet (int toFind) {
  int a = 0,b = 0,c = 0;
  while (true) {
    b = 0;
    while (b < c) {
      a = 0;
      while (a < b) {
        if ( a*a + b*b == c*c && a+b+c == toFind) {
          return a*b*c;
        }
        a++;
      }
      b++;
    }
    c++;
  }
}

int main () {
  cout << pythagoreanTriplet (1000) << "\n";
  return 0;
}
