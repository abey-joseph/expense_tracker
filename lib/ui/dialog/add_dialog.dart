import 'package:expense_tracker/core/bloc/bloc/expense_bloc.dart';
import 'package:expense_tracker/core/firebase/firebase_actions.dart';
import 'package:expense_tracker/core/models/expense_model.dart';
import 'package:expense_tracker/data/colors/Colors.dart';
import 'package:expense_tracker/ui/widgets/button.dart';
import 'package:expense_tracker/ui/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddDialog extends StatefulWidget {
  const AddDialog({super.key});

  @override
  State<AddDialog> createState() => _AddDialogState();
}

class _AddDialogState extends State<AddDialog> {
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
            color: UiColors.bgDark,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: UiColors.whiteBg, width: 0.5)),
        padding: EdgeInsets.all(8),
        height: 450,
        child: Column(
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
              textInputType: TextInputType.numberWithOptions(decimal: true),
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

            button(
                buttonText: "ADD",
                onPressed: () {
                  context.read<ExpenseBloc>().add(expenseAddData(
                      expense: ExpenseModel(
                          userID: FirebaseActions.auth.currentUser!.uid,
                          isExpense: selected.first,
                          title: nameController.text,
                          amount: double.parse(amountController.text),
                          category: categoryController.text,
                          date: pickedDate ?? DateTime.now())));
                })
          ],
        ),
      ),
    );
  }
}
