import 'package:expense_tracker/data/colors/Colors.dart';
import 'package:flutter/material.dart';

Widget button({
  required String buttonText,
  required VoidCallback onPressed,
}) {
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(UiColors.blueShade),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    onPressed: onPressed,
    child: Text(
      buttonText,
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 18, color: UiColors.whiteBg),
    ),
  );
}
