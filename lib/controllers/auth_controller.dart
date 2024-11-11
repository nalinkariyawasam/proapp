import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:proapp/screens/auth/sign_up.dart';
import 'package:proapp/screens/home/home_screen.dart';
import 'package:proapp/utils/util_functions.dart';

class AuthController {
  //-- initialize the user and listen to the auth state
  static Future<void> initializeUser(BuildContext context) async {
    // check user's current authState
    // register this listner
    FirebaseAuth.instance.authStateChanges().listen(
      (User? user) {
        if (user == null) {
          // if the user object is null -- that mean user is sign out or not exists
          // so send to the sign up
          Logger().i("User is currently signed out!");
          UtilFunctions.navigateTo(context, const SignUp());
        } else {
          // if user is not null, that means the auth state is logged in
          // so redeirect the user to home
          Logger().i("User is signed in!");
          UtilFunctions.navigateTo(context, const HomeScreen());
        }
      },
    );
  }

  // sign up user 
  // sign up button eke on tap ekata call karanna. click karaddi result eka gann one nisa.
  
  static Future<void> signUpUser(String email, String password) async {
    try {
      // start creatin the user in the firebase consol
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      Logger().i(credential);
    } on FirebaseAuthException catch (e) {
      Logger().e(e.code);
    } catch (e) {
      Logger().e(e);
    }
  }

  // sign out
  static Future<void> signOut()async {
    await FirebaseAuth.instance.signOut();
  }
}
