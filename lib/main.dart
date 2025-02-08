import 'package:expense_tracker/core/bloc/bloc/expense_bloc.dart';
import 'package:expense_tracker/core/firebase/firebase_actions.dart';
import 'package:expense_tracker/core/get_it/get_it.dart';
import 'package:expense_tracker/core/db/db.dart';
import 'package:expense_tracker/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  await getIt<FirebaseActions>().firebaseInit();
  await getIt<Db>().initDatabase();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExpenseBloc(),
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
            textTheme: GoogleFonts.poppinsTextTheme().apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        )),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
