import 'package:class_one/components/screens/my_rectangle.dart';
import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  ListviewScreen({super.key});

  final List<String> _products = ["Lamborghini", "Toyota", "BMW", "Tesla", "Rolls Royce"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
                 Navigator.pushNamed(context, '/detail');
            },
            child: MyRectangle(
              title: _products[index],
              productImage: const Icon(
                  Icons.car_rental_rounded,
                  color: Colors.white,
                  size: 55.0,
                )
            ),
          );
        },
      ),
    );
  }
}
