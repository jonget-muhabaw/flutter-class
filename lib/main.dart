import 'package:class_one/components/screens/gridview_screen.dart';
import 'package:class_one/components/screens/listview_screen.dart';
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
        '/home': (context) => GridviewScreen(),
        '/detail': (context) => ListviewScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
