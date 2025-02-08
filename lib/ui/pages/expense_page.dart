import 'package:expense_tracker/core/bloc/bloc/expense_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExpensePage extends StatelessWidget {
  const ExpensePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExpenseBloc, ExpenseState>(
      buildWhen: (previous, current) {
        if (current is expenseLoading ||
            current is expenseLoaded ||
            current is expenseError) {
          return true;
        }
        return false;
      },
      listener: (context, state) {
        if (state is expenseAdded) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.comment)));
        }
      },
      builder: (context, state) {
        return Center(child: Text("Expense"));
      },
    );
  }
}
