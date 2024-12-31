import 'package:class_one/components/screens/my_rectangle.dart';
import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  ListviewScreen({super.key});

  final List<String> _products = [
    "Lamborghini",
    "Toyota",
    "BMW",
    "Tesla",
    "Rolls Royce"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Products Screen"),
        ),
        body: ListView.builder(
            itemCount: _products.length,
            itemBuilder: (context, index) {
              return MyRectangle(productName: _products[index]);
            }));
  }
}
