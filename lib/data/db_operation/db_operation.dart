//get Data
//get all data and convert it to ExpenseModel list and send it back

//addData
// get All data in a ExpenseModel class and convert it to List of map and send to Db

import 'dart:developer';

import 'package:expense_tracker/core/db/db.dart';
import 'package:expense_tracker/core/get_it/get_it.dart';
import 'package:expense_tracker/core/models/expense_model.dart';

class DbOperation {
  static Future<List<ExpenseModel>> getAllExpenseData() async {
    try {
      List<Map<String, dynamic>> data = await Db().getAllDataFromDb();
      List<ExpenseModel> list =
          data.map((e) => ExpenseModel.fromJson(e)).toList();
      return list;
    } catch (e) {
      log("Error while trying to convert the data get from Db to list of Expense Model, reason - ${e.toString()}");
      return [];
    }
  }

  static Future<bool> addExpenseData({required ExpenseModel data}) async {
    try {
      Map<String, dynamic> expense = data.toJson();
      getIt<Db>().addDataToDb(expense);
      return true;
    } catch (e) {
      log("Error while trying to convert the Expense model data to map and send to Db class, reason - ${e.toString()}");
      return false;
    }
  }
}
