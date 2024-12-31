import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/counter_provider.dart';

class MyCounter extends StatelessWidget {
  const MyCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(builder: (contex, counterProvider, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Counter Screen"),
        ),
        body: Center(child: Text('${counterProvider.count}')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counterProvider.increment();
          },
          child: const Icon(Icons.add),
        ),
      );
    });
  }
}
