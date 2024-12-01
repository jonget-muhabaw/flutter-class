import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  final String hintTex;
  final bool obscureTex;
  final Widget icon;
  MyForm({super.key, required this.hintTex, required this.obscureTex, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: obscureTex,
        decoration: InputDecoration(
            prefixIcon: icon,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade300)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            fillColor: Colors.white,
            filled: true,
            hintText: hintTex),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter valid $hintTex";
          }
          return null;
        });
  }
}
