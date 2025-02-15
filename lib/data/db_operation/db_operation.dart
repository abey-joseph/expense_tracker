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
      return await getIt<Db>().addDataToDb(expense);
    } catch (e) {
      log("Error while trying to convert the Expense model data to map and send to Db class, reason - ${e.toString()}");
      return false;
    }
  }

  static Future<ExpenseModel> getExpenseData(int id) async {
    try {
      List<Map<String, dynamic>> data = await Db().getDataFromDb(id);
      List<ExpenseModel> list =
          data.map((e) => ExpenseModel.fromJson(e)).toList();
      if (list.length == 1) {
        return list[0];
      } else {
        log("while trying to get dat for edit from Db, we got either 0 or more than one data with the same ID-$id, so send a dummy data data instead");
        return ExpenseModel(
            userID: "",
            isExpense: true,
            title: "",
            amount: 0,
            category: "",
            date: DateTime.now());
      }
    } catch (e) {
      log("Error while trying to convert the data get from Db to list of Expense Model instead send a dummy data , reason - ${e.toString()}");
      return ExpenseModel(
          userID: "",
          isExpense: true,
          title: "",
          amount: 10,
          category: "",
          date: DateTime.now());
    }
  }

  static Future<bool> editExpenseData(ExpenseModel data) async {
    try {
      Map<String, dynamic> expense = data.toJson();
      return await getIt<Db>().editDataAt(data.id!, expense);
    } catch (e) {
      log("Error while trying to convert the Expense model data to map and send to Db class for edit, reason - ${e.toString()}");
      return false;
    }
  }

  static Future<bool> deleteExpenseData(int id) async {
    try {
      return await getIt<Db>().deleteDataAtId(id);
    } catch (e) {
      log("Error while trying to delete data, reason - ${e.toString()}");
      return false;
    }
  }
}
