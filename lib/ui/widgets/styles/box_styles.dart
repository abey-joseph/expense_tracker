import 'package:expense_tracker/data/colors/Colors.dart';
import 'package:flutter/material.dart';

BoxDecoration homeScreenNavigationBoxStyle() {
  return BoxDecoration(
    color: Colors.transparent,
    border: Border.all(color: UiColors.whiteBg),
    borderRadius: BorderRadius.all(Radius.circular(30)),
  );
}
