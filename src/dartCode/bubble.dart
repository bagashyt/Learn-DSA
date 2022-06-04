void main() {
  List<int> arr = [5, 3, -1, 1, 2, 1];
  selection(arr);
  print(arr);
}

void selection(List<int> arr) {
  for (int i = 0; i < arr.length; i++) {
    // find the max item in the remaining array and swap with correct index
    int last = arr.length - i - 1;
    int maxIndex = getMaxIndex(arr, 0, last);
    swap(arr, maxIndex, last);
  }
}

void swap(List<int> arr, int first, int second) {
  int temp = arr[first];
  arr[first] = arr[second];
  arr[second] = temp;
}

int getMaxIndex(List<int> arr, int start, int end) {
  int max = start;
  for (int i = start; i <= end; i++) {
    if (arr[max] < arr[i]) {
      max = i;
    }
  }
  return max;
}

void bubble(List<int> arr) {
  late bool swapped;

  for (int i = 0; i < arr.length; i++) {
    swapped = false;
    for (int j = 1; j < arr.length - i; j++) {
      if (arr[j] < arr[j - 1]) {
        int temp = arr[j];
        arr[j] = arr[j - 1];
        arr[j - 1] = temp;
        swapped = true;
      }
    }
    if (!swapped) {
      break;
    }
  }
}
