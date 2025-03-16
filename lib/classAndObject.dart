void main(){

  Student s1 = new Student(id: 1, name: "Pich", score: 97.0);
  print(s1.name);

  final s2 = Student(id: 2, name: "Tong", score: 99.99);
  print(s2.name);
  print(s2.score);

}

class Student{
  late int id;
  late String name;
  late double score;

  // Student(int id, String name, double score){
  //   this.id = id;
  //   this.name = name;
  //   this.score = score;
  // }

  Student({this.id = 0, this.name = "Name", this.score = 0.0});

  Student.fromMap(Map map){
    this.id = map['id'];
    this.name = map['name'];
    this.score = map['score'];
  }

  bool isPass(){
    if(score >= 50) return true;
    return false;
  }

}