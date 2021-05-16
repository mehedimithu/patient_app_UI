part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSucced extends LoginState {
  User user;
  LoginSucced({@required this.user});
}

class LoginFaild extends LoginState {
  String message;
  LoginFaild({@required this.message});
}
