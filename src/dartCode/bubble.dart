void main(){
  List<int> arr = [5, 3, 4, 1, 2];
  bubble(arr);
  print(arr);
}

void bubble(List<int> arr){
  late bool swapped;

  for(int i = 0; i < arr.length; i++){
    swapped = false;
    for(int j = 1; j < arr.length -i; j++){
      if(arr[j] < arr[j-1]){
        int temp = arr[j];
        arr[j] = arr[j-1];
        arr[j-1] = temp;
        swapped = true;
      }
    }
    if(!swapped){
      break;
    }
  }
}