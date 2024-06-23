part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}

class UserNameChanged extends LoginEvent {
  final String userName;

  UserNameChanged(this.userName);
}

class PasswordChanged extends LoginEvent {
  final String password;

  PasswordChanged(this.password);
}

class LoginSubmitted extends LoginEvent {}
