import 'package:my_app/password_calss.dart';

void main(){
  final pc = PasswordClass();
  pc.password = "Pich";
  // String pass = pc.password;
  String hash = pc.hashPassword;
  print(hash);
}

