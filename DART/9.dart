bool hasAllCodes(String s, int k) {
  int n = s.length;

  if (n < (1 << k) + k - 1) {
    return false;
  }

  Set<String> seen = {};

  for (int i = 0; i <= n - k; i++) {
    String sub = "";
    for (int j = i; j < i + k; j++) {
      sub += s[j];
    }
    seen.add(sub);

    if (seen.length == (1 << k)) {
      return true;
    }
  }

  return false;
}

void main() {
  String s = "00110110";
  int k = 2;

  print(hasAllCodes(s, k));
}
