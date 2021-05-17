import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_app/auth/login/ui/login.dart';
import 'package:user_app/auth/signup/bloc/signup_bloc.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  SignupBloc signupBloc;

  @override
  Widget build(BuildContext context) {
    signupBloc = BlocProvider.of<SignupBloc>(context);

    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          BlocListener<SignupBloc, SignupState>(
            listener: (context, state) {
              if (state is SignupSucced) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              }
            },
            child: BlocBuilder<SignupBloc, SignupState>(
              builder: (context, state) {
                if (state is SignupLoading) {
                  return Center(child: CircularProgressIndicator());
                } else if (state is SignupFailed) {
                  return buildError(state.message);
                } else if (state is SignupSucced) {
                  return Container();
                }
                return Container();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildError(String message) {
    return Text(
      message,
      style: TextStyle(color: Colors.red),
    );
  }
}
