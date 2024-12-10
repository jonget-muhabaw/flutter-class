import 'package:class_one/components/screens/responsive/my_rectangle.dart';
import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  ListviewScreen({super.key});
  List<String> _products = ["Lamborgini", "Toyota", "BMW", "Tesla", "Royice"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: _products.length,
          itemBuilder: (context, index) {
            return MyRectangle(
              title: _products[index],
              productIcon: const Icon(
                Icons.car_rental_rounded,
                color: Colors.white,
                size: 55.0,
              ),
            );
          }),
    );
  }
}
