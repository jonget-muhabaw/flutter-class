import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  MySquare({super.key, required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration:
          const BoxDecoration(color: Colors.deepOrange, shape: BoxShape.circle),
      child: Center(
          child: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 15),
      )),
    );
  }
}
