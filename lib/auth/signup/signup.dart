import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_app/auth/login/ui/login.dart';
import 'package:user_app/auth/signup/bloc/signup_bloc.dart';

import 'components/custom_text_field.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  SignupBloc signupBloc;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    signupBloc = BlocProvider.of<SignupBloc>(context);

    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Color(0xff00a3ff) ,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    emailController.text = '';
                    passwordController.text = '';

                    return Container();
                  }
                  return Container();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Fill up the required fields",
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
            ),
            SizedBox(height: 10),
            CustomTextField(
              hintText: 'Full Name',
              textInputType: TextInputType.name,
              obscureText: false,
              controller: nameController,
            ),
            SizedBox(height: 10),
            CustomTextField(
              hintText: 'Email',
              textInputType: TextInputType.emailAddress,
              obscureText: false,
              controller: emailController,
            ),
            SizedBox(height: 10),
            CustomTextField(
              hintText: 'Password',
              textInputType: TextInputType.visiblePassword,
              obscureText: true,
              controller: passwordController,
            ),
            SizedBox(height: 10),
            Center(
              child: RaisedButton(
                onPressed: () {
                  signupBloc.add(SignupButtonWasPressed(
                      email: emailController.text,
                      password: passwordController.text));
                },
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
              ),
            ),
          ],
        ),
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
