import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:user_app/auth/login/repositories/login_repository.dart';
import 'package:user_app/auth/signup/repositories/signup_repository.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  LoginRepo loginRepo;

  SignupBloc({this.loginRepo}) : super(SignupInitial());

  @override
  Stream<SignupState> mapEventToState(
    SignupEvent event,
  ) async* {
    if (event is SignupButtonWasPressed) {
      yield SignupLoading();
      try {
        var user = await loginRepo.signUp(event.email, event.password);
        yield SignupSucced(user: user);
      } catch (e) {
        yield SignupFailed(message: e.toString());
      }
    }
  }
}
