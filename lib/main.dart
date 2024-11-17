import 'package:class_one/layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    LayoutView(),
  );
}

class DisplayApp extends StatefulWidget {
  const DisplayApp({super.key});

  @override
  State<DisplayApp> createState() => _DisplayAppState();
}

class _DisplayAppState extends State<DisplayApp> {
  int count = 0;
  void increment() {
    setState(() {
      count++;
    });
  }

  decrement() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Scaffold(
          appBar: AppBar(
            foregroundColor: const Color.fromARGB(31, 0, 0, 0),
            title: const Text("MY counter app"),
          ),
          body: Container(
            margin: const EdgeInsets.fromLTRB(20, 100, 20, 30),
            child: Column(
              children: [
                Text(
                  "$count",
                  style: const TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          increment();
                        },
                        child: const Text("Increment")),
                    ElevatedButton(
                        onPressed: () {
                          decrement();
                        },
                        child: const Text("decrement"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
