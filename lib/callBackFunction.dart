void main(){
  // int a1 = sum(10, 10);
  // int a2 = sub(11, 12);
  // print("A1 = $a1 A2 = $a2");
  //
  // int c1 = calculate(10, 10, (x, y) => 2*4);
  // print(c1);
  //
  // int c2 = calculate(10, 10, sub);
  // print(c2);
  double total = 0;
  double average = 0;
  String result = getGrade(30.5, 27.8, 88, getTotal: (_total) => total = _total, getAverage: (_average) => average = _average);
  print("total = $total, average = $average result = $result");
}

int sum(int a, int b) => a + b;
int sub(int a, int b) => a - b;

int calculate(int a, int b, int Function(int, int) fun){
  return fun(a, b);
}

String getGrade(
    double eng,
    double com,
    double khmer, {
  required Function(double) getTotal,
  required void Function(double) getAverage
}){
  double total = eng + com + khmer;
  double average = total / 3;
  getTotal(total);
  getAverage(average);
  if(average >= 50){
    return "Passed";
  }else{
    return "Failed";
  }
}