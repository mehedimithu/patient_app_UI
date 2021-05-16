import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        child: Center(
            child: Text(
          'Login faild',
          style: TextStyle(fontSize: 30),
        )),
      ),
    );
  }
}
