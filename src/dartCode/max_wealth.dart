void main() {
  var accounts = [
    [1, 2, 3],
    [3, 2, 1]
  ];
  print(maximumWealth(accounts));
}

int maximumWealth(List<List<int>> accounts) {
  int ans = 0;
  for (List<int> ints in accounts) {
    int sum = 0;
    for (int anInt in ints) {
      sum += anInt;
    }
    if (sum > ans) {
      ans = sum;
    }
  }
  return ans;
}
