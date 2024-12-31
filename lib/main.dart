import 'package:class_one/components/screens/bottom_navigation.dart';
import 'package:class_one/components/screens/counter_screen.dart';
import 'package:class_one/components/screens/gridview_screen.dart';
import 'package:class_one/components/screens/listview_screen.dart';
import 'package:class_one/components/screens/login_screen.dart';
import 'package:class_one/components/screens/todos/todos.dart';
import 'package:class_one/components/screens/todos/todos_screen.dart';
import 'package:class_one/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CounterProvider()),
      ChangeNotifierProvider(create: (context) => TodosProvider()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/home': (context) => BottomNavigationScreen(),
        '/detail': (context) => ListviewScreen(),
        '/addTodo': (context) => TodosScreen(),
        '/counter': (context) => const MyCounter()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
