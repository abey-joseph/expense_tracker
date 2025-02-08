import 'package:expense_tracker/ui/widgets/button.dart';
import 'package:expense_tracker/ui/widgets/text_field.dart';
import 'package:flutter/material.dart';

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
        button(buttonText: "Sign In", onPressed: () {})
      ],
    );
  }
}
