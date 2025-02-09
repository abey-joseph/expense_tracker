import 'package:flutter/material.dart';

Widget textField({
  required bool isPassWord,
  required TextEditingController controller,
  TextInputType textInputType = TextInputType.text,
  String hintText = '',
  VoidCallback? onTap,
}) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 20,
      right: 20,
    ),
    child: TextField(
      onTap: onTap ?? () {},
      keyboardType: textInputType,
      controller: controller,
      obscureText: isPassWord,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withValues(alpha: 0.1),
        border: InputBorder.none,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12), // Rounded rectangle shape
          borderSide: BorderSide(color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 13),
      ),
      style: TextStyle(),
    ),
  );
}
