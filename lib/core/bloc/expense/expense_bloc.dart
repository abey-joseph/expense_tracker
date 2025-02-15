import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:expense_tracker/core/models/expense_model.dart';
import 'package:expense_tracker/data/db_operation/db_operation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_event.dart';
part 'expense_state.dart';
part 'expense_bloc.freezed.dart';

class ExpenseBloc extends Bloc<ExpenseEvent, ExpenseState> {
  ExpenseBloc() : super(expenseInitial()) {
    on<expenseFetchData>((event, emit) async {
      emit(expenseLoading());

      try {
        //get data
        List<ExpenseModel> list = await DbOperation.getAllExpenseData();

        //emit with new Data
        emit(expenseLoaded(expense: list.toList()));
      } catch (e) {
        log("Error while trying to get data and emit new state to show the updated list, reason ${e.toString()}");
        emit(ExpenseState.expenseError(error: e.toString()));
      }
    });

    on<expenseAddData>(
      (event, emit) async {
        try {
          bool output = await DbOperation.addExpenseData(data: event.expense);

          if (output) {
            emit(expenseAdded(comment: "Expense Added Succesfully"));

            // after adding data fetch the data again and diplay
            try {
              //get data
              List<ExpenseModel> list = await DbOperation.getAllExpenseData();

              //emit with new Data
              emit(expenseLoaded(expense: list.toList()));
            } catch (e) {
              log("Error while trying to get data and emit new state to show the updated list, reason ${e.toString()}");
              emit(ExpenseState.expenseError(error: e.toString()));
            }
          } else {
            emit(expenseAdded(comment: "Failed to add Expense"));
          }
        } catch (e) {
          log("Error while trying to add Expense data in bloc operation reason - ${e.toString()}");
          emit(expenseAdded(comment: "Failed to add Expense"));
        }
      },
    );
    //
    on<expenseEditTrigger>(
      (event, emit) async {
        //emit editDataLoading state
        emit(expenseEditLoading());
        //get data from databse based on event.uid
        ExpenseModel expense = await DbOperation.getExpenseData(event.id);

        //emit expenseDataForEdit with the expense Data
        emit(expenseDataForEdit(expense: expense));
      },
    );

    on<expenseEditData>((event, emit) async {
      bool output = await DbOperation.editExpenseData(event.expense);

      if (output) {
        emit(expenseEdited(comment: "Edit Done"));
        add(expenseFetchData());
      } else {
        emit(expenseEdited(comment: "Edit Failed"));
      }
    });
  }
}
