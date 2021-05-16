import 'dart:ui';

import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("/assets/images/back.png"),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 10),
              // Text(
              //   'Login',
              //   style: TextStyle(
              //       color: Colors.blueGrey,
              //       fontSize: 20,
              //       fontWeight: FontWeight.bold),
              //   textAlign: TextAlign.center,
              // ),
              // Padding(
              //   padding: EdgeInsets.only(top: 20),
              // ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                  ),
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Enter your email',
                          icon: Icon(Icons.person)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                  ),
                  Flexible(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Enter your password',
                          icon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                  )
                ],
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
                  width: screenSize.width * 0.5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: FlatButton(
                        padding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        color: Colors.black,
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        )),
                  )),
              Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Don\'t have an account? ',
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                  Text('Sign up',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold))
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Container(
                  width: screenSize.width * 0.8,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Divider(
                          color: Colors.black,
                          height: 1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text('OR',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.black,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}