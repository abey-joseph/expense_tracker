import 'package:expense_tracker/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height - 30,
              child: GestureDetector(
                onLongPress: () => Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return SplashScreen();
                })),
                child: Image.asset(
                  "assets/images/on_board_screen/photo3.jpg",
                  fit: BoxFit.fitHeight,
                ),
              ))
        ],
      ),
    );
  }
}
