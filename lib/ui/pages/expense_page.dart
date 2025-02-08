import 'dart:developer';

import 'package:expense_tracker/core/bloc/bloc/expense_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

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
      listener: (context, state) {},
      builder: (context, state) {
        if (state is expenseLoading) {
          return Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else if (state is expenseError) {
          return Center(
            child: Text(state.error),
          );
        } else if (state is expenseLoaded) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  DataTable(
                      columns: [
                        DataColumn(label: Text("Title")),
                        DataColumn(label: Text("Amount"), numeric: true),
                        DataColumn(label: Text("Category")),
                        DataColumn(label: Text("Date")),
                      ],
                      rows: List.generate(state.expense.length, (index) {
                        return DataRow(cells: [
                          DataCell(Text(state.expense[index].title)),
                          DataCell(
                              Text(state.expense[index].amount.toString())),
                          DataCell(Text(state.expense[index].category)),
                          DataCell(Text(DateFormat('dd MM yyyy')
                              .format(state.expense[index].date))),
                        ]);
                      })),
                  SizedBox(height: 130),
                ],
              ),
            ),
          );
        } else {
          return Center(
            child: Text("Loading.."),
          );
        }
      },
    );
  }
}
