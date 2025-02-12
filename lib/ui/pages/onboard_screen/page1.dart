import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height - 30,
              child: Image.asset(
                "assets/images/on_board_screen/photo1.webp",
                fit: BoxFit.fitHeight,
              ))
        ],
      ),
    );
  }
}
