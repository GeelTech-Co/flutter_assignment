class LoginEvent{}
class LoginV extends LoginEvent{
  final String email;
  final String password;
  LoginV(this.email, this.password);
}