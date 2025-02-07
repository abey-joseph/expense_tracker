import 'package:flutter/material.dart';

Widget button({
  required String buttonText,
  required VoidCallback onPressed,
}) {
  return ElevatedButton(onPressed: onPressed, child: Text(buttonText));
}
