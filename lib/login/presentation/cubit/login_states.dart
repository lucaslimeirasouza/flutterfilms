abstract class LoginState {}

class InitialLoginState extends LoginState {}

class LoadingLoginState extends LoginState {}

class LoadedLoginState extends LoginState {
  final String pass;

  LoadedLoginState(this.pass);
}

class ErrorLoginState extends LoginState {
  final String message;

  ErrorLoginState(this.message);
}
