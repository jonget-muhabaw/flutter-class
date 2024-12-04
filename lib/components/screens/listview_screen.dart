import 'package:class_one/components/screens/my_circle.dart';
import 'package:class_one/components/screens/my_square.dart';
import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  ListviewScreen({super.key});
  final List<String> posts = ["post1", "post2", "post3", "post4"];
  final List<String> myStory = [
    "story1",
    "story2",
    "story3",
    "story4",
    "story5"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: myStory.length,
                itemBuilder: (context, index) {
                  return MyCircle(child: myStory[index]);
                }),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return MySquare(child: posts[index]);
                }),
          ),
        ],
      ),
    );
  }
}
