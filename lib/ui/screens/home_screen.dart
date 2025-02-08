import 'package:expense_tracker/core/firebase/firebase_actions.dart';
import 'package:expense_tracker/core/get_it/get_it.dart';
import 'package:expense_tracker/ui/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                bool output = await getIt<FirebaseActions>().signOut();

                if (!context.mounted) return;
                if (output) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Log Out Done")));
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => WelcomeScreen()));
                } else {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Log Out Failed")));
                }
              },
              icon: Icon(Icons.logout)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
      body: Center(
        child: Text("Home Screen"),
      ),
    );
  }
}
