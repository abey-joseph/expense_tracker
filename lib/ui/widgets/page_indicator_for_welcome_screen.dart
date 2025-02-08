import 'package:expense_tracker/data/colors/Colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
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
          effect: ExpandingDotsEffect(
              dotHeight: barHeight,
              dotWidth: 21,
              expansionFactor: 4,
              dotColor: UiColors.whiteBg,
              activeDotColor: UiColors.blueShade),
        ),
        Flexible(child: SizedBox())
      ],
    );
  }
}

class TextPageIndicator extends StatelessWidget {
  const TextPageIndicator({
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
      spacing: 10,
      children: [
        AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 100),
          style: (isAtFirstPage)
              ? textStyle(
                  isTextAnimate ? 21 : defaultTextSize, UiColors.blueShade)
              : textStyle(defaultTextSize, UiColors.whiteBg),
          child: GestureDetector(
            onTap: () {
              if (pageController.page != 0) {
                pageController.animateToPage(0,
                    duration: Durations.medium1, curve: Curves.ease);
              }
            },
            child: Text(
              "Log In",
            ),
          ),
        ),
        AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 100),
          style: (!isAtFirstPage)
              ? textStyle(
                  isTextAnimate ? 21 : defaultTextSize, UiColors.blueShade)
              : textStyle(defaultTextSize, UiColors.whiteBg),
          child: GestureDetector(
            onTap: () {
              if (pageController.page != 1) {
                pageController.animateToPage(1,
                    duration: Durations.medium1, curve: Curves.ease);
              }
            },
            child: Text(
              "Sign In",
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
