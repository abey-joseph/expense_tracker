import 'package:expense_tracker/core/bloc/expense/expense_bloc.dart';
import 'package:expense_tracker/core/firebase/firebase_actions.dart';
import 'package:expense_tracker/core/get_it/get_it.dart';
import 'package:expense_tracker/core/models/expense_model.dart';
import 'package:expense_tracker/data/colors/colors.dart';
import 'package:expense_tracker/ui/widgets/button.dart';
import 'package:expense_tracker/ui/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditDialog extends StatefulWidget {
  const EditDialog({super.key, required this.uid});

  final String uid;

  @override
  State<EditDialog> createState() => _EditDialogState();
}

class _EditDialogState extends State<EditDialog> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController amountController = TextEditingController();

  final TextEditingController categoryController = TextEditingController();

  final TextEditingController dateController = TextEditingController();

  Set<bool> selected = {true};

  DateTime? pickedDate;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        decoration: BoxDecoration(
            color: getIt<UiColors>().bgDark,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: getIt<UiColors>().whiteBg, width: 0.5)),
        padding: EdgeInsets.all(8),
        height: 450,
        child: BlocConsumer<ExpenseBloc, ExpenseState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is expenseDataForEdit) {
              //get the data from bloc and move to controllers
              changeDataFromBlocToControllers(state);
              //
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 13,
                children: [
                  // Expense or Credit
                  SegmentedButton(
                    emptySelectionAllowed: false,
                    showSelectedIcon: false,
                    segments: [
                      ButtonSegment<bool>(value: true, label: Text("Expense")),
                      ButtonSegment<bool>(value: false, label: Text("Credit")),
                    ],
                    selected: selected,
                    onSelectionChanged: (Set<bool> selection) {
                      setState(() {
                        selected = selection.toSet();
                      });
                    },
                  ),

                  // expense name
                  textField(
                    isPassWord: false,
                    controller: nameController,
                    hintText: "Expense Title",
                  ),

                  // amount
                  textField(
                    isPassWord: false,
                    controller: amountController,
                    textInputType:
                        TextInputType.numberWithOptions(decimal: true),
                    hintText: "Amount",
                  ),

                  // category
                  textField(
                    isPassWord: false,
                    controller: categoryController,
                    hintText: "Category",
                  ),

                  // Date
                  textField(
                    isPassWord: false,
                    controller: dateController,
                    textInputType: TextInputType.none,
                    hintText: "Date",
                    onTap: () async {
                      pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                      );

                      if (pickedDate != null) {
                        setState(() {
                          dateController.text =
                              "${pickedDate!.day}/${pickedDate!.month}/${pickedDate!.year}";
                        });
                      }
                    },
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      button(
                          buttonText: "DELETE",
                          onPressed: () {
                            //code to delete
                            Navigator.pop(context);
                          }),
                      SizedBox(width: 15),
                      button(
                          buttonText: "EDIT",
                          onPressed: () {
                            context.read<ExpenseBloc>().add(expenseEditData(
                                expense: ExpenseModel(
                                    id: state.expense.id!,
                                    userID:
                                        FirebaseActions.auth.currentUser!.uid,
                                    isExpense: selected.first,
                                    title: nameController.text,
                                    amount: double.parse(amountController.text),
                                    category: categoryController.text,
                                    date: pickedDate ?? DateTime.now())));
                            Navigator.pop(context);
                          })
                    ],
                  ),
                ],
              );
            } else {
              return Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
          },
        ),
      ),
    );
  }

  void changeDataFromBlocToControllers(expenseDataForEdit state) {
    ExpenseModel expense = state.expense;
    nameController.text = expense.title;
    amountController.text = expense.amount.toString();
    categoryController.text = expense.category;
    dateController.text =
        "${expense.date.day}/${expense.date.month}/${expense.date.year}";
    selected = {expense.isExpense};
  }
}
