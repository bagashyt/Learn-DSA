import 'dart:math'as math;

void main() {
  final List<int> nums = [12,345,2,6,7896];
  print(findNumber(nums));
}

int findNumber(List<int> nums){
   int count = 0;
  for(int num in nums){
    if (even(num)){
      count++;
    }
  }
  return count;
}

bool even(int num){
  int numberOfDigits = digits(num);
  return numberOfDigits % 2 == 0;
}

int digits(int num){
  if(num < 0){
    num = num * -1;
    
  }
  if(num == 0){
    return 1;
  }
  int count = 0;
  while (num > 0){
    count++;
    num = num ~/ 10;
  }
  return count.toInt();
}

int digits2(int num) {
  if (num < 0) {
    num = num * -1;
  }
  var calc = (math.log(num) / math.ln10) +1;
  return calc.toInt();
}
