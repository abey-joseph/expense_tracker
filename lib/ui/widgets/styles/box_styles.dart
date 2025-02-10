import 'package:expense_tracker/core/get_it/get_it.dart';
import 'package:expense_tracker/data/colors/colors.dart';
import 'package:flutter/material.dart';

BoxDecoration homeScreenNavigationBoxStyle() {
  return BoxDecoration(
    color: getIt<UiColors>().bgDark,
    border: Border.all(color: getIt<UiColors>().whiteBg),
    borderRadius: BorderRadius.all(Radius.circular(30)),
  );
}
