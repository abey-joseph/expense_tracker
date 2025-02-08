import 'package:expense_tracker/data/colors/Colors.dart';
import 'package:expense_tracker/ui/pages/loign_page.dart';
import 'package:expense_tracker/ui/pages/signin_page.dart';
import 'package:expense_tracker/ui/widgets/page_indicator_for_welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
          height: 50,
        ),
        Center(
            child: SizedBox(
                width: 350,
                child: Lottie.asset("assets/lottie/expense_animation.json"))),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: SizedBox(
              height: 30,
              child: TextPageIndicator(
                pageController: pageController,
                isAtFirstPage: isAtLoginPage,
                isTextAnimate: true,
                defaultTextSize: 12,
              )),
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: PageIndicator(pageController: pageController, barHeight: 10),
        ),
        SizedBox(height: 30),
        SizedBox(
          height: 300,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 300,
              child: PageView(
                controller: pageController,
                children: [
                  LoignScreen(),
                  SigninScreen(),
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Or login with  "),
            Text(
              "Google",
              style: TextStyle(color: UiColors.blueShade),
            )
          ],
        ),
      ],
    ));
  }

  TextStyle textStyle(double size, Color color) {
    return TextStyle(fontSize: size, color: color);
  }
}
