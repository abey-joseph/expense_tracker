import 'package:expense_tracker/core/get_it/get_it.dart';
import 'package:expense_tracker/data/colors/colors.dart';
import 'package:flutter/material.dart';

Widget button({
  required String buttonText,
  required VoidCallback onPressed,
}) {
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(getIt<UiColors>().blueShade),
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
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: getIt<UiColors>().whiteBg),
    ),
  );
}
