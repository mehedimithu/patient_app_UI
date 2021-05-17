import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:user_app/auth/login/repositories/login_repository.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginRepo loginRepo;
  LoginBloc({this.loginRepo}) : super(LoginInitial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is LoginButtonWasPressed) {
      yield LoginLoading();
      try {
        var user = await loginRepo.login(event.email, event.password);
        yield LoginSucced(user: user);
      } catch (e) {
        yield LoginFaild(message: e.toString());
      }
    }
  }
}
