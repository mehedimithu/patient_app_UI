import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:user_app/auth/login/repositories/login_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  LoginRepo loginRepo;

  AuthBloc({this.loginRepo}) : super(AuthInitial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is AppLoaded) {
      try {
        var isSignedIn = await loginRepo.isSignedIn();
        if (isSignedIn) {
          var user = await loginRepo.getCurrentUser();
          yield AuthenticateState(user: user);
        } else {
          yield UnAuthenticateState();
        }
      } catch (e) {
        yield UnAuthenticateState();
      }
    }
  }
}
