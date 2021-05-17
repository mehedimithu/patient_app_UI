import 'package:firebase_auth/firebase_auth.dart';

class LoginRepo {

  FirebaseAuth firebaseAuth;
  LoginRepo() {
    this.firebaseAuth = FirebaseAuth.instance;
  }

  //Signup with email and password
  Future<User> signUp(String email, String password) async {
    try {
      var result = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return result.user;
    }  catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }

  //Login with email and password
  Future<User> login(String email, String password) async {
    try {
      var result = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return result.user;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<bool> isSignedIn() async {
    var currentuser = await firebaseAuth.currentUser;
    return currentuser != null;
  }

  Future<User> getCurrentUser() async {
    return await firebaseAuth.currentUser;
  }
}
