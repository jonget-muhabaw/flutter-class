import 'package:class_one/components/screens/counter_screen.dart';
import 'package:class_one/components/screens/gridview_screen.dart';
import 'package:class_one/components/screens/listview_screen.dart';
import 'package:class_one/components/screens/todos/todos_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    GridviewScreen(),
    ListviewScreen(),
    MyCounter(),
    TodosScreen()
  ];
  void onTapChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black12,
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.home,
              ),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.car_repair_sharp,
              ),
              label: "Cars"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.countertops_outlined,
              ),
              label: "Counter"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.task,
              ),
              label: "Todos"),
        ],
        onTap: onTapChange,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple,
      ),
    );
  }
}
