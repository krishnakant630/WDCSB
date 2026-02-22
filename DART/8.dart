bool isPalindrome(String s) {
  int i = 0, j = s.length - 1;
  while (i < j) {
    if (s[i] != s[j]) return false;
    i++;
    j--;
  }
  return true;
}

List<int> fibonacci(int n) {
  if (n <= 0) return [];
  if (n == 1) return [0];
  List<int> fib = [0, 1];
  for (int i = 2; i < n; i++) {
    fib.add(fib[i - 1] + fib[i - 2]);
  }
  return fib;
}

List<int> minMax(List<int> arr) {
  int min = arr[0], max = arr[0];
  for (int i = 1; i < arr.length; i++) {
    if (arr[i] < min) min = arr[i];
    if (arr[i] > max) max = arr[i];
  }
  return [min, max];
}

void main() {
  print(isPalindrome("madam"));
  print(fibonacci(7));
  print(minMax([5, 2, 9, 1, 6]));

  for (int i = 1; i <= 10; i++) {
    print("10 x $i = ${10 * i}");
  }
}
