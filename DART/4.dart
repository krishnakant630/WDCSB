// // void main() {
// //   // OBJECTIVE: Exception Handling
// //   // 1. ON Clause
// //   // 2. Catch Clause with Exception Object
// //   // 3. Catch Clause with Exception Object and StackTrace Object
// //   // 4. Finally Clause
// //   // 5. Create our own Custom Exception

// //   print("CASE 1");
// //   // CASE 1: When you know the exception to be thrown, use ON Clause
// //   try {
// //     int result = 12 ~/ 0;
// //     print("The result is $result");
// //   } on IntegerDivisionByZeroException {
// //     print("Cannot divide by Zero");
// //   }

// //   print("");
// //   print("CASE 2");
// //   // CASE 2: When you do not know the exception use CATCH Clause
// //   try {
// //     int result = 12 ~/ 0;
// //     print("The result is $result");
// //   } catch (e) {
// //     print("The exception thrown is $e");
// //   }

// //   print("");
// //   print("CASE 3");
// //   // CASE 3: Using STACK TRACE to know the events occurred before Exception was thrown
// //   try {
// //     int result = 12 ~/ 0;
// //     print("The result is $result");
// //   } catch (e, s) {
// //     print("The exception thrown is $e");
// //     print("STACK TRACE \n $s");
// //   }

// //   print("");
// //   print("CASE 4");
// //   // CASE 4: Whether there is an Exception or not, FINALLY Clause is always Executed
// //   try {
// //     int result = 12 ~/ 3;
// //     print("The result is $result");
// //   } catch (e) {
// //     print("The exception thrown is $e");
// //   } finally {
// //     print("This is FINALLY Clause and is always executed.");
// //   }

// //   print("");
// //   print("CASE 5");
// //   // CASE 5: Custom Exception
// //   try {
// //     depositMoney(-200);
// //   } catch (e) {
// //     print((e as DepositException).errorMessage());
// //   } finally {
// //     // Code
// //   }
// // }

// // class DepositException implements Exception {
// //   String errorMessage() {
// //     return "You cannot enter amount less than 0";
// //   }
// // }

// // @override
// // void depositMoney(int amount) {
// //   if (amount < 0) {
// //     throw new DepositException();
// //   }
// // }
// import 'dart:io';

// List<int> bubbleSort(List<int> arr) {
//   int n = arr.length;
//   for (int i = 0; i < n - 1; i++) {
//     for (int j = 0; j < n - i - 1; j++) {
//       if (arr[j] > arr[j + 1]) {
//         int temp = arr[j];
//         arr[j] = arr[j + 1];
//         arr[j + 1] = temp;
//       }
//     }
//   }
//   return arr;
// }

// int linearSearch(List<int> arr, int target) {
//   for (int i = 0; i < arr.length; i++) {
//     if (arr[i] == target) return i;
//   }
//   return -1;
// }

// int binarySearch(List<int> arr, int target) {
//   int left = 0;
//   int right = arr.length - 1;

//   while (left <= right) {
//     int mid = (left + right) ~/ 2;

//     if (arr[mid] == target) return mid;

//     if (arr[mid] < target)
//       left = mid + 1;
//     else
//       right = mid - 1;
//   }

//   return -1;
// }

// void main() {
//   int n = int.parse(stdin.readLineSync()!);
//   List<int> arr = stdin
//       .readLineSync()!
//       .split(' ')
//       .map((e) => int.parse(e))
//       .toList();
//   int target = int.parse(stdin.readLineSync()!);

//   List<int> sorted = bubbleSort(List.from(arr));

//   print("Sorted Array: ${sorted.join(" ")}");
//   print("Linear Search Index: ${linearSearch(arr, target)}");
//   print("Binary Search Index: ${binarySearch(sorted, target)}");
// }
import 'dart:io';

//////////////////// INSERTION SORT ////////////////////
List<int> insertionSort(List<int> arr) {
  for (int i = 1; i < arr.length; i++) {
    int key = arr[i];
    int j = i - 1;

    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j--;
    }

    arr[j + 1] = key;
  }
  return arr;
}

//////////////////// MERGE SORT ////////////////////
List<int> mergeSort(List<int> arr) {
  if (arr.length <= 1) return arr;

  int mid = arr.length ~/ 2;
  List<int> left = mergeSort(arr.sublist(0, mid));
  List<int> right = mergeSort(arr.sublist(mid));

  return merge(left, right);
}

List<int> merge(List<int> left, List<int> right) {
  List<int> result = [];
  int i = 0, j = 0;

  while (i < left.length && j < right.length) {
    if (left[i] <= right[j]) {
      result.add(left[i]);
      i++;
    } else {
      result.add(right[j]);
      j++;
    }
  }

  while (i < left.length) {
    result.add(left[i]);
    i++;
  }

  while (j < right.length) {
    result.add(right[j]);
    j++;
  }

  return result;
}

//////////////////// QUICK SORT ////////////////////
void quickSort(List<int> arr, int low, int high) {
  if (low < high) {
    int pi = partition(arr, low, high);
    quickSort(arr, low, pi - 1);
    quickSort(arr, pi + 1, high);
  }
}

int partition(List<int> arr, int low, int high) {
  int pivot = arr[high];
  int i = low - 1;

  for (int j = low; j < high; j++) {
    if (arr[j] <= pivot) {
      i++;
      int temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
    }
  }

  int temp = arr[i + 1];
  arr[i + 1] = arr[high];
  arr[high] = temp;

  return i + 1;
}

//////////////////// DRIVER CODE ////////////////////
void main() {
  int n = int.parse(stdin.readLineSync()!);

  List<int> arr = stdin
      .readLineSync()!
      .split(' ')
      .map((e) => int.parse(e))
      .toList();

  List<int> arr1 = List.from(arr);
  List<int> arr2 = List.from(arr);
  List<int> arr3 = List.from(arr);

  print("Insertion Sort:");
  print(insertionSort(arr1).join(" "));

  print("Merge Sort:");
  print(mergeSort(arr2).join(" "));

  print("Quick Sort:");
  quickSort(arr3, 0, arr3.length - 1);
  print(arr3.join(" "));
}
