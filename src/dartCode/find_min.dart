
  void main(){
    final List<int> arr = [18, 12, 7, 3, 14, 28];
    print(min(arr));
  }

  int min(List<int> arr){
    int ans = arr[0];
    for (int i = 1; i < arr.length; i++){
      if(arr[i] < ans){
        ans = arr[i];
      }
    }
    return ans;
  }
