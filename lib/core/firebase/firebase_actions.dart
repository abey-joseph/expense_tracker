import 'dart:developer';

import 'package:expense_tracker/core/firebase/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';

@singleton
class FirebaseActions {
  static late FirebaseAuth auth;

  User? get currentUser => auth.currentUser;

  Future<bool> firebaseInit() async {
    try {
      await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform);
      auth = FirebaseAuth.instance;
      log("Firebase init done");
      return true;
    } catch (e) {
      log("firebase init failed, reason - ${e.toString()}");
      return false;
    }
  }

  Future<bool> addUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } on FirebaseAuthException catch (e) {
      log("add user failed, reason - ${handleAuthException(e)}");
      return false;
    } catch (e) {
      log("add user failed, not a Firebase Auth Exception - reason - ${e.toString()}");
      return false;
    }
  }

  Future<bool> logInUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } on FirebaseAuthException catch (e) {
      log("login user failed, reason - ${handleAuthException(e)}");
      return false;
    } catch (e) {
      log("login user failed, not a Firebase Auth Exception - reason - ${e.toString()}");
      return false;
    }
  }

  Future<bool> signOut() async {
    try {
      await auth.signOut();
      return true;
    } on FirebaseAuthException catch (e) {
      log("sign out failed, reason - ${handleAuthException(e)}");
      return false;
    } catch (e) {
      log("sign Out failed, not a Firebase Auth Exception - reason - ${e.toString()}");
      return false;
    }
  }
}

String handleAuthException(FirebaseAuthException e) {
  switch (e.code) {
    case 'weak-password':
      return "The password is too weak. Please use at least 6 characters.";
    case 'email-already-in-use':
      return "This email is already in use. Please use a different email.";
    case 'invalid-email':
      return "The email address is not valid.";
    case 'operation-not-allowed':
      return "Email/password accounts are not enabled.";
    default:
      return "An unknown error occurred: ${e.message}";
  }
}
