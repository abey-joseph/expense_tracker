import 'package:expense_tracker/core/bloc/bloc/expense_bloc.dart';
import 'package:expense_tracker/core/firebase/firebase_actions.dart';
import 'package:expense_tracker/core/get_it/get_it.dart';
import 'package:expense_tracker/core/db/db.dart';
import 'package:expense_tracker/core/shared_prefs/prefs.dart';
import 'package:expense_tracker/ui/screens/onboard_screen.dart';
import 'package:expense_tracker/ui/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  //need to do something if the ouput of any initilization is false
  bool initOutput = true;

  initOutput = await getIt<FirebaseActions>().firebaseInit();
  initOutput = await getIt<Db>().initDatabase();
  initOutput = await getIt<Prefs>().intilialize();

  // when shared preference is added and theme is saved make sure the UiColors class also make changes based on the saved theme
  //  -by default it is for Dark Theme

  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: (initOutput) ? MyApp() : ErrorApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ExpenseBloc()..add(expenseFetchData()),
        ),
      ],
      child: MaterialApp(
        themeMode: themeProvider.themeMode,
        theme: ThemeData.light().copyWith(
            textTheme: GoogleFonts.poppinsTextTheme().apply(
          bodyColor: Colors.black,
          displayColor: Colors.black,
        )),
        darkTheme: ThemeData.dark().copyWith(
            textTheme: GoogleFonts.poppinsTextTheme().apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        )),
        debugShowCheckedModeBanner: false,
        home: OnboardScreen(),
      ),
    );
  }
}

class ErrorApp extends StatelessWidget {
  const ErrorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
              "Somehting wrong with the initialization part of the app - Pls contact the admin"),
        ),
      ),
    );
  }
}
