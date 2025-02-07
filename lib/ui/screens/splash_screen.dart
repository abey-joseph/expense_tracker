import 'package:expense_tracker/ui/screens/home_screen.dart';
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

    //delay in checking the authentication
    Future.delayed(Duration(milliseconds: 2000)).then((value) {
      if (!mounted) return;
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HomeScreen()));
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
