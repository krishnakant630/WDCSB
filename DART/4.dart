// void main() {
//   // OBJECTIVE: Exception Handling
//   // 1. ON Clause
//   // 2. Catch Clause with Exception Object
//   // 3. Catch Clause with Exception Object and StackTrace Object
//   // 4. Finally Clause
//   // 5. Create our own Custom Exception

//   print("CASE 1");
//   // CASE 1: When you know the exception to be thrown, use ON Clause
//   try {
//     int result = 12 ~/ 0;
//     print("The result is $result");
//   } on IntegerDivisionByZeroException {
//     print("Cannot divide by Zero");
//   }

//   print("");
//   print("CASE 2");
//   // CASE 2: When you do not know the exception use CATCH Clause
//   try {
//     int result = 12 ~/ 0;
//     print("The result is $result");
//   } catch (e) {
//     print("The exception thrown is $e");
//   }

//   print("");
//   print("CASE 3");
//   // CASE 3: Using STACK TRACE to know the events occurred before Exception was thrown
//   try {
//     int result = 12 ~/ 0;
//     print("The result is $result");
//   } catch (e, s) {
//     print("The exception thrown is $e");
//     print("STACK TRACE \n $s");
//   }

//   print("");
//   print("CASE 4");
//   // CASE 4: Whether there is an Exception or not, FINALLY Clause is always Executed
//   try {
//     int result = 12 ~/ 3;
//     print("The result is $result");
//   } catch (e) {
//     print("The exception thrown is $e");
//   } finally {
//     print("This is FINALLY Clause and is always executed.");
//   }

//   print("");
//   print("CASE 5");
//   // CASE 5: Custom Exception
//   try {
//     depositMoney(-200);
//   } catch (e) {
//     print((e as DepositException).errorMessage());
//   } finally {
//     // Code
//   }
// }

// class DepositException implements Exception {
//   String errorMessage() {
//     return "You cannot enter amount less than 0";
//   }
// }

// @override
// void depositMoney(int amount) {
//   if (amount < 0) {
//     throw new DepositException();
//   }
// }
import 'dart:io';

List<int> bubbleSort(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
  return arr;
}

int linearSearch(List<int> arr, int target) {
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == target) return i;
  }
  return -1;
}

int binarySearch(List<int> arr, int target) {
  int left = 0;
  int right = arr.length - 1;

  while (left <= right) {
    int mid = (left + right) ~/ 2;

    if (arr[mid] == target) return mid;

    if (arr[mid] < target)
      left = mid + 1;
    else
      right = mid - 1;
  }

  return -1;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> arr = stdin
      .readLineSync()!
      .split(' ')
      .map((e) => int.parse(e))
      .toList();
  int target = int.parse(stdin.readLineSync()!);

  List<int> sorted = bubbleSort(List.from(arr));

  print("Sorted Array: ${sorted.join(" ")}");
  print("Linear Search Index: ${linearSearch(arr, target)}");
  print("Binary Search Index: ${binarySearch(sorted, target)}");
}
