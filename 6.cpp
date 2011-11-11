#include <iostream>

int squareOfSums () {
  return (50*101) * (50*101);
}
int sumOfSquares () {
  int val = 0;
  for (int x = 1; x <= 100; x++) {
    val+=x*x;
  }
  return val;
}

int main () {
  int squareOfS = squareOfSums();
  int sumOfS = sumOfSquares();
  std :: cout << squareOfS - sumOfS << "\n";
}
