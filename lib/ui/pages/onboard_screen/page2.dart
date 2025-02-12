import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height - 30,
              child: Image.asset(
                "assets/images/on_board_screen/photo2.webp",
                fit: BoxFit.fitHeight,
              ))
        ],
      ),
    );
  }
}
