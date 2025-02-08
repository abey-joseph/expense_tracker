import 'package:expense_tracker/ui/widgets/button.dart';
import 'package:expense_tracker/ui/widgets/text_field.dart';
import 'package:flutter/material.dart';

class LoignScreen extends StatelessWidget {
  const LoignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Column(
      spacing: 25,
      children: [
        textField(
            isPassWord: false,
            controller: emailController,
            hintText: "Enter Email"),
        textField(
            isPassWord: true,
            controller: passwordController,
            hintText: "Enter Password"),
        button(buttonText: "Log In", onPressed: () {})
      ],
    );
  }
}
