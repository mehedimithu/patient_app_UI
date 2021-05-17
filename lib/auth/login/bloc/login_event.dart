part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginButtonWasPressed extends LoginEvent {
  String email, password;
  LoginButtonWasPressed({@required this.email, @required this.password});
}
