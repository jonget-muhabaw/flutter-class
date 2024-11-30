import 'package:flutter/material.dart';

class TwoDView extends StatelessWidget {
  TwoDView({super.key});
  List<String> menu = ["Fast Food", "Hot Drinks", "Alcohols", "Soft Drinks"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GridView.count(
          crossAxisCount: menu.length,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: menu.map((men) {
            return Card(
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  men,
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            );
          }).toList()),
    );
  }
}
