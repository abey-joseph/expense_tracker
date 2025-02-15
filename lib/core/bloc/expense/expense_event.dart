part of 'expense_bloc.dart';

@freezed
class ExpenseEvent with _$ExpenseEvent {
  const factory ExpenseEvent.expenseFetchData() = expenseFetchData;
  const factory ExpenseEvent.expenseAddData({required ExpenseModel expense}) =
      expenseAddData;
  const factory ExpenseEvent.expenseEditTrigger({required int id}) =
      expenseEditTrigger;
  const factory ExpenseEvent.expenseEdit({required ExpenseModel expense}) =
      expenseEditData;
  const factory ExpenseEvent.expenseDeleteTrigger({required int id}) =
      expenseDeleteTrigger;
}
