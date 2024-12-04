import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.onTap, required this.child});
  final void Function()? onTap;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12.0),
        color: Colors.black,
        width: MediaQuery.of(context).size.width*0.85,
        height: 50,
        child: Center(child: child),
      ),
    );
  }
}
