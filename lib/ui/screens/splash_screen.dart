import 'package:expense_tracker/core/firebase/firebase_actions.dart';
import 'package:expense_tracker/core/get_it/get_it.dart';
import 'package:expense_tracker/ui/screens/home_screen.dart';
import 'package:expense_tracker/ui/screens/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((duration) {
      // get the current user
      User? user = getIt<FirebaseActions>().currentUser;

      //check if it is empty

      if (user == null) {
        //empty means not login and navigate to welcome Screen

        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => WelcomeScreen()));
      } else {
        //if there is something means already login and can go to the home screen

        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => HomeScreen()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/logo_transparent.png',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
