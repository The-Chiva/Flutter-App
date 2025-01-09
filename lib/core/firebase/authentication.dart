import 'dart:developer';
import 'package:firebase/utils/exceptions/firebase_auth_exception.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthentication {
  final authentication = FirebaseAuth.instance;
  // sign-up with email & password
  Future<bool> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential =
          await authentication.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential.user != null) {
        return true;
      }
    } on FirebaseAuthException catch (e) {
      log(AppFirebaseAuthException(code: e.code).message);
    }
    return false;
  }

  // sign-in with email & password
  Future<bool> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userCredentail = await authentication.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredentail.user != null) {
        return true;
      }
    } on FirebaseAuthException catch (e) {
      log(AppFirebaseAuthException(code: e.code).message);
    }
    return false;
  }
}
