import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_app/auth/bloc/auth_bloc.dart';
import 'package:user_app/auth/home/ui/dashboard.dart';
import 'package:user_app/auth/login/ui/splash_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
      if (state is UnAuthenticateState) {
        return SplashScreen();
      } else if (state is AuthenticateState) {
        return LoginPage();
      }
      return Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  alignment: Alignment.topLeft,
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('CCR User App',
                        style: TextStyle(color: Colors.white, fontSize: 25)),
                    Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                          ),
                          Flexible(
                            child: TextField(
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintStyle: TextStyle(color: Colors.white),
                                hintText: 'Enter your email',
                                border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(10.0),
                                  ),
                                  borderSide: new BorderSide(
                                    color: Colors.white,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                          )
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
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintText: 'Enter your password',
                                hintStyle: TextStyle(color: Colors.white),
                                suffixIcon:
                                    Icon(Icons.visibility, color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(10.0),
                                  ),
                                  borderSide: new BorderSide(
                                    color: Colors.white,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      width: screenSize.width,
                      child: Text(
                        'Forgot your password?',
                        style: TextStyle(color: Colors.white),
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Dashboard()));
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              FlatButton(
                                onPressed: () {},
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
    });
  }
}
