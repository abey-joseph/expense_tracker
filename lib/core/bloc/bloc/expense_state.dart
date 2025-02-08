part of 'expense_bloc.dart';

@freezed
class ExpenseState with _$ExpenseState {
  const factory ExpenseState.expenseInitial() = expenseInitial;
  const factory ExpenseState.expenseLoading() = expenseLoading;
  const factory ExpenseState.expenseLoaded(
      {required List<ExpenseModel> expense}) = expenseLoaded;
  const factory ExpenseState.expenseError() = expenseError;
  const factory ExpenseState.expenseAdded({required String comment}) =
      expenseAdded;
}
