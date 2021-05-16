part of 'signup_bloc.dart';

abstract class SignupState extends Equatable {
  const SignupState();

  @override
  List<Object> get props => [];
}

class SignupInitial extends SignupState {}

class SignupLoading extends SignupState {}

class SignupSucced extends SignupState {
  User user;
  SignupSucced({@required this.user});
}

class SignupFailed extends SignupState {
  String message;
  SignupFailed({@required this.message});
}
