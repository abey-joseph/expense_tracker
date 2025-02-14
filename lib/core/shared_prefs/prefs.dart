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
  // retrive theme data
  // first time opening or not to show the onboarding screen
  // check if first time sign in or not
  // retrive data if not first time
  // save data if first time
}
