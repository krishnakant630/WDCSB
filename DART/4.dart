//

import 'dart:io';

List<int> kSmallest(List<int> arr, int k) {
  arr.sort();
  return arr.sublist(0, k);
}

int findMax(List<int> arr) {
  int maxVal = arr[0];

  for (int i = 1; i < arr.length; i++) {
    if (arr[i] > maxVal) {
      maxVal = arr[i];
    }
  }

  return maxVal;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);

  List<int> arr = stdin
      .readLineSync()!
      .split(' ')
      .map((e) => int.parse(e))
      .toList();

  int k = int.parse(stdin.readLineSync()!);

  List<int> smallest = kSmallest(List.from(arr), k);
  int maxVal = findMax(arr);

  print("K smallest elements:");
  print(smallest.join(" "));

  print("Maximum element:");
  print(maxVal);
}
