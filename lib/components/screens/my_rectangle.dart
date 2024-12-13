import 'package:flutter/material.dart';

class MyRectangle extends StatelessWidget {
  const MyRectangle({super.key, required this.title, required this.productImage});
  
  final String title;
  final Widget productImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        color: Colors.deepPurple[300],
        child: Container(
          margin: const EdgeInsets.only(top: 35),
          child: Column(
            children: [
             productImage,
              const SizedBox(height: 15),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
