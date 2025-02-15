part of 'expense_bloc.dart';

@freezed
class ExpenseState with _$ExpenseState {
  const factory ExpenseState.expenseInitial() = expenseInitial;
  const factory ExpenseState.expenseLoading() = expenseLoading;
  const factory ExpenseState.expenseLoaded(
      {required List<ExpenseModel> expense}) = expenseLoaded;
  const factory ExpenseState.expenseError({required String error}) =
      expenseError;
  const factory ExpenseState.expenseAdded({required String comment}) =
      expenseAdded;
  const factory ExpenseState.expenseEditLoading() = expenseEditLoading;
  const factory ExpenseState.expenseDataForEdit(
      {required ExpenseModel expense}) = expenseDataForEdit;
  const factory ExpenseState.expenseEdited({required String comment}) =
      expenseEdited;
}
