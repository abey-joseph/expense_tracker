import 'package:expense_tracker/ui/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              titleAlignment: ListTileTitleAlignment.titleHeight,
              title: Text("Dark Theme"),
              trailing: Switch(
                  value: (Provider.of<ThemeProvider>(context).themeMode ==
                      ThemeMode.dark),
                  onChanged: (value) {
                    Provider.of<ThemeProvider>(context, listen: false)
                        .toggleTheme(value);
                  }),
            ),
            Divider(indent: 20, endIndent: 20)
          ],
        ),
      ),
    );
  }
}
