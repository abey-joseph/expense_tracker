import 'dart:developer';
import 'dart:io';

import 'package:path/path.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

@lazySingleton
class Db {
  static late final Directory directory;
  static late Database db;

  Future<bool> initDatabase() async {
    directory = await getApplicationDocumentsDirectory();
    final path = join(directory.path, 'expenses.db');

    try {
      db = await openDatabase(
        path,
        version: 1,
        onCreate: (db, version) async {
          await db.execute('''
            CREATE TABLE expenses(
              id INTEGER PRIMARY KEY AUTOINCREMENT,
              userID TEXT,
              isExpense INTEGER,
              title TEXT,
              amount REAL,
              category TEXT,
              date TEXT
              )
            ''');
        },
      );
      return true;
    } catch (e) {
      log("Error opening database reason - ${e.toString()}");
      return false;
    }
  }

  Future<List<Map<String, dynamic>>> getAllDataFromDb() async {
    try {
      List<Map<String, dynamic>> list = await db.query('expenses');
      return list;
    } catch (e) {
      log("Error while trying to get all dta from table, reason - ${e.toString()}");
      return [];
    }
  }

  Future<bool> addDataToDb(Map<String, dynamic> expense) async {
    try {
      await db.insert("expenses", expense,
          conflictAlgorithm: ConflictAlgorithm.replace);
      return true;
    } catch (e) {
      log("Error while trying to add Data to table, reason - ${e.toString()}");
      return false;
    }
  }
}
