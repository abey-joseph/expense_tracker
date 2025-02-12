import 'package:expense_tracker/ui/pages/onboard_screen/page1.dart';
import 'package:expense_tracker/ui/pages/onboard_screen/page2.dart';
import 'package:expense_tracker/ui/pages/onboard_screen/page3.dart';
import 'package:expense_tracker/ui/screens/splash_screen.dart';
import 'package:expense_tracker/ui/widgets/text_field.dart';
import 'package:expense_tracker/ui/widgets/titles/home_screen_titles.dart';
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
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Welcome to Track",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
