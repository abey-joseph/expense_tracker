import 'package:flutter/material.dart';

Widget button({
  required String buttonText,
  required VoidCallback onPressed,
}) {
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(208, 217, 223, 1)),
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
          color: Color.fromRGBO(32, 133, 235, 1)),
    ),
  );
}
