import 'dart:developer';

import 'package:expense_tracker/core/firebase/firebase_actions.dart';
import 'package:expense_tracker/core/get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@singleton
class UserDataHive {
  late Box box;

  bool _isInitDone = false;

  Future<bool> hiveInit() async {
    try {
      if (_isInitDone) {
        log("Hive Already init done");
      } else {
        await Hive.initFlutter();
        _isInitDone = true;
        log("Hive init done");
      }

      return true;
    } catch (e) {
      log("Error while trying to init hive, reason - ${e.toString()}");
      return false;
    }
  }

  //check if it is first time
  Future<bool> isFirstTimeForThisUser() async {
    String uid = getIt<FirebaseActions>().currentUser!.uid;

    try {
      if (await Hive.boxExists(uid)) {
        if (Hive.isBoxOpen(uid)) {
          box = Hive.box(uid);
        } else {
          box = await Hive.openBox(uid);
        }

        log("existing hive box opened for user $uid");
        return false;
      } else {
        box = await Hive.openBox(uid);
        log("New hive box opened for user $uid");
        return true;
      }
    } catch (e) {
      log("error in opening box with UID, reason - ${e.toString()}");
      return false;
    }
  }

  //save budget settings
  saveBudgetData(bool isNeedBudget, int budget) async {
    await box.put("isNeedBudget", isNeedBudget);
    await box.put("budget", budget);
    log("saved budget details in hive");
  }

  //get budget data
  bool isNeedBudget() {
    try {
      if (box.get("isNeedBudget")) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      log("Error while trying to get isNeedBudget data from hive, reason - ${e.toString()}");
      return false;
    }
  }

  //get budget data
  int getBudget() {
    try {
      return box.get("budget");
    } catch (e) {
      log("Error while trying to get budget data from hive, reason - ${e.toString()}");
      return 0;
    }
  }
}
