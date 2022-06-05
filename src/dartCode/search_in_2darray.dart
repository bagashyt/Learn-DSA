void main() {
  List<List<int>> arr = [
    [23, 4, 1],
    [18, 12, 3, 9],
    [78, 99, 34, 56],
    [18, 12]
  ];
  int target = 56;
  List<int> ans = search(arr, target);
  print(ans);
  print(max(arr));

}

List<int> search(List<List<int>> arr, int target) {
  for (int row = 0; row < arr.length; row++) {
    for (int col = 0; col < arr[row].length; col++) {
      if (arr[row][col] == target) {
        return [row, col];
      }
    }
  }
  return [-1, -1];
}

int max(List<List<int>> arr) {
  int max = 0;
  for (List<int> ints in arr) {
    for (int element in ints) {
      if (element > max) {
        max = element;
      }
    }
  }
  return max;
}
