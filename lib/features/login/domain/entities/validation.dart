class UserValidation{
  static userNameValidation(String username){
    if(username.isEmpty){
      return 'please enter username';
    }
  }
  static passwordValidation(String password){
    if(password.isEmpty){
      return 'please enter password';
    }
  }
}