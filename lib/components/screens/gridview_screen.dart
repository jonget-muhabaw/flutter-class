import 'package:class_one/components/screens/my_square.dart';
import 'package:flutter/material.dart';

class GridviewScreen extends StatelessWidget {
  GridviewScreen({super.key});
  List<String> myStory = [
    "story one",
    "story two",
    "story three",
    "story four",
    "story five"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            itemCount: myStory.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return MySquare(title: myStory[index]);
            }));
  }
}
