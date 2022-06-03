void main() {
  List<int> arr = [18, 12, -7, 3, 14, 28];
  int target = 12;
  print(linearSearch(arr, target, 0, 5));
}

int linearSearch(List<int> arr, int target, int start, int end) {
  if (arr.length == 0) {
    return -1;
  }

  for (int index = start; index <= end; index++) {
    int element = arr[index];
    if (element == target) {
      return index;
    }
  }
  return -1;
}
