
  void main(){
   final List<int> nums = [23, 45, 1, 2, 8, 19, -3, 16, -11, 28];
   final int target = 19;
   int ans = linearSearch(nums, target);
   print(ans);
  }

  int linearSearch(List<int> arr, int target){
    if(arr.isEmpty){
      return -1;
    }
    for(int index = 0; index < arr.length; index++ ){
      int element = arr[index];
      if(element == target){
        return index;
      }
    }
    return -1;
  }
