import 'package:expense_tracker/core/bloc/user_data/user_data_bloc.dart';
import 'package:expense_tracker/core/get_it/get_it.dart';
import 'package:expense_tracker/core/hive/user_data_hive/user_data_hive.dart';
import 'package:expense_tracker/ui/screens/home_screen.dart';
import 'package:expense_tracker/ui/screens/user_data_edit_screen.dart';
import 'package:expense_tracker/ui/widgets/button.dart';
import 'package:expense_tracker/ui/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/firebase/firebase_actions.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController nameController = TextEditingController();

    return Column(
      spacing: 20,
      children: [
        textField(
            isPassWord: false,
            controller: nameController,
            hintText: "Enter Name"),
        textField(
            isPassWord: false,
            controller: emailController,
            hintText: "Enter Email"),
        textField(
            isPassWord: true,
            controller: passwordController,
            hintText: "Enter Password"),
        button(
            buttonText: "Sign In",
            onPressed: () async {
              //
              //if login is success then ouput is 'true' otherwise the respective error message
              String output = await getIt<FirebaseActions>()
                  .addUserWithEmailAndPassword(
                      email: emailController.text,
                      password: passwordController.text);

              if (!context.mounted) return;

              if (output == 'true') {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("Sign In Success")));

                await getIt<UserDataHive>().hiveInit();

                bool isFirstTimeForThisUser =
                    await getIt<UserDataHive>().isFirstTimeForThisUser();

                if (!context.mounted) return;

                if (isFirstTimeForThisUser) {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => UserDataEditScreen()));
                } else {
                  context.read<UserDataBloc>().add(userDataStarted());
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                }
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                    output,
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.grey,
                ));
              }
            })
      ],
    );
  }
}
