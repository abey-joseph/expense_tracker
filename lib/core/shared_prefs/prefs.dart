import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class Prefs {
  static late SharedPreferences sp;

  Future<bool> intilialize() async {
    try {
      sp = await SharedPreferences.getInstance();
      log("Shared prefernce initialized");
      return true;
    } catch (e) {
      log("Shared prefernce initialize failed, reason - ${e.toString()}");
      return false;
    }
  }

  // save theme data
  Future<bool> saveThemeData(bool isDark) async {
    try {
      await sp.setBool("ThemeData", isDark);
      return true;
    } catch (e) {
      log("error saving theme data in shared prefs, reason - ${e.toString()}");
      return false;
    }
  }

  // retrive theme data
  bool isSavedThemeDataIsDark() {
    try {
      bool? output = sp.getBool("ThemeData");
      if (output == null || output == false) {
        return false;
      } else {
        return true;
      }
    } catch (e) {
      log("error getting theme data in shared prefs and send light theme as default, reason - ${e.toString()}");
      return false;
    }
  }

  // first time opening or not to show the onboarding screen
  // check if first time sign in or not
  // retrive data if not first time
  // save data if first time
}
