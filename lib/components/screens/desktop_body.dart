import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              height: 150,
              width: 550,
              decoration: BoxDecoration(color: Colors.deepPurple[400]),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              color: Colors.deepPurple[400],
            ),
            Container(
              height: 50,
              color: Colors.deepPurple[400],
            ),
            Container(
              height: 50,
              color: Colors.deepPurple[400],
            ),
          ],
        ),
        Column(
          children: [
            Container(
              height: 100,
              width: 400,
              color: Colors.green,
            ),
            Container(
              height: 100,
              width: 400,
              color: Colors.green,
            ),
            Container(
              height: 100,
              width: 400,
              color: Colors.green,
            ),
          ],
        ),
      ],
    );
  }
}
