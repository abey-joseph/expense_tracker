import 'package:expense_tracker/ui/pages/onboard_screen/page1.dart';
import 'package:expense_tracker/ui/pages/onboard_screen/page2.dart';
import 'package:expense_tracker/ui/pages/onboard_screen/page3.dart';
import 'package:expense_tracker/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height - 30,
              child: PageView(
                children: [
                  Page1(),
                  Page2(),
                  Page3(),
                ],
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.transparent,
                    Colors.black,
                    Colors.black,
                  ])),
            ),
          )
        ],
      ),
    );
  }
}
