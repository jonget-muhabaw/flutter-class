import 'package:class_one/responsive/desktop_body.dart';
import 'package:class_one/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      desktopBody: DesktopBody(),
      mobileBody: Text("Mobile screen"),
    );
  }
}
