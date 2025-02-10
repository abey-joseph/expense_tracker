import 'package:expense_tracker/core/bloc/bloc/expense_bloc.dart';
import 'package:expense_tracker/core/firebase/firebase_actions.dart';
import 'package:expense_tracker/core/get_it/get_it.dart';
import 'package:expense_tracker/data/colors/colors.dart';
import 'package:expense_tracker/ui/dialog/add_dialog.dart';
import 'package:expense_tracker/ui/pages/analysis_page.dart';
import 'package:expense_tracker/ui/pages/expense_page.dart';
import 'package:expense_tracker/ui/screens/settings_screen.dart';
import 'package:expense_tracker/ui/screens/welcome_screen.dart';
import 'package:expense_tracker/ui/widgets/page_indicator_for_home_screen.dart';
import 'package:expense_tracker/ui/widgets/styles/box_styles.dart';
import 'package:expense_tracker/ui/widgets/titles/home_screen_titles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController pageController = PageController();
  bool isAtFirstPage = true;

  @override
  Widget build(BuildContext context) {
    pageController.addListener(() {
      if (pageController.page! < 0.5) {
        if (!isAtFirstPage) {
          setState(() {
            isAtFirstPage = true;
          });
        }
      } else {
        if (isAtFirstPage) {
          setState(() {
            isAtFirstPage = false;
          });
        }
      }
    });

    return BlocListener<ExpenseBloc, ExpenseState>(
      listener: (context, state) {
        if (state is expenseAdded) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.comment)));
        }
      },
      child: Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: homeScreenNavigationBoxStyle(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 8,
                    children: [
                      TextPageIndicatorForHomeScreen(
                        alignment: MainAxisAlignment.center,
                        pageController: pageController,
                        isAtFirstPage: isAtFirstPage,
                        isTextAnimate: false,
                        defaultTextSize: 15,
                      ),
                      PageIndicatorForHomeScreen(
                        alignment: MainAxisAlignment.center,
                        pageController: pageController,
                        barHeight: 5,
                      )
                    ],
                  ),
                ),
              ),
              FloatingActionButton(
                backgroundColor: getIt<UiColors>().blueShade,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  showDialog(
                      context: context, builder: (context) => AddDialog());
                },
                child: Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        body: Stack(children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 150,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.only(left: 22.0),
                  child: Column(
                    spacing: 8,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      title(text: "Budget for the Month", size: 20),
                      title(text: "\$500", size: 35),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                ),
                actions: [
                  IconButton(
                      onPressed: () async {
                        bool output = await getIt<FirebaseActions>().signOut();

                        if (!context.mounted) return;
                        if (output) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Log Out Done")));
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => WelcomeScreen()));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Log Out Failed")));
                        }
                      },
                      icon: Icon(Icons.logout)),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SettingsScreen()));
                      },
                      icon: Icon(Icons.settings)),
                ],
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                    //color: Colors.red,
                    height: MediaQuery.of(context).size.height - 200,
                    child: PageView(
                      controller: pageController,
                      children: [
                        AnalysisPage(),
                        ExpensePage(),
                      ],
                    )),
              ),
            ],
          ),
          // Positioned(
          //     bottom: 50,
          //     left: (MediaQuery.of(context).size.width / 6),
          //     child: Center(
          //       child: Container(
          //         height: 50,
          //         width: 200,
          //         color: Colors.blue,
          //       ),
          //     )),
        ]),
      ),
    );
  }
}
