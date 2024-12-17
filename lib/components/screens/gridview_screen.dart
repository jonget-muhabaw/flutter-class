import 'package:flutter/material.dart';

class GridviewScreen extends StatelessWidget {
  const GridviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( body:Padding(
      padding: const EdgeInsets.fromLTRB(15, 40, 15, 0),
      child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 14, mainAxisSpacing: 14),
      children: [ Container(height: 150,
      color:Colors.deepOrange,
      child: Center(child: const Text("Service", style: TextStyle(color: Colors.white, fontSize: 15),)),
      ),
      Container(height: 150,
      color:Colors.deepOrange,
       child: Center(child: const Text("Spa", style: TextStyle(color: Colors.white, fontSize: 15),)),
      ),
      Container(height: 150,
      color:Colors.deepOrange,
       child: Center(child: const Text("Package", style: TextStyle(color: Colors.white, fontSize: 15),)),
      ),
      Container(height: 150,
      color:Colors.deepOrange,
       child: Center(child: const Text("Books", style: TextStyle(color: Colors.white, fontSize: 15),)),
      )
      
      ],
      ),
    ));
  }
}