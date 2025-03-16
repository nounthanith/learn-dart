class PasswordClass{
  String _hashpass = "";

  set password(String value){
    _hashpass = "***" + value + "***";
  }

  get hashPassword => _hashpass;
}