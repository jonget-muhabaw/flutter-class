import 'package:flutter/material.dart';

class MyRectangle extends StatelessWidget {
  MyRectangle({super.key, required this.productName});
  String productName;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.all(20),
      color: Colors.amber,
      height: 150,
      child: Center(
        child: Text(productName),
      ),
    );
  }
}
