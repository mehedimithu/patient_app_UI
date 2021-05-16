part of 'signup_bloc.dart';

abstract class SignupEvent extends Equatable {
  const SignupEvent();

  @override
  List<Object> get props => [];
}

class SignupButtonWasPressed extends SignupEvent {
  String email, password;
  SignupButtonWasPressed({this.email, this.password});
}
