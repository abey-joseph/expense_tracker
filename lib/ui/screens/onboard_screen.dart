import 'package:expense_tracker/ui/pages/onboard_screen/page1.dart';
import 'package:expense_tracker/ui/pages/onboard_screen/page2.dart';
import 'package:expense_tracker/ui/pages/onboard_screen/page3.dart';
import 'package:expense_tracker/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            physics: ClampingScrollPhysics(),
            children: [
              Page1(),
              Page2(),
              Page3(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black])),
            ),
          ),
          Align(
            alignment: Alignment(-0.4, 0.6),
            child: Text(
              "Welcome to Track",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 25, bottom: 50),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (context) {
                    return SplashScreen();
                  }));
                },
                label: Text(
                  "CONTINUE",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                icon: Icon(Icons.skip_next),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 35, bottom: 65),
              child: SmoothPageIndicator(controller: pageController, count: 3),
            ),
          )
        ],
      ),
    );
  }
}
