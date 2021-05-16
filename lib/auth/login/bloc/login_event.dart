part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class SigninButtonWasPressed extends LoginEvent {
  String email, password;
  SigninButtonWasPressed({@required this.email, @required this.password});
}
