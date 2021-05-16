import 'package:firebase_auth/firebase_auth.dart';

class SignupRepo {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  SignupRepo({this.firebaseAuth});

  //Signup with email and password
  Future<User> signUp(String email, String password) async {
    try {
      var auth = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return auth.user;

    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> signOut() async {
   await firebaseAuth.signOut();
  }
}
