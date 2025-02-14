import 'dart:developer';

import 'package:expense_tracker/core/get_it/get_it.dart';
import 'package:expense_tracker/core/shared_prefs/prefs.dart';
import 'package:expense_tracker/data/colors/colors.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  //to set the initial theme in UI colors also
  //it get data from share prefs and work according to that
  void init() {
    bool isSavedThemeDataIsDark = getIt<Prefs>().isSavedThemeDataIsDark();
    try {
      getIt<UiColors>().changeColor(isSavedThemeDataIsDark);
      _themeMode = isSavedThemeDataIsDark ? ThemeMode.dark : ThemeMode.light;
    } catch (e) {
      log(e.toString());
    }
  }

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
