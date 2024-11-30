import 'package:class_one/components/screens/calculator_screen.dart';
import 'package:class_one/components/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  Map route = {"name": "Alex", "age": 25};
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/home': (context) => CalculatorScreen(),
        
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
