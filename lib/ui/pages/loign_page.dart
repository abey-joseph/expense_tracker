import 'package:expense_tracker/core/firebase/firebase_actions.dart';
import 'package:expense_tracker/core/get_it/get_it.dart';
import 'package:expense_tracker/ui/screens/home_screen.dart';
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
        button(
            buttonText: "Log In",
            onPressed: () async {
              //
              //if login is success then ouput is 'true' otherwise the respective error message
              String output = await getIt<FirebaseActions>()
                  .logInUserWithEmailAndPassword(
                      email: emailController.text,
                      password: passwordController.text);

              if (!context.mounted) return;

              if (output == 'true') {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("Login Success")));

                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
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
