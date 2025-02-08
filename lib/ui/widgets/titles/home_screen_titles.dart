import 'package:flutter/material.dart';

Widget title({required String text, double? size}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: size ?? 12,
      fontWeight: FontWeight.bold,
    ),
  );
}
