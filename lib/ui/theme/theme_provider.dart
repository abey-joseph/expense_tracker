import 'dart:developer';

import 'package:expense_tracker/core/get_it/get_it.dart';
import 'package:expense_tracker/data/colors/colors.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  void toggleTheme(bool isDark) {
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    try {
      getIt<UiColors>().changeColor(isDark);
    } catch (e) {
      log(e.toString());
    }
    notifyListeners();
  }
}
