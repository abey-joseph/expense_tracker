import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_model.freezed.dart';
part 'expense_model.g.dart';

@freezed
class ExpenseModel with _$ExpenseModel {
  const factory ExpenseModel({
    @JsonKey(includeIfNull: false) int? id, // Exclude if null
    required String userID,
    @JsonKey(fromJson: _boolFromInt, toJson: _boolToInt)
    required bool isExpense,
    required String title,
    required double amount,
    required String category,
    @JsonKey(fromJson: _dateFromString, toJson: _dateToString)
    required DateTime date,
  }) = _ExpenseModel;

  factory ExpenseModel.fromJson(Map<String, dynamic> json) =>
      _$ExpenseModelFromJson(json);
}

// Helper functions for conversion
bool _boolFromInt(int value) => value == 1;
int _boolToInt(bool value) => value ? 1 : 0;

// Convert SQLite's String date to DateTime
DateTime _dateFromString(String date) => DateTime.parse(date);
String _dateToString(DateTime date) => date.toIso8601String();
