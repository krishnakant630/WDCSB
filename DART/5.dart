//
import 'dart:io';

int minPartitions(String n) {
  int maxDigit = 0;

  for (int i = 0; i < n.length; i++) {
    int digit = n.codeUnitAt(i) - 48; // faster than int.parse
    if (digit > maxDigit) {
      maxDigit = digit;
    }
  }

  return maxDigit;
}

void main() {
  String n = stdin.readLineSync()!;
  print(minPartitions(n));
}
