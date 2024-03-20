import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseService {

  // Google signin
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpMethod(String email, String password) async
  {
    try {
      UserCredential credential =
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password
      );
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(msg: "The email is already exists !");
      }
      else {
        Fluttertoast.showToast(msg: "Some error occured : ${e.code}");
      }
    }
    return null;
  }

  static Future<void> handleSignIn() async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final GoogleSignIn _googleSignIn = GoogleSignIn();
    try {
      GoogleSignInAccount ? googleUser = await _googleSignIn.signIn();
      if (googleUser != null) {
        GoogleSignInAuthentication googleAuth = await googleUser.authentication;
        AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        await _auth.signInWithCredential(credential);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(msg: "The email is already exists !");
      }
      else {
        Fluttertoast.showToast(msg: "Some error occured : ${e.code}");
      }
    }
  }

  // Google-signout function
  static Future <void> handlesignOut() async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final GoogleSignIn _googleSignIn = GoogleSignIn();
    try {
      await _googleSignIn.signOut();
      await _auth.signOut();
    }
    catch (e) {
      print("Error Signing out $e");
    }
  }


}