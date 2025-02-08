import 'package:expense_tracker/data/colors/Colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicatorForHomeScreen extends StatelessWidget {
  const PageIndicatorForHomeScreen({
    super.key,
    required this.pageController,
    required this.barHeight,
    this.alignment = MainAxisAlignment.start,
  });

  final PageController pageController;
  final double barHeight;
  final MainAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignment,
      children: [
        SmoothPageIndicator(
          onDotClicked: (index) {
            if (index == 1) {
              pageController.animateToPage(1,
                  duration: Durations.medium1, curve: Curves.ease);
            }
            if (index == 0) {
              pageController.animateToPage(0,
                  duration: Durations.medium1, curve: Curves.ease);
            }
          },
          controller: pageController,
          count: 2,
          effect: SwapEffect(
              spacing: 25,
              dotHeight: barHeight,
              dotWidth: 60,
              //expansionFactor: 4,
              dotColor: Colors.transparent,
              activeDotColor: UiColors.blueShade),
        ),
        Flexible(child: SizedBox())
      ],
    );
  }
}

class TextPageIndicatorForHomeScreen extends StatelessWidget {
  const TextPageIndicatorForHomeScreen({
    super.key,
    required this.pageController,
    required this.isAtFirstPage,
    required this.isTextAnimate,
    required this.defaultTextSize,
    this.alignment = MainAxisAlignment.start,
  });

  final PageController pageController;
  final bool isAtFirstPage;
  final bool isTextAnimate;
  final double defaultTextSize;
  final MainAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignment,
      spacing: 5,
      children: [
        AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 100),
          style: (isAtFirstPage)
              ? textStyle(
                  isTextAnimate ? 20 : defaultTextSize, UiColors.blueShade)
              : textStyle(defaultTextSize, UiColors.whiteBg),
          child: GestureDetector(
            onTap: () {
              if (pageController.page != 0) {
                pageController.animateToPage(0,
                    duration: Durations.medium1, curve: Curves.ease);
              }
            },
            child: Text(
              " Analysis",
            ),
          ),
        ),
        SizedBox(width: 10),
        AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 100),
          style: (!isAtFirstPage)
              ? textStyle(
                  isTextAnimate ? 20 : defaultTextSize, UiColors.blueShade)
              : textStyle(defaultTextSize, UiColors.whiteBg),
          child: GestureDetector(
            onTap: () {
              if (pageController.page != 1) {
                pageController.animateToPage(1,
                    duration: Durations.medium1, curve: Curves.ease);
              }
            },
            child: Text(
              " Expenses",
            ),
          ),
        )
      ],
    );
  }

  TextStyle textStyle(double size, Color color) {
    return TextStyle(fontSize: size, color: color);
  }
}
