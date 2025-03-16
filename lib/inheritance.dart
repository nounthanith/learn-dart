void main(){
  // final m1 = MileToKm();
  // m1.input = 80;
  // print(m1.getResult());
  
  final m2 = MileToMeter();
  m2.x = 10;
  print("${m2.getMeter()} meters");
}

class MileToKm{
  double input = 0;
  double getResult(){
    return input * 1.60934;
  }
}

class MileToMeter extends MileToKm{
  double x= 0;
  double getMeter(){
    super.input = x;
    return super.getResult() * 1000;
  }
}