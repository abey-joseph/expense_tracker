import 'dart:developer';

import 'package:expense_tracker/core/bloc/user_data/user_data_bloc.dart';
import 'package:expense_tracker/core/get_it/get_it.dart';
import 'package:expense_tracker/core/hive/user_data_hive/user_data_hive.dart';
import 'package:expense_tracker/ui/screens/home_screen.dart';
import 'package:expense_tracker/ui/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserDataEditScreen extends StatefulWidget {
  const UserDataEditScreen({super.key});

  @override
  State<UserDataEditScreen> createState() => _UserDataEditScreenState();
}

class _UserDataEditScreenState extends State<UserDataEditScreen> {
  final TextEditingController budgetTextController = TextEditingController();

  bool showBudgetTextField = true;

  late UserDataBloc userDataBloc;

  @override
  void initState() {
    super.initState();
    userDataBloc = context.read<UserDataBloc>();
  }

  @override
  Widget build(BuildContext context) {
    budgetTextController.text = "0";
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text(
                "Save",
                style: TextStyle(fontSize: 17),
              )),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Do you want to set a budget for each month"),
            trailing: Switch.adaptive(
                value: showBudgetTextField,
                onChanged: (value) {
                  setState(() {
                    showBudgetTextField = value;
                  });
                }),
          ),
          showBudgetTextField ? Divider() : SizedBox.shrink(),
          showBudgetTextField
              ? ListTile(
                  title: Text("Your Budget"),
                  trailing: SizedBox(
                      width: 120,
                      child: textField(
                        isPassWord: false,
                        controller: budgetTextController,
                        noNeedPadding: true,
                        hintText: "Budget",
                        textInputType: TextInputType.number,
                      )),
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }

  @override
  void dispose() async {
    super.dispose();
    await getIt<UserDataHive>().saveBudgetData(
        showBudgetTextField, int.parse(budgetTextController.text));
    userDataBloc.add(userDataStarted());
  }
}
