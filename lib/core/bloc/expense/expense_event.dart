part of 'expense_bloc.dart';

@freezed
class ExpenseEvent with _$ExpenseEvent {
  const factory ExpenseEvent.expenseFetchData() = expenseFetchData;
  const factory ExpenseEvent.expenseAddData({required ExpenseModel expense}) =
      expenseAddData;
}
