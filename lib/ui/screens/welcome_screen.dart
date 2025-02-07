import 'dart:developer';

import 'package:expense_tracker/ui/screens/loign_screen.dart';
import 'package:expense_tracker/ui/screens/signin_screen.dart';
import 'package:expense_tracker/ui/widgets/button.dart';
import 'package:expense_tracker/ui/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PageController pageController = PageController();
  bool isAtLoginPage = true;

  @override
  Widget build(BuildContext context) {
    pageController.addListener(() {
      if (pageController.page! < 0.5) {
        if (!isAtLoginPage) {
          setState(() {
            isAtLoginPage = true;
          });
        }
      } else {
        if (isAtLoginPage) {
          setState(() {
            isAtLoginPage = false;
          });
        }
      }
    });

    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 30,
        ),
        Center(
            child: SizedBox(
                width: 350,
                child: Lottie.asset("assets/lottie/expense_animation.json"))),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: SizedBox(
            height: 30,
            child: Row(
              spacing: 10,
              children: [
                AnimatedDefaultTextStyle(
                  duration: Duration(milliseconds: 100),
                  style: (isAtLoginPage)
                      ? textStyle(20, Colors.deepPurpleAccent)
                      : textStyle(12, Colors.grey),
                  child: Text(
                    "Log In",
                  ),
                ),
                AnimatedDefaultTextStyle(
                  duration: Duration(milliseconds: 100),
                  style: (!isAtLoginPage)
                      ? textStyle(20, Colors.deepPurpleAccent)
                      : textStyle(12, Colors.grey),
                  child: Text(
                    "Sign In",
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            SizedBox(
              width: 30,
            ),
            SmoothPageIndicator(
              controller: pageController,
              count: 2,
              effect: ExpandingDotsEffect(
                  dotHeight: 5, dotWidth: 21, expansionFactor: 4),
            ),
            Flexible(child: SizedBox())
          ],
        ),
        SizedBox(
          height: 400,
          child: PageView(
            controller: pageController,
            children: [
              LoignScreen(),
              SigninScreen(),
            ],
          ),
        )
      ],
    ));
  }

  TextStyle textStyle(double size, Color color) {
    return TextStyle(fontSize: size, color: color);
  }
}
