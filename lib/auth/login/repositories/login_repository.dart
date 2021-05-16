import 'package:firebase_auth/firebase_auth.dart';

class LoginRepo {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  LoginRepo({this.firebaseAuth});

  //Login with email and password
  Future<User> login(String email, String password) async {
    try {
      var auth = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return auth.user;

    } catch (e) {
      print(e.toString());
    }
  }

  Future<bool> isSignedIn() async {
    var currentUser = await firebaseAuth.currentUser;
    return currentUser !=null;
  }

  Future<User> getCurrentUser() async {
    return await firebaseAuth.currentUser;
  }

}
