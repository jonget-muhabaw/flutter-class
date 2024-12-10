import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final Widget icon;
  const MyForm({super.key, required this.hintText, required this.obscureText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
            prefixIcon: icon,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade300)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            fillColor: Colors.white,
            filled: true,
            hintText: hintText),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter valid $hintText";
          }
          return null;
        });
  }
}
