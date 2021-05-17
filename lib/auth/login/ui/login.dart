import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_app/auth/home/ui/dashboard.dart';
import 'package:user_app/auth/login/bloc/login_bloc.dart';
import 'package:user_app/auth/signup/signup.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginBloc loginBloc;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    loginBloc = BlocProvider.of<LoginBloc>(context);
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
          backgroundColor: Color(0xff00a3ff) ,
      ),
      body: Stack(
        children: [
          BlocListener<LoginBloc, LoginState>(
            listener: (context, state) {
              if (state is LoginSucced) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Dashboard()));
              }
            },
            child: BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                if (state is LoginLoading) {
                  return Center(child: CircularProgressIndicator());
                } else if (state is LoginFaild) {
                  return buildError(state.message);
                } else if (state is LoginSucced) {
                  emailController.text = '';
                  passwordController.text = '';
                  return Container();
                }
                return Container();
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white24,
              image: DecorationImage(
                alignment: Alignment.bottomCenter,
                image: AssetImage('assets/icons/vector_7.png'),
                fit: BoxFit.scaleDown,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('CCR User App',
                      style: TextStyle(color: Colors.black, fontSize: 25)),
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                        ),
                        Flexible(
                          child: TextField(
                            controller: emailController,
                            textAlign: TextAlign.start,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              filled: true,
                              hintStyle: TextStyle(color: Colors.black),
                              hintText: 'Enter email',
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                        ),
                        Flexible(
                          child: TextField(
                            obscureText: true,
                            controller: passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'Enter password',
                              hintStyle: TextStyle(color: Colors.black),
                              suffixIcon:
                                  Icon(Icons.visibility, color: Colors.black),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    width: screenSize.width,
                    child: Text(
                      'Forgot your password?',
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  Container(
                    width: screenSize.width * 0.4,
                    height: screenSize.width * 0.10,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0),
                      child: FlatButton(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          color: Colors.red,
                          onPressed: () {
                            loginBloc.add(LoginButtonWasPressed(
                                email: emailController.text,
                                password: passwordController.text));
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Dashboard()));
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Don\'t have an account? ',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            FlatButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => SignupPage()));
                              },
                              color: Colors.blue,
                              child: Text('Sign up',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
