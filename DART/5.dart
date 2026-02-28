import 'dart:io';

int concatenatedBinary(int n) {
  const int MOD = 1000000007;
  int result = 0;
  int bitLength = 0;

  for (int i = 1; i <= n; i++) {
    // check power of 2
    if ((i & (i - 1)) == 0) {
      bitLength++;
    }

    result = ((result << bitLength) | i) % MOD;
  }

  return result;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(concatenatedBinary(n));
}
