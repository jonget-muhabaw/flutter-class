import 'package:flutter/material.dart';

class MyProducts extends StatelessWidget {
  MyProducts({super.key});
  final List<Map> myProducts =
      List.generate(10, (index) => {"id": index, "name": "Product$index"})
          .toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Listview"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                height: 150,
                alignment: Alignment.center,
                color: Colors.deepPurple[400],
                child: ListView.builder(
                  itemCount: myProducts.length,
                  itemBuilder: (context, index) {
                    return Text(myProducts[index]['name']);
                  },
                ))));
  }
}
