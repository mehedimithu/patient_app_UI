import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_app/auth/login/bloc/login_bloc.dart';
import 'package:user_app/auth/login/repositories/login_repository.dart';
import 'package:user_app/auth/login/ui/splash_screen.dart';
import 'package:user_app/auth/signup/bloc/signup_bloc.dart';
import 'package:user_app/auth/signup/signup.dart';
import 'auth/bloc/auth_bloc.dart';
import 'auth/login/ui/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.blue));
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(loginRepo: LoginRepo()),
        ),
        BlocProvider(
          create: (context) => SignupBloc(loginRepo: LoginRepo()),
        ),
        BlocProvider(
          create: (context) => LoginBloc(loginRepo: LoginRepo()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CCR APP',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: WelcomePage(),
      ),
    );
  }
}

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
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
                  image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 300, left: 120, right: 120),
                child: Column(
                  children: [
                    Container(
                      child: Center(
                          child: Text(
                        "User APP",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      )),
                    ),
                    SizedBox(height: 60),
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Text("Login Page"),
                      color: Colors.redAccent,
                    ),
                    FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupPage()));
                        },
                        child: Text("Create an account"))
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
