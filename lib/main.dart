import 'package:class_one/components/screens/calculator_screen.dart';
import 'package:class_one/components/screens/home.dart';
import 'package:class_one/components/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
